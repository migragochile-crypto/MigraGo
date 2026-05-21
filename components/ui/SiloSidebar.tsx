import Link from 'next/link'
import { SILOS, PAISES, slugToLabel } from '@/lib/content/silos'
import { getArticlesBySilo } from '@/lib/supabase/queries'

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
      : siloConfig.clusters.map((c) => ({ slug: `${silo}/${c}`, h1: slugToLabel(c), type: 'cluster' as const }))

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
        {clusters.map((article) => {
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
    </div>
  )
}

