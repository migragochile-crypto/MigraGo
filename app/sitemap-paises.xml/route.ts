import { getAllPublishedArticles } from '@/lib/supabase/queries'
import { PAISES } from '@/lib/content/silos'
import { SITE_URL } from '@/lib/constants'


function buildXml(urls: { loc: string; lastmod?: string; priority?: number }[]): string {
  const items = urls
    .map(
      ({ loc, lastmod, priority }) =>
        `  <url>
    <loc>${loc}</loc>
    ${lastmod ? `<lastmod>${lastmod}</lastmod>` : ''}
    ${priority !== undefined ? `<priority>${priority}</priority>` : ''}
  </url>`
    )
    .join('\n')

  return `<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
${items}
</urlset>`
}

export async function GET() {
  const published = await getAllPublishedArticles()
  const paisSlugs = Object.keys(PAISES)

  const urls: { loc: string; lastmod?: string; priority?: number }[] = []

  // Hub index de países
  urls.push({ loc: `${SITE_URL}/paises`, priority: 0.8 })

  // Hub por país: /paises/{pais}
  paisSlugs.forEach((pais) => {
    const article = published.find((a) => a.slug === pais)
    urls.push({
      loc: `${SITE_URL}/paises/${pais}`,
      lastmod: article?.updated_at?.split('T')[0],
      priority: 0.8,
    })
  })

  // Temas por país: /paises/{pais}/{tema}
  published
    .filter((a) => {
      const parts = a.slug.split('/')
      return parts.length === 2 && paisSlugs.includes(parts[0])
    })
    .forEach((a) => {
      urls.push({
        loc: `${SITE_URL}/paises/${a.slug}`,
        lastmod: a.updated_at?.split('T')[0],
        priority: 0.7,
      })
    })

  return new Response(buildXml(urls), {
    headers: {
      'Content-Type': 'application/xml',
      'Cache-Control': 'public, max-age=3600, stale-while-revalidate=86400',
    },
  })
}

