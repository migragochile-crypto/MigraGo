import type { Metadata } from 'next'
import Link from 'next/link'
import { HERRAMIENTAS_LIST } from '@/lib/content/silos'
import Breadcrumbs from '@/components/ui/Breadcrumbs'
import { SITE_URL } from '@/lib/constants'
import { buildMetadata } from '@/lib/seo/metadata'


export const metadata: Metadata = buildMetadata({
  title: 'Herramientas migratorias gratuitas',
  description:
    'Estimadores, comparadores y listas de preparación con límites claros y enlaces a fuentes oficiales para trámites migratorios en Chile.',
  slug: 'herramientas',
})

const TOOL_DESCRIPTIONS: Record<string, string> = {
  'calculadora-elegibilidad': 'Explora subcategorías que conviene revisar según tu situación; no predice una aprobación.',
  'simulador-plazos': 'Visualiza fechas base y las circunstancias que pueden modificar el cálculo.',
  'checklist-permanencia-definitiva': 'Organiza una lista inicial y confirma el detalle en tu formulario oficial.',
  'checklist-temporaria': 'Prepara documentos por subcategoría y verifica vigencia, apostilla y lugar de postulación.',
  'consultar-estado': 'Entiende estados frecuentes y revisa qué canal oficial debes consultar.',
  'calculadora-multas': 'Aplica la tabla rebajada para una primera infracción por permiso vencido.',
  'matriz-visas': 'Compara el fundamento y las verificaciones principales de distintas subcategorías.',
}

export default function HerramientasIndexPage() {
  const breadcrumbs = [
    { label: 'Inicio', href: SITE_URL },
    { label: 'Herramientas', href: `${SITE_URL}/herramientas` },
  ]

  return (
    <div className="max-w-5xl mx-auto px-4 py-10">
      <Breadcrumbs items={breadcrumbs} />
      <h1 className="mt-6 text-3xl font-bold text-gray-900">Herramientas migratorias</h1>
      <p className="mt-3 text-lg text-gray-600">
        Recursos interactivos y gratuitos para simplificar tu proceso migratorio en Chile.
      </p>
      <div className="mt-10 grid grid-cols-1 sm:grid-cols-2 gap-5">
        {HERRAMIENTAS_LIST.map((tool) => (
          <Link
            key={tool.slug}
            href={`/herramientas/${tool.slug}`}
            className="group border border-border hover:border-primary rounded-2xl p-6 transition-all hover:shadow-md bg-white"
          >
            <div className="text-3xl mb-3">{tool.icon}</div>
            <h2 className="font-semibold text-lg text-gray-900 group-hover:text-primary transition-colors">
              {tool.label}
            </h2>
            <p className="mt-2 text-sm text-gray-500">{TOOL_DESCRIPTIONS[tool.slug]}</p>
          </Link>
        ))}
      </div>

      <section className="mt-12 rounded-2xl border border-border bg-gray-50 p-6">
        <h2 className="text-2xl font-bold text-gray-900">Cómo usar estos resultados</h2>
        <p className="mt-3 leading-relaxed text-gray-700">
          Las herramientas convierten reglas generales en una pauta de lectura o un cálculo de
          referencia. Cada una explica qué dato usa, qué situaciones deja fuera y cuál es su fuente
          principal. No ingresan a tu cuenta del SERMIG ni consultan expedientes personales.
        </p>
        <ul className="mt-4 space-y-2 text-sm leading-relaxed text-gray-600 list-disc pl-5">
          <li>Confirma siempre el resultado en el portal o ficha oficial enlazada.</li>
          <li>No interpretes una coincidencia como elegibilidad o aprobación garantizada.</li>
          <li>Las respuestas y el progreso de las listas permanecen en tu dispositivo cuando se usa almacenamiento local.</li>
        </ul>
        <p className="mt-4 text-sm text-gray-500">Revisión normativa de las herramientas: 10 de agosto de 2026.</p>
      </section>
    </div>
  )
}
