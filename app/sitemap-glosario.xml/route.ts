import { SITE_URL } from '@/lib/constants'


function buildXml(urls: { loc: string; priority?: number }[]): string {
  const items = urls
    .map(
      ({ loc, priority }) =>
        `  <url>
    <loc>${loc}</loc>
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
  const urls = [
    { loc: `${SITE_URL}/glosario`, priority: 0.7 },
  ]

  return new Response(buildXml(urls), {
    headers: {
      'Content-Type': 'application/xml',
      'Cache-Control': 'public, max-age=3600, stale-while-revalidate=86400',
    },
  })
}
