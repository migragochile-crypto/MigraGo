'use client'
import { useState } from 'react'
import Link from 'next/link'

interface NavLink {
  href: string
  label: string
}

export default function MobileMenuToggle({ navLinks }: { navLinks: NavLink[] }) {
  const [open, setOpen] = useState(false)

  return (
    <>
      <button
        className="lg:hidden p-2 rounded hover:bg-white/10 transition-colors"
        aria-label="Abrir menú"
        aria-expanded={open}
        onClick={() => setOpen(!open)}
      >
        <svg className="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
          {open ? (
            <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M6 18L18 6M6 6l12 12" />
          ) : (
            <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M4 6h16M4 12h16M4 18h16" />
          )}
        </svg>
      </button>

      {open && (
        <div className="lg:hidden absolute top-16 inset-x-0 bg-primary border-t border-white/10 shadow-lg z-50">
          <nav className="max-w-7xl mx-auto px-4 py-4 flex flex-col gap-1">
            {navLinks.map(({ href, label }) => (
              <Link
                key={href}
                href={href}
                className="px-4 py-3 rounded font-medium hover:bg-white/10 transition-colors"
                onClick={() => setOpen(false)}
              >
                {label}
              </Link>
            ))}
            <hr className="border-white/20 my-2" />
            <Link href="/paises" className="px-4 py-3 hover:bg-white/10 rounded" onClick={() => setOpen(false)}>
              Por país
            </Link>
            <Link href="/herramientas" className="px-4 py-3 hover:bg-white/10 rounded" onClick={() => setOpen(false)}>
              Herramientas
            </Link>
            <Link href="/glosario" className="px-4 py-3 hover:bg-white/10 rounded" onClick={() => setOpen(false)}>
              Glosario
            </Link>
            <Link
              href="/herramientas/consultar-estado"
              className="mt-2 bg-accent text-white px-4 py-3 rounded font-medium text-center"
              onClick={() => setOpen(false)}
            >
              Consultar estado de trámite
            </Link>
          </nav>
        </div>
      )}
    </>
  )
}

