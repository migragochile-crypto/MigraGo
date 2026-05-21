import Link from 'next/link'
import type { Metadata } from 'next'
import JsonLd from '@/components/seo/JsonLd'
import { organizationSchema, webSiteSchema } from '@/lib/seo/schemas'
import { SILOS, PAISES, HERRAMIENTAS_LIST, MAIN_SILOS } from '@/lib/content/silos'

export const metadata: Metadata = {
  title: 'MigraGo — Tu guía migratoria en Chile',
  description:
    'Todo sobre Residencia Temporal, autodenuncia, Residencia Definitiva, nacionalización y cómo vivir en Chile. Información clara, actualizada y sin jerga legal.',
  alternates: { canonical: process.env.NEXT_PUBLIC_SITE_URL ?? 'https://migrago.cl' },
}

const SILO_ICONS: Record<string, string> = {
  'residencia-temporal': '🛂',
  'residencia-definitiva': '🏠',
  autodenuncia: '📋',
  nacionalizacion: '🇨🇱',
  'vivir-en-chile': '🌆',
  'problemas-migratorios': '⚠️',
}

export default function HomePage() {
  const siloEntries = MAIN_SILOS.map((slug) => [slug, SILOS[slug]] as const).filter(([, config]) => config)
  const paisEntries = Object.entries(PAISES)

  return (
    <>
      <JsonLd schema={organizationSchema()} />
      <JsonLd schema={webSiteSchema()} />

      {/* Hero */}
      <section className="bg-primary text-white py-24 px-4">
        <div className="max-w-4xl mx-auto text-center">
          <h1 className="text-5xl lg:text-6xl font-bold tracking-tight leading-tight">
            Tu guía migratoria práctica para vivir en Chile
          </h1>
          <p className="mt-6 text-lg lg:text-2xl text-white/90 max-w-3xl mx-auto leading-relaxed">
            Información paso a paso, herramientas útiles y respuestas claras para resolver visas,
            autodenuncia y residencia en Chile.
          </p>
          <div className="mt-10 flex flex-col sm:flex-row justify-center gap-4">
            <Link
              href="/herramientas/quiz-visas"
              className="bg-accent hover:bg-accent-dark text-white font-semibold px-8 py-4 rounded-2xl transition-colors text-base min-w-[220px]"
            >
              ¿Qué permiso necesito?
            </Link>
            <Link
              href="/residencia-temporal"
              className="border border-white/20 text-white font-semibold px-8 py-4 rounded-2xl transition-colors text-base hover:bg-white/10"
            >
              Ver permisos de residencia
            </Link>
          </div>
          <div className="mt-10 grid gap-3 sm:grid-cols-3 text-left">
            <div className="rounded-3xl border border-white/15 bg-white/5 px-4 py-4 text-sm text-white/90">
              <strong className="block font-semibold text-white">Guías claras</strong>
              Contenido directo y fácil de seguir.
            </div>
            <div className="rounded-3xl border border-white/15 bg-white/5 px-4 py-4 text-sm text-white/90">
              <strong className="block font-semibold text-white">Herramientas útiles</strong>
              Calculadoras y pasos prácticos.
            </div>
            <div className="rounded-3xl border border-white/15 bg-white/5 px-4 py-4 text-sm text-white/90">
              <strong className="block font-semibold text-white">Actualizado para Chile</strong>
              Requisitos y trámites vigentes.
            </div>
          </div>
        </div>
      </section>

      {/* Silos */}
      <section className="py-16 px-4 bg-surface">
        <div className="max-w-7xl mx-auto">
          <h2 className="text-2xl lg:text-3xl font-bold text-gray-900 text-center mb-3">
            ¿Qué necesitas hacer?
          </h2>
          <p className="text-gray-500 text-center mb-10">
            Selecciona el tema que corresponde a tu situación
          </p>
          <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-5">
            {siloEntries.map(([slug, config]) => (
              <Link
                key={slug}
                href={`/${slug}`}
                className="group bg-white hover:border-primary border border-border rounded-2xl p-6 transition-all hover:shadow-md"
              >
                <div className="text-4xl mb-3">{SILO_ICONS[slug]}</div>
                <h3 className="font-semibold text-lg text-gray-900 group-hover:text-primary transition-colors">
                  {config.label}
                </h3>
                <p className="mt-2 text-sm text-gray-500 leading-relaxed">{config.description}</p>
                <div className="mt-4 flex items-center text-primary text-sm font-medium">
                  Ver guía
                  <svg
                    className="w-4 h-4 ml-1 group-hover:translate-x-1 transition-transform"
                    fill="none"
                    stroke="currentColor"
                    viewBox="0 0 24 24"
                  >
                    <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M9 5l7 7-7 7" />
                  </svg>
                </div>
              </Link>
            ))}
          </div>
        </div>
      </section>

      {/* Países */}
      <section className="py-16 px-4">
        <div className="max-w-7xl mx-auto">
          <h2 className="text-2xl lg:text-3xl font-bold text-gray-900 text-center mb-3">
            Información por país de origen
          </h2>
          <p className="text-gray-500 text-center mb-10">
            Requisitos y contexto específico según tu nacionalidad
          </p>
          <div className="grid grid-cols-2 sm:grid-cols-4 lg:grid-cols-7 gap-3">
            {paisEntries.map(([slug, config]) => (
              <Link
                key={slug}
                href={`/paises/${slug}`}
                className="flex flex-col items-center gap-2 bg-white border border-border hover:border-primary rounded-xl p-4 text-center transition-all hover:shadow-sm group"
              >
                <span className="text-3xl">{config.flag}</span>
                <span className="text-sm font-medium text-gray-700 group-hover:text-primary transition-colors">
                  {config.label}
                </span>
              </Link>
            ))}
          </div>
        </div>
      </section>

      {/* Herramientas */}
      <section className="py-16 px-4 bg-surface">
        <div className="max-w-7xl mx-auto">
          <h2 className="text-2xl lg:text-3xl font-bold text-gray-900 text-center mb-3">
            Herramientas interactivas
          </h2>
          <p className="text-gray-500 text-center mb-10">
            Calcula plazos, verifica elegibilidad y prepara tu documentación
          </p>
          <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-5">
            {HERRAMIENTAS_LIST.map((tool) => (
              <Link
                key={tool.slug}
                href={`/herramientas/${tool.slug}`}
                className="group bg-white border border-border hover:border-primary rounded-xl p-5 transition-all hover:shadow-sm"
              >
                <span className="text-2xl">{tool.icon}</span>
                <p className="mt-2 font-medium text-gray-900 group-hover:text-primary transition-colors">
                  {tool.label}
                </p>
              </Link>
            ))}
            <Link
              href="/herramientas"
              className="flex items-center justify-center border-2 border-dashed border-gray-300 hover:border-primary rounded-xl p-5 text-gray-500 hover:text-primary transition-colors font-medium"
            >
              Ver todas las herramientas →
            </Link>
          </div>
        </div>
      </section>

      {/* E-E-A-T */}
      <section className="py-16 px-4">
        <div className="max-w-4xl mx-auto text-center">
          <h2 className="text-2xl font-bold text-gray-900 mb-8">¿Por qué confiar en esta guía?</h2>
          <div className="grid grid-cols-1 sm:grid-cols-3 gap-6">
            {[
              {
                icon: '✅',
                title: 'Información verificada',
                desc: 'Cada artículo cita fuentes oficiales: Ley 21.325, SERMIG, PDI, SRCeI y Dirección del Trabajo.',
              },
              {
                icon: '🔄',
                title: 'Actualización constante',
                desc: 'Revisamos el contenido regularmente. Cada página muestra la fecha de última actualización.',
              },
              {
                icon: '📖',
                title: 'Lenguaje claro',
                desc: 'Sin jerga legal innecesaria. Explicamos cada trámite como si fuera la primera vez que lo escuchas.',
              },
            ].map(({ icon, title, desc }) => (
              <div key={title} className="bg-surface rounded-xl p-6">
                <div className="text-3xl mb-3">{icon}</div>
                <h3 className="font-semibold text-gray-900 mb-2">{title}</h3>
                <p className="text-sm text-gray-600 leading-relaxed">{desc}</p>
              </div>
            ))}
          </div>
          <p className="mt-8 text-sm text-gray-400">
            Esta guía es informativa. Para asesoría legal personalizada, consulta con un abogado
            especialista en inmigración.
          </p>
        </div>
      </section>
    </>
  )
}

