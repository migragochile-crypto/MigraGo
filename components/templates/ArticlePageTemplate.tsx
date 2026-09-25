import Breadcrumbs from '@/components/ui/Breadcrumbs'
import SiloSidebar from '@/components/ui/SiloSidebar'
import RelatedContent from '@/components/ui/RelatedContent'
import CtaBanner from '@/components/ui/CtaBanner'
import LeadMagnet from '@/components/ui/LeadMagnet'
import ArticleBody from '@/components/content/ArticleBody'
import EditorialDisclosure from '@/components/ui/EditorialDisclosure'
import WiseAffiliateBlock from '@/components/ui/WiseAffiliateBlock'
import Link from 'next/link'
import JsonLd from '@/components/seo/JsonLd'
import {
  articleSchema,
  faqSchema,
  howToSchema,
  breadcrumbSchema,
} from '@/lib/seo/schemas'
import { SILOS } from '@/lib/content/silos'
import type { Article, BreadcrumbItem } from '@/types/content'
import { getPublicAuthorName } from '@/lib/editorial'
import { getArticleHeadings } from '@/lib/content/headings'

interface Props {
  article: Article
  breadcrumbs: BreadcrumbItem[]
  silo: string
}

function linkFirstWiseMention(content: string, placement: string) {
  const firstMention = 'Wise es una'
  if (!content.includes(firstMention)) return content

  const href = `https://wise.prf.hn/click/camref:1101l6u5z5/pubref:${placement}-contextual`
  const linkedMention = `<a href="${href}" target="_blank" rel="sponsored noopener noreferrer" aria-label="Conocer Wise (enlace de afiliado; abre en una pestaña nueva)">Wise</a> es una`

  return content.replace(firstMention, linkedMention)
}

function addWiseMarkerFallback(content: string, placement: string, marker: string) {
  if (content.includes(marker) || placement !== 'cuenta-bancaria') return content

  const nextSection = '<h2>¿Puedo abrir una cuenta antes de llegar a Chile?</h2>'
  return content.includes(nextSection)
    ? content.replace(nextSection, `${marker}${nextSection}`)
    : content
}

export default function ArticlePageTemplate({ article, breadcrumbs, silo }: Props) {
  const siloConfig = SILOS[silo]
  const publicAuthor = getPublicAuthorName(article.author)

  const isHowTo = article.schema_type === 'HowTo' && article.howto_steps?.length > 0
  const wisePlacement = article.slug === 'vivir-en-chile/cuenta-bancaria'
    ? 'cuenta-bancaria'
    : article.slug === 'vivir-en-chile/remesas'
      ? 'remesas'
      : article.slug === 'vivir-en-chile/enviar-dinero-colombia'
        ? 'enviar-dinero-colombia'
      : null
  const wiseMarker = '<!-- WISE_AFFILIATE_CTA -->'
  const articleContent = wisePlacement && article.content
    ? addWiseMarkerFallback(
        linkFirstWiseMention(article.content, wisePlacement),
        wisePlacement,
        wiseMarker
      )
    : article.content
  const contentParts = wisePlacement && articleContent?.includes(wiseMarker)
    ? articleContent.split(wiseMarker)
    : null
  const articleHeadings = articleContent
    ? getArticleHeadings(articleContent, 12).filter((heading) => heading.level === 2).slice(0, 6)
    : []
  const updatedLabel = article.updated_at
    ? new Date(article.updated_at).toLocaleDateString('es-CL', {
        year: 'numeric',
        month: 'long',
        day: 'numeric',
      })
    : null

  const schemas: Record<string, unknown>[] = [
    isHowTo ? howToSchema(article.h1, article.howto_steps) : articleSchema(article),
    breadcrumbSchema(breadcrumbs.map((b) => ({ name: b.label, url: b.href }))),
  ]

  // FAQPage alongside Article (or HowTo) is valid — Google puede mostrar ambos rich results
  if (article.faq_items?.length) {
    schemas.push(faqSchema(article.faq_items))
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
                <div className="mt-5 rounded-3xl border border-primary/15 bg-primary/5 p-6 text-gray-700">
                  <p className="text-xs font-bold uppercase tracking-[0.14em] text-primary">Respuesta rápida</p>
                  <p className="mt-2 text-base leading-8">{article.meta_description}</p>
                </div>
                <div className="mt-4 flex flex-wrap items-center gap-x-4 gap-y-2 text-sm text-gray-600">
                  {article.reading_time_minutes && (
                    <span className="inline-flex items-center gap-1.5">
                      <svg aria-hidden="true" className="h-4 w-4 text-gray-400" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M12 6v6l4 2m5-2a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
                      </svg>
                      {article.reading_time_minutes} min de lectura
                    </span>
                  )}
                  {updatedLabel && (
                    <span className="inline-flex items-center gap-1.5">
                      <svg aria-hidden="true" className="h-4 w-4 text-green-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="m5 12 4 4L19 6" />
                      </svg>
                      Verificado: {updatedLabel}
                    </span>
                  )}
                  <span>
                    Por{' '}
                    <Link href="/acerca#marcelo" className="text-primary hover:underline">
                      {publicAuthor}
                    </Link>
                  </span>
                  <Link href="/metodologia" className="font-medium text-primary hover:underline">
                    Cómo verificamos la información
                  </Link>
                </div>
              </header>

              {articleHeadings.length > 1 && (
                <nav aria-label="Contenido de esta guía" className="mb-9 rounded-2xl border border-gray-200 bg-white p-5">
                  <div className="flex items-center justify-between gap-3">
                    <p className="font-semibold text-gray-900">En esta guía</p>
                    <span className="text-xs text-gray-400">Ir a una sección</span>
                  </div>
                  <ul className="mt-3 grid gap-x-6 gap-y-2 sm:grid-cols-2">
                    {articleHeadings.map((heading) => (
                      <li key={heading.id} className={heading.level === 3 ? 'sm:pl-3' : undefined}>
                        <a href={`#${heading.id}`} className="group flex items-start gap-2 text-sm leading-6 text-gray-600 hover:text-primary">
                          <span aria-hidden="true" className="mt-2 h-1.5 w-1.5 shrink-0 rounded-full bg-gray-300 group-hover:bg-primary" />
                          {heading.text}
                        </a>
                      </li>
                    ))}
                  </ul>
                </nav>
              )}

              {contentParts ? (
                <>
                  <ArticleBody content={contentParts[0]} />
                  {wisePlacement && <WiseAffiliateBlock placement={wisePlacement} />}
                  <ArticleBody content={contentParts.slice(1).join('')} />
                </>
              ) : (
                <>
                  {articleContent && <ArticleBody content={articleContent} />}
                  {wisePlacement && <WiseAffiliateBlock placement={wisePlacement} />}
                </>
              )}

              <div className="mt-12">
                <EditorialDisclosure updatedAt={article.updated_at} />
              </div>

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
                          {faq.q}
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
                          {faq.a}
                        </div>
                      </details>
                    ))}
                  </div>
                </section>
              )}
            </article>

            <div className="mt-12">
              <LeadMagnet source={article.slug} />
            </div>

            <RelatedContent slugs={article.related_slugs ?? []} currentSlug={article.slug} />

            {/* CTA mobile — visible solo en pantallas < lg */}
            {siloConfig && (
              <div className="lg:hidden mt-10 rounded-xl border border-primary/20 bg-primary/5 p-6 text-center">
                <p className="font-semibold text-gray-900 mb-3">{siloConfig.cta.text}</p>
                <a
                  href={siloConfig.cta.href}
                  target={siloConfig.cta.href.startsWith('http') ? '_blank' : undefined}
                  rel={siloConfig.cta.href.startsWith('http') ? 'noopener noreferrer' : undefined}
                  className="inline-block bg-primary text-white px-6 py-3 rounded-lg font-semibold hover:bg-primary-dark transition-colors"
                >
                  {siloConfig.cta.text}
                </a>
              </div>
            )}
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
