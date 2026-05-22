import { getAllGlossaryTerms } from '@/lib/supabase/queries'

const SITE_URL = process.env.NEXT_PUBLIC_SITE_URL ?? 'https://migrago.cl'

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
  const terms = await getAllGlossaryTerms()

  const urls = [
    { loc: `${SITE_URL}/glosario`, priority: 0.7 },
    ...terms.map((t) => ({ loc: `${SITE_URL}/glosario/${t.slug}`, priority: 0.5 })),
  ]

  return new Response(buildXml(urls), {
    headers: {
      'Content-Type': 'application/xml',
      'Cache-Control': 'public, max-age=3600, stale-while-revalidate=86400',
    },
  })
}
