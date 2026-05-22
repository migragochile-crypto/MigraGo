import { notFound } from 'next/navigation'
import type { Metadata } from 'next'
import Link from 'next/link'
import { getGlossaryTerm, getAllGlossaryTerms, getRelatedArticles } from '@/lib/supabase/queries'
import Breadcrumbs from '@/components/ui/Breadcrumbs'
import JsonLd from '@/components/seo/JsonLd'
import { SITE_URL } from '@/lib/constants'


export const revalidate = 3600
export const dynamicParams = true

export async function generateStaticParams() {
  const terms = await getAllGlossaryTerms()
  return terms.map(({ slug }) => ({ termino: slug }))
}

export async function generateMetadata({
  params,
}: {
  params: Promise<{ termino: string }>
}): Promise<Metadata> {
  const { termino } = await params
  const term = await getGlossaryTerm(termino)
  if (!term) return {}
  return {
    title: `${term.term} — Glosario migratorio`,
    description: term.definition.slice(0, 160),
    alternates: { canonical: `${SITE_URL}/glosario/${termino}` },
  }
}

export default async function TerminoPage({ params }: { params: Promise<{ termino: string }> }) {
  const { termino } = await params
  const term = await getGlossaryTerm(termino)
  if (!term) notFound()

  const related = term.related_slugs?.length > 0
    ? await getRelatedArticles(term.related_slugs)
    : []

  const breadcrumbs = [
    { label: 'Inicio', href: SITE_URL },
    { label: 'Glosario', href: `${SITE_URL}/glosario` },
    { label: term.term, href: `${SITE_URL}/glosario/${termino}` },
  ]

  const definitionSchema = {
    '@context': 'https://schema.org',
    '@type': 'DefinedTerm',
    name: term.term,
    description: term.definition,
    inDefinedTermSet: `${SITE_URL}/glosario`,
  }

  return (
    <>
      <JsonLd schema={definitionSchema} />
      <div className="max-w-3xl mx-auto px-4 py-10">
        <Breadcrumbs items={breadcrumbs} />
        <h1 className="mt-6 text-3xl font-bold text-gray-900">{term.term}</h1>
        <p className="mt-4 text-lg text-gray-700 leading-relaxed">{term.definition}</p>

        {related.length > 0 && (
          <div className="mt-8">
            <h2 className="font-semibold text-gray-900 mb-3">Artículos relacionados</h2>
            <ul className="space-y-2">
              {related.map((article) => (
                <li key={article.slug}>
                  <Link
                    href={`/${article.slug}`}
                    className="text-primary hover:underline"
                  >
                    → {article.h1 || article.title}
                  </Link>
                </li>
              ))}
            </ul>
          </div>
        )}

        <div className="mt-8">
          <Link href="/glosario" className="text-sm text-primary hover:underline">
            ← Volver al glosario
          </Link>
        </div>
      </div>
    </>
  )
}
