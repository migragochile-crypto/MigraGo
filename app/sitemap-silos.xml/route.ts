import { getAllPublishedArticles } from '@/lib/supabase/queries'
import { MAIN_SILOS } from '@/lib/content/silos'
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

  const urls: { loc: string; lastmod?: string; priority?: number }[] = []

  // Pillar pages (solo silos con ruta propia)
  MAIN_SILOS.forEach((silo) => {
    const article = published.find((a) => a.slug === silo)
    urls.push({
      loc: `${SITE_URL}/${silo}`,
      lastmod: article?.updated_at?.split('T')[0],
      priority: 0.9,
    })
  })

  // Cluster pages de esos silos
  published
    .filter((a) => (MAIN_SILOS as readonly string[]).includes(a.silo) && a.type === 'cluster')
    .forEach((a) => {
      urls.push({
        loc: `${SITE_URL}/${a.slug}`,
        lastmod: a.updated_at?.split('T')[0],
        priority: 0.8,
      })
    })

  return new Response(buildXml(urls), {
    headers: {
      'Content-Type': 'application/xml',
      'Cache-Control': 'public, max-age=3600, stale-while-revalidate=86400',
    },
  })
}

