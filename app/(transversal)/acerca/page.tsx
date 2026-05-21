import type { Metadata } from 'next'
import Link from 'next/link'
import { buildMetadata } from '@/lib/seo/metadata'
import Breadcrumbs from '@/components/ui/Breadcrumbs'
import JsonLd from '@/components/seo/JsonLd'
import { breadcrumbSchema, organizationSchema } from '@/lib/seo/schemas'

const SITE_URL = process.env.NEXT_PUBLIC_SITE_URL ?? 'https://migrago.cl'

export const metadata: Metadata = buildMetadata({
  title: 'Acerca de MigraGo — Quiénes somos',
  description:
    'MigraGo es una guía independiente sobre inmigración en Chile. Conoce quiénes somos, nuestra misión y por qué creamos este proyecto.',
  slug: 'acerca',
})

const breadcrumbs = [
  { label: 'Inicio', href: SITE_URL },
  { label: 'Acerca de MigraGo', href: `${SITE_URL}/acerca` },
]

export default function AcercaPage() {
  return (
    <>
      <JsonLd schema={breadcrumbSchema(breadcrumbs.map((b) => ({ name: b.label, url: b.href })))} />
      <JsonLd schema={organizationSchema()} />

      <div className="max-w-3xl mx-auto px-4 py-12">
        <Breadcrumbs items={breadcrumbs} />

        <header className="mt-8 mb-10">
          <h1 className="text-3xl font-bold text-gray-900">Acerca de MigraGo</h1>
          <p className="mt-3 text-lg text-gray-600">
            Una guía independiente sobre inmigración y trámites migratorios en Chile.
          </p>
        </header>

        <div className="prose prose-gray max-w-none space-y-10">

          <section>
            <h2 className="text-xl font-bold text-gray-900 mb-3">¿Qué es MigraGo?</h2>
            <p className="text-gray-700 leading-relaxed">
              MigraGo es un proyecto editorial independiente dedicado a explicar, de forma clara y
              práctica, los trámites migratorios en Chile. Nuestro objetivo es que cualquier
              persona —sin importar su país de origen ni su nivel educativo— pueda entender qué
              necesita hacer para vivir legalmente en Chile.
            </p>
            <p className="text-gray-700 leading-relaxed mt-3">
              Cubrimos todo el ciclo migratorio: desde la primera Residencia Temporal hasta la
              naturalización, pasando por la autodenuncia, la Residencia Definitiva y la vida
              cotidiana (RUT, salud, banco, trabajo y arriendo).
            </p>
          </section>

          <section>
            <h2 className="text-xl font-bold text-gray-900 mb-3">Por qué existe este proyecto</h2>
            <p className="text-gray-700 leading-relaxed">
              Chile ha recibido millones de migrantes en los últimos años. Sin embargo, la
              información oficial del{' '}
              <a
                href="https://www.sermig.gob.cl"
                target="_blank"
                rel="noopener noreferrer"
                className="text-primary underline"
              >
                Servicio Nacional de Migraciones (SERMIG)
              </a>{' '}
              suele ser técnica y difícil de seguir. MigraGo nació para cerrar esa brecha: tomamos
              la normativa oficial y la traducimos a pasos concretos y comprensibles.
            </p>
          </section>

          <section>
            <h2 className="text-xl font-bold text-gray-900 mb-3">Lo que encontrarás aquí</h2>
            <ul className="space-y-2 text-gray-700">
              <li className="flex gap-2">
                <span className="text-primary font-bold">→</span>
                <span>Guías sobre Residencia Temporal, Residencia Definitiva y nacionalización</span>
              </li>
              <li className="flex gap-2">
                <span className="text-primary font-bold">→</span>
                <span>Información sobre autodenuncia y regularización migratoria</span>
              </li>
              <li className="flex gap-2">
                <span className="text-primary font-bold">→</span>
                <span>Guías prácticas para vivir en Chile (RUT, FONASA, banco, arriendo)</span>
              </li>
              <li className="flex gap-2">
                <span className="text-primary font-bold">→</span>
                <span>Información específica por país de origen</span>
              </li>
              <li className="flex gap-2">
                <span className="text-primary font-bold">→</span>
                <span>Herramientas interactivas: calculadoras, simuladores y checklists</span>
              </li>
            </ul>
          </section>

          <section>
            <h2 className="text-xl font-bold text-gray-900 mb-3">Aviso importante</h2>
            <div className="bg-amber-50 border border-amber-200 rounded-xl p-5 text-amber-900 text-sm leading-relaxed">
              MigraGo es un recurso informativo y educativo. No somos abogados ni prestamos
              servicios legales. La información publicada tiene carácter orientativo y no reemplaza
              la asesoría de un profesional en inmigración. Si tu situación es compleja o urgente,
              consulta con un abogado especializado en derecho migratorio.
            </div>
          </section>

          <section>
            <h2 className="text-xl font-bold text-gray-900 mb-3">¿Cómo trabajamos?</h2>
            <p className="text-gray-700 leading-relaxed">
              Cada artículo se basa en fuentes oficiales: la Ley 21.325 de Migración y Extranjería,
              las resoluciones del SERMIG, el portal de trámites del Ministerio del Interior y los
              sitios del SRCeI, PDI y Dirección del Trabajo.
            </p>
            <p className="text-gray-700 leading-relaxed mt-3">
              Revisamos y actualizamos el contenido cuando hay cambios normativos. Cada página
              muestra la fecha de última actualización.
            </p>
            <p className="text-gray-700 leading-relaxed mt-3">
              Puedes leer más sobre nuestro proceso editorial en{' '}
              <Link href="/metodologia" className="text-primary underline">
                nuestra página de metodología
              </Link>
              .
            </p>
          </section>

        </div>
      </div>
    </>
  )
}
