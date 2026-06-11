import type { MetadataRoute } from 'next'
import { SITE_URL } from '@/lib/constants'
import { PAISES, MAIN_SILOS } from '@/lib/content/silos'
import { getAllPublishedArticles } from '@/lib/supabase/queries'

export const revalidate = 3600

const COUNTRY_SLUGS = new Set(Object.keys(PAISES))
const HUB_SLUGS = new Set<string>(MAIN_SILOS)

export default async function sitemap(): Promise<MetadataRoute.Sitemap> {
  const articles = await getAllPublishedArticles()

  const articleUrls: MetadataRoute.Sitemap = articles
    // Los hubs de los 6 silos principales ya están en staticUrls — evitar duplicados
    .filter((article) => !HUB_SLUGS.has(article.slug))
    .map((article) => {
      // Artículos de países viven bajo /paises/ aunque su slug en DB no lleve el prefijo
      const siloRoot = article.slug.split('/')[0]
      const path = COUNTRY_SLUGS.has(siloRoot) ? `paises/${article.slug}` : article.slug
      return {
        url: `${SITE_URL}/${path}`,
        lastModified: article.updated_at ? new Date(article.updated_at) : new Date(),
        changeFrequency: 'monthly' as const,
        priority: article.type === 'hub' ? 0.8 : 0.7,
      }
    })

  const staticUrls: MetadataRoute.Sitemap = [
    { url: SITE_URL, lastModified: new Date(), changeFrequency: 'daily', priority: 1 },
    { url: `${SITE_URL}/residencia-temporal`, lastModified: new Date(), changeFrequency: 'monthly', priority: 0.9 },
    { url: `${SITE_URL}/residencia-definitiva`, lastModified: new Date(), changeFrequency: 'monthly', priority: 0.9 },
    { url: `${SITE_URL}/autodenuncia`, lastModified: new Date(), changeFrequency: 'monthly', priority: 0.9 },
    { url: `${SITE_URL}/nacionalizacion`, lastModified: new Date(), changeFrequency: 'monthly', priority: 0.9 },
    { url: `${SITE_URL}/vivir-en-chile`, lastModified: new Date(), changeFrequency: 'monthly', priority: 0.9 },
    { url: `${SITE_URL}/problemas-migratorios`, lastModified: new Date(), changeFrequency: 'monthly', priority: 0.9 },
    { url: `${SITE_URL}/paises`, lastModified: new Date(), changeFrequency: 'monthly', priority: 0.8 },
    { url: `${SITE_URL}/herramientas`, lastModified: new Date(), changeFrequency: 'monthly', priority: 0.8 },
    { url: `${SITE_URL}/actualidad`, lastModified: new Date(), changeFrequency: 'weekly', priority: 0.8 },
    { url: `${SITE_URL}/glosario`, lastModified: new Date(), changeFrequency: 'monthly', priority: 0.7 },
    { url: `${SITE_URL}/acerca`, lastModified: new Date(), changeFrequency: 'yearly', priority: 0.5 },
    { url: `${SITE_URL}/metodologia`, lastModified: new Date(), changeFrequency: 'yearly', priority: 0.5 },
    { url: `${SITE_URL}/privacidad`, lastModified: new Date(), changeFrequency: 'yearly', priority: 0.3 },
    { url: `${SITE_URL}/terminos`, lastModified: new Date(), changeFrequency: 'yearly', priority: 0.3 },
  ]

  return [...staticUrls, ...articleUrls]
}
