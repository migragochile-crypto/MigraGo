import Link from 'next/link'
import MobileMenuToggle from './MobileMenuToggle'

const NAV_SILOS = [
  { href: '/residencia-temporal', label: 'Residencia Temporal' },
  { href: '/residencia-definitiva', label: 'Residencia Definitiva' },
  { href: '/autodenuncia', label: 'Autodenuncia' },
  { href: '/nacionalizacion', label: 'Nacionalización' },
  { href: '/vivir-en-chile', label: 'Vivir en Chile' },
  { href: '/problemas-migratorios', label: 'Problemas' },
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
        <div className="flex items-center justify-between h-16">
          <Link href="/" className="font-bold text-xl tracking-tight hover:opacity-90 transition-opacity">
            Migra<span className="text-accent-light">Go</span>
          </Link>

          {/* Desktop nav */}
          <nav className="hidden lg:flex items-center gap-2" aria-label="Navegación principal">
            {NAV_SILOS.map(({ href, label }) => (
              <Link
                key={href}
                href={href}
                className="px-3 py-2 rounded text-sm font-medium hover:bg-white/10 transition-colors"
              >
                {label}
              </Link>
            ))}
          </nav>

          {/* Desktop secondary links */}
          <div className="hidden lg:flex items-center gap-3">
            {SECONDARY_LINKS.map(({ href, label }) => (
              <Link key={href} href={href} className="text-sm hover:opacity-80 transition-opacity">
                {label}
              </Link>
            ))}
            <Link
              href="/herramientas/consultar-estado"
              className="bg-accent text-white px-4 py-2 rounded text-sm font-semibold hover:bg-accent-dark transition-colors"
            >
              Consultar estado
            </Link>
          </div>

          {/* Mobile toggle */}
          <MobileMenuToggle navLinks={NAV_SILOS} />
        </div>
      </div>
    </header>
  )
}

