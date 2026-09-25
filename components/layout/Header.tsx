import Link from 'next/link'
import TramitesDropdown from './TramitesDropdown'
import ActiveNavLink from './ActiveNavLink'
import MobileMenuToggle from './MobileMenuToggle'

const NAV_SILOS = [
  { href: '/residencia-temporal', label: 'Residencia Temporal' },
  { href: '/residencia-definitiva', label: 'Residencia Definitiva' },
  { href: '/autodenuncia', label: 'Autodenuncia' },
  { href: '/nacionalizacion', label: 'Nacionalización' },
  { href: '/vivir-en-chile', label: 'Vivir en Chile' },
  { href: '/problemas-migratorios', label: 'Problemas Migratorios' },
]

const SECONDARY_LINKS = [
  { href: '/paises', label: 'Por país' },
  { href: '/herramientas', label: 'Herramientas' },
  { href: '/actualidad', label: 'Actualidad' },
  { href: '/glosario', label: 'Glosario' },
]

const MOBILE_LINKS = [{ href: '/buscar', label: 'Buscar' }, ...SECONDARY_LINKS]

export default function Header() {
  return (
    <header className="bg-primary text-white shadow-md sticky top-0 z-50">
      <div className="max-w-7xl mx-auto px-4">
        <div className="flex items-center justify-between h-16 gap-4">
          <Link
            href="/"
            className="font-bold text-xl tracking-tight hover:opacity-90 transition-opacity shrink-0"
          >
            Migra<span className="text-accent-light">Go</span>
          </Link>

          {/* Desktop nav */}
          <nav className="hidden lg:flex items-center gap-1 flex-1" aria-label="Navegación principal">
            <TramitesDropdown />
            <div className="w-px h-5 bg-white/20 mx-1" aria-hidden="true" />
            {SECONDARY_LINKS.map(({ href, label }) => (
              <ActiveNavLink key={href} href={href} label={label} />
            ))}
          </nav>

          <Link
            href="/buscar"
            aria-label="Buscar en MigraGo"
            className="hidden lg:inline-flex items-center gap-2 rounded-lg px-3 py-2 text-sm font-medium text-white/90 transition-colors hover:bg-white/10 hover:text-white"
          >
            <svg aria-hidden="true" className="h-5 w-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="m21 21-4.35-4.35m1.35-5.65a7 7 0 1 1-14 0 7 7 0 0 1 14 0Z" />
            </svg>
            <span className="hidden xl:inline">Buscar</span>
          </Link>

          {/* Desktop CTA */}
          <Link
            href="/herramientas/consultar-estado"
            className="hidden lg:inline-flex items-center bg-accent text-white px-4 py-2 rounded text-sm font-semibold hover:bg-accent-dark transition-colors whitespace-nowrap shrink-0"
          >
            Consultar estado
          </Link>

          {/* Mobile toggle */}
          <MobileMenuToggle siloLinks={NAV_SILOS} secondaryLinks={MOBILE_LINKS} />
        </div>
      </div>
    </header>
  )
}
