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
}

export default function CtaBanner({ text, href, silo }: Props) {
  const isExternal = href.startsWith('http')
  const icon = SILO_ICONS[silo] ?? '→'

  return (
    <div className="bg-primary rounded-xl p-6 text-white sticky top-24">
      <div className="text-3xl mb-3">{icon}</div>
      <p className="font-semibold text-lg leading-snug mb-4">¿Listo para empezar tu trámite?</p>
      <p className="text-sm text-white/80 mb-5">
        Toda la información que necesitas está aquí. Cuando estés listo, accede al portal oficial.
      </p>
      {isExternal ? (
        <a
          href={href}
          target="_blank"
          rel="noopener noreferrer"
          className="block w-full bg-white text-primary font-semibold py-3 px-4 rounded-lg text-center hover:bg-gray-100 transition-colors text-sm"
        >
          {text} ↗
        </a>
      ) : (
        <Link
          href={href}
          className="block w-full bg-white text-primary font-semibold py-3 px-4 rounded-lg text-center hover:bg-gray-100 transition-colors text-sm"
        >
          {text}
        </Link>
      )}
      <p className="mt-3 text-xs text-white/60 text-center">
        Accederás a un sitio oficial del gobierno de Chile
      </p>
    </div>
  )
}

