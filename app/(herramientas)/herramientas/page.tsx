import type { Metadata } from 'next'
import Link from 'next/link'
import { HERRAMIENTAS_LIST } from '@/lib/content/silos'
import Breadcrumbs from '@/components/ui/Breadcrumbs'
import { SITE_URL } from '@/lib/constants'


export const metadata: Metadata = {
  title: 'Herramientas migratorias gratuitas | MigraGo',
  description:
    'Calculadora de elegibilidad, simulador de plazos, checklists y consultor de estado de trámite. Herramientas gratuitas para tu proceso migratorio en Chile.',
  alternates: { canonical: `${SITE_URL}/herramientas` },
}

const TOOL_DESCRIPTIONS: Record<string, string> = {
  'calculadora-elegibilidad': 'Responde preguntas y descubre qué permiso de residencia puedes solicitar según tu situación.',
  'simulador-plazos': 'Calcula cuándo podrías obtener tu Residencia Definitiva o naturalización.',
  'checklist-permanencia-definitiva': 'Lista completa de documentos para tu solicitud de Residencia Definitiva.',
  'checklist-temporaria': 'Documentos necesarios para cada tipo de Residencia Temporal.',
  'consultar-estado': 'Ingresa tu número de solicitud y verifica el estado de tu trámite.',
  'quiz-visas': 'Responde 5 preguntas y descubre qué permiso migratorio se adapta mejor a tu situación.',
  'calculadora-multas': 'Estima el monto de la multa por permanencia irregular y el costo total de regularizarte.',
  'matriz-visas': 'Compara requisitos, plazos y costos de cada tipo de permiso de residencia en Chile.',
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
    </div>
  )
}

