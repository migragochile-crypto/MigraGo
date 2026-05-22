import { notFound } from 'next/navigation'
import type { Metadata } from 'next'
import { getArticleBySlug, getAllPublishedArticles } from '@/lib/supabase/queries'
import { articleMetadata, buildMetadata } from '@/lib/seo/metadata'
import ArticlePageTemplate from '@/components/templates/ArticlePageTemplate'
import { PAISES, slugToLabel } from '@/lib/content/silos'

const SITE_URL = process.env.NEXT_PUBLIC_SITE_URL ?? 'https://migrago.cl'

export const revalidate = 3600
export const dynamicParams = true

export async function generateStaticParams() {
  const published = await getAllPublishedArticles()
  const paisSlugs = Object.keys(PAISES)

  return published
    .filter((article) => {
      if (!article.country_tags || article.country_tags.length === 0) return false
      const slugParts = article.slug.split('/')
      return slugParts.length === 2 && paisSlugs.includes(slugParts[0])
    })
    .map((article) => {
      const [pais, tema] = article.slug.split('/')
      return { pais, tema }
    })
}

export async function generateMetadata({
  params,
}: {
  params: Promise<{ pais: string; tema: string }>
}): Promise<Metadata> {
  const { pais, tema } = await params
  const paisConfig = PAISES[pais]
  if (!paisConfig) return {}
  const article = await getArticleBySlug(`${pais}/${tema}`)
  if (!article) {
    return buildMetadata({
      title: `${slugToLabel(tema)} — ${paisConfig.label}`,
      description: `Información específica para ${paisConfig.demonym} sobre ${slugToLabel(tema)} en Chile.`,
      slug: `paises/${pais}/${tema}`,
    })
  }
  const meta = articleMetadata(article)
  meta.alternates = { canonical: `${SITE_URL}/paises/${pais}/${tema}` }
  return meta
}

export default async function PaisTemaPag({
  params,
}: {
  params: Promise<{ pais: string; tema: string }>
}) {
  const { pais, tema } = await params
  const paisConfig = PAISES[pais]
  if (!paisConfig) notFound()

  const article = await getArticleBySlug(`${pais}/${tema}`)
  if (!article) notFound()

  const breadcrumbs = [
    { label: 'Inicio', href: SITE_URL },
    { label: 'Países', href: `${SITE_URL}/paises` },
    { label: paisConfig.label, href: `${SITE_URL}/paises/${pais}` },
    { label: article.h1, href: `${SITE_URL}/paises/${article.slug}` },
  ]

  return <ArticlePageTemplate article={article} breadcrumbs={breadcrumbs} silo={pais} />
}
