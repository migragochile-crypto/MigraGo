import { getAllPublishedArticles } from '@/lib/supabase/queries'

const SITE_URL = process.env.NEXT_PUBLIC_SITE_URL ?? 'https://migrago.cl'

export async function GET() {
  const published = await getAllPublishedArticles()
  const news = published.filter((a) => a.type === 'news')

  const items = [
    `  <url><loc>${SITE_URL}/noticias</loc><priority>0.6</priority></url>`,
    `  <url><loc>${SITE_URL}/casos</loc><priority>0.6</priority></url>`,
    `  <url><loc>${SITE_URL}/glosario</loc><priority>0.6</priority></url>`,
    ...news.map(
      (a) =>
        `  <url><loc>${SITE_URL}/${a.slug}</loc>${a.updated_at ? `<lastmod>${a.updated_at.split('T')[0]}</lastmod>` : ''}<priority>0.6</priority></url>`
    ),
  ].join('\n')

  const xml = `<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
${items}
</urlset>`

  return new Response(xml, {
    headers: {
      'Content-Type': 'application/xml',
      'Cache-Control': 'public, max-age=3600, stale-while-revalidate=86400',
    },
  })
}

