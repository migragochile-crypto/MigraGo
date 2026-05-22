import { notFound } from 'next/navigation'
import type { Metadata } from 'next'
import Link from 'next/link'
import { getArticleBySlug, getArticlesBySilo } from '@/lib/supabase/queries'
import { articleMetadata, buildMetadata } from '@/lib/seo/metadata'
import ArticleBody from '@/components/content/ArticleBody'
import Breadcrumbs from '@/components/ui/Breadcrumbs'
import JsonLd from '@/components/seo/JsonLd'
import { breadcrumbSchema } from '@/lib/seo/schemas'
import { PAISES, SILOS, MAIN_SILOS } from '@/lib/content/silos'

const SITE_URL = process.env.NEXT_PUBLIC_SITE_URL ?? 'https://migrago.cl'

export const revalidate = 3600
export const dynamicParams = true

export async function generateStaticParams() {
  return Object.keys(PAISES).map((pais) => ({ pais }))
}

export async function generateMetadata({ params }: { params: Promise<{ pais: string }> }): Promise<Metadata> {
  const { pais } = await params
  const paisConfig = PAISES[pais]
  if (!paisConfig) return {}
  const article = await getArticleBySlug(pais)
  if (!article) {
    return buildMetadata({
      title: `Inmigración en Chile para ${paisConfig.demonym}`,
      description: `Guía completa para inmigrantes de ${paisConfig.label} en Chile: visas, requisitos, trámites y vida cotidiana.`,
      slug: `paises/${pais}`,
    })
  }
  const meta = articleMetadata(article)
  meta.alternates = { canonical: `${SITE_URL}/paises/${pais}` }
  return meta
}

export default async function PaisHubPage({ params }: { params: Promise<{ pais: string }> }) {
  const { pais } = await params
  const paisConfig = PAISES[pais]
  if (!paisConfig) notFound()

  const article = await getArticleBySlug(pais)
  const siloArticles = await getArticlesBySilo(pais)
  const clusters = siloArticles.filter((a) => a.type === 'cluster')

  const breadcrumbs = [
    { label: 'Inicio', href: SITE_URL },
    { label: 'Países', href: `${SITE_URL}/paises` },
    { label: paisConfig.label, href: `${SITE_URL}/paises/${pais}` },
  ]


  return (
    <>
      <JsonLd schema={breadcrumbSchema(breadcrumbs.map((b) => ({ name: b.label, url: b.href })))} />
      <div className="max-w-5xl mx-auto px-4 py-8">
        <Breadcrumbs items={breadcrumbs} />
        <header className="mt-6 mb-10">
          <div className="flex items-center gap-4">
            <span className="text-5xl">{paisConfig.flag}</span>
            <div>
              <h1 className="text-3xl font-bold text-gray-900">
                Inmigración en Chile para {paisConfig.demonym}
              </h1>
              <p className="text-gray-500 mt-1">Guía de trámites y vida cotidiana</p>
            </div>
          </div>
        </header>

        {article?.content && <ArticleBody content={article.content} />}

        {clusters.length > 0 && (
          <section className="mt-10">
            <h2 className="text-xl font-bold text-gray-900 mb-5">Guías específicas para {paisConfig.demonym}</h2>
            <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
              {clusters.map((cluster) => (
                <Link
                  key={cluster.slug}
                  href={`/paises/${cluster.slug}`}
                  className="border border-border rounded-xl p-5 hover:border-primary hover:bg-primary/5 transition-all group"
                >
                  <p className="font-medium text-gray-900 group-hover:text-primary">{cluster.h1}</p>
                </Link>
              ))}
            </div>
          </section>
        )}

        <section className="mt-12">
          <h2 className="text-xl font-bold text-gray-900 mb-5">Trámites relevantes</h2>
          <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
            {MAIN_SILOS.map((slug) => {
              const config = SILOS[slug]
              if (!config) return null
              return (
                <Link
                  key={slug}
                  href={`/${slug}`}
                  className="border border-border rounded-xl p-5 hover:border-primary hover:bg-primary/5 transition-all group"
                >
                  <p className="font-medium text-gray-900 group-hover:text-primary">{config.label}</p>
                  <p className="text-sm text-gray-500 mt-1">{config.description}</p>
                </Link>
              )
            })}
          </div>
        </section>
      </div>
    </>
  )
}
