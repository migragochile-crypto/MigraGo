'use client'

import { useState } from 'react'
import Link from 'next/link'

type Situacion = 'turista' | 'irregular' | 'visa-vigente'
type Nacionalidad = 'mercosur' | 'venezuela' | 'otro'
type Vinculo = 'hijo-chileno' | 'pareja-chilena'
type Laboral = 'contrato' | 'estudiante' | 'jubilado' | 'ninguno'

interface Respuestas {
  situacion: Situacion | null
  nacionalidad: Nacionalidad | null
  vinculos: Vinculo[]
  laboral: Laboral | null
}

interface Recomendacion {
  titulo: string
  descripcion: string
  href: string
  nota?: string
  urgente?: boolean
}

function calcularResultado(r: Respuestas): { previo?: Recomendacion; visas: Recomendacion[] } {
  const visas: Recomendacion[] = []

  const previo: Recomendacion | undefined =
    r.situacion === 'irregular'
      ? {
          titulo: 'Antes de todo: autodenuncia migratoria',
          descripcion:
            'Dado que tu visa venció o ingresaste sin los requisitos, el primer paso es presentarte en la PDI para obtener el Certificado de Autodenuncia. Con ese certificado puedes luego solicitar la visa que corresponda.',
          href: '/autodenuncia',
          urgente: true,
        }
      : undefined

  if (r.vinculos.includes('hijo-chileno')) {
    visas.push({
      titulo: 'Visa por hijo/a chileno/a',
      descripcion: 'Puedes solicitar esta visa acreditando que tienes un hijo/a con nacionalidad chilena. No requiere contrato de trabajo.',
      href: '/residencia-temporal/hijo-chileno',
    })
  }

  if (r.vinculos.includes('pareja-chilena')) {
    visas.push({
      titulo: 'Visa por pareja chilena (matrimonio o AUC)',
      descripcion: 'El matrimonio o el Acuerdo de Unión Civil con un/a ciudadano/a chileno/a habilita esta categoría.',
      href: '/residencia-temporal/pareja-chilena',
    })
  }

  if (r.nacionalidad === 'venezuela') {
    visas.push({
      titulo: 'Visa de Responsabilidad Democrática (VRD)',
      descripcion: 'Categoría especial para ciudadanos venezolanos. No exige contrato de trabajo ni vínculo familiar con un chileno.',
      href: '/residencia-temporal/responsabilidad-democratica',
      nota: 'Verifica la disponibilidad y condiciones vigentes directamente en el portal del SERMIG antes de presentar.',
    })
  }

  if (r.nacionalidad === 'mercosur') {
    visas.push({
      titulo: 'Visa Mercosur',
      descripcion: 'Los ciudadanos de países miembros o asociados del MERCOSUR (Argentina, Bolivia, Colombia, Perú y otros) acceden a esta visa con menos documentación. No requiere contrato ni vínculo familiar.',
      href: '/residencia-temporal/mercosur',
    })
  }

  if (r.laboral === 'contrato') {
    visas.push({
      titulo: 'Visa por contrato de trabajo',
      descripcion: 'Si tienes o puedes conseguir un empleador formal en Chile, esta es una categoría directa que depende del empleador.',
      href: '/residencia-temporal/contrato-trabajo',
    })
  }

  if (r.laboral === 'estudiante') {
    visas.push({
      titulo: 'Visa de estudiante',
      descripcion: 'Requiere carta de aceptación de una institución educativa reconocida por el Estado chileno.',
      href: '/residencia-temporal/estudiante',
    })
  }

  if (r.laboral === 'jubilado') {
    visas.push({
      titulo: 'Visa de jubilado o rentista',
      descripcion: 'Para quienes reciben pensión u otros ingresos regulares del exterior. Requiere acreditarlos documentalmente.',
      href: '/residencia-temporal/jubilado-rentista',
    })
  }

  if (visas.length === 0) {
    visas.push({
      titulo: 'Visa por razones humanitarias',
      descripcion: 'Si no calificas para otras categorías, puedes evaluar esta opción por situación de vulnerabilidad, arraigo familiar o necesidades especiales evaluadas por el SERMIG.',
      href: '/residencia-temporal/razones-humanitarias',
    })
  }

  return { previo, visas }
}

const STEP_LABELS = ['Situación', 'Nacionalidad', 'Vínculos', 'Laboral']

export default function CalculadoraElegibilidad() {
  const [step, setStep] = useState(0)
  const [respuestas, setRespuestas] = useState<Respuestas>({
    situacion: null,
    nacionalidad: null,
    vinculos: [],
    laboral: null,
  })

  const totalSteps = 4
  const isLastStep = step === totalSteps - 1
  const canAdvance =
    (step === 0 && respuestas.situacion !== null) ||
    (step === 1 && respuestas.nacionalidad !== null) ||
    (step === 2 && true) ||
    (step === 3 && respuestas.laboral !== null)

  function toggleVinculo(v: Vinculo) {
    setRespuestas((prev) => ({
      ...prev,
      vinculos: prev.vinculos.includes(v)
        ? prev.vinculos.filter((x) => x !== v)
        : [...prev.vinculos, v],
    }))
  }

  function reiniciar() {
    setStep(0)
    setRespuestas({ situacion: null, nacionalidad: null, vinculos: [], laboral: null })
  }

  if (step === totalSteps) {
    const { previo, visas } = calcularResultado(respuestas)
    return (
      <div className="space-y-6">
        <div className="flex items-center justify-between">
          <h2 className="text-xl font-bold text-gray-900">Tus opciones migratorias</h2>
          <button onClick={reiniciar} className="text-sm text-primary hover:underline">
            ← Volver a empezar
          </button>
        </div>

        {previo && (
          <div className="border-2 border-accent rounded-xl p-5 bg-red-50">
            <div className="flex gap-3">
              <span className="text-xl">⚠️</span>
              <div>
                <p className="font-semibold text-gray-900">{previo.titulo}</p>
                <p className="mt-1 text-sm text-gray-700">{previo.descripcion}</p>
                <Link
                  href={previo.href}
                  className="mt-3 inline-block text-sm font-medium text-accent hover:underline"
                >
                  Ver guía completa →
                </Link>
              </div>
            </div>
          </div>
        )}

        <div className="space-y-4">
          {visas.map((visa, i) => (
            <div key={i} className="border border-border rounded-xl p-5">
              <p className="font-semibold text-gray-900">{visa.titulo}</p>
              <p className="mt-1 text-sm text-gray-600">{visa.descripcion}</p>
              {visa.nota && (
                <p className="mt-2 text-xs text-amber-700 bg-amber-50 rounded-lg px-3 py-2">
                  {visa.nota}
                </p>
              )}
              <Link
                href={visa.href}
                className="mt-3 inline-block text-sm font-medium text-primary hover:underline"
              >
                Ver guía completa →
              </Link>
            </div>
          ))}
        </div>

        <p className="text-xs text-gray-400 border-t pt-4">
          Esta calculadora es orientativa. Los requisitos exactos y la disponibilidad de cada categoría
          pueden variar. Verifica siempre en el{' '}
          <a
            href="https://tramitesmigratorios.interior.gob.cl"
            target="_blank"
            rel="noopener noreferrer"
            className="underline"
          >
            portal oficial del SERMIG
          </a>
          .
        </p>
      </div>
    )
  }

  return (
    <div className="space-y-6">
      {/* Progress */}
      <div>
        <div className="flex justify-between text-xs text-gray-500 mb-2">
          {STEP_LABELS.map((label, i) => (
            <span key={i} className={i === step ? 'font-semibold text-primary' : ''}>
              {label}
            </span>
          ))}
        </div>
        <div className="h-2 bg-gray-100 rounded-full overflow-hidden">
          <div
            className="h-full bg-primary rounded-full transition-all"
            style={{ width: `${((step) / totalSteps) * 100}%` }}
          />
        </div>
      </div>

      {/* Step 0: Situación */}
      {step === 0 && (
        <fieldset className="space-y-3">
          <legend className="text-lg font-semibold text-gray-900">
            ¿Cuál es tu situación migratoria actual en Chile?
          </legend>
          {(
            [
              ['turista', 'Estoy como turista con permiso vigente'],
              ['irregular', 'Mi visa o permiso venció, o ingresé sin los requisitos'],
              ['visa-vigente', 'Tengo visa temporaria vigente y quiero cambiar o renovar'],
            ] as [Situacion, string][]
          ).map(([val, label]) => (
            <label
              key={val}
              className={`flex items-start gap-3 p-4 rounded-xl border cursor-pointer transition-colors ${
                respuestas.situacion === val
                  ? 'border-primary bg-blue-50'
                  : 'border-border hover:border-gray-400'
              }`}
            >
              <input
                type="radio"
                name="situacion"
                value={val}
                checked={respuestas.situacion === val}
                onChange={() => setRespuestas((p) => ({ ...p, situacion: val }))}
                className="mt-0.5 accent-primary"
              />
              <span className="text-sm text-gray-900">{label}</span>
            </label>
          ))}
        </fieldset>
      )}

      {/* Step 1: Nacionalidad */}
      {step === 1 && (
        <fieldset className="space-y-3">
          <legend className="text-lg font-semibold text-gray-900">¿Cuál es tu nacionalidad?</legend>
          {(
            [
              ['mercosur', 'Argentina, Bolivia, Brasil, Colombia, Paraguay, Perú o Uruguay (MERCOSUR)'],
              ['venezuela', 'Venezuela'],
              ['otro', 'Otro país (Haití, República Dominicana, Ecuador, etc.)'],
            ] as [Nacionalidad, string][]
          ).map(([val, label]) => (
            <label
              key={val}
              className={`flex items-start gap-3 p-4 rounded-xl border cursor-pointer transition-colors ${
                respuestas.nacionalidad === val
                  ? 'border-primary bg-blue-50'
                  : 'border-border hover:border-gray-400'
              }`}
            >
              <input
                type="radio"
                name="nacionalidad"
                value={val}
                checked={respuestas.nacionalidad === val}
                onChange={() => setRespuestas((p) => ({ ...p, nacionalidad: val }))}
                className="mt-0.5 accent-primary"
              />
              <span className="text-sm text-gray-900">{label}</span>
            </label>
          ))}
        </fieldset>
      )}

      {/* Step 2: Vínculos */}
      {step === 2 && (
        <fieldset className="space-y-3">
          <legend className="text-lg font-semibold text-gray-900">
            ¿Tienes vínculos con ciudadanos chilenos? (puedes marcar varios)
          </legend>
          {(
            [
              ['hijo-chileno', 'Tengo un hijo/a con nacionalidad chilena'],
              ['pareja-chilena', 'Tengo pareja chilena (matrimonio o AUC)'],
            ] as [Vinculo, string][]
          ).map(([val, label]) => (
            <label
              key={val}
              className={`flex items-start gap-3 p-4 rounded-xl border cursor-pointer transition-colors ${
                respuestas.vinculos.includes(val)
                  ? 'border-primary bg-blue-50'
                  : 'border-border hover:border-gray-400'
              }`}
            >
              <input
                type="checkbox"
                checked={respuestas.vinculos.includes(val)}
                onChange={() => toggleVinculo(val)}
                className="mt-0.5 accent-primary"
              />
              <span className="text-sm text-gray-900">{label}</span>
            </label>
          ))}
          <p className="text-sm text-gray-500 pt-1">
            Si no tienes ninguno, continúa sin seleccionar.
          </p>
        </fieldset>
      )}

      {/* Step 3: Laboral */}
      {step === 3 && (
        <fieldset className="space-y-3">
          <legend className="text-lg font-semibold text-gray-900">
            ¿Cuál es tu situación laboral o de estudios?
          </legend>
          {(
            [
              ['contrato', 'Tengo contrato de trabajo firmado con un empleador en Chile'],
              ['estudiante', 'Estoy matriculado/a en una institución educativa chilena reconocida'],
              ['jubilado', 'Recibo pensión u otros ingresos regulares del exterior (jubilado/rentista)'],
              ['ninguno', 'Ninguna de las anteriores'],
            ] as [Laboral, string][]
          ).map(([val, label]) => (
            <label
              key={val}
              className={`flex items-start gap-3 p-4 rounded-xl border cursor-pointer transition-colors ${
                respuestas.laboral === val
                  ? 'border-primary bg-blue-50'
                  : 'border-border hover:border-gray-400'
              }`}
            >
              <input
                type="radio"
                name="laboral"
                value={val}
                checked={respuestas.laboral === val}
                onChange={() => setRespuestas((p) => ({ ...p, laboral: val }))}
                className="mt-0.5 accent-primary"
              />
              <span className="text-sm text-gray-900">{label}</span>
            </label>
          ))}
        </fieldset>
      )}

      {/* Navigation */}
      <div className="flex justify-between pt-2">
        <button
          onClick={() => setStep((s) => Math.max(0, s - 1))}
          disabled={step === 0}
          className="text-sm text-gray-600 hover:text-gray-900 disabled:opacity-30 disabled:cursor-not-allowed"
        >
          ← Anterior
        </button>
        <button
          onClick={() => setStep((s) => s + 1)}
          disabled={!canAdvance}
          className="bg-primary text-white text-sm font-medium px-5 py-2 rounded-lg hover:bg-primary/90 disabled:opacity-40 disabled:cursor-not-allowed transition-colors"
        >
          {isLastStep ? 'Ver mis opciones →' : 'Siguiente →'}
        </button>
      </div>
    </div>
  )
}

