import Breadcrumbs from '@/components/ui/Breadcrumbs'
import SiloSidebar from '@/components/ui/SiloSidebar'
import RelatedContent from '@/components/ui/RelatedContent'
import CtaBanner from '@/components/ui/CtaBanner'
import ArticleBody from '@/components/content/ArticleBody'
import JsonLd from '@/components/seo/JsonLd'
import {
  articleSchema,
  faqSchema,
  howToSchema,
  breadcrumbSchema,
} from '@/lib/seo/schemas'
import { SILOS } from '@/lib/content/silos'
import type { Article, BreadcrumbItem } from '@/types/content'

interface Props {
  article: Article
  breadcrumbs: BreadcrumbItem[]
  silo: string
}

export default function ArticlePageTemplate({ article, breadcrumbs, silo }: Props) {
  const siloConfig = SILOS[silo]

  const schemas: Record<string, unknown>[] = [
    articleSchema(article),
    breadcrumbSchema(breadcrumbs.map((b) => ({ name: b.label, url: b.href }))),
  ]

  if (article.faq_items?.length) {
    schemas.push(faqSchema(article.faq_items))
  }
  if (article.schema_type === 'HowTo' && article.howto_steps?.length) {
    schemas.push(howToSchema(article.h1, article.howto_steps))
  }

  return (
    <>
      {schemas.map((schema, i) => (
        <JsonLd key={i} schema={schema} />
      ))}

      <div className="max-w-7xl mx-auto px-4 py-8">
        <Breadcrumbs items={breadcrumbs} />

        <div className="mt-6 grid grid-cols-1 lg:grid-cols-[240px_1fr_288px] gap-8">
          {/* Left sidebar — silo navigation */}
          <aside className="hidden lg:block">
            <SiloSidebar silo={silo} currentSlug={article.slug} />
          </aside>

          {/* Main article */}
          <main className="min-w-0">
            <article>
              <header className="mb-8">
                <h1 className="text-3xl lg:text-4xl font-bold text-gray-900 leading-tight">
                  {article.h1}
                </h1>
                <div className="mt-5 rounded-3xl border border-gray-200 bg-surface p-6 text-gray-700">
                  <p className="text-base leading-8">{article.meta_description}</p>
                </div>
                <div className="mt-4 flex flex-wrap items-center gap-4 text-sm text-gray-500">
                  {article.reading_time_minutes && (
                    <span>{article.reading_time_minutes} min de lectura</span>
                  )}
                  {article.updated_at && (
                    <span>
                      Actualizado:{' '}
                      {new Date(article.updated_at).toLocaleDateString('es-CL', {
                        year: 'numeric',
                        month: 'long',
                        day: 'numeric',
                      })}
                    </span>
                  )}
                  <span className="text-gray-400">Por {article.author}</span>
                </div>
              </header>

              {article.content && <ArticleBody content={article.content} />}

              {article.faq_items?.length > 0 && (
                <section className="mt-12">
                  <h2 className="text-2xl font-bold text-gray-900 mb-6">Preguntas frecuentes</h2>
                  <div className="space-y-3">
                    {article.faq_items.map((faq, i) => (
                      <details
                        key={i}
                        className="group border border-gray-200 rounded-xl overflow-hidden"
                      >
                        <summary className="flex justify-between items-center px-5 py-4 cursor-pointer font-medium text-gray-900 hover:bg-gray-50 transition-colors list-none">
                          {faq.question}
                          <svg
                            className="w-5 h-5 text-gray-400 group-open:rotate-180 transition-transform flex-shrink-0 ml-3"
                            fill="none"
                            stroke="currentColor"
                            viewBox="0 0 24 24"
                          >
                            <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M19 9l-7 7-7-7" />
                          </svg>
                        </summary>
                        <div className="px-5 py-4 text-gray-700 border-t border-gray-100 text-sm leading-relaxed">
                          {faq.answer}
                        </div>
                      </details>
                    ))}
                  </div>
                </section>
              )}
            </article>

            <RelatedContent slugs={article.related_slugs ?? []} currentSlug={article.slug} />
          </main>

          {/* Right sidebar — CTA */}
          <aside className="hidden lg:block">
            {siloConfig && (
              <CtaBanner text={siloConfig.cta.text} href={siloConfig.cta.href} silo={silo} />
            )}
          </aside>
        </div>
      </div>
    </>
  )
}

