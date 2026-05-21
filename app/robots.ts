import type { MetadataRoute } from 'next'

const SITE_URL = process.env.NEXT_PUBLIC_SITE_URL ?? 'https://migrago.cl'

export default function robots(): MetadataRoute.Robots {
  return {
    rules: [
      {
        userAgent: '*',
        allow: '/',
        disallow: ['/api/', '/admin/'],
      },
    ],
    sitemap: [
      `${SITE_URL}/sitemap-silos.xml`,
      `${SITE_URL}/sitemap-paises.xml`,
      `${SITE_URL}/sitemap-herramientas.xml`,
      `${SITE_URL}/sitemap-noticias.xml`,
    ],
  }
}

