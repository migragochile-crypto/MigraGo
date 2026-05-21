import type { Metadata } from 'next'
import Link from 'next/link'
import { getAllGlossaryTerms } from '@/lib/supabase/queries'
import Breadcrumbs from '@/components/ui/Breadcrumbs'

const SITE_URL = process.env.NEXT_PUBLIC_SITE_URL ?? 'https://migrago.cl'

export const revalidate = 86400

export const metadata: Metadata = {
  title: 'Glosario migratorio Chile',
  description:
    'Definiciones claras de los términos más usados en los trámites de inmigración en Chile: visa, permanencia, autodenuncia, SERMIG y más.',
  alternates: { canonical: `${SITE_URL}/glosario` },
}

export default async function GlosarioPage() {
  const terms = await getAllGlossaryTerms()
  const breadcrumbs = [
    { label: 'Inicio', href: SITE_URL },
    { label: 'Glosario', href: `${SITE_URL}/glosario` },
  ]

  const grouped = terms.reduce<Record<string, typeof terms>>((acc, term) => {
    const letter = term.term[0].toUpperCase()
    if (!acc[letter]) acc[letter] = []
    acc[letter].push(term)
    return acc
  }, {})

  return (
    <div className="max-w-4xl mx-auto px-4 py-10">
      <Breadcrumbs items={breadcrumbs} />
      <h1 className="mt-6 text-3xl font-bold text-gray-900">Glosario migratorio</h1>
      <p className="mt-3 text-gray-600">
        Definiciones de los términos más usados en inmigración en Chile.
      </p>

      {terms.length === 0 ? (
        <p className="mt-10 text-gray-400 text-center py-16">El glosario está en construcción.</p>
      ) : (
        <div className="mt-10 space-y-10">
          {Object.entries(grouped)
            .sort(([a], [b]) => a.localeCompare(b))
            .map(([letter, entries]) => (
              <div key={letter}>
                <h2 className="text-xl font-bold text-primary border-b border-primary/20 pb-2 mb-4">
                  {letter}
                </h2>
                <ul className="space-y-3">
                  {entries.map((term) => (
                    <li key={term.slug}>
                      <Link
                        href={`/glosario/${term.slug}`}
                        className="font-medium text-gray-900 hover:text-primary transition-colors"
                      >
                        {term.term}
                      </Link>
                      <p className="text-sm text-gray-500 mt-0.5 line-clamp-2">{term.definition}</p>
                    </li>
                  ))}
                </ul>
              </div>
            ))}
        </div>
      )}
    </div>
  )
}

