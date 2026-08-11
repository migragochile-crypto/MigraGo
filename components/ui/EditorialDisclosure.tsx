import Link from 'next/link'
import { EDITOR_NAME, EDITOR_ROLE } from '@/lib/editorial'

interface Props {
  updatedAt?: string | null
  compact?: boolean
}

function formatDate(value?: string | null) {
  if (!value) return null

  return new Date(value).toLocaleDateString('es-CL', {
    year: 'numeric',
    month: 'long',
    day: 'numeric',
  })
}

export default function EditorialDisclosure({ updatedAt, compact = false }: Props) {
  const updatedLabel = formatDate(updatedAt)

  return (
    <aside
      aria-label="Transparencia editorial"
      className={`rounded-2xl border border-blue-200 bg-blue-50/70 ${compact ? 'p-4' : 'p-5'}`}
    >
      <div className="flex items-start gap-3">
        <span
          aria-hidden="true"
          className="flex h-9 w-9 shrink-0 items-center justify-center rounded-full bg-primary text-sm font-bold text-white"
        >
          M
        </span>
        <div className="min-w-0">
          <p className="font-semibold text-gray-900">Cómo se elaboró esta información</p>
          <dl className="mt-3 space-y-2 text-sm leading-relaxed text-gray-700">
            <div>
              <dt className="inline font-semibold text-gray-900">Responsable editorial: </dt>
              <dd className="inline">
                <Link href="/acerca#marcelo" className="text-primary underline underline-offset-2">
                  {EDITOR_NAME}
                </Link>
                , {EDITOR_ROLE}.
              </dd>
            </div>
            <div>
              <dt className="inline font-semibold text-gray-900">Uso de IA: </dt>
              <dd className="inline">
                se utiliza para investigar, organizar información y preparar borradores. El contenido
                se contrasta con fuentes públicas oficiales antes de publicarse.
              </dd>
            </div>
            <div>
              <dt className="inline font-semibold text-gray-900">Revisión jurídica: </dt>
              <dd className="inline">
                no cuenta con revisión profesional de un abogado, salvo que la página lo indique
                expresamente. No constituye asesoría legal.
              </dd>
            </div>
            {updatedLabel && (
              <div>
                <dt className="inline font-semibold text-gray-900">Última actualización: </dt>
                <dd className="inline">{updatedLabel}.</dd>
              </div>
            )}
          </dl>
          <p className="mt-3 text-sm">
            <Link href="/metodologia" className="font-medium text-primary hover:underline">
              Consulta la metodología, las fuentes y la política de correcciones →
            </Link>
          </p>
        </div>
      </div>
    </aside>
  )
}
