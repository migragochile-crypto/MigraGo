import { notFound } from 'next/navigation'
import type { Metadata } from 'next'
import Link from 'next/link'
import { getArticleBySlug, getNewsArticles } from '@/lib/supabase/queries'
import { articleMetadata } from '@/lib/seo/metadata'
import Breadcrumbs from '@/components/ui/Breadcrumbs'
import ArticleBody from '@/components/content/ArticleBody'
import LeadMagnet from '@/components/ui/LeadMagnet'
import JsonLd from '@/components/seo/JsonLd'
import { breadcrumbSchema } from '@/lib/seo/schemas'
import { SITE_URL, SITE_NAME } from '@/lib/constants'

export const revalidate = 21600
export const dynamicParams = true

export async function generateStaticParams() {
  const posts = await getNewsArticles()
  return posts.map((post) => ({ slug: post.slug.replace(/^actualidad\//, '') }))
}

export async function generateMetadata({ params }: { params: Promise<{ slug: string }> }): Promise<Metadata> {
  const { slug } = await params
  const article = await getArticleBySlug(`actualidad/${slug}`)
  if (!article) return {}
  const meta = articleMetadata(article)
  meta.alternates = { canonical: `${SITE_URL}/actualidad/${slug}` }
  return meta
}

function newsSchema(article: { h1: string; meta_description: string; published_at: string | null; updated_at: string }, url: string) {
  return {
    '@context': 'https://schema.org',
    '@type': 'NewsArticle',
    headline: article.h1,
    description: article.meta_description,
    url,
    datePublished: article.published_at,
    dateModified: article.updated_at,
    author: { '@type': 'Organization', name: SITE_NAME },
    publisher: {
      '@type': 'Organization',
      name: SITE_NAME,
      logo: { '@type': 'ImageObject', url: `${SITE_URL}/logo.png` },
    },
  }
}

export default async function ActualidadPostPage({ params }: { params: Promise<{ slug: string }> }) {
  const { slug } = await params
  const article = await getArticleBySlug(`actualidad/${slug}`)
  if (!article) notFound()

  const url = `${SITE_URL}/actualidad/${slug}`
  const breadcrumbs = [
    { label: 'Inicio', href: SITE_URL },
    { label: 'Actualidad migratoria', href: `${SITE_URL}/actualidad` },
    { label: article.h1, href: url },
  ]

  return (
    <>
      <JsonLd schema={newsSchema(article, url)} />
      <JsonLd schema={breadcrumbSchema(breadcrumbs.map((b) => ({ name: b.label, url: b.href })))} />

      <div className="max-w-3xl mx-auto px-4 py-8">
        <Breadcrumbs items={breadcrumbs} />

        <article className="mt-6">
          <header className="mb-8">
            {article.published_at && (
              <p className="text-sm font-medium text-primary">
                {new Date(article.published_at).toLocaleDateString('es-CL', {
                  year: 'numeric',
                  month: 'long',
                  day: 'numeric',
                })}
              </p>
            )}
            <h1 className="mt-2 text-3xl lg:text-4xl font-bold text-gray-900 leading-tight">
              {article.h1}
            </h1>
            <p className="mt-4 text-lg text-gray-600 leading-relaxed">{article.meta_description}</p>
          </header>

          {article.content && <ArticleBody content={article.content} />}
        </article>

        <div className="mt-12">
          <LeadMagnet
            source={article.slug}
            title="Recibe el próximo cambio normativo en tu correo"
            description="Te avisamos cuando el SERMIG anuncie cambios que afecten tu trámite. Sin spam."
          />
        </div>

        <div className="mt-8 pt-6 border-t border-border">
          <Link href="/actualidad" className="text-sm text-primary hover:underline">
            ← Ver todas las noticias migratorias
          </Link>
        </div>
      </div>
    </>
  )
}
