const SITE_URL = 'https://www.migrago.cl'
const SITEMAPS = [
  '/sitemap.xml',
  '/sitemap-silos.xml',
  '/sitemap-paises.xml',
  '/sitemap-herramientas.xml',
  '/sitemap-glosario.xml',
]

function decodeHtml(value) {
  return value
    .replaceAll('&amp;', '&')
    .replaceAll('&quot;', '"')
    .replaceAll('&#x27;', "'")
    .replaceAll('&lt;', '<')
    .replaceAll('&gt;', '>')
}

function textMatch(html, expression) {
  return decodeHtml(html.match(expression)?.[1]?.replace(/<[^>]+>/g, ' ').replace(/\s+/g, ' ').trim() ?? '')
}

function absoluteInternalUrl(href, pageUrl) {
  if (!href || href.startsWith('#') || href.startsWith('mailto:') || href.startsWith('tel:')) return null
  try {
    const url = new URL(decodeHtml(href), pageUrl)
    if (url.origin !== SITE_URL) return null
    if (url.pathname.startsWith('/_next/') || url.pathname.startsWith('/api/')) return null
    url.hash = ''
    url.search = ''
    return url.toString().replace(/\/$/, '') || SITE_URL
  } catch {
    return null
  }
}

async function mapConcurrent(items, limit, mapper) {
  const results = new Array(items.length)
  let cursor = 0

  async function worker() {
    while (cursor < items.length) {
      const index = cursor++
      results[index] = await mapper(items[index], index)
    }
  }

  await Promise.all(Array.from({ length: Math.min(limit, items.length) }, worker))
  return results
}

async function fetchPage(url) {
  try {
    const initial = await fetch(url, { redirect: 'manual', headers: { 'user-agent': 'MigraGo-SEO-Audit/1.0' } })
    if (initial.status >= 300 && initial.status < 400) {
      return { url, status: initial.status, redirect: initial.headers.get('location') }
    }

    const html = await initial.text()
    const title = textMatch(html, /<title[^>]*>([\s\S]*?)<\/title>/i)
    const description = decodeHtml(html.match(/<meta[^>]+name=["']description["'][^>]+content=["']([^"']*)["']/i)?.[1] ?? '')
    const canonical = decodeHtml(html.match(/<link[^>]+rel=["']canonical["'][^>]+href=["']([^"']+)["']/i)?.[1] ?? '')
    const robots = decodeHtml(html.match(/<meta[^>]+name=["']robots["'][^>]+content=["']([^"']+)["']/i)?.[1] ?? '')
    const h1Count = (html.match(/<h1\b/gi) ?? []).length
    const hrefs = [...html.matchAll(/<a\b[^>]*href=["']([^"']+)["']/gi)]
      .map((match) => absoluteInternalUrl(match[1], url))
      .filter(Boolean)

    return {
      url,
      status: initial.status,
      title,
      titleLength: title.length,
      descriptionLength: description.length,
      canonical,
      robots,
      h1Count,
      internalLinks: [...new Set(hrefs)],
    }
  } catch (error) {
    return { url, status: 0, error: error instanceof Error ? error.message : String(error) }
  }
}

const sitemapBodies = await Promise.all(
  SITEMAPS.map(async (path) => ({ path, body: await (await fetch(`${SITE_URL}${path}`)).text() }))
)

const sitemapUrls = [...new Set(sitemapBodies.flatMap(({ body }) =>
  [...body.matchAll(/<loc>([^<]+)<\/loc>/g)].map((match) => decodeHtml(match[1]))
))]

const pages = await mapConcurrent(sitemapUrls, 6, fetchPage)
const linkedUrls = [...new Set(pages.flatMap((page) => page.internalLinks ?? []))]
const linkedChecks = await mapConcurrent(linkedUrls, 8, async (url) => {
  try {
    const response = await fetch(url, { method: 'HEAD', redirect: 'manual', headers: { 'user-agent': 'MigraGo-SEO-Audit/1.0' } })
    return { url, status: response.status, redirect: response.headers.get('location') }
  } catch (error) {
    return { url, status: 0, error: error instanceof Error ? error.message : String(error) }
  }
})

const incoming = new Map(sitemapUrls.map((url) => [url.replace(/\/$/, ''), 0]))
for (const page of pages) {
  for (const link of page.internalLinks ?? []) {
    if (incoming.has(link)) incoming.set(link, incoming.get(link) + 1)
  }
}

const report = {
  generatedAt: new Date().toISOString(),
  counts: {
    sitemapUrls: sitemapUrls.length,
    internalUrlsChecked: linkedChecks.length,
  },
  sitemapRedirects: pages.filter((page) => page.redirect).map(({ url, status, redirect }) => ({ url, status, redirect })),
  sitemapErrors: pages.filter((page) => page.status !== 200 && !page.redirect).map(({ url, status, error }) => ({ url, status, error })),
  noindexInSitemap: pages.filter((page) => /noindex/i.test(page.robots ?? '')).map((page) => page.url),
  missingCanonical: pages.filter((page) => page.status === 200 && !page.canonical).map((page) => page.url),
  canonicalMismatch: pages.filter((page) => page.status === 200 && page.canonical && page.canonical.replace(/\/$/, '') !== page.url.replace(/\/$/, '')).map(({ url, canonical }) => ({ url, canonical })),
  headingIssues: pages.filter((page) => page.status === 200 && page.h1Count !== 1).map(({ url, h1Count }) => ({ url, h1Count })),
  titleIssues: pages.filter((page) => page.status === 200 && (page.titleLength < 25 || page.titleLength > 65)).map(({ url, title, titleLength }) => ({ url, title, titleLength })),
  descriptionIssues: pages.filter((page) => page.status === 200 && (page.descriptionLength < 110 || page.descriptionLength > 165)).map(({ url, descriptionLength }) => ({ url, descriptionLength })),
  brokenInternalLinks: linkedChecks.filter((item) => item.status === 0 || item.status >= 400),
  redirectedInternalLinks: linkedChecks.filter((item) => item.status >= 300 && item.status < 400),
  orphanSitemapPages: [...incoming.entries()].filter(([url, count]) => url !== SITE_URL && count === 0).map(([url]) => url),
}

console.log(JSON.stringify(report, null, 2))
