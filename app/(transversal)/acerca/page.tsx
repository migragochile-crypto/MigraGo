import type { Metadata } from 'next'
import Link from 'next/link'
import { buildMetadata } from '@/lib/seo/metadata'
import Breadcrumbs from '@/components/ui/Breadcrumbs'
import JsonLd from '@/components/seo/JsonLd'
import { breadcrumbSchema, organizationSchema } from '@/lib/seo/schemas'
import { SITE_URL } from '@/lib/constants'


export const metadata: Metadata = buildMetadata({
  title: 'Acerca de MigraGo — Quiénes somos',
  description:
    'MigraGo es una guía editorial independiente sobre inmigración en Chile. Conoce nuestra misión, proceso editorial, política de transparencia y cómo contactarnos.',
  slug: 'acerca',
})

const breadcrumbs = [
  { label: 'Inicio', href: SITE_URL },
  { label: 'Acerca de MigraGo', href: `${SITE_URL}/acerca` },
]

const FUENTES_CLAVE = [
  'Ley 21.325 de Migración y Extranjería (2021)',
  'Resoluciones y circulares del SERMIG',
  'Portal de Trámites Migratorios del Ministerio del Interior',
  'Sitios oficiales de PDI, SRCeI y Dirección del Trabajo',
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
            Guía editorial independiente sobre inmigración y trámites migratorios en Chile.
          </p>
        </header>

        <div className="space-y-10">

          {/* Misión */}
          <section>
            <h2 className="text-xl font-bold text-gray-900 mb-3">Nuestra misión</h2>
            <p className="text-gray-700 leading-relaxed">
              MigraGo existe para que cualquier persona —sin importar su país de origen ni su nivel
              educativo— pueda entender qué necesita hacer para vivir legalmente en Chile. Tomamos la
              normativa oficial del{' '}
              <a
                href="https://serviciomigraciones.cl"
                target="_blank"
                rel="noopener noreferrer"
                className="text-primary underline"
              >
                Servicio Nacional de Migraciones (SERMIG)
              </a>{' '}
              y la traducimos a pasos concretos, en lenguaje claro y sin jerga legal innecesaria.
            </p>
            <p className="text-gray-700 leading-relaxed mt-3">
              Cubrimos el ciclo migratorio completo: Residencia Temporal, Residencia Definitiva,
              autodenuncia, nacionalización y vida cotidiana en Chile (RUT, FONASA, banco, trabajo
              y arriendo).
            </p>
          </section>

          {/* Por qué existe */}
          <section>
            <h2 className="text-xl font-bold text-gray-900 mb-3">Por qué existe este proyecto</h2>
            <p className="text-gray-700 leading-relaxed">
              Chile recibió más de 1,7 millones de migrantes en la última década. A pesar de ello,
              la información oficial sigue siendo técnica y difícil de seguir. Los foros y grupos de
              Facebook se llenan de desinformación porque no existe una fuente accesible, centralizada
              y actualizada que explique los trámites con claridad.
            </p>
            <p className="text-gray-700 leading-relaxed mt-3">
              MigraGo nació para cerrar esa brecha: un recurso editorial riguroso, gratuito y sin
              agenda comercial que pone la información al alcance de quien la necesita.
            </p>
          </section>

          {/* Qué encontrarás */}
          <section>
            <h2 className="text-xl font-bold text-gray-900 mb-3">Lo que encontrarás aquí</h2>
            <ul className="space-y-2 text-gray-700">
              {[
                'Guías sobre Residencia Temporal, Residencia Definitiva y nacionalización',
                'Información sobre autodenuncia y regularización migratoria ante la PDI',
                'Guías prácticas para vivir en Chile (RUT, FONASA, banco, arriendo)',
                'Información específica por país de origen (Venezuela, Colombia, Perú, Argentina y más)',
                'Herramientas interactivas: calculadoras de plazos, simuladores y checklists',
                'Glosario de términos migratorios con definiciones claras y fuentes oficiales',
              ].map((item) => (
                <li key={item} className="flex gap-2">
                  <span className="text-primary font-bold flex-shrink-0">→</span>
                  <span>{item}</span>
                </li>
              ))}
            </ul>
          </section>

          {/* Proceso editorial */}
          <section>
            <h2 className="text-xl font-bold text-gray-900 mb-3">Cómo trabajamos</h2>
            <p className="text-gray-700 leading-relaxed">
              Cada artículo se basa exclusivamente en fuentes oficiales chilenas:
            </p>
            <ul className="mt-3 space-y-1 text-gray-700">
              {FUENTES_CLAVE.map((f) => (
                <li key={f} className="flex gap-2">
                  <span className="text-gray-400 flex-shrink-0">•</span>
                  <span>{f}</span>
                </li>
              ))}
            </ul>
            <p className="text-gray-700 leading-relaxed mt-4">
              Revisamos y actualizamos el contenido cuando hay cambios normativos. Cada página muestra
              la fecha de última actualización. Puedes leer más sobre nuestro proceso en{' '}
              <Link href="/metodologia" className="text-primary underline">
                nuestra metodología editorial
              </Link>
              .
            </p>
          </section>

          {/* Transparencia financiera */}
          <section>
            <h2 className="text-xl font-bold text-gray-900 mb-3">Modelo de financiamiento</h2>
            <p className="text-gray-700 leading-relaxed">
              MigraGo es un proyecto editorial independiente. El sitio puede mostrar publicidad
              contextual o enlaces de afiliados a servicios de terceros. Cuando esto ocurre, lo
              señalamos explícitamente. Ningún anunciante influye en el contenido editorial: la
              información que publicamos refleja únicamente nuestra lectura de la normativa oficial.
            </p>
            <p className="text-gray-700 leading-relaxed mt-3">
              No cobramos por el acceso al contenido ni prestamos servicios de gestión de trámites.
            </p>
          </section>

          {/* Corrección de errores */}
          <section>
            <h2 className="text-xl font-bold text-gray-900 mb-3">Política de correcciones</h2>
            <p className="text-gray-700 leading-relaxed">
              La normativa migratoria cambia con frecuencia y los errores editoriales pueden ocurrir.
              Si detectas información incorrecta, desactualizada o incompleta en cualquier artículo,
              escríbenos. Revisamos todos los reportes y actualizamos el contenido dentro de las
              72 horas hábiles siguientes.
            </p>
            <div className="mt-4">
              <a
                href="mailto:hola@migrago.cl"
                className="inline-flex items-center gap-2 bg-primary text-white px-5 py-2.5 rounded-lg font-medium hover:bg-primary-dark transition-colors text-sm"
              >
                <svg className="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" />
                </svg>
                Reportar un error
              </a>
            </div>
          </section>

          {/* Aviso legal */}
          <section>
            <h2 className="text-xl font-bold text-gray-900 mb-3">Aviso importante</h2>
            <div className="bg-amber-50 border border-amber-200 rounded-xl p-5 text-amber-900 text-sm leading-relaxed">
              MigraGo es un recurso informativo y educativo. No somos abogados ni prestamos servicios
              legales. La información publicada tiene carácter orientativo y no reemplaza la asesoría
              de un profesional en inmigración. Si tu situación es compleja o urgente, consulta con
              un abogado especializado en derecho migratorio.
            </div>
          </section>

          {/* Contacto */}
          <section>
            <h2 className="text-xl font-bold text-gray-900 mb-3">Contacto</h2>
            <p className="text-gray-700 leading-relaxed">
              Para consultas editoriales, correcciones o colaboraciones, escríbenos a{' '}
              <a href="mailto:hola@migrago.cl" className="text-primary underline">
                hola@migrago.cl
              </a>
              . No respondemos consultas sobre casos migratorios individuales — para eso, consulta
              con un profesional del área.
            </p>
          </section>

        </div>
      </div>
    </>
  )
}
