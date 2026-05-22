import { HERRAMIENTAS_LIST } from '@/lib/content/silos'
import { SITE_URL } from '@/lib/constants'


export async function GET() {
  const items = [
    `  <url><loc>${SITE_URL}/herramientas</loc><priority>0.7</priority></url>`,
    ...HERRAMIENTAS_LIST.map(
      (t) => `  <url><loc>${SITE_URL}/herramientas/${t.slug}</loc><priority>0.7</priority></url>`
    ),
  ].join('\n')

  const xml = `<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
${items}
</urlset>`

  return new Response(xml, {
    headers: {
      'Content-Type': 'application/xml',
      'Cache-Control': 'public, max-age=86400',
    },
  })
}

