'use client'

import Link from 'next/link'

interface EstadoInfo {
  estado: string
  descripcion: string
  quéHacer: string
  color: string
}

const ESTADOS: EstadoInfo[] = [
  {
    estado: 'En evaluación / En análisis',
    descripcion: 'El SERMIG recibió tu solicitud y está revisando si está completa y si cumple los requisitos.',
    quéHacer: 'No se requiere acción. Verifica periódicamente el portal. El proceso puede tomar varios meses.',
    color: 'blue',
  },
  {
    estado: 'Requerimiento de antecedentes',
    descripcion: 'El SERMIG necesita documentación adicional o encontró un error en lo presentado.',
    quéHacer: 'Revisa el correo electrónico registrado en tu cuenta y el portal. Debes entregar lo solicitado dentro del plazo indicado en la notificación.',
    color: 'amber',
  },
  {
    estado: 'En proceso de resolución',
    descripcion: 'La solicitud pasó la etapa de evaluación y está siendo resuelta por la autoridad competente.',
    quéHacer: 'Espera la resolución. Sigue revisando el portal y tu correo.',
    color: 'blue',
  },
  {
    estado: 'Aprobada / Resuelta favorablemente',
    descripcion: 'Tu solicitud fue aprobada. Debes retirar la cédula de identidad para extranjeros en el Registro Civil.',
    quéHacer: 'Agenda una cita en el SRCeI (registrocivil.cl) para retirar o renovar tu cédula con la visa aprobada.',
    color: 'green',
  },
  {
    estado: 'Rechazada / Resuelta desfavorablemente',
    descripcion: 'El SERMIG denegó tu solicitud. La resolución de rechazo indica los motivos.',
    quéHacer: 'Lee atentamente la resolución. Puedes presentar un recurso de reposición o recurso jerárquico dentro de los plazos establecidos.',
    color: 'red',
  },
  {
    estado: 'Desistida / Archivada',
    descripcion: 'La solicitud fue archivada por inactividad, desistimiento o porque no se presentaron los antecedentes requeridos en el plazo indicado.',
    quéHacer: 'Deberás iniciar una nueva solicitud desde cero en el portal del SERMIG.',
    color: 'gray',
  },
]

const COLOR_MAP: Record<string, string> = {
  blue: 'bg-blue-50 border-blue-200',
  amber: 'bg-amber-50 border-amber-200',
  green: 'bg-green-50 border-green-200',
  red: 'bg-red-50 border-red-200',
  gray: 'bg-gray-50 border-gray-200',
}

const BADGE_MAP: Record<string, string> = {
  blue: 'bg-blue-100 text-blue-800',
  amber: 'bg-amber-100 text-amber-800',
  green: 'bg-green-100 text-green-800',
  red: 'bg-red-100 text-red-800',
  gray: 'bg-gray-100 text-gray-700',
}

export default function ConsultarEstado() {
  return (
    <div className="space-y-8">
      {/* Acceso directo al portal */}
      <div className="bg-primary rounded-xl p-6 text-white">
        <p className="text-lg font-semibold mb-2">Consulta tu solicitud en el portal oficial</p>
        <p className="text-sm text-white/80 mb-4">
          El único lugar donde puedes ver el estado real de tu trámite es el Portal de Trámites
          Migratorios del SERMIG. Accede con la cuenta que usaste para presentar la solicitud.
        </p>
        <a
          href="https://tramites.extranjeria.gob.cl"
          target="_blank"
          rel="noopener noreferrer"
          className="inline-block bg-white text-primary font-semibold px-5 py-2.5 rounded-lg text-sm hover:bg-gray-100 transition-colors"
        >
          Ir al portal del SERMIG ↗
        </a>
        <p className="mt-3 text-xs text-white/60">
          Sitio oficial del Gobierno de Chile — tramites.extranjeria.gob.cl
        </p>
      </div>

      {/* Cómo consultar */}
      <div>
        <h2 className="text-base font-semibold text-gray-900 mb-3">Cómo ver el estado de tu solicitud</h2>
        <ol className="space-y-3">
          {[
            'Accede a tramites.extranjeria.gob.cl e inicia sesión con tu cuenta.',
            'En el menú principal, selecciona "Mis solicitudes" o "Mis trámites".',
            'Busca la solicitud por número de radicación o por fecha de presentación.',
            'El estado actual aparece junto a los datos de la solicitud. Si hay una notificación pendiente, verás un aviso.',
          ].map((paso, i) => (
            <li key={i} className="flex gap-3 text-sm text-gray-700">
              <span className="flex-shrink-0 w-6 h-6 rounded-full bg-primary text-white text-xs font-bold flex items-center justify-center mt-0.5">
                {i + 1}
              </span>
              {paso}
            </li>
          ))}
        </ol>
      </div>

      {/* Guía de estados */}
      <div>
        <h2 className="text-base font-semibold text-gray-900 mb-3">¿Qué significa cada estado?</h2>
        <div className="space-y-3">
          {ESTADOS.map((e) => (
            <div
              key={e.estado}
              className={`border rounded-xl p-4 ${COLOR_MAP[e.color]}`}
            >
              <span className={`inline-block text-xs font-semibold px-2 py-0.5 rounded-full mb-2 ${BADGE_MAP[e.color]}`}>
                {e.estado}
              </span>
              <p className="text-sm text-gray-700">{e.descripcion}</p>
              <p className="mt-1.5 text-xs text-gray-600">
                <span className="font-medium">Qué hacer: </span>
                {e.quéHacer}
              </p>
            </div>
          ))}
        </div>
      </div>

      {/* Recursos adicionales */}
      <div className="border-t pt-6 space-y-2">
        <h2 className="text-base font-semibold text-gray-900 mb-3">Si tu solicitud fue rechazada</h2>
        <p className="text-sm text-gray-600">
          Tienes derecho a impugnar la resolución mediante recursos administrativos dentro de los plazos establecidos.
        </p>
        <Link href="/problemas-migratorios/recurso-administrativo" className="text-sm text-primary hover:underline inline-block">
          Ver guía de recursos administrativos →
        </Link>
      </div>

      <div className="bg-gray-50 border border-border rounded-xl p-4 text-xs text-gray-500">
        Esta guía es informativa. El estado actualizado de tu trámite solo puede consultarse en el portal
        oficial del SERMIG. Si llevas mucho tiempo sin actualizaciones y ya respondiste todos los
        requerimientos, puedes contactar directamente al SERMIG.{' '}
        <Link href="/problemas-migratorios/sin-respuesta-sermig" className="underline text-primary">
          Ver qué hacer si el SERMIG no responde.
        </Link>
      </div>
    </div>
  )
}

