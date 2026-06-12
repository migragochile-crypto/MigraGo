import { notFound } from 'next/navigation'
import type { Metadata } from 'next'
import { getArticleBySlug, getPublishedClustersBySilo } from '@/lib/supabase/queries'
import { articleMetadata, buildMetadata } from '@/lib/seo/metadata'
import ArticlePageTemplate from '@/components/templates/ArticlePageTemplate'
import { SILOS, slugToLabel } from '@/lib/content/silos'
import { SITE_URL } from '@/lib/constants'

const SILO = 'residencia-definitiva'

export const revalidate = 86400
export const dynamicParams = true

export async function generateStaticParams() {
  const clusters = await getPublishedClustersBySilo(SILO)
  return clusters.map((cluster) => ({ cluster }))
}

export async function generateMetadata({ params }: { params: Promise<{ cluster: string }> }): Promise<Metadata> {
  const { cluster } = await params
  const article = await getArticleBySlug(`${SILO}/${cluster}`)
  if (!article) return buildMetadata({ title: slugToLabel(cluster), description: SILOS[SILO].description, slug: `${SILO}/${cluster}` })
  return articleMetadata(article)
}

export default async function PermanenciaDefinitivaClusterPage({ params }: { params: Promise<{ cluster: string }> }) {
  const { cluster } = await params
  const article = await getArticleBySlug(`${SILO}/${cluster}`)
  if (!article) notFound()

  const breadcrumbs = [
    { label: 'Inicio', href: SITE_URL },
    { label: SILOS[SILO].label, href: `${SITE_URL}/${SILO}` },
    { label: article.h1, href: `${SITE_URL}/${article.slug}` },
  ]

  return <ArticlePageTemplate article={article} breadcrumbs={breadcrumbs} silo={SILO} />
}

