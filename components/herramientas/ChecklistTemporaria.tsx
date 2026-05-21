'use client'

import { useEffect, useState } from 'react'
import Link from 'next/link'

type TipoVisa =
  | 'mercosur'
  | 'hijo-chileno'
  | 'pareja-chilena'
  | 'contrato-trabajo'
  | 'responsabilidad-democratica'
  | 'estudiante'
  | 'razones-humanitarias'

interface Item {
  id: string
  doc: string
  detalle: string
  href?: string
}

const DOC_BASE: Record<string, Item> = {
  pasaporte: {
    id: 'pasaporte',
    doc: 'Pasaporte vigente',
    detalle: 'Con vigencia suficiente conforme a los criterios del SERMIG.',
  },
  pasaporte_vrd: {
    id: 'pasaporte',
    doc: 'Pasaporte venezolano (puede estar vencido en muchos casos)',
    detalle: 'El SERMIG puede aceptar pasaportes vencidos para la VRD dado el reconocimiento de las dificultades institucionales en Venezuela. Verifica el estado actual de esta política en el SERMIG.',
  },
  ant_chile: {
    id: 'ant-chile',
    doc: 'Certificado de antecedentes penales de Chile (SRCeI)',
    detalle: 'Gratuito en registrocivil.cl. Verifica el plazo de vigencia exigido por el SERMIG.',
  },
  ant_origen: {
    id: 'ant-origen',
    doc: 'Certificado de antecedentes del país de origen',
    detalle: 'Apostillado. En español o con traducción oficial. Verifica el plazo de vigencia exigido por el SERMIG.',
    href: '/problemas/antecedentes-penales',
  },
  ant_cicpc: {
    id: 'ant-origen',
    doc: 'Certificado de antecedentes CICPC (Venezuela)',
    detalle: 'Emitido por el CICPC, apostillado cuando corresponda. Verifica los requisitos actualizados con el SERMIG dado que las políticas para documentos venezolanos pueden variar.',
  },
  domicilio: {
    id: 'domicilio',
    doc: 'Comprobante de domicilio en Chile',
    detalle: 'Contrato de arriendo, boleta de servicio u otro documento según los criterios del SERMIG.',
  },
  foto: {
    id: 'foto',
    doc: 'Fotografía reciente tamaño carnet',
    detalle: 'El SERMIG puede solicitarla. Verifica los requisitos específicos en el portal.',
  },
  nacimiento_hijo: {
    id: 'nacimiento-hijo',
    doc: 'Certificado de nacimiento del hijo/a chileno/a (SRCeI)',
    detalle: 'Debe indicar la nacionalidad chilena. Se obtiene en el Registro Civil (registrocivil.cl).',
  },
  matrimonio_auc: {
    id: 'matrimonio-auc',
    doc: 'Acta de matrimonio o certificado de AUC',
    detalle: 'Si fue celebrado en Chile: emitido por el SRCeI. Si fue en el extranjero: apostillado y traducido si corresponde. Verifica el plazo de vigencia con el SERMIG.',
  },
  contrato: {
    id: 'contrato',
    doc: 'Contrato de trabajo firmado',
    detalle: 'Debe estar firmado por el empleador y el trabajador. En algunos casos el SERMIG puede requerir que sea ratificado ante notario o en la Inspección del Trabajo.',
    href: '/residencia-temporal/contrato-trabajo',
  },
  carta_aceptacion: {
    id: 'carta-aceptacion',
    doc: 'Carta de aceptación de institución educativa',
    detalle: 'De una institución reconocida por el Estado chileno (universidad, instituto, centro de formación técnica, etc.).',
  },
  doc_humanitario: {
    id: 'doc-humanitario',
    doc: 'Documentación que acredite la situación de vulnerabilidad',
    detalle: 'Varía según el caso: puede ser carta de organización de apoyo, documentos médicos, declaraciones de testigos, entre otros. El SERMIG evalúa cada caso.',
  },
}

const CHECKLIST_POR_VISA: Record<TipoVisa, { items: Item[]; articuloHref: string }> = {
  mercosur: {
    items: [DOC_BASE.pasaporte, DOC_BASE.ant_chile, DOC_BASE.ant_origen, DOC_BASE.domicilio, DOC_BASE.foto],
    articuloHref: '/residencia-temporal/mercosur',
  },
  'hijo-chileno': {
    items: [DOC_BASE.pasaporte, DOC_BASE.ant_chile, DOC_BASE.ant_origen, DOC_BASE.nacimiento_hijo, DOC_BASE.domicilio, DOC_BASE.foto],
    articuloHref: '/residencia-temporal/hijo-chileno',
  },
  'pareja-chilena': {
    items: [DOC_BASE.pasaporte, DOC_BASE.ant_chile, DOC_BASE.ant_origen, DOC_BASE.matrimonio_auc, DOC_BASE.domicilio, DOC_BASE.foto],
    articuloHref: '/residencia-temporal/pareja-chilena',
  },
  'contrato-trabajo': {
    items: [DOC_BASE.pasaporte, DOC_BASE.ant_chile, DOC_BASE.ant_origen, DOC_BASE.contrato, DOC_BASE.domicilio, DOC_BASE.foto],
    articuloHref: '/residencia-temporal/contrato-trabajo',
  },
  'responsabilidad-democratica': {
    items: [DOC_BASE.pasaporte_vrd, DOC_BASE.ant_cicpc, DOC_BASE.domicilio, DOC_BASE.foto],
    articuloHref: '/residencia-temporal/responsabilidad-democratica',
  },
  estudiante: {
    items: [DOC_BASE.pasaporte, DOC_BASE.ant_chile, DOC_BASE.ant_origen, DOC_BASE.carta_aceptacion, DOC_BASE.domicilio, DOC_BASE.foto],
    articuloHref: '/residencia-temporal/estudiante',
  },
  'razones-humanitarias': {
    items: [DOC_BASE.pasaporte, DOC_BASE.ant_chile, DOC_BASE.doc_humanitario, DOC_BASE.domicilio, DOC_BASE.foto],
    articuloHref: '/residencia-temporal/razones-humanitarias',
  },
}

const OPCIONES_VISA: { value: TipoVisa; label: string }[] = [
  { value: 'mercosur', label: 'Visa Mercosur (Argentina, Bolivia, Colombia, Perú y otros)' },
  { value: 'hijo-chileno', label: 'Por hijo/a con nacionalidad chilena' },
  { value: 'pareja-chilena', label: 'Por pareja chilena (matrimonio o AUC)' },
  { value: 'contrato-trabajo', label: 'Por contrato de trabajo' },
  { value: 'responsabilidad-democratica', label: 'Visa de Responsabilidad Democrática (VRD) — solo venezolanos' },
  { value: 'estudiante', label: 'Visa de estudiante' },
  { value: 'razones-humanitarias', label: 'Por razones humanitarias' },
]

function storageKey(visa: TipoVisa) {
  return `checklist-temp-${visa}-v1`
}

export default function ChecklistTemporaria() {
  const [visaSeleccionada, setVisaSeleccionada] = useState<TipoVisa | null>(null)
  const [checked, setChecked] = useState<Set<string>>(new Set())
  const [hydrated, setHydrated] = useState(false)

  useEffect(() => {
    setHydrated(true)
  }, [])

  useEffect(() => {
    if (!visaSeleccionada) return
    try {
      const saved = localStorage.getItem(storageKey(visaSeleccionada))
      if (saved) setChecked(new Set(JSON.parse(saved) as string[]))
      else setChecked(new Set())
    } catch {
      setChecked(new Set())
    }
  }, [visaSeleccionada])

  function toggle(id: string) {
    if (!visaSeleccionada) return
    setChecked((prev) => {
      const next = new Set(prev)
      if (next.has(id)) next.delete(id)
      else next.add(id)
      try {
        localStorage.setItem(storageKey(visaSeleccionada), JSON.stringify([...next]))
      } catch {}
      return next
    })
  }

  function limpiar() {
    if (!visaSeleccionada) return
    setChecked(new Set())
    try { localStorage.removeItem(storageKey(visaSeleccionada)) } catch {}
  }

  if (!hydrated) return null

  const config = visaSeleccionada ? CHECKLIST_POR_VISA[visaSeleccionada] : null
  const items = config?.items ?? []
  const total = items.length
  const completados = items.filter((i) => checked.has(i.id)).length
  const porcentaje = total > 0 ? Math.round((completados / total) * 100) : 0

  return (
    <div className="space-y-6">
      {/* Selector de visa */}
      <div>
        <label className="block text-sm font-medium text-gray-900 mb-2">
          ¿Qué tipo de visa temporaria vas a solicitar?
        </label>
        <select
          value={visaSeleccionada ?? ''}
          onChange={(e) => setVisaSeleccionada((e.target.value as TipoVisa) || null)}
          className="border border-border rounded-lg px-3 py-2 text-sm w-full focus:outline-none focus:ring-2 focus:ring-primary/30"
        >
          <option value="">— Selecciona una categoría —</option>
          {OPCIONES_VISA.map((o) => (
            <option key={o.value} value={o.value}>
              {o.label}
            </option>
          ))}
        </select>
      </div>

      {config && (
        <>
          {/* Progreso */}
          <div>
            <div className="flex justify-between items-center mb-2">
              <span className="text-sm font-medium text-gray-700">
                {completados} de {total} documentos listos
              </span>
              <span className="text-sm font-bold text-primary">{porcentaje}%</span>
            </div>
            <div className="h-3 bg-gray-100 rounded-full overflow-hidden">
              <div
                className="h-full bg-primary rounded-full transition-all duration-300"
                style={{ width: `${porcentaje}%` }}
              />
            </div>
            {completados === total && (
              <p className="mt-2 text-sm text-green-700 font-medium">
                ¡Lista completa! Verifica los requisitos actualizados en el SERMIG antes de presentar.
              </p>
            )}
          </div>

          {/* Nota YMYL */}
          <div className="bg-amber-50 border border-amber-200 rounded-xl px-4 py-3 text-xs text-amber-800">
            Los requisitos exactos y los plazos de vigencia de cada documento los determina el SERMIG.
            Verifica en{' '}
            <a
              href="https://tramitesmigratorios.interior.gob.cl"
              target="_blank"
              rel="noopener noreferrer"
              className="underline"
            >
              tramitesmigratorios.interior.gob.cl
            </a>
            {' '}antes de presentar.
          </div>

          {/* Lista */}
          <ul className="space-y-3">
            {items.map((item) => {
              const done = checked.has(item.id)
              return (
                <li key={item.id}>
                  <label
                    className={`flex items-start gap-3 p-4 rounded-xl border cursor-pointer transition-colors ${
                      done ? 'border-green-300 bg-green-50' : 'border-border hover:border-gray-400'
                    }`}
                  >
                    <input
                      type="checkbox"
                      checked={done}
                      onChange={() => toggle(item.id)}
                      className="mt-0.5 h-4 w-4 accent-primary flex-shrink-0"
                    />
                    <div className="min-w-0">
                      <p className={`text-sm font-medium ${done ? 'line-through text-gray-400' : 'text-gray-900'}`}>
                        {item.doc}
                      </p>
                      <p className="text-xs text-gray-500 mt-0.5">{item.detalle}</p>
                      {item.href && !done && (
                        <Link href={item.href} className="text-xs text-primary hover:underline mt-1 inline-block">
                          Ver guía →
                        </Link>
                      )}
                    </div>
                  </label>
                </li>
              )
            })}
          </ul>

          {/* Acciones */}
          <div className="flex gap-4 pt-2">
            <Link href={config.articuloHref} className="text-sm text-primary hover:underline">
              Ver guía completa de esta visa →
            </Link>
            {completados > 0 && (
              <button onClick={limpiar} className="text-sm text-gray-400 hover:text-gray-600 ml-auto">
                Borrar progreso
              </button>
            )}
          </div>
        </>
      )}
    </div>
  )
}

