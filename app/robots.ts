import type { MetadataRoute } from 'next'
import { SITE_URL } from '@/lib/constants'


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
      `${SITE_URL}/sitemap-glosario.xml`,
    ],
  }
}

