import type { Metadata } from 'next'
import { getArticleBySlug } from '@/lib/supabase/queries'
import { articleMetadata, buildMetadata } from '@/lib/seo/metadata'
import ArticlePageTemplate from '@/components/templates/ArticlePageTemplate'
import { SILOS } from '@/lib/content/silos'
import { breadcrumbSchema } from '@/lib/seo/schemas'
import JsonLd from '@/components/seo/JsonLd'
import Link from 'next/link'
import { SITE_URL } from '@/lib/constants'

const SILO = 'problemas-migratorios'

const SITUACIONES_DESTACADAS = [
  {
    slug: 'rechazo-visa',
    title: 'Rechazo de residencia',
    description: 'Cómo leer la resolución, identificar sus fundamentos y revisar las vías de impugnación disponibles.',
  },
  {
    slug: 'recurso-administrativo',
    title: 'Recursos administrativos',
    description: 'Qué antecedentes reunir antes de responder y por qué el plazo indicado en la notificación es decisivo.',
  },
  {
    slug: 'multas-migratorias',
    title: 'Infracciones y multas',
    description: 'Dónde declarar una infracción, cómo consultar el cálculo oficial y qué comprobantes conservar.',
  },
  {
    slug: 'visa-vencida',
    title: 'Permiso vencido',
    description: 'Pasos iniciales para comprobar tu situación y evitar confundir una infracción con un ingreso clandestino.',
  },
  {
    slug: 'sin-respuesta-sermig',
    title: 'Trámite sin respuesta',
    description: 'Cómo documentar el seguimiento, revisar notificaciones y usar los canales formales de consulta.',
  },
  {
    slug: 'derechos-migrante',
    title: 'Derechos de las personas migrantes',
    description: 'Principios básicos y señales de que conviene buscar orientación jurídica individual.',
  },
]

export const revalidate = 86400

export async function generateMetadata(): Promise<Metadata> {
  const article = await getArticleBySlug(SILO)
  if (!article) {
    return buildMetadata({ title: SILOS[SILO].label, description: SILOS[SILO].description, slug: SILO })
  }
  return articleMetadata(article)
}

export default async function ProblemasPage() {
  const article = await getArticleBySlug(SILO)
  const siloConfig = SILOS[SILO]
  const breadcrumbs = [
    { label: 'Inicio', href: SITE_URL },
    { label: siloConfig.label, href: `${SITE_URL}/${SILO}` },
  ]

  if (!article) {
    return (
      <>
        <JsonLd schema={breadcrumbSchema(breadcrumbs.map((b) => ({ name: b.label, url: b.href })))} />
        <main className="max-w-5xl mx-auto px-4 py-12">
          <header className="max-w-3xl">
            <p className="text-sm font-semibold text-primary">Orientación inicial</p>
            <h1 className="mt-2 text-4xl font-bold text-gray-900">{siloConfig.label}</h1>
            <p className="mt-4 text-lg leading-relaxed text-gray-600">
              {siloConfig.description}. Estas guías te ayudan a ordenar antecedentes y entender el
              procedimiento, pero una resolución concreta debe evaluarse según su texto y tus circunstancias.
            </p>
          </header>

          <section className="mt-10 rounded-2xl border border-amber-200 bg-amber-50 p-6">
            <h2 className="text-xl font-bold text-gray-900">Antes de actuar</h2>
            <ol className="mt-4 space-y-3 text-gray-700 list-decimal list-inside">
              <li>Descarga la resolución o notificación completa y anota la fecha en que la recibiste.</li>
              <li>Revisa el estado directamente en el portal oficial y conserva los comprobantes.</li>
              <li>No asumas un plazo: usa el que aparece en tu notificación y verifica la norma aplicable.</li>
              <li>Si existe riesgo de expulsión, prohibición de ingreso o pérdida de un plazo, busca asesoría jurídica individual.</li>
            </ol>
          </section>

          <section className="mt-12">
            <h2 className="text-2xl font-bold text-gray-900">Elige la situación que necesitas revisar</h2>
            <p className="mt-2 text-gray-600">
              Cada guía separa la explicación general de los pasos que deben confirmarse en una fuente oficial.
            </p>
            <div className="mt-6 grid grid-cols-1 sm:grid-cols-2 gap-4">
              {SITUACIONES_DESTACADAS.map((item) => (
                <Link
                  key={item.slug}
                  href={`/${SILO}/${item.slug}`}
                  className="border border-border rounded-xl p-5 hover:border-primary hover:bg-primary/5 transition-all"
                >
                  <h3 className="font-semibold text-gray-900">{item.title}</h3>
                  <p className="mt-2 text-sm leading-relaxed text-gray-600">{item.description}</p>
                </Link>
              ))}
            </div>
          </section>

          <section className="mt-12 border-t border-border pt-8">
            <h2 className="text-2xl font-bold text-gray-900">Fuentes y límites de estas guías</h2>
            <p className="mt-3 leading-relaxed text-gray-700">
              MigraGo contrasta la información con el Servicio Nacional de Migraciones, la Ley 21.325
              y sus reglamentos. Los formularios, aranceles y criterios pueden cambiar, por lo que el
              resultado válido siempre es el que muestra la autoridad en tu expediente.
            </p>
            <div className="mt-5 flex flex-wrap gap-4 text-sm">
              <a
                href="https://serviciomigraciones.cl/"
                target="_blank"
                rel="noopener noreferrer"
                className="font-medium text-primary hover:underline"
              >
                Servicio Nacional de Migraciones ↗
              </a>
              <Link href="/metodologia" className="font-medium text-primary hover:underline">
                Cómo revisamos el contenido →
              </Link>
            </div>
          </section>
        </main>
      </>
    )
  }

  return <ArticlePageTemplate article={article} breadcrumbs={breadcrumbs} silo={SILO} />
}
