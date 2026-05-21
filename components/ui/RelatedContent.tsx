import Link from 'next/link'
import { getRelatedArticles } from '@/lib/supabase/queries'
import { SILOS, PAISES } from '@/lib/content/silos'

interface Props {
  slugs: string[]
  currentSlug: string
}

export default async function RelatedContent({ slugs, currentSlug }: Props) {
  if (slugs.length === 0) return null

  const articles = await getRelatedArticles(slugs.filter((s) => s !== currentSlug))
  if (articles.length === 0) return null

  return (
    <section className="mt-12 pt-8 border-t border-gray-200">
      <h2 className="text-lg font-semibold text-gray-900 mb-4">También puede interesarte</h2>
      <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
        {articles.map((article) => {
          const siloConfig = SILOS[article.silo]
          const href = article.silo in PAISES ? `/paises/${article.slug}` : `/${article.slug}`
          return (
            <Link
              key={article.slug}
              href={href}
              className="group block bg-gray-50 hover:bg-primary/5 border border-gray-200 hover:border-primary/30 rounded-xl p-4 transition-all"
            >
              {siloConfig && (
                <span className="text-xs font-medium text-primary uppercase tracking-wide">
                  {siloConfig.label}
                </span>
              )}
              <p className="mt-1 font-medium text-gray-900 group-hover:text-primary transition-colors line-clamp-2">
                {article.h1}
              </p>
              {article.meta_description && (
                <p className="mt-1 text-sm text-gray-500 line-clamp-2">{article.meta_description}</p>
              )}
            </Link>
          )
        })}
      </div>
    </section>
  )
}

