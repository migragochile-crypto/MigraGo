'use client'

import { useState } from 'react'
import Link from 'next/link'

interface CalculoMulta {
  tramo: string
  multaUtm: number
  multaPesos: number
}

function multaPrimeraInfraccion(dias: number): { tramo: string; utm: number } {
  if (dias <= 90) return { tramo: '1 a 90 días', utm: 0.25 }
  if (dias <= 120) return { tramo: '91 a 120 días', utm: 0.5 }
  if (dias <= 180) return { tramo: '121 a 180 días', utm: 1.5 }
  if (dias <= 270) return { tramo: '181 a 270 días', utm: 2.5 }
  if (dias <= 360) return { tramo: '271 a 360 días', utm: 3 }
  return { tramo: '361 días o más', utm: 4 }
}

export default function CalculadoraMultas() {
  const [diasIrregular, setDiasIrregular] = useState<number | null>(null)
  const [utmMensual, setUtmMensual] = useState<number | null>(null)

  const calculo: CalculoMulta | null = (() => {
    if (!diasIrregular || diasIrregular <= 0 || !utmMensual || utmMensual <= 0) return null
    const { tramo, utm } = multaPrimeraInfraccion(diasIrregular)
    return { tramo, multaUtm: utm, multaPesos: utm * utmMensual }
  })()

  return (
    <div className="space-y-6">
      <div>
        <h2 className="text-2xl font-bold text-gray-900">Estimador de multa por permiso vencido</h2>
        <p className="mt-2 text-gray-600">
          Aplica la tabla rebajada del SERMIG para una primera infracción declarada en línea por
          residencia o permanencia vencida. No calcula sanciones por ingreso clandestino.
        </p>
      </div>

      <div className="space-y-5 rounded-xl bg-gray-50 p-6">
        <div>
          <label className="block text-sm font-semibold text-gray-900 mb-2" htmlFor="dias-irregularidad">
            Días corridos desde el vencimiento del permiso
          </label>
          <input
            id="dias-irregularidad"
            type="number"
            min="1"
            max="3650"
            value={diasIrregular ?? ''}
            onChange={(event) => setDiasIrregular(event.target.value ? Number(event.target.value) : null)}
            placeholder="Ejemplo: 45"
            className="w-full p-3 border border-gray-200 rounded-lg focus:border-primary focus:ring-2 focus:ring-primary/20 outline-none"
          />
        </div>

        <div>
          <label className="block text-sm font-semibold text-gray-900 mb-2" htmlFor="valor-utm">
            Valor de la UTM del mes de pago (CLP)
          </label>
          <input
            id="valor-utm"
            type="number"
            min="1"
            value={utmMensual ?? ''}
            onChange={(event) => setUtmMensual(event.target.value ? Number(event.target.value) : null)}
            placeholder="Consulta el valor vigente antes de calcular"
            className="w-full p-3 border border-gray-200 rounded-lg focus:border-primary focus:ring-2 focus:ring-primary/20 outline-none"
          />
          <a
            href="https://www.sii.cl/valores_y_fechas/utm/utm2026.htm"
            target="_blank"
            rel="noopener noreferrer"
            className="mt-2 inline-block text-xs text-primary hover:underline"
          >
            Consultar UTM vigente en el SII ↗
          </a>
        </div>
      </div>

      {calculo && (
        <div className="space-y-4">
          <div className="border-2 border-primary bg-primary/5 p-6 rounded-xl">
            <h3 className="font-bold text-lg text-gray-900">Resultado orientativo</h3>
            <dl className="mt-4 grid grid-cols-1 gap-3 sm:grid-cols-2">
              <div className="bg-white p-4 rounded-lg border border-gray-200">
                <dt className="text-sm text-gray-600">Tramo oficial</dt>
                <dd className="mt-1 text-xl font-bold text-primary">{calculo.tramo}</dd>
              </div>
              <div className="bg-white p-4 rounded-lg border border-gray-200">
                <dt className="text-sm text-gray-600">Multa rebajada</dt>
                <dd className="mt-1 text-xl font-bold text-primary">{calculo.multaUtm} UTM</dd>
              </div>
            </dl>
            <div className="mt-4 bg-white p-4 rounded-lg border-2 border-primary">
              <p className="text-sm text-gray-600">Equivalencia aproximada</p>
              <p className="mt-1 text-3xl font-bold text-primary">
                ${Math.round(calculo.multaPesos).toLocaleString('es-CL')} CLP
              </p>
            </div>
          </div>

          <div className="rounded-xl border border-amber-200 bg-amber-50 p-4 text-sm text-amber-900">
            <p className="font-semibold">Este resultado no es una liquidación oficial.</p>
            <p className="mt-1">
              Reincidencia, otra clase de infracción o antecedentes adicionales cambian el monto. La
              declaración, el cálculo y el pago se realizan ante el SERMIG.
            </p>
          </div>
        </div>
      )}

      <div className="flex flex-wrap gap-4 text-sm">
        <a
          href="https://serviciomigraciones.cl/declarar-infraccion/"
          target="_blank"
          rel="noopener noreferrer"
          className="font-medium text-primary hover:underline"
        >
          Ver tabla y trámite oficial ↗
        </a>
        <Link href="/problemas-migratorios/multas-migratorias" className="font-medium text-primary hover:underline">
          Leer la guía explicativa →
        </Link>
      </div>
    </div>
  )
}
