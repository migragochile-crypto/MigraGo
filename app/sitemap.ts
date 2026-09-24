import type { MetadataRoute } from 'next'
import { SITE_URL } from '@/lib/constants'
import { PAISES, MAIN_SILOS, HERRAMIENTAS_LIST } from '@/lib/content/silos'
import { getAllPublishedArticles } from '@/lib/supabase/queries'
import {
  hasSubstantiveArticleContent,
  isIndexableArticleSlug,
  isIndexableToolSlug,
} from '@/lib/seo/indexing'

export const revalidate = 86400

const COUNTRY_SLUGS = new Set(Object.keys(PAISES))
const HUB_SLUGS = new Set<string>(MAIN_SILOS)

export default async function sitemap(): Promise<MetadataRoute.Sitemap> {
  const articles = await getAllPublishedArticles()

  const articleUrls: MetadataRoute.Sitemap = articles
    // Los hubs de los 6 silos principales ya están en staticUrls — evitar duplicados
    .filter(
      (article) =>
        !HUB_SLUGS.has(article.slug) &&
        isIndexableArticleSlug(article.slug) &&
        hasSubstantiveArticleContent(article.content)
    )
    .map((article) => {
      // Artículos de países viven bajo /paises/ aunque su slug en DB no lleve el prefijo
      const siloRoot = article.slug.split('/')[0]
      const path = COUNTRY_SLUGS.has(siloRoot) ? `paises/${article.slug}` : article.slug
      return {
        url: `${SITE_URL}/${path}`,
        ...(article.updated_at ? { lastModified: new Date(article.updated_at) } : {}),
        changeFrequency: 'monthly' as const,
        priority: article.type === 'hub' ? 0.8 : 0.7,
      }
    })

  const staticUrls: MetadataRoute.Sitemap = [
    { url: SITE_URL, changeFrequency: 'daily', priority: 1 },
    { url: `${SITE_URL}/residencia-temporal`, changeFrequency: 'monthly', priority: 0.9 },
    { url: `${SITE_URL}/residencia-definitiva`, changeFrequency: 'monthly', priority: 0.9 },
    { url: `${SITE_URL}/autodenuncia`, changeFrequency: 'monthly', priority: 0.9 },
    { url: `${SITE_URL}/nacionalizacion`, changeFrequency: 'monthly', priority: 0.9 },
    { url: `${SITE_URL}/vivir-en-chile`, changeFrequency: 'monthly', priority: 0.9 },
    { url: `${SITE_URL}/problemas-migratorios`, changeFrequency: 'monthly', priority: 0.9 },
    { url: `${SITE_URL}/paises`, changeFrequency: 'monthly', priority: 0.8 },
    { url: `${SITE_URL}/herramientas`, changeFrequency: 'monthly', priority: 0.8 },
    { url: `${SITE_URL}/actualidad`, changeFrequency: 'weekly', priority: 0.8 },
    { url: `${SITE_URL}/glosario`, changeFrequency: 'monthly', priority: 0.7 },
    { url: `${SITE_URL}/acerca`, changeFrequency: 'yearly', priority: 0.5 },
    { url: `${SITE_URL}/metodologia`, changeFrequency: 'yearly', priority: 0.5 },
  ]

  const toolUrls: MetadataRoute.Sitemap = HERRAMIENTAS_LIST
    .filter(({ slug }) => isIndexableToolSlug(slug))
    .map(({ slug }) => ({
      url: `${SITE_URL}/herramientas/${slug}`,
      changeFrequency: 'monthly',
      priority: 0.7,
    }))

  const uniqueUrls = new Map<string, MetadataRoute.Sitemap[number]>()
  for (const entry of [...staticUrls, ...toolUrls, ...articleUrls]) {
    uniqueUrls.set(entry.url, entry)
  }

  return [...uniqueUrls.values()]
}
