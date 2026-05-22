import type { Metadata } from 'next'
import { buildMetadata } from '@/lib/seo/metadata'
import Breadcrumbs from '@/components/ui/Breadcrumbs'
import JsonLd from '@/components/seo/JsonLd'
import { breadcrumbSchema } from '@/lib/seo/schemas'
import { SITE_URL } from '@/lib/constants'


export const metadata: Metadata = buildMetadata({
  title: 'Metodología editorial — MigraGo',
  description:
    'Cómo verificamos, redactamos y actualizamos el contenido de MigraGo. Fuentes oficiales, proceso editorial y política de actualización.',
  slug: 'metodologia',
})

const breadcrumbs = [
  { label: 'Inicio', href: SITE_URL },
  { label: 'Metodología', href: `${SITE_URL}/metodologia` },
]

const FUENTES = [
  {
    nombre: 'Servicio Nacional de Migraciones (SERMIG)',
    url: 'https://www.sermig.gob.cl',
    descripcion: 'Trámites de residencia, visas, plazos y normativa vigente.',
  },
  {
    nombre: 'Portal de Trámites Migratorios',
    url: 'https://tramitesmigratorios.interior.gob.cl',
    descripcion: 'Solicitudes en línea y estado de trámites.',
  },
  {
    nombre: 'Policía de Investigaciones de Chile (PDI)',
    url: 'https://www.pdichile.cl',
    descripcion: 'Autodenuncia migratoria y control de ingreso.',
  },
  {
    nombre: 'Registro Civil e Identificación (SRCeI)',
    url: 'https://www.srcei.cl',
    descripcion: 'RUN, cédula de identidad para extranjeros y nacionalización.',
  },
  {
    nombre: 'Dirección del Trabajo',
    url: 'https://www.dt.gob.cl',
    descripcion: 'Contratos, derechos laborales y condiciones de trabajo.',
  },
  {
    nombre: 'Ley 21.325 de Migración y Extranjería',
    url: 'https://www.bcn.cl/leychile/navegar?idNorma=1177286',
    descripcion: 'Marco legal vigente que rige la inmigración en Chile desde 2021.',
  },
]

export default function MetodologiaPage() {
  return (
    <>
      <JsonLd schema={breadcrumbSchema(breadcrumbs.map((b) => ({ name: b.label, url: b.href })))} />

      <div className="max-w-3xl mx-auto px-4 py-12">
        <Breadcrumbs items={breadcrumbs} />

        <header className="mt-8 mb-10">
          <h1 className="text-3xl font-bold text-gray-900">Metodología editorial</h1>
          <p className="mt-3 text-lg text-gray-600">
            Cómo investigamos, redactamos y mantenemos actualizado el contenido de MigraGo.
          </p>
        </header>

        <div className="space-y-10">

          <section>
            <h2 className="text-xl font-bold text-gray-900 mb-3">Principio de base</h2>
            <p className="text-gray-700 leading-relaxed">
              Todo el contenido de MigraGo parte de fuentes oficiales chilenas. No publicamos
              información de segunda mano ni basada en experiencias no verificadas sin indicarlo
              explícitamente. Si la normativa es ambigua o está sujeta a interpretación, lo
              señalamos en el artículo.
            </p>
          </section>

          <section>
            <h2 className="text-xl font-bold text-gray-900 mb-4">Fuentes que consultamos</h2>
            <div className="space-y-3">
              {FUENTES.map((fuente) => (
                <div key={fuente.url} className="border border-border rounded-xl p-4">
                  <a
                    href={fuente.url}
                    target="_blank"
                    rel="noopener noreferrer"
                    className="font-semibold text-primary hover:underline"
                  >
                    {fuente.nombre}
                  </a>
                  <p className="text-sm text-gray-600 mt-1">{fuente.descripcion}</p>
                </div>
              ))}
            </div>
          </section>

          <section>
            <h2 className="text-xl font-bold text-gray-900 mb-3">Proceso de redacción</h2>
            <ol className="space-y-3 text-gray-700">
              {[
                'Identificamos el trámite o tema a cubrir y la intención del usuario (¿qué quiere saber exactamente?).',
                'Consultamos la normativa oficial vigente y el portal de trámites del SERMIG.',
                'Redactamos el artículo en lenguaje claro, sin jerga legal innecesaria.',
                'Añadimos ejemplos concretos, listas de documentos y pasos numerados cuando corresponde.',
                'Indicamos la fecha de publicación y la fuente consultada.',
              ].map((paso, i) => (
                <li key={i} className="flex gap-3">
                  <span className="flex-shrink-0 w-6 h-6 bg-primary text-white rounded-full flex items-center justify-center text-xs font-bold">
                    {i + 1}
                  </span>
                  <span>{paso}</span>
                </li>
              ))}
            </ol>
          </section>

          <section>
            <h2 className="text-xl font-bold text-gray-900 mb-3">Política de actualización</h2>
            <p className="text-gray-700 leading-relaxed">
              La normativa migratoria chilena cambia con frecuencia. Cuando el SERMIG, el
              Ministerio del Interior o la PDI publican cambios relevantes, actualizamos los
              artículos afectados. La fecha de última actualización aparece visible en cada
              página.
            </p>
            <p className="text-gray-700 leading-relaxed mt-3">
              Si detectas información desactualizada o incorrecta, escríbenos. La precisión del
              contenido es nuestra prioridad.
            </p>
          </section>

          <section>
            <h2 className="text-xl font-bold text-gray-900 mb-3">Lo que no hacemos</h2>
            <ul className="space-y-2 text-gray-700">
              {[
                'No brindamos asesoría legal personalizada.',
                'No gestionamos trámites en nombre de terceros.',
                'No prometemos resultados específicos en solicitudes de residencia.',
                'No publicamos contenido patrocinado que pueda confundirse con información editorial.',
              ].map((item) => (
                <li key={item} className="flex gap-2">
                  <span className="text-red-400 font-bold flex-shrink-0">✕</span>
                  <span>{item}</span>
                </li>
              ))}
            </ul>
          </section>

        </div>
      </div>
    </>
  )
}
