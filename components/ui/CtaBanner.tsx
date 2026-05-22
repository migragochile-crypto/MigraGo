import Link from 'next/link'

interface Props {
  text: string
  href: string
  silo: string
}

const SILO_ICONS: Record<string, string> = {
  'residencia-temporal': '🛂',
  'residencia-definitiva': '🏠',
  autodenuncia: '📋',
  nacionalizacion: '🇨🇱',
  'vivir-en-chile': '🌆',
  'problemas-migratorios': '⚠️',
  venezuela: '🇻🇪',
  peru: '🇵🇪',
  colombia: '🇨🇴',
  bolivia: '🇧🇴',
  haiti: '🇭🇹',
  argentina: '🇦🇷',
  'republica-dominicana': '🇩🇴',
}

export default function CtaBanner({ text, href, silo }: Props) {
  const isExternal = href.startsWith('http')
  const icon = SILO_ICONS[silo] ?? '→'

  return (
    <div className="rounded-xl border border-gray-200 bg-white p-5 sticky top-24">
      <div className="text-2xl mb-4">{icon}</div>
      <p className="text-xs font-semibold uppercase tracking-wide text-gray-400 mb-3">
        Siguiente paso
      </p>
      {isExternal ? (
        <a
          href={href}
          target="_blank"
          rel="noopener noreferrer"
          className="block w-full bg-primary text-white font-semibold py-3 px-4 rounded-lg text-center hover:bg-primary-dark transition-colors text-sm"
        >
          {text} ↗
        </a>
      ) : (
        <Link
          href={href}
          className="block w-full bg-primary text-white font-semibold py-3 px-4 rounded-lg text-center hover:bg-primary-dark transition-colors text-sm"
        >
          {text}
        </Link>
      )}
      {isExternal && (
        <p className="mt-3 text-xs text-gray-400 text-center">
          Sitio oficial del gobierno de Chile
        </p>
      )}
    </div>
  )
}
