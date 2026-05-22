import { notFound } from 'next/navigation'
import type { Metadata } from 'next'
import Breadcrumbs from '@/components/ui/Breadcrumbs'
import ToolRenderer from '@/components/herramientas/ToolRenderer'
import JsonLd from '@/components/seo/JsonLd'
import { HERRAMIENTAS_LIST } from '@/lib/content/silos'
import { buildMetadata } from '@/lib/seo/metadata'
import { softwareApplicationSchema } from '@/lib/seo/schemas'
import { SITE_URL } from '@/lib/constants'


export const revalidate = 3600
export const dynamicParams = false

export async function generateStaticParams() {
  return HERRAMIENTAS_LIST.map(({ slug }) => ({ herramienta: slug }))
}

export async function generateMetadata({
  params,
}: {
  params: Promise<{ herramienta: string }>
}): Promise<Metadata> {
  const { herramienta } = await params
  const tool = HERRAMIENTAS_LIST.find((t) => t.slug === herramienta)
  if (!tool) return {}
  return buildMetadata({
    title: tool.label,
    description: `Herramienta interactiva: ${tool.label}. Gratis y actualizada.`,
    slug: `herramientas/${herramienta}`,
  })
}

const TOOL_META: Record<string, { desc: string; icon: string }> = {
  'calculadora-elegibilidad': {
    desc: 'Responde 4 preguntas y descubre qué visa o categoría migratoria se ajusta mejor a tu situación.',
    icon: '🧮',
  },
  'simulador-plazos': {
    desc: 'Calcula cuándo serías elegible para la Residencia Definitiva y la Carta de Naturalización.',
    icon: '📅',
  },
  'checklist-permanencia-definitiva': {
    desc: 'Lista de documentos para tu solicitud de Residencia Definitiva. Tu progreso se guarda automáticamente.',
    icon: '✅',
  },
  'checklist-temporaria': {
    desc: 'Elige el tipo de Residencia Temporal y obtén la lista de documentos específica. Tu progreso se guarda automáticamente.',
    icon: '📝',
  },
  'consultar-estado': {
    desc: 'Cómo verificar el estado de tu trámite en el portal oficial del SERMIG y qué significa cada estado.',
    icon: '🔍',
  },
}

export default async function HerramientaPage({
  params,
}: {
  params: Promise<{ herramienta: string }>
}) {
  const { herramienta } = await params
  const tool = HERRAMIENTAS_LIST.find((t) => t.slug === herramienta)
  if (!tool) notFound()

  const meta = TOOL_META[herramienta]

  const breadcrumbs = [
    { label: 'Inicio', href: SITE_URL },
    { label: 'Herramientas', href: `${SITE_URL}/herramientas` },
    { label: tool.label, href: `${SITE_URL}/herramientas/${herramienta}` },
  ]

  return (
    <>
      <JsonLd
        schema={softwareApplicationSchema({
          name: tool.label,
          description: meta?.desc || `Herramienta interactiva: ${tool.label}`,
          url: `${SITE_URL}/herramientas/${herramienta}`,
        })}
      />
      <div className="max-w-2xl mx-auto px-4 py-10">
        <Breadcrumbs items={breadcrumbs} />

        <div className="mt-6 mb-8">
          <div className="text-4xl mb-3">{meta?.icon ?? '🔧'}</div>
          <h1 className="text-3xl font-bold text-gray-900">{tool.label}</h1>
          {meta?.desc && (
            <p className="mt-2 text-gray-600">{meta.desc}</p>
          )}
        </div>

        <div className="border border-border rounded-2xl p-6 bg-white">
          <ToolRenderer slug={herramienta} />
        </div>

        <p className="mt-6 text-xs text-gray-400 text-center">
          Herramienta orientativa — no reemplaza asesoría legal ni la información oficial del SERMIG.
        </p>
      </div>
    </>
  )
}

