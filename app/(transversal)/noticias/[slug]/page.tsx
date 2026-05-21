import { notFound } from 'next/navigation'
import type { Metadata } from 'next'
import { getArticleBySlug } from '@/lib/supabase/queries'
import { articleMetadata } from '@/lib/seo/metadata'
import ArticleBody from '@/components/content/ArticleBody'
import Breadcrumbs from '@/components/ui/Breadcrumbs'
import JsonLd from '@/components/seo/JsonLd'
import { articleSchema, breadcrumbSchema } from '@/lib/seo/schemas'

const SITE_URL = process.env.NEXT_PUBLIC_SITE_URL ?? 'https://migrago.cl'

export const revalidate = 3600
export const dynamicParams = true

export async function generateStaticParams() {
  return []
}

export async function generateMetadata({ params }: { params: Promise<{ slug: string }> }): Promise<Metadata> {
  const { slug } = await params
  const article = await getArticleBySlug(`noticias/${slug}`)
  if (!article) return {}
  return articleMetadata(article)
}

export default async function NoticiaPage({ params }: { params: Promise<{ slug: string }> }) {
  const { slug } = await params
  const article = await getArticleBySlug(`noticias/${slug}`)
  if (!article) notFound()

  const breadcrumbs = [
    { label: 'Inicio', href: SITE_URL },
    { label: 'Noticias', href: `${SITE_URL}/noticias` },
    { label: article.h1, href: `${SITE_URL}/${article.slug}` },
  ]

  return (
    <>
      <JsonLd schema={articleSchema(article)} />
      <JsonLd schema={breadcrumbSchema(breadcrumbs.map((b) => ({ name: b.label, url: b.href })))} />
      <div className="max-w-3xl mx-auto px-4 py-10">
        <Breadcrumbs items={breadcrumbs} />
        <article className="mt-6">
          <header className="mb-8">
            <h1 className="text-3xl font-bold text-gray-900 leading-tight">{article.h1}</h1>
            {article.published_at && (
              <p className="mt-3 text-sm text-gray-400">
                {new Date(article.published_at).toLocaleDateString('es-CL', { year: 'numeric', month: 'long', day: 'numeric' })}
              </p>
            )}
          </header>
          {article.content && <ArticleBody content={article.content} />}
        </article>
      </div>
    </>
  )
}

