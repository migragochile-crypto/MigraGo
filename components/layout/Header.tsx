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
  { href: '/glosario', label: 'Glosario' },
]

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

          {/* Desktop CTA */}
          <Link
            href="/herramientas/consultar-estado"
            className="hidden lg:inline-flex items-center bg-accent text-white px-4 py-2 rounded text-sm font-semibold hover:bg-accent-dark transition-colors whitespace-nowrap shrink-0"
          >
            Consultar estado
          </Link>

          {/* Mobile toggle */}
          <MobileMenuToggle siloLinks={NAV_SILOS} secondaryLinks={SECONDARY_LINKS} />
        </div>
      </div>
    </header>
  )
}
