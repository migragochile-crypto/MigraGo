'use client'

import { useState } from 'react'
import Link from 'next/link'

function addYears(date: Date, years: number): Date {
  const d = new Date(date)
  d.setFullYear(d.getFullYear() + years)
  return d
}

function formatDate(date: Date): string {
  return date.toLocaleDateString('es-CL', {
    day: 'numeric',
    month: 'long',
    year: 'numeric',
  })
}

function monthsDiff(from: Date, to: Date): number {
  return (
    (to.getFullYear() - from.getFullYear()) * 12 +
    (to.getMonth() - from.getMonth())
  )
}

interface Resultado {
  fechaInicio: Date
  fechaPD: Date
  fechaNaturalizacion: Date
  mesesParaPD: number
  mesesParaNat: number
  pdAlcanzada: boolean
  natAlcanzada: boolean
}

export default function SimuladorPlazos() {
  const [fechaInput, setFechaInput] = useState('')
  const [tienePD, setTienePD] = useState<boolean | null>(null)
  const [fechaPDInput, setFechaPDInput] = useState('')
  const [calculado, setCalculado] = useState<Resultado | null>(null)

  const today = new Date()
  today.setHours(0, 0, 0, 0)

  function calcular() {
    if (!fechaInput) return
    const inicio = new Date(fechaInput + 'T00:00:00')
    const pd = tienePD && fechaPDInput
      ? new Date(fechaPDInput + 'T00:00:00')
      : addYears(inicio, 1)
    const nat = addYears(inicio, 5)

    setCalculado({
      fechaInicio: inicio,
      fechaPD: pd,
      fechaNaturalizacion: nat,
      mesesParaPD: monthsDiff(today, pd),
      mesesParaNat: monthsDiff(today, nat),
      pdAlcanzada: pd <= today,
      natAlcanzada: nat <= today,
    })
  }

  function reiniciar() {
    setFechaInput('')
    setTienePD(null)
    setFechaPDInput('')
    setCalculado(null)
  }

  const maxDate = today.toISOString().split('T')[0]

  return (
    <div className="space-y-6">
      {!calculado ? (
        <>
          <div className="space-y-5">
            {/* Fecha inicio visa */}
            <div>
              <label className="block text-sm font-medium text-gray-900 mb-1">
                ¿Cuándo obtuviste tu primera visa temporaria en Chile?
              </label>
              <p className="text-xs text-gray-500 mb-2">
                Si hiciste autodenuncia, usa la fecha del Certificado de Autodenuncia como punto de inicio.
              </p>
              <input
                type="date"
                value={fechaInput}
                max={maxDate}
                onChange={(e) => { setFechaInput(e.target.value); setCalculado(null) }}
                className="border border-border rounded-lg px-3 py-2 text-sm w-full max-w-xs focus:outline-none focus:ring-2 focus:ring-primary/30"
              />
            </div>

            {/* ¿Ya tiene PD? */}
            {fechaInput && (
              <div>
                <p className="text-sm font-medium text-gray-900 mb-2">
                  ¿Ya tienes Permanencia Definitiva aprobada?
                </p>
                <div className="flex gap-3">
                  {([true, false] as const).map((val) => (
                    <label
                      key={String(val)}
                      className={`flex items-center gap-2 px-4 py-2 rounded-lg border cursor-pointer text-sm transition-colors ${
                        tienePD === val ? 'border-primary bg-blue-50' : 'border-border hover:border-gray-400'
                      }`}
                    >
                      <input
                        type="radio"
                        name="tienePD"
                        checked={tienePD === val}
                        onChange={() => setTienePD(val)}
                        className="accent-primary"
                      />
                      {val ? 'Sí' : 'No'}
                    </label>
                  ))}
                </div>
              </div>
            )}

            {/* Fecha PD si ya tiene */}
            {tienePD === true && (
              <div>
                <label className="block text-sm font-medium text-gray-900 mb-1">
                  ¿Cuándo fue aprobada tu Permanencia Definitiva?
                </label>
                <input
                  type="date"
                  value={fechaPDInput}
                  max={maxDate}
                  onChange={(e) => setFechaPDInput(e.target.value)}
                  className="border border-border rounded-lg px-3 py-2 text-sm w-full max-w-xs focus:outline-none focus:ring-2 focus:ring-primary/30"
                />
              </div>
            )}
          </div>

          <button
            onClick={calcular}
            disabled={!fechaInput || tienePD === null || (tienePD === true && !fechaPDInput)}
            className="bg-primary text-white text-sm font-medium px-6 py-2.5 rounded-lg hover:bg-primary/90 disabled:opacity-40 disabled:cursor-not-allowed transition-colors"
          >
            Calcular plazos →
          </button>
        </>
      ) : (
        <>
          <div className="flex items-center justify-between">
            <h2 className="text-xl font-bold text-gray-900">Tus plazos estimados</h2>
            <button onClick={reiniciar} className="text-sm text-primary hover:underline">
              ← Recalcular
            </button>
          </div>

          {/* Línea de tiempo */}
          <div className="space-y-4">
            {/* Inicio */}
            <div className="flex gap-4 items-start">
              <div className="flex flex-col items-center">
                <div className="w-4 h-4 rounded-full bg-primary flex-shrink-0 mt-0.5" />
                <div className="w-px flex-1 bg-gray-200 mt-1" style={{ minHeight: 40 }} />
              </div>
              <div>
                <p className="text-xs text-gray-500 font-medium uppercase tracking-wide">Inicio</p>
                <p className="text-sm font-semibold text-gray-900">{formatDate(calculado.fechaInicio)}</p>
                <p className="text-xs text-gray-500">Primera visa temporaria</p>
              </div>
            </div>

            {/* PD */}
            <div className="flex gap-4 items-start">
              <div className="flex flex-col items-center">
                <div
                  className={`w-4 h-4 rounded-full flex-shrink-0 mt-0.5 ${
                    calculado.pdAlcanzada ? 'bg-green-500' : 'bg-amber-400'
                  }`}
                />
                <div className="w-px flex-1 bg-gray-200 mt-1" style={{ minHeight: 40 }} />
              </div>
              <div className={`rounded-xl p-4 flex-1 ${calculado.pdAlcanzada ? 'bg-green-50 border border-green-200' : 'bg-amber-50 border border-amber-200'}`}>
                <p className="text-xs font-medium uppercase tracking-wide text-gray-500">
                  Permanencia Definitiva
                </p>
                <p className="text-base font-bold text-gray-900 mt-0.5">
                  {formatDate(calculado.fechaPD)}
                </p>
                <p className="text-sm mt-1">
                  {calculado.pdAlcanzada ? (
                    <span className="text-green-700 font-medium">Ya alcanzada — puedes solicitar la PD ahora</span>
                  ) : (
                    <span className="text-amber-700">
                      En {calculado.mesesParaPD} {calculado.mesesParaPD === 1 ? 'mes' : 'meses'} aproximadamente
                    </span>
                  )}
                </p>
                <Link href="/residencia-definitiva" className="mt-2 inline-block text-xs text-primary hover:underline">
                  Ver guía de Permanencia Definitiva →
                </Link>
              </div>
            </div>

            {/* Naturalización */}
            <div className="flex gap-4 items-start">
              <div className="flex flex-col items-center">
                <div
                  className={`w-4 h-4 rounded-full flex-shrink-0 mt-0.5 ${
                    calculado.natAlcanzada ? 'bg-green-500' : 'bg-gray-300'
                  }`}
                />
              </div>
              <div className={`rounded-xl p-4 flex-1 ${calculado.natAlcanzada ? 'bg-green-50 border border-green-200' : 'bg-gray-50 border border-gray-200'}`}>
                <p className="text-xs font-medium uppercase tracking-wide text-gray-500">
                  Carta de Naturalización
                </p>
                <p className="text-base font-bold text-gray-900 mt-0.5">
                  {formatDate(calculado.fechaNaturalizacion)}
                </p>
                <p className="text-sm mt-1">
                  {calculado.natAlcanzada ? (
                    <span className="text-green-700 font-medium">Ya alcanzada — puedes solicitar la nacionalidad</span>
                  ) : (
                    <span className="text-gray-600">
                      En {calculado.mesesParaNat} {calculado.mesesParaNat === 1 ? 'mes' : 'meses'} aproximadamente
                    </span>
                  )}
                </p>
                <Link href="/nacionalizacion" className="mt-2 inline-block text-xs text-primary hover:underline">
                  Ver guía de Nacionalización →
                </Link>
              </div>
            </div>
          </div>

          {/* Disclaimer */}
          <div className="bg-amber-50 border border-amber-200 rounded-xl p-4 text-xs text-amber-800 space-y-1">
            <p className="font-semibold">Importante — estas fechas son de referencia</p>
            <ul className="list-disc list-inside space-y-0.5 text-amber-700">
              <li>El plazo de 1 año para PD aplica a la mayoría de categorías, pero puede variar según el tipo de visa y las condiciones de la resolución.</li>
              <li>El plazo de 5 años para naturalización requiere residencia legal continua; ausencias prolongadas pueden afectarlo.</li>
              <li>Verifica los requisitos actualizados en el{' '}
                <a href="https://tramitesmigratorios.interior.gob.cl" target="_blank" rel="noopener noreferrer" className="underline">
                  portal del SERMIG
                </a>
                {' '}antes de presentar.
              </li>
            </ul>
          </div>
        </>
      )}
    </div>
  )
}

