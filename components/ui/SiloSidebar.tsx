import Link from 'next/link'
import { SILOS, PAISES, slugToLabel } from '@/lib/content/silos'
import { getArticlesBySilo } from '@/lib/supabase/queries'
import { isIndexableArticleSlug } from '@/lib/seo/indexing'

interface Props {
  silo: string
  currentSlug: string
}

export default async function SiloSidebar({ silo, currentSlug }: Props) {
  const siloConfig = SILOS[silo]
  if (!siloConfig) return null

  const isCountry = silo in PAISES
  const sectionHref = isCountry ? `/paises/${silo}` : `/${silo}`
  const clusterHref = (slug: string) => isCountry ? `/paises/${slug}` : `/${slug}`

  // Fetch published articles or fall back to static config clusters
  const published = await getArticlesBySilo(silo)
  const clusters =
    published.length > 0
      ? published.filter((a) => a.type === 'cluster')
      : siloConfig.clusters
          .map((c) => ({ slug: `${silo}/${c}`, h1: slugToLabel(c), type: 'cluster' as const }))
          .filter((article) => isIndexableArticleSlug(article.slug))

  const navigationClusters: { slug: string; h1: string }[] = clusters.map(({ slug, h1 }) => ({ slug, h1 }))
  const currentArticle = navigationClusters.find((article) => article.slug === currentSlug)
  const visibleClusters = navigationClusters.slice(0, 6)
  if (currentArticle && !visibleClusters.some((article) => article.slug === currentSlug)) {
    visibleClusters.splice(5, 1, currentArticle)
  }
  const remainingClusters = navigationClusters.filter(
    (article) => !visibleClusters.some((visible) => visible.slug === article.slug)
  )

  return (
    <div className="bg-white rounded-xl border border-gray-200 p-5 sticky top-24">
      <p className="text-xs font-semibold uppercase tracking-widest text-gray-400 mb-3">
        En esta sección
      </p>
      <Link
        href={sectionHref}
        className={`block px-3 py-2 rounded-lg text-sm font-semibold mb-1 transition-colors ${
          currentSlug === silo
            ? 'bg-primary text-white'
            : 'text-gray-700 hover:bg-gray-100'
        }`}
      >
        {siloConfig.label}
      </Link>
      <ul className="space-y-0.5 mt-2">
        {visibleClusters.map((article) => {
          const clusterSlug = article.slug
          const isActive = currentSlug === clusterSlug
          return (
            <li key={clusterSlug}>
              <Link
                href={clusterHref(clusterSlug)}
                className={`block px-3 py-2 rounded-lg text-sm transition-colors ${
                  isActive
                    ? 'bg-primary/10 text-primary font-medium'
                    : 'text-gray-600 hover:bg-gray-100 hover:text-gray-900'
                }`}
              >
                {article.h1}
              </Link>
            </li>
          )
        })}
      </ul>
      {remainingClusters.length > 0 && (
        <details className="group mt-2 border-t border-gray-100 pt-2">
          <summary className="flex cursor-pointer list-none items-center justify-between rounded-lg px-3 py-2 text-sm font-medium text-primary transition-colors hover:bg-primary/5">
            Ver {remainingClusters.length} temas más
            <svg
              aria-hidden="true"
              className="h-4 w-4 transition-transform group-open:rotate-180"
              fill="none"
              stroke="currentColor"
              viewBox="0 0 24 24"
            >
              <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="m6 9 6 6 6-6" />
            </svg>
          </summary>
          <ul className="mt-1 space-y-0.5">
            {remainingClusters.map((article) => (
              <li key={article.slug}>
                <Link
                  href={clusterHref(article.slug)}
                  className="block rounded-lg px-3 py-2 text-sm text-gray-600 transition-colors hover:bg-gray-100 hover:text-gray-900"
                >
                  {article.h1}
                </Link>
              </li>
            ))}
          </ul>
        </details>
      )}
    </div>
  )
}
