'use client'

import { useState } from 'react'
import Link from 'next/link'

type Tab = 'multa' | 'pd'

interface CalculoMulta {
  dias: number
  utmActual: number
  tramo: string
  multaUtm: number
  multaPesos: number
}

interface CalculoPD {
  fechaVisa: string | null
  diasDesdeVisa: number
  puedeSerPD: boolean
  diasRestantes: number
}

export default function CalculadoraMultas() {
  const [tab, setTab] = useState<Tab>('multa')
  const [diasIrregular, setDiasIrregular] = useState<number | null>(null)
  const [utmMensual, setUtmMensual] = useState<number>(42000)
  const [fechaVisa, setFechaVisa] = useState<string>('')

  const calcularMulta = (): CalculoMulta | null => {
    if (!diasIrregular || diasIrregular <= 0) return null

    let tramo = ''
    let multaUtm = 0

    if (diasIrregular <= 30) {
      tramo = 'Hasta 30 días'
      multaUtm = 1
    } else if (diasIrregular <= 90) {
      tramo = '31 a 90 días'
      multaUtm = 2
    } else if (diasIrregular <= 365) {
      tramo = '91 días a 1 año'
      multaUtm = 3
    } else {
      tramo = 'Más de 1 año'
      multaUtm = 5
    }

    return {
      dias: diasIrregular,
      utmActual: utmMensual,
      tramo,
      multaUtm,
      multaPesos: multaUtm * utmMensual,
    }
  }

  const calcularPD = (): CalculoPD => {
    if (!fechaVisa) {
      return {
        fechaVisa: null,
        diasDesdeVisa: 0,
        puedeSerPD: false,
        diasRestantes: 730,
      }
    }

    const inicio = new Date(fechaVisa)
    const hoy = new Date()
    const diasDesde = Math.floor((hoy.getTime() - inicio.getTime()) / (1000 * 60 * 60 * 24))
    const diasPara2Anos = 730
    const diasRestantes = Math.max(0, diasPara2Anos - diasDesde)

    return {
      fechaVisa,
      diasDesdeVisa: diasDesde,
      puedeSerPD: diasDesde >= diasPara2Anos,
      diasRestantes,
    }
  }

  const multa = calcularMulta()
  const pd = calcularPD()
  const hoy = new Date().toISOString().split('T')[0]

  return (
    <div className="max-w-2xl mx-auto p-6 bg-white rounded-2xl border border-gray-200">
      {/* Tabs */}
      <div className="flex gap-2 mb-8 border-b border-gray-200">
        <button
          onClick={() => setTab('multa')}
          className={`px-6 py-3 font-semibold border-b-2 transition-colors ${
            tab === 'multa'
              ? 'border-primary text-primary'
              : 'border-transparent text-gray-600 hover:text-gray-900'
          }`}
        >
          💰 Calculadora de Multa
        </button>
        <button
          onClick={() => setTab('pd')}
          className={`px-6 py-3 font-semibold border-b-2 transition-colors ${
            tab === 'pd'
              ? 'border-primary text-primary'
              : 'border-transparent text-gray-600 hover:text-gray-900'
          }`}
        >
          📅 Estimador de PD
        </button>
      </div>

      {/* TAB: Calculadora de Multa */}
      {tab === 'multa' && (
        <div className="space-y-6">
          <div>
            <h2 className="text-2xl font-bold text-gray-900 mb-2">Calculadora de Multa Migratoria</h2>
            <p className="text-gray-600">
              Estima cuánto deberás pagar según los días que llevas en situación irregular.
            </p>
          </div>

          {/* Inputs */}
          <div className="space-y-5 bg-gray-50 p-6 rounded-xl">
            <div>
              <label className="block text-sm font-semibold text-gray-900 mb-2">
                ¿Cuántos días llevas en situación irregular?
              </label>
              <input
                type="number"
                min="1"
                max="3650"
                value={diasIrregular ?? ''}
                onChange={(e) => setDiasIrregular(e.target.value ? parseInt(e.target.value) : null)}
                placeholder="Ej: 45"
                className="w-full p-3 border border-gray-200 rounded-lg focus:border-primary focus:ring-2 focus:ring-primary/20 outline-none"
              />
              <p className="text-xs text-gray-500 mt-1">
                Desde la fecha en que tu visa venció o ingresaste sin documentación
              </p>
            </div>

            <div>
              <label className="block text-sm font-semibold text-gray-900 mb-2">
                Valor UTM actual (mensual)
              </label>
              <div className="flex gap-2">
                <input
                  type="number"
                  min="1000"
                  value={utmMensual}
                  onChange={(e) => setUtmMensual(parseInt(e.target.value))}
                  className="flex-1 p-3 border border-gray-200 rounded-lg focus:border-primary focus:ring-2 focus:ring-primary/20 outline-none"
                />
                <span className="text-gray-600 pt-3">CLP</span>
              </div>
              <p className="text-xs text-gray-500 mt-1">
                Consulta el valor vigente en{' '}
                <a href="https://www.sii.cl" target="_blank" rel="noopener noreferrer" className="text-primary hover:underline">
                  sii.cl
                </a>
              </p>
            </div>
          </div>

          {/* Resultado */}
          {multa && (
            <div className="space-y-4">
              <div className="border-2 border-primary bg-primary/5 p-6 rounded-xl">
                <h3 className="font-bold text-lg text-gray-900 mb-4">Tu estimación:</h3>

                <div className="grid grid-cols-2 gap-4 mb-6">
                  <div className="bg-white p-4 rounded-lg border border-gray-200">
                    <p className="text-sm text-gray-600 mb-1">Tramo de multa</p>
                    <p className="text-xl font-bold text-primary">{multa.tramo}</p>
                  </div>
                  <div className="bg-white p-4 rounded-lg border border-gray-200">
                    <p className="text-sm text-gray-600 mb-1">UTM a pagar</p>
                    <p className="text-xl font-bold text-primary">{multa.multaUtm} UTM</p>
                  </div>
                </div>

                <div className="bg-white p-4 rounded-lg border-2 border-primary mb-4">
                  <p className="text-sm text-gray-600 mb-1">Monto en pesos (aproximado)</p>
                  <p className="text-4xl font-bold text-primary">
                    ${multa.multaPesos.toLocaleString('es-CL')} CLP
                  </p>
                </div>

                <p className="text-sm text-gray-600">
                  <strong>Nota:</strong> Este es un estimado. El monto final lo calculará la PDI en el momento de tu autodenuncia,
                  considerando factores adicionales.
                </p>
              </div>

              <div className="bg-blue-50 border border-blue-200 p-4 rounded-lg">
                <p className="text-sm text-blue-900">
                  <strong>💡 Consejo:</strong> Cuanto antes hagas la autodenuncia, menor será la multa. Ver guía:
                </p>
                <Link href="/autodenuncia/pdi-paso-a-paso" className="text-blue-700 hover:underline font-semibold">
                  PDI paso a paso →
                </Link>
              </div>
            </div>
          )}

          {!multa && diasIrregular && (
            <div className="text-center py-8 text-gray-500">
              Ingresa el número de días para ver el estimado
            </div>
          )}
        </div>
      )}

      {/* TAB: Estimador PD */}
      {tab === 'pd' && (
        <div className="space-y-6">
          <div>
            <h2 className="text-2xl font-bold text-gray-900 mb-2">Estimador: ¿Cuándo puedo solicitar PD?</h2>
            <p className="text-gray-600">
              Calcula cuánto falta para que cumplas 2 años continuos con visa temporaria.
            </p>
          </div>

          <div className="bg-gray-50 p-6 rounded-xl">
            <label className="block text-sm font-semibold text-gray-900 mb-2">
              ¿Cuándo aprobaron tu visa temporaria?
            </label>
            <input
              type="date"
              max={hoy}
              value={fechaVisa}
              onChange={(e) => setFechaVisa(e.target.value)}
              className="w-full p-3 border border-gray-200 rounded-lg focus:border-primary focus:ring-2 focus:ring-primary/20 outline-none"
            />
            <p className="text-xs text-gray-500 mt-2">
              Usa la fecha del comprobante de aprobación, no la de solicitud
            </p>
          </div>

          {fechaVisa && (
            <div className="space-y-4">
              {pd.puedeSerPD ? (
                <div className="border-2 border-green-200 bg-green-50 p-6 rounded-xl">
                  <h3 className="text-lg font-bold text-green-900 mb-4">✅ ¡Ya puedes solicitar PD!</h3>
                  <p className="text-green-800 mb-6">
                    Llevas {pd.diasDesdeVisa} días con visa vigente — has cumplido el requisito de 2 años continuos.
                  </p>
                  <div className="grid grid-cols-2 gap-3">
                    <Link
                      href="/residencia-definitiva/requisitos"
                      className="bg-green-700 text-white px-4 py-2 rounded-lg hover:bg-green-800 text-center font-semibold"
                    >
                      Ver requisitos →
                    </Link>
                    <Link
                      href="/residencia-definitiva/documentos"
                      className="bg-white border border-green-700 text-green-700 px-4 py-2 rounded-lg hover:bg-green-50 text-center font-semibold"
                    >
                      Documentos →
                    </Link>
                  </div>
                </div>
              ) : (
                <div className="border-2 border-yellow-200 bg-yellow-50 p-6 rounded-xl">
                  <h3 className="text-lg font-bold text-yellow-900 mb-4">⏳ Falta poco</h3>
                  <div className="bg-white p-4 rounded-lg mb-4 border border-yellow-200">
                    <p className="text-sm text-gray-600 mb-1">Llevas hasta hoy:</p>
                    <p className="text-3xl font-bold text-yellow-700">
                      {pd.diasDesdeVisa} días
                    </p>
                    <p className="text-xs text-gray-500 mt-1">({(pd.diasDesdeVisa / 365).toFixed(2)} años)</p>
                  </div>

                  <div className="bg-primary/10 p-4 rounded-lg mb-4 border border-primary">
                    <p className="text-sm text-gray-600 mb-1">Te faltan:</p>
                    <p className="text-3xl font-bold text-primary">
                      {pd.diasRestantes} días
                    </p>
                    <p className="text-xs text-gray-500 mt-1">
                      ({(pd.diasRestantes / 30).toFixed(1)} meses aproximadamente)
                    </p>
                  </div>

                  <p className="text-sm text-yellow-900 mb-4">
                    <strong>Nota:</strong> Para 2 años continuos, no deben haber ausencias de más de 180 días en total.
                  </p>

                  <Link
                    href="/residencia-definitiva"
                    className="text-yellow-700 hover:underline font-semibold"
                  >
                    Leer más sobre la PD →
                  </Link>
                </div>
              )}

              <div className="bg-blue-50 border border-blue-200 p-4 rounded-lg text-sm text-blue-900">
                <strong>📝 Importante:</strong> El plazo legal es 2 años continuos. Las ausencias no deben superar 180 días en total durante esos 2 años.
              </div>
            </div>
          )}
        </div>
      )}
    </div>
  )
}

