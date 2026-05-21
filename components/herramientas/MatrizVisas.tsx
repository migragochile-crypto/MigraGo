'use client'

import { useState } from 'react'
import Link from 'next/link'

interface Visa {
  nombre: string
  slug: string
  requisitos: string[]
  plazo: string
  vigencia: string
  ventajas: string[]
  dificultad: 'fácil' | 'media' | 'difícil'
  urgencia: boolean
}

const VISAS: Visa[] = [
  {
    nombre: 'MERCOSUR',
    slug: 'mercosur',
    requisitos: [
      'Nacionalidad de país MERCOSUR o asociado',
      'Pasaporte vigente',
      'Certificado de antecedentes',
      'Comprobante de residencia',
    ],
    plazo: '60-120 días',
    vigencia: '2 años',
    ventajas: ['No requiere contrato', 'No requiere vínculo familiar', '2 años de vigencia', 'Acceso a PD en 2 años'],
    dificultad: 'fácil',
    urgencia: false,
  },
  {
    nombre: 'Hijo Chileno',
    slug: 'hijo-chileno',
    requisitos: [
      'Hijo/a con nacionalidad chilena',
      'Filiación reconocida',
      'Pasaporte vigente',
      'Certificado de nacimiento del hijo',
    ],
    plazo: '60-120 días',
    vigencia: '1 año renovable',
    ventajas: ['Arraigo familiar fuerte', 'Fácil aprobación', 'No requiere contrato', 'Abre camino a PD'],
    dificultad: 'fácil',
    urgencia: false,
  },
  {
    nombre: 'Pareja Chilena',
    slug: 'pareja-chilena',
    requisitos: [
      'Matrimonio o AUC vigente con chileno/a',
      'Pasaporte vigente',
      'Certificado de matrimonio/AUC',
      'Certificado de antecedentes',
    ],
    plazo: '60-120 días',
    vigencia: '1 año renovable',
    ventajas: ['Arraigo familiar fuerte', 'Aprobación frecuente', 'No requiere contrato', 'Vía directa a PD posible'],
    dificultad: 'fácil',
    urgencia: false,
  },
  {
    nombre: 'Contrato de Trabajo',
    slug: 'contrato-trabajo',
    requisitos: [
      'Contrato de trabajo formal',
      'Pasaporte vigente',
      'Certificado de antecedentes',
      'Contrato debe estar firmado antes',
    ],
    plazo: '90-150 días',
    vigencia: '1 año renovable',
    ventajas: ['Acceso laboral formal', 'Renovable anualmente', 'Ruta clara a PD', 'Cotizaciones previsionales'],
    dificultad: 'media',
    urgencia: false,
  },
  {
    nombre: 'Estudiante',
    slug: 'estudiante',
    requisitos: [
      'Inscripción en institución acreditada',
      'Pasaporte vigente',
      'Comprobante de pago',
      'Certificado de antecedentes',
    ],
    plazo: '60-120 días',
    vigencia: 'Vigencia de la carrera',
    ventajas: ['Acceso a educación', 'Renovable cada año', 'Permite trabajo complementario', 'Buena tasa de aprobación'],
    dificultad: 'media',
    urgencia: false,
  },
  {
    nombre: 'VRD (Venezuela)',
    slug: 'responsabilidad-democratica',
    requisitos: ['Nacionalidad venezolana', 'Pasaporte vigente', 'Certificado de antecedentes', 'Comprobante de residencia'],
    plazo: '90-150 días',
    vigencia: '2 años',
    ventajas: ['Exclusiva para venezolanos', '2 años vigencia', 'Vía facilitada', 'Permite carga familiar'],
    dificultad: 'media',
    urgencia: true,
  },
  {
    nombre: 'Jubilado / Rentista',
    slug: 'jubilado-rentista',
    requisitos: [
      'Ingresos regulares del extranjero (mín. $2.733 USD/mes)',
      'Pasaporte vigente',
      'Estados de cuenta o comprobantes',
      'Certificado de antecedentes',
    ],
    plazo: '90-150 días',
    vigencia: '1 año renovable',
    ventajas: ['No requiere trabajo', 'Renovable con ingresos', 'Acceso a PD', 'Flexibilidad económica'],
    dificultad: 'media',
    urgencia: false,
  },
  {
    nombre: 'Razones Humanitarias',
    slug: 'razones-humanitarias',
    requisitos: [
      'Situación de vulnerabilidad especial',
      'Pasaporte vigente',
      'Documentación de respaldo',
      'Evaluación SERMIG',
    ],
    plazo: '120-180 días',
    vigencia: 'Variable',
    ventajas: ['Acceso para casos especiales', 'Evaluación personalizada', 'Consideración de familia', 'Red de apoyo'],
    dificultad: 'difícil',
    urgencia: false,
  },
]

type Filtro = 'todas' | 'fácil' | 'media' | 'difícil'

export default function MatrizVisas() {
  const [filtro, setFiltro] = useState<Filtro>('todas')

  const visasFiltradas = filtro === 'todas' ? VISAS : VISAS.filter((v) => v.dificultad === filtro)

  return (
    <div className="max-w-6xl mx-auto p-6 bg-white rounded-2xl border border-gray-200">
      <div className="mb-8">
        <h2 className="text-3xl font-bold text-gray-900 mb-2">Comparador de Visas Temporarias</h2>
        <p className="text-gray-600">Revisa requisitos, plazos y ventajas de cada categoría</p>
      </div>

      {/* Filtros */}
      <div className="mb-8 flex gap-3 flex-wrap">
        {[
          { val: 'todas' as Filtro, label: '📋 Todas las visas' },
          { val: 'fácil' as Filtro, label: '✓ Fáciles (recomendadas)' },
          { val: 'media' as Filtro, label: '⚙️ Nivel medio' },
          { val: 'difícil' as Filtro, label: '⚠️ Complejas' },
        ].map((opt) => (
          <button
            key={opt.val}
            onClick={() => setFiltro(opt.val)}
            className={`px-4 py-2 rounded-lg font-semibold transition-colors ${
              filtro === opt.val
                ? 'bg-primary text-white'
                : 'bg-gray-100 text-gray-900 hover:bg-gray-200'
            }`}
          >
            {opt.label}
          </button>
        ))}
      </div>

      {/* Grid de visas */}
      <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
        {visasFiltradas.map((visa) => (
          <div
            key={visa.slug}
            className={`border-2 rounded-xl p-6 hover:shadow-md transition-all ${
              visa.dificultad === 'fácil'
                ? 'border-green-200 bg-green-50'
                : visa.dificultad === 'media'
                  ? 'border-yellow-200 bg-yellow-50'
                  : 'border-orange-200 bg-orange-50'
            }`}
          >
            {/* Header */}
            <div className="flex justify-between items-start mb-4">
              <h3 className="text-xl font-bold text-gray-900">{visa.nombre}</h3>
              <span
                className={`px-3 py-1 rounded-full text-xs font-semibold whitespace-nowrap ${
                  visa.dificultad === 'fácil'
                    ? 'bg-green-200 text-green-900'
                    : visa.dificultad === 'media'
                      ? 'bg-yellow-200 text-yellow-900'
                      : 'bg-orange-200 text-orange-900'
                }`}
              >
                {visa.dificultad === 'fácil'
                  ? '✓ Fácil'
                  : visa.dificultad === 'media'
                    ? '⚙️ Media'
                    : '⚠️ Compleja'}
              </span>
            </div>

            {/* Plazos */}
            <div className="grid grid-cols-2 gap-3 mb-4 text-sm">
              <div className="bg-white p-3 rounded border border-gray-200">
                <p className="text-gray-600">Plazo aprox.</p>
                <p className="font-bold text-gray-900">{visa.plazo}</p>
              </div>
              <div className="bg-white p-3 rounded border border-gray-200">
                <p className="text-gray-600">Vigencia</p>
                <p className="font-bold text-gray-900">{visa.vigencia}</p>
              </div>
            </div>

            {/* Requisitos */}
            <div className="mb-4">
              <p className="text-sm font-semibold text-gray-900 mb-2">Requisitos principales:</p>
              <ul className="text-sm text-gray-700 space-y-1">
                {visa.requisitos.slice(0, 3).map((req, i) => (
                  <li key={i} className="flex gap-2">
                    <span>•</span>
                    <span>{req}</span>
                  </li>
                ))}
              </ul>
            </div>

            {/* Ventajas */}
            <div className="mb-4">
              <p className="text-sm font-semibold text-gray-900 mb-2">Ventajas:</p>
              <ul className="text-sm text-gray-700 space-y-1">
                {visa.ventajas.slice(0, 2).map((vent, i) => (
                  <li key={i} className="flex gap-2">
                    <span className="text-green-600">✓</span>
                    <span>{vent}</span>
                  </li>
                ))}
              </ul>
            </div>

            {/* Link */}
            <Link
              href={`/residencia-temporal/${visa.slug}`}
              className="inline-block mt-4 text-primary hover:text-primary-dark font-semibold underline"
            >
              Guía completa →
            </Link>
          </div>
        ))}
      </div>

      {/* Footer con tips */}
      <div className="mt-10 bg-blue-50 border border-blue-200 p-6 rounded-xl">
        <h4 className="font-bold text-blue-900 mb-3">💡 Tips para elegir:</h4>
        <ul className="text-sm text-blue-900 space-y-2">
          <li>
            <strong>Si tienes vínculo familiar (hijo o pareja chilenos):</strong> Esas son las más sencillas y con mejor tasa de aprobación.
          </li>
          <li>
            <strong>Si eres de país MERCOSUR:</strong> La Visa MERCOSUR es la opción más directa (2 años, no requiere contrato).
          </li>
          <li>
            <strong>Si estás en situación irregular:</strong> Primero haz autodenuncia en la PDI, luego solicita la visa que corresponda.
          </li>
          <li>
            <strong>Después de 2 años:</strong> Todas las visas temporarias permiten solicitar la Permanencia Definitiva.
          </li>
        </ul>
      </div>

      {/* CTA */}
      <div className="mt-6 text-center">
        <p className="text-gray-600 mb-3">¿No sabes cuál te conviene?</p>
        <Link
          href="/herramientas/quiz-visas"
          className="inline-block bg-primary text-white px-6 py-3 rounded-lg font-semibold hover:bg-primary-dark transition-colors"
        >
          Hacer el Quiz →
        </Link>
      </div>
    </div>
  )
}

