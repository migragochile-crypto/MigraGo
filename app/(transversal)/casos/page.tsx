import type { Metadata } from 'next'
import Link from 'next/link'
import { getAllPublishedArticles } from '@/lib/supabase/queries'
import Breadcrumbs from '@/components/ui/Breadcrumbs'

const SITE_URL = process.env.NEXT_PUBLIC_SITE_URL ?? 'https://migrago.cl'

export const revalidate = 86400

export const metadata: Metadata = {
  title: 'Casos reales de inmigración en Chile',
  description:
    'Historias reales de personas que tramitaron su visa, permanencia definitiva o nacionalización en Chile. Aprende de su experiencia.',
  alternates: { canonical: `${SITE_URL}/casos` },
}

export default async function CasosPage() {
  const all = await getAllPublishedArticles()
  const casos = all.filter((a) => a.type === 'caso')
  const breadcrumbs = [
    { label: 'Inicio', href: SITE_URL },
    { label: 'Casos reales', href: `${SITE_URL}/casos` },
  ]

  return (
    <div className="max-w-4xl mx-auto px-4 py-10">
      <Breadcrumbs items={breadcrumbs} />
      <h1 className="mt-6 text-3xl font-bold text-gray-900">Casos reales</h1>
      <p className="mt-3 text-gray-600">
        Experiencias de personas que pasaron por el proceso migratorio en Chile.
      </p>

      {casos.length === 0 ? (
        <p className="mt-10 text-gray-400 text-center py-16">No hay casos publicados aún.</p>
      ) : (
        <div className="mt-10 grid grid-cols-1 sm:grid-cols-2 gap-5">
          {casos.map((caso) => (
            <Link
              key={caso.slug}
              href={`/${caso.slug}`}
              className="border border-border rounded-xl p-5 hover:border-primary hover:bg-primary/5 transition-all group"
            >
              <p className="font-medium text-gray-900 group-hover:text-primary">{caso.slug.split('/')[1]}</p>
            </Link>
          ))}
        </div>
      )}
    </div>
  )
}

