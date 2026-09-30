'use client'

import { useState } from 'react'
import Link from 'next/link'

type TipoVisa =
  | 'mercosur'
  | 'hijo-chileno'
  | 'pareja-chilena'
  | 'contrato-trabajo'
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
    doc: 'Documento de identidad aplicable',
    detalle: 'Pasaporte vigente si postulas desde el extranjero; si la subcategoría admite solicitud desde Chile, SERMIG acepta el documento de identidad vigente.',
  },
  ant_origen: {
    id: 'ant-origen',
    doc: 'Antecedentes penales extranjeros, si eres mayor de 18 años',
    detalle: 'Del país de origen o de aquel donde residiste durante los últimos cinco años; con antigüedad máxima de 60 días, apostilla o legalización y traducción cuando corresponda.',
    href: '/problemas-migratorios/antecedentes-penales-chile',
  },
  foto: {
    id: 'foto',
    doc: 'Fotografía reciente',
    detalle: 'A color, fondo blanco, rostro completo, expresión neutral y sin accesorios; en JPG o PNG.',
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
    detalle: 'Para una solicitud desde el extranjero, verifica en SERMIG las formalidades notariales y consulares vigentes para el empleador y la persona solicitante.',
    href: '/residencia-temporal/contrato-trabajo',
  },
  carta_aceptacion: {
    id: 'carta-aceptacion',
    doc: 'Certificado de alumno regular o de matrícula',
    detalle: 'Emitido por un establecimiento educacional reconocido por el Estado.',
  },
  sustento_estudiante: {
    id: 'sustento-estudiante',
    doc: 'Documentos de sustento económico',
    detalle: 'Depósitos, giros periódicos, declaración de expensas con respaldo de ingresos o certificado de beca, según corresponda.',
  },
  doc_humanitario: {
    id: 'doc-humanitario',
    doc: 'Seleccionar el supuesto humanitario exacto',
    detalle: 'SERMIG publica cinco: NNA, embarazo, trata, tráfico ilícito de migrantes y violencia intrafamiliar o de género.',
  },
  ficha_humanitaria: {
    id: 'ficha-humanitaria',
    doc: 'Abrir la ficha oficial del supuesto elegido',
    detalle: 'Cada supuesto tiene requisitos, acreditación y procedimiento propios. No uses una lista genérica de documentos.',
  },
}

const CHECKLIST_POR_VISA: Record<TipoVisa, { items: Item[]; articuloHref: string }> = {
  mercosur: {
    items: [DOC_BASE.pasaporte, DOC_BASE.ant_origen, DOC_BASE.foto],
    articuloHref: '/residencia-temporal/mercosur',
  },
  'hijo-chileno': {
    items: [DOC_BASE.pasaporte, DOC_BASE.ant_origen, DOC_BASE.foto, DOC_BASE.nacimiento_hijo],
    articuloHref: '/residencia-temporal/hijo-chileno',
  },
  'pareja-chilena': {
    items: [DOC_BASE.pasaporte, DOC_BASE.ant_origen, DOC_BASE.foto, DOC_BASE.matrimonio_auc],
    articuloHref: '/residencia-temporal/pareja-chilena',
  },
  'contrato-trabajo': {
    items: [DOC_BASE.pasaporte, DOC_BASE.ant_origen, DOC_BASE.foto, DOC_BASE.contrato],
    articuloHref: '/residencia-temporal/contrato-trabajo',
  },
  estudiante: {
    items: [DOC_BASE.pasaporte, DOC_BASE.ant_origen, DOC_BASE.foto, DOC_BASE.carta_aceptacion, DOC_BASE.sustento_estudiante],
    articuloHref: '/residencia-temporal/estudiante',
  },
  'razones-humanitarias': {
    items: [DOC_BASE.doc_humanitario, DOC_BASE.ficha_humanitaria],
    articuloHref: '/residencia-temporal/razones-humanitarias',
  },
}

const OPCIONES_VISA: { value: TipoVisa; label: string }[] = [
  { value: 'mercosur', label: 'Residencia Mercosur (Argentina, Bolivia, Brasil, Paraguay o Uruguay)' },
  { value: 'hijo-chileno', label: 'Por hijo/a con nacionalidad chilena' },
  { value: 'pareja-chilena', label: 'Por pareja chilena (matrimonio o AUC)' },
  { value: 'contrato-trabajo', label: 'Por contrato de trabajo' },
  { value: 'estudiante', label: 'Visa de estudiante' },
  { value: 'razones-humanitarias', label: 'Por razones humanitarias' },
]

function storageKey(visa: TipoVisa) {
  return `checklist-temp-${visa}-v2`
}

export default function ChecklistTemporaria() {
  const [visaSeleccionada, setVisaSeleccionada] = useState<TipoVisa | null>(null)
  const [checked, setChecked] = useState<Set<string>>(new Set())

  function seleccionarVisa(visa: TipoVisa | null) {
    setVisaSeleccionada(visa)
    if (!visa) {
      setChecked(new Set())
      return
    }
    try {
      const saved = localStorage.getItem(storageKey(visa))
      if (saved) setChecked(new Set(JSON.parse(saved) as string[]))
      else setChecked(new Set())
    } catch {
      setChecked(new Set())
    }
  }

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
          ¿Qué subcategoría de Residencia Temporal estás revisando?
        </label>
        <select
          value={visaSeleccionada ?? ''}
          onChange={(e) => seleccionarVisa((e.target.value as TipoVisa) || null)}
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
                {completados} de {total} puntos revisados
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
                Revisión inicial completa. Confirma el expediente oficial en SERMIG antes de presentar.
              </p>
            )}
          </div>

          {/* Nota YMYL */}
          <div className="bg-amber-50 border border-amber-200 rounded-xl px-4 py-3 text-xs text-amber-800">
            Esta lista es una referencia inicial, no un expediente completo. El lugar de postulación y los documentos
            dependen de la subcategoría. La regla general es postular desde el extranjero, salvo excepciones oficiales.
            Verifica los requisitos vigentes en{' '}
            <a
              href="https://tramites.serviciomigraciones.cl"
              target="_blank"
              rel="noopener noreferrer"
              className="underline"
            >
              tramites.serviciomigraciones.cl
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
