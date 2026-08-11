import { notFound } from 'next/navigation'
import type { Metadata } from 'next'
import Breadcrumbs from '@/components/ui/Breadcrumbs'
import ToolRenderer from '@/components/herramientas/ToolRenderer'
import JsonLd from '@/components/seo/JsonLd'
import { HERRAMIENTAS_LIST } from '@/lib/content/silos'
import { buildMetadata } from '@/lib/seo/metadata'
import { softwareApplicationSchema } from '@/lib/seo/schemas'
import { SITE_URL } from '@/lib/constants'


export const revalidate = 86400
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

interface ToolMeta {
  desc: string
  icon: string
  helpsWith: string[]
  limits: string[]
  source: { label: string; href: string }
}

const TOOL_META: Record<string, ToolMeta> = {
  'calculadora-elegibilidad': {
    desc: 'Responde 4 preguntas y descubre qué visa o categoría migratoria se ajusta mejor a tu situación.',
    icon: '🧮',
    helpsWith: [
      'Ordenar posibles subcategorías según nacionalidad, vínculos y actividad principal.',
      'Llegar a una guía específica para revisar los requisitos de esa opción.',
    ],
    limits: [
      'No determina si una solicitud será admitida ni reemplaza la evaluación del SERMIG.',
      'La posibilidad de postular desde Chile o desde el extranjero depende de la subcategoría y de tu situación de ingreso.',
    ],
    source: { label: 'Subcategorías de Residencia Temporal — SERMIG', href: 'https://serviciomigraciones.cl/residencia-temporal/subcategorias/' },
  },
  'simulador-plazos': {
    desc: 'Visualiza fechas de referencia para la Residencia Definitiva y la Carta de Naturalización.',
    icon: '📅',
    helpsWith: [
      'Visualizar la fecha base de 24 meses para Residencia Definitiva bajo la normativa actual.',
      'Estimar el hito de cinco años de residencia usado para la nacionalización ordinaria.',
    ],
    limits: [
      'Ausencias, infracciones y otras circunstancias pueden aumentar el plazo para Residencia Definitiva.',
      'Algunos casos pueden optar a reducción a 12 meses; la nacionalización exige Residencia Definitiva vigente y otros requisitos.',
    ],
    source: { label: 'Residencia Definitiva — SERMIG', href: 'https://serviciomigraciones.cl/residencia-definitiva/' },
  },
  'checklist-permanencia-definitiva': {
    desc: 'Lista de documentos para tu solicitud de Residencia Definitiva. Tu progreso se guarda automáticamente.',
    icon: '✅',
    helpsWith: [
      'Organizar documentos generales y marcar tu avance sin crear una cuenta.',
      'Detectar con anticipación antecedentes que deben estar vigentes o apostillados.',
    ],
    limits: [
      'El listado visible en tu trámite puede variar según tu subcategoría y situación personal.',
      'Marcar todos los elementos no significa que la solicitud esté completa o vaya a ser aprobada.',
    ],
    source: { label: 'Residencia Definitiva — SERMIG', href: 'https://serviciomigraciones.cl/residencia-definitiva/' },
  },
  'checklist-temporaria': {
    desc: 'Elige el tipo de Residencia Temporal y obtén la lista de documentos específica. Tu progreso se guarda automáticamente.',
    icon: '📝',
    helpsWith: [
      'Preparar una lista inicial según la subcategoría que estás evaluando.',
      'Separar documentos de identidad, antecedentes y respaldos propios de cada motivo de residencia.',
    ],
    limits: [
      'Es una pauta de preparación y no reproduce el formulario individual del portal.',
      'Debes confirmar la vigencia, apostilla, traducción y lugar de postulación antes de presentar.',
    ],
    source: { label: 'Subcategorías de Residencia Temporal — SERMIG', href: 'https://serviciomigraciones.cl/residencia-temporal/subcategorias/' },
  },
  'consultar-estado': {
    desc: 'Cómo verificar el estado de tu trámite en el portal oficial del SERMIG y qué significa cada estado.',
    icon: '🔍',
    helpsWith: [
      'Ubicar el canal oficial de consulta y entender estados frecuentes del expediente.',
      'Distinguir una solicitud en análisis de una notificación que exige una acción.',
    ],
    limits: [
      'Solo el portal y las notificaciones de tu expediente muestran el estado con efectos oficiales.',
      'Los nombres de estados pueden cambiar y una misma etiqueta no sustituye la lectura de la resolución.',
    ],
    source: { label: 'Portal de Trámites Digitales — SERMIG', href: 'https://tramites.serviciomigraciones.cl/' },
  },
  'calculadora-multas': {
    desc: 'Estima la multa rebajada de una primera infracción por permiso migratorio vencido.',
    icon: '💰',
    helpsWith: [
      'Aplicar la tabla oficial rebajada para una primera infracción por permiso vencido.',
      'Convertir el resultado en UTM a pesos usando el valor mensual que ingreses.',
    ],
    limits: [
      'No aplica al ingreso por paso no habilitado ni a todas las clases de infracción.',
      'El cálculo y la resolución oficiales corresponden al SERMIG; reincidencia y otros antecedentes cambian el monto.',
    ],
    source: { label: 'Declaración de infracción y cálculo de multa — SERMIG', href: 'https://serviciomigraciones.cl/declarar-infraccion/' },
  },
  'matriz-visas': {
    desc: 'Compara el fundamento y las verificaciones principales de distintas subcategorías de Residencia Temporal.',
    icon: '📊',
    helpsWith: [
      'Comparar el fundamento de varias subcategorías de Residencia Temporal.',
      'Identificar qué condición principal debes acreditar antes de abrir una guía.',
    ],
    limits: [
      'No compara probabilidades de aprobación ni promete tiempos de tramitación.',
      'Los requisitos definitivos son los publicados por SERMIG para la subcategoría y el lugar de postulación.',
    ],
    source: { label: 'Subcategorías de Residencia Temporal — SERMIG', href: 'https://serviciomigraciones.cl/residencia-temporal/subcategorias/' },
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

        {meta && (
          <section className="mt-10 border-t border-border pt-8" aria-labelledby="alcance-herramienta">
            <h2 id="alcance-herramienta" className="text-2xl font-bold text-gray-900">
              Alcance de esta herramienta
            </h2>
            <div className="mt-6 grid gap-6 sm:grid-cols-2">
              <div>
                <h3 className="font-semibold text-gray-900">Para qué sirve</h3>
                <ul className="mt-3 space-y-2 text-sm leading-relaxed text-gray-600 list-disc pl-5">
                  {meta.helpsWith.map((item) => <li key={item}>{item}</li>)}
                </ul>
              </div>
              <div>
                <h3 className="font-semibold text-gray-900">Qué debes verificar</h3>
                <ul className="mt-3 space-y-2 text-sm leading-relaxed text-gray-600 list-disc pl-5">
                  {meta.limits.map((item) => <li key={item}>{item}</li>)}
                </ul>
              </div>
            </div>
            <div className="mt-6 rounded-xl bg-gray-50 p-4 text-sm text-gray-600">
              <p><strong className="text-gray-900">Revisión normativa:</strong> 10 de agosto de 2026.</p>
              <a
                href={meta.source.href}
                target="_blank"
                rel="noopener noreferrer"
                className="mt-2 inline-block font-medium text-primary hover:underline"
              >
                Fuente principal: {meta.source.label} ↗
              </a>
            </div>
          </section>
        )}
      </div>
    </>
  )
}
