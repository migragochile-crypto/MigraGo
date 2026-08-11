import type { Metadata } from 'next'
import Link from 'next/link'
import { buildMetadata } from '@/lib/seo/metadata'
import Breadcrumbs from '@/components/ui/Breadcrumbs'
import JsonLd from '@/components/seo/JsonLd'
import { breadcrumbSchema } from '@/lib/seo/schemas'
import { PAISES } from '@/lib/content/silos'
import { SITE_URL } from '@/lib/constants'


export const metadata: Metadata = buildMetadata({
  title: 'Guías de Inmigración a Chile por País de Origen',
  description:
    'Selecciona tu país de origen y encuentra toda la información migratoria específica para ti: visas, documentos, requisitos y vida en Chile.',
  slug: 'paises',
})

const breadcrumbs = [
  { label: 'Inicio', href: SITE_URL },
  { label: 'Países', href: `${SITE_URL}/paises` },
]

export default function PaisesHubPage() {
  return (
    <>
      <JsonLd schema={breadcrumbSchema(breadcrumbs.map((b) => ({ name: b.label, url: b.href })))} />
      <div className="max-w-5xl mx-auto px-4 py-8">
        <Breadcrumbs items={breadcrumbs} />
        <header className="mt-6 mb-10">
          <h1 className="text-3xl font-bold text-gray-900">
            Guías de inmigración a Chile por país
          </h1>
          <p className="mt-3 text-lg text-gray-600">
            Selecciona tu país de origen para acceder a información migratoria específica:
            documentos requeridos, visas disponibles, trámites y vida cotidiana en Chile.
          </p>
        </header>

        <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
          {Object.entries(PAISES).map(([slug, config]) => (
            <Link
              key={slug}
              href={`/paises/${slug}`}
              className="flex items-center gap-4 border border-border rounded-xl p-5 hover:border-primary hover:bg-primary/5 transition-all group"
            >
              <span className="text-4xl">{config.flag}</span>
              <div>
                <p className="font-semibold text-gray-900 group-hover:text-primary">
                  {config.label}
                </p>
                <p className="text-sm text-gray-500 mt-0.5">
                  Guía para {config.demonym}
                </p>
              </div>
            </Link>
          ))}
        </div>

        <section className="mt-12 border-t border-border pt-8">
          <h2 className="text-2xl font-bold text-gray-900">Qué cambia según tu país de origen</h2>
          <p className="mt-3 leading-relaxed text-gray-700">
            La nacionalidad puede cambiar la subcategoría disponible, el documento de identidad que
            debes presentar y la forma de obtener o apostillar certificados de antecedentes. También
            puede existir un acuerdo internacional aplicable. Por eso estas páginas separan los
            antecedentes propios del país de las reglas generales de residencia en Chile.
          </p>
          <div className="mt-6 grid gap-5 sm:grid-cols-2">
            <div className="rounded-xl bg-gray-50 p-5">
              <h3 className="font-semibold text-gray-900">Revisa en la guía de tu país</h3>
              <ul className="mt-3 space-y-2 text-sm text-gray-600 list-disc pl-5">
                <li>Autoridad que emite los antecedentes penales.</li>
                <li>Apostilla, legalización o traducción que puede corresponder.</li>
                <li>Acuerdos o instrucciones especiales expresamente vigentes.</li>
              </ul>
            </div>
            <div className="rounded-xl bg-gray-50 p-5">
              <h3 className="font-semibold text-gray-900">Lo que siempre debes confirmar</h3>
              <ul className="mt-3 space-y-2 text-sm text-gray-600 list-disc pl-5">
                <li>La subcategoría exacta y el lugar desde donde se solicita.</li>
                <li>La vigencia exigida para cada documento.</li>
                <li>El formulario y las instrucciones visibles en el portal oficial.</li>
              </ul>
            </div>
          </div>
          <p className="mt-5 text-sm text-gray-500">
            MigraGo no presume que una regla se aplica a todas las nacionalidades. Cuando no existe
            una guía específica terminada, la página se mantiene fuera del índice hasta completar su revisión.
          </p>
        </section>
      </div>
    </>
  )
}
