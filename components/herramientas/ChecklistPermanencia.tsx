'use client'

import { useEffect, useState } from 'react'
import Link from 'next/link'
import { CHECKLIST_RESIDENCIA_DEFINITIVA as ITEMS } from '@/lib/content/checklists'
import LeadMagnet from '@/components/ui/LeadMagnet'

const STORAGE_KEY = 'checklist-pd-v1'

export default function ChecklistPermanencia() {
  const [checked, setChecked] = useState<Set<string>>(new Set())
  const [hydrated, setHydrated] = useState(false)

  useEffect(() => {
    try {
      const saved = localStorage.getItem(STORAGE_KEY)
      if (saved) setChecked(new Set(JSON.parse(saved) as string[]))
    } catch {}
    setHydrated(true)
  }, [])

  function toggle(id: string) {
    setChecked((prev) => {
      const next = new Set(prev)
      if (next.has(id)) next.delete(id)
      else next.add(id)
      try {
        localStorage.setItem(STORAGE_KEY, JSON.stringify([...next]))
      } catch {}
      return next
    })
  }

  function limpiar() {
    setChecked(new Set())
    try { localStorage.removeItem(STORAGE_KEY) } catch {}
  }

  const total = ITEMS.length
  const completados = ITEMS.filter((i) => checked.has(i.id)).length
  const porcentaje = Math.round((completados / total) * 100)

  if (!hydrated) return null

  return (
    <div className="space-y-6">
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
          href="https://tramites.extranjeria.gob.cl"
          target="_blank"
          rel="noopener noreferrer"
          className="underline"
        >
          tramites.extranjeria.gob.cl
        </a>
        {' '}antes de presentar tu solicitud.
      </div>

      {/* Lista */}
      <ul className="space-y-3">
        {ITEMS.map((item) => {
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
        <Link
          href="/residencia-definitiva/requisitos"
          className="text-sm text-primary hover:underline"
        >
          Ver guía completa de requisitos →
        </Link>
        {completados > 0 && (
          <button onClick={limpiar} className="text-sm text-gray-400 hover:text-gray-600 ml-auto">
            Borrar progreso
          </button>
        )}
      </div>

      {/* Lead magnet: checklist imprimible */}
      <LeadMagnet
        source="checklist-permanencia-definitiva"
        title="📄 Descarga este checklist en PDF para imprimir"
        description="Déjanos tu correo y te damos acceso a la versión imprimible. También te avisaremos si el SERMIG cambia los requisitos."
        downloadHref="/recursos/checklist-residencia-definitiva"
      />
    </div>
  )
}

