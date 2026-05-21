'use client'

import { useState } from 'react'
import Link from 'next/link'

type Step = 'inicio' | 'situacion' | 'nacionalidad' | 'vinculos' | 'laboral' | 'resultado'

interface Respuestas {
  situacion: 'turista' | 'irregular' | 'visa-vigente' | null
  nacionalidad: 'mercosur' | 'venezuela' | 'otro' | null
  vinculos: ('hijo-chileno' | 'pareja-chilena')[]
  laboral: 'contrato' | 'estudiante' | 'jubilado' | 'ninguno' | null
}

interface VisaRecomendada {
  titulo: string
  descripcion: string
  href: string
  facilidad: 'fácil' | 'media' | 'difícil'
  urgencia?: boolean
}

export default function QuizVisas() {
  const [step, setStep] = useState<Step>('inicio')
  const [respuestas, setRespuestas] = useState<Respuestas>({
    situacion: null,
    nacionalidad: null,
    vinculos: [],
    laboral: null,
  })

  const actualizarRespuesta = (key: keyof Respuestas, valor: any) => {
    if (key === 'vinculos') {
      setRespuestas((prev) => ({
        ...prev,
        vinculos: prev.vinculos.includes(valor)
          ? prev.vinculos.filter((v) => v !== valor)
          : [...prev.vinculos, valor],
      }))
    } else {
      setRespuestas((prev) => ({ ...prev, [key]: valor }))
    }
  }

  const calcularRecomendaciones = (): { previo?: VisaRecomendada; visas: VisaRecomendada[] } => {
    const visas: VisaRecomendada[] = []
    let previo: VisaRecomendada | undefined

    if (respuestas.situacion === 'irregular') {
      previo = {
        titulo: '⚠️ Paso previo: Autodenuncia Migratoria',
        descripcion:
          'Debes presentarte en la PDI para obtener el Certificado de Autodenuncia. Con ese certificado después solicitas una visa temporaria.',
        href: '/autodenuncia/pdi-paso-a-paso',
        facilidad: 'fácil',
        urgencia: true,
      }
    }

    if (respuestas.vinculos.includes('hijo-chileno')) {
      visas.push({
        titulo: '👨‍👧 Visa por Hijo/a Chileno/a',
        descripcion: 'La más sólida si tienes un hijo chileno. No requiere contrato de trabajo.',
        href: '/residencia-temporal/hijo-chileno',
        facilidad: 'fácil',
      })
    }

    if (respuestas.vinculos.includes('pareja-chilena')) {
      visas.push({
        titulo: '💑 Visa por Pareja Chilena',
        descripcion: 'Para cónyuge o pareja civil de un ciudadano chileno.',
        href: '/residencia-temporal/pareja-chilena',
        facilidad: 'fácil',
      })
    }

    if (respuestas.nacionalidad === 'mercosur') {
      visas.push({
        titulo: '🛂 Visa MERCOSUR (más rápida)',
        descripcion: 'La más simple. No requiere contrato, solo acreditar nacionalidad. Válida 2 años.',
        href: '/residencia-temporal/mercosur',
        facilidad: 'fácil',
      })
    }

    if (respuestas.nacionalidad === 'venezuela') {
      visas.push({
        titulo: '🇻🇪 Visa de Responsabilidad Democrática (VRD)',
        descripcion: 'Exclusiva para venezolanos. Más accesible que otras categorías.',
        href: '/residencia-temporal/responsabilidad-democratica',
        facilidad: 'media',
      })
    }

    if (respuestas.laboral === 'contrato') {
      visas.push({
        titulo: '💼 Visa por Contrato de Trabajo',
        descripcion: 'Para quienes tienen empleador formal dispuesto a contratarlos.',
        href: '/residencia-temporal/contrato-trabajo',
        facilidad: 'media',
      })
    }

    if (respuestas.laboral === 'estudiante') {
      visas.push({
        titulo: '🎓 Visa para Estudiantes',
        descripcion: 'Para inscripción en programa académico acreditado en Chile.',
        href: '/residencia-temporal/estudiante',
        facilidad: 'media',
      })
    }

    if (respuestas.laboral === 'jubilado') {
      visas.push({
        titulo: '🏖️ Visa para Jubilados / Rentistas',
        descripcion: 'Para quienes acreditan ingresos regulares del extranjero.',
        href: '/residencia-temporal/jubilado-rentista',
        facilidad: 'media',
      })
    }

    if (
      visas.length === 0 &&
      respuestas.situacion &&
      respuestas.nacionalidad &&
      respuestas.laboral
    ) {
      visas.push({
        titulo: '❓ Otras opciones',
        descripcion:
          'Según tu situación, podrías explorar razones humanitarias o consultar en el SERMIG para casos especiales.',
        href: '/residencia-temporal',
        facilidad: 'difícil',
      })
    }

    return { previo, visas }
  }

  const { previo, visas } = calcularRecomendaciones()

  const puedeAvanzar = () => {
    switch (step) {
      case 'situacion':
        return respuestas.situacion !== null
      case 'nacionalidad':
        return respuestas.nacionalidad !== null
      case 'vinculos':
        return true
      case 'laboral':
        return respuestas.laboral !== null
      default:
        return false
    }
  }

  return (
    <div className="max-w-2xl mx-auto p-6 bg-white rounded-2xl border border-gray-200">
      {step === 'inicio' && (
        <div className="text-center space-y-6">
          <h2 className="text-3xl font-bold text-gray-900">¿Cuál es la mejor visa para ti?</h2>
          <p className="text-gray-600 text-lg">
            Responde 4 preguntas simples y te mostraremos las opciones más adecuadas para tu situación.
          </p>
          <button
            onClick={() => setStep('situacion')}
            className="bg-primary text-white px-8 py-4 rounded-xl font-semibold hover:bg-primary-dark transition-colors text-lg"
          >
            Comenzar
          </button>
        </div>
      )}

      {step === 'situacion' && (
        <div className="space-y-6">
          <div>
            <h3 className="text-2xl font-bold text-gray-900 mb-4">¿Cuál es tu situación migratoria actual?</h3>
            <div className="space-y-3">
              {[
                { val: 'turista', label: '🛂 Estoy en Chile como turista (con visa de turismo vigente)' },
                { val: 'irregular', label: '⚠️ Estoy en situación irregular (visa vencida)' },
                { val: 'visa-vigente', label: '📝 Tengo visa temporaria vigente' },
              ].map((opt) => (
                <button
                  key={opt.val}
                  onClick={() => {
                    actualizarRespuesta('situacion', opt.val)
                    setStep('nacionalidad')
                  }}
                  className="w-full p-4 text-left border-2 border-gray-200 rounded-xl hover:border-primary hover:bg-primary/5 transition-all"
                >
                  {opt.label}
                </button>
              ))}
            </div>
          </div>
          <button
            onClick={() => setStep('inicio')}
            className="text-gray-600 hover:text-gray-900 underline"
          >
            ← Volver
          </button>
        </div>
      )}

      {step === 'nacionalidad' && (
        <div className="space-y-6">
          <div>
            <h3 className="text-2xl font-bold text-gray-900 mb-4">¿Cuál es tu nacionalidad?</h3>
            <div className="space-y-3">
              {[
                { val: 'mercosur', label: '🛂 Argentina, Brasil, Uruguay, Paraguay, Bolivia, Colombia, Ecuador, Perú' },
                { val: 'venezuela', label: '🇻🇪 Venezuela' },
                { val: 'otro', label: '🌍 Otro país' },
              ].map((opt) => (
                <button
                  key={opt.val}
                  onClick={() => {
                    actualizarRespuesta('nacionalidad', opt.val)
                    setStep('vinculos')
                  }}
                  className="w-full p-4 text-left border-2 border-gray-200 rounded-xl hover:border-primary hover:bg-primary/5 transition-all"
                >
                  {opt.label}
                </button>
              ))}
            </div>
          </div>
          <button
            onClick={() => setStep('situacion')}
            className="text-gray-600 hover:text-gray-900 underline"
          >
            ← Volver
          </button>
        </div>
      )}

      {step === 'vinculos' && (
        <div className="space-y-6">
          <div>
            <h3 className="text-2xl font-bold text-gray-900 mb-4">¿Tienes vínculos familiares en Chile? (opcional)</h3>
            <div className="space-y-3">
              {[
                { val: 'hijo-chileno' as const, label: '👨‍👧 Tengo un hijo/a con nacionalidad chilena' },
                { val: 'pareja-chilena' as const, label: '💑 Tengo pareja o cónyuge chileno/a' },
              ].map((opt) => (
                <button
                  key={opt.val}
                  onClick={() => actualizarRespuesta('vinculos', opt.val)}
                  className={`w-full p-4 text-left border-2 rounded-xl transition-all ${
                    respuestas.vinculos.includes(opt.val)
                      ? 'border-primary bg-primary/10 font-semibold'
                      : 'border-gray-200 hover:border-primary hover:bg-primary/5'
                  }`}
                >
                  {opt.label}
                </button>
              ))}
            </div>
          </div>
          <div className="flex gap-3">
            <button
              onClick={() => setStep('nacionalidad')}
              className="flex-1 px-4 py-2 border border-gray-200 rounded-xl hover:bg-gray-50"
            >
              ← Volver
            </button>
            <button
              onClick={() => setStep('laboral')}
              className="flex-1 px-4 py-2 bg-primary text-white rounded-xl hover:bg-primary-dark"
            >
              Siguiente →
            </button>
          </div>
        </div>
      )}

      {step === 'laboral' && (
        <div className="space-y-6">
          <div>
            <h3 className="text-2xl font-bold text-gray-900 mb-4">¿Cuál es tu situación laboral?</h3>
            <div className="space-y-3">
              {[
                { val: 'contrato', label: '💼 Tengo o puedo conseguir contrato de trabajo formal' },
                { val: 'estudiante', label: '🎓 Voy a estudiar en una institución acreditada' },
                { val: 'jubilado', label: '🏖️ Tengo ingresos regulares del extranjero' },
                { val: 'ninguno', label: '❌ Ninguno de los anteriores' },
              ].map((opt) => (
                <button
                  key={opt.val}
                  onClick={() => {
                    actualizarRespuesta('laboral', opt.val)
                    setStep('resultado')
                  }}
                  className="w-full p-4 text-left border-2 border-gray-200 rounded-xl hover:border-primary hover:bg-primary/5 transition-all"
                >
                  {opt.label}
                </button>
              ))}
            </div>
          </div>
          <button
            onClick={() => setStep('vinculos')}
            className="text-gray-600 hover:text-gray-900 underline"
          >
            ← Volver
          </button>
        </div>
      )}

      {step === 'resultado' && (
        <div className="space-y-6">
          <h2 className="text-2xl font-bold text-gray-900">Tu resultado</h2>

          {previo && (
            <div className="border-2 border-red-200 bg-red-50 p-5 rounded-xl">
              <h3 className="font-bold text-red-900 text-lg mb-2">{previo.titulo}</h3>
              <p className="text-red-800 mb-4">{previo.descripcion}</p>
              <Link
                href={previo.href}
                className="inline-block text-red-700 hover:text-red-900 font-semibold underline"
              >
                Leer guía completa →
              </Link>
            </div>
          )}

          {visas.length > 0 ? (
            <div className="space-y-4">
              <h3 className="font-semibold text-gray-900 text-lg">
                Opciones de visa para ti:
              </h3>
              {visas.map((visa, i) => (
                <div
                  key={i}
                  className={`p-5 rounded-xl border-2 ${
                    visa.facilidad === 'fácil'
                      ? 'border-green-200 bg-green-50'
                      : visa.facilidad === 'media'
                        ? 'border-yellow-200 bg-yellow-50'
                        : 'border-orange-200 bg-orange-50'
                  }`}
                >
                  <div className="flex justify-between items-start mb-2">
                    <h4 className="font-bold text-lg text-gray-900">{visa.titulo}</h4>
                    <span
                      className={`px-3 py-1 rounded-full text-xs font-semibold ${
                        visa.facilidad === 'fácil'
                          ? 'bg-green-200 text-green-900'
                          : visa.facilidad === 'media'
                            ? 'bg-yellow-200 text-yellow-900'
                            : 'bg-orange-200 text-orange-900'
                      }`}
                    >
                      {visa.facilidad === 'fácil' ? '✓ Recomendada' : visa.facilidad === 'media' ? 'Media' : 'Compleja'}
                    </span>
                  </div>
                  <p className="text-gray-700 mb-3">{visa.descripcion}</p>
                  <Link
                    href={visa.href}
                    className="text-primary hover:text-primary-dark font-semibold underline"
                  >
                    Explorar esta opción →
                  </Link>
                </div>
              ))}
            </div>
          ) : (
            <div className="p-5 bg-blue-50 border-2 border-blue-200 rounded-xl">
              <p className="text-blue-900">
                Según tu situación, podrías explorar opciones específicas. Consulta la guía completa de visas o contáctanos
                para un caso más particular.
              </p>
            </div>
          )}

          <button
            onClick={() => {
              setStep('inicio')
              setRespuestas({
                situacion: null,
                nacionalidad: null,
                vinculos: [],
                laboral: null,
              })
            }}
            className="w-full bg-gray-100 text-gray-900 px-6 py-3 rounded-xl font-semibold hover:bg-gray-200 transition-colors"
          >
            Empezar de nuevo
          </button>
        </div>
      )}
    </div>
  )
}

