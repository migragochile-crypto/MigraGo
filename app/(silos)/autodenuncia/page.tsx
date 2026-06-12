import type { Metadata } from 'next'
import { getArticleBySlug, getArticlesBySilo } from '@/lib/supabase/queries'
import { articleMetadata, buildMetadata } from '@/lib/seo/metadata'
import ArticlePageTemplate from '@/components/templates/ArticlePageTemplate'
import { SILOS } from '@/lib/content/silos'
import { breadcrumbSchema } from '@/lib/seo/schemas'
import JsonLd from '@/components/seo/JsonLd'
import Link from 'next/link'
import { SITE_URL } from '@/lib/constants'

const SILO = 'autodenuncia'

export const revalidate = 86400

export async function generateMetadata(): Promise<Metadata> {
  const article = await getArticleBySlug(SILO)
  if (!article) {
    return buildMetadata({
      title: SILOS[SILO].label,
      description: SILOS[SILO].description,
      slug: SILO,
    })
  }
  return articleMetadata(article)
}

export default async function AutodenunciaPage() {
  const [article, siloArticles] = await Promise.all([
    getArticleBySlug(SILO),
    getArticlesBySilo(SILO),
  ])
  const siloConfig = SILOS[SILO]
  const clusters = siloArticles.filter((a) => a.type === 'cluster')

  const breadcrumbs = [
    { label: 'Inicio', href: SITE_URL },
    { label: siloConfig.label, href: `${SITE_URL}/${SILO}` },
  ]

  if (!article) {
    return (
      <>
        <JsonLd schema={breadcrumbSchema(breadcrumbs.map((b) => ({ name: b.label, url: b.href })))} />
        <div className="max-w-7xl mx-auto px-4 py-16">
          <h1 className="text-3xl font-bold text-gray-900">{siloConfig.label}</h1>
          <p className="mt-4 text-lg text-gray-600">{siloConfig.description}</p>
          <div className="mt-10 grid grid-cols-1 sm:grid-cols-2 gap-4">
            {clusters.length > 0
              ? clusters.map((cluster) => (
                  <Link
                    key={cluster.slug}
                    href={`/${cluster.slug}`}
                    className="border border-border rounded-xl p-5 hover:border-primary hover:bg-primary/5 transition-all"
                  >
                    <p className="font-medium text-gray-900">{cluster.h1}</p>
                  </Link>
                ))
              : siloConfig.clusters.map((cluster) => (
                  <Link
                    key={cluster}
                    href={`/${SILO}/${cluster}`}
                    className="border border-border rounded-xl p-5 hover:border-primary hover:bg-primary/5 transition-all"
                  >
                    <p className="font-medium text-gray-900">
                      {cluster.split('-').map((w) => w.charAt(0).toUpperCase() + w.slice(1)).join(' ')}
                    </p>
                  </Link>
                ))}
          </div>
        </div>
      </>
    )
  }

  return <ArticlePageTemplate article={article} breadcrumbs={breadcrumbs} silo={SILO} />
}

