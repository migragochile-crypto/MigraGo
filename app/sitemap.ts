import type { MetadataRoute } from 'next'
import { SITE_URL } from '@/lib/constants'


export default function sitemap(): MetadataRoute.Sitemap {
  return [
    {
      url: SITE_URL,
      lastModified: new Date(),
      changeFrequency: 'daily',
      priority: 1,
    },
    {
      url: `${SITE_URL}/paises`,
      lastModified: new Date(),
      changeFrequency: 'monthly',
      priority: 0.8,
    },
    {
      url: `${SITE_URL}/herramientas`,
      lastModified: new Date(),
      changeFrequency: 'monthly',
      priority: 0.8,
    },
    {
      url: `${SITE_URL}/glosario`,
      lastModified: new Date(),
      changeFrequency: 'monthly',
      priority: 0.7,
    },
    {
      url: `${SITE_URL}/acerca`,
      lastModified: new Date(),
      changeFrequency: 'yearly',
      priority: 0.5,
    },
    {
      url: `${SITE_URL}/metodologia`,
      lastModified: new Date(),
      changeFrequency: 'yearly',
      priority: 0.5,
    },
    {
      url: `${SITE_URL}/sitemap-silos.xml`,
      lastModified: new Date(),
    },
    {
      url: `${SITE_URL}/sitemap-paises.xml`,
      lastModified: new Date(),
    },
    {
      url: `${SITE_URL}/sitemap-herramientas.xml`,
      lastModified: new Date(),
    },
    {
      url: `${SITE_URL}/sitemap-glosario.xml`,
      lastModified: new Date(),
    },
  ]
}

