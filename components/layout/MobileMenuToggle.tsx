'use client'
import { useState } from 'react'
import Link from 'next/link'

interface NavLink {
  href: string
  label: string
}

interface Props {
  siloLinks: NavLink[]
  secondaryLinks: NavLink[]
}

export default function MobileMenuToggle({ siloLinks, secondaryLinks }: Props) {
  const [open, setOpen] = useState(false)

  return (
    <>
      <button
        className="lg:hidden p-2 rounded hover:bg-white/10 transition-colors"
        aria-label={open ? 'Cerrar menú' : 'Abrir menú'}
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
        <>
          {/* Backdrop */}
          <div
            className="lg:hidden fixed inset-0 top-16 bg-black/40 z-40"
            onClick={() => setOpen(false)}
            aria-hidden="true"
          />

          {/* Menu panel */}
          <div className="lg:hidden fixed top-16 inset-x-0 bg-primary border-t border-white/10 shadow-xl z-50 max-h-[calc(100vh-4rem)] overflow-y-auto">
            <nav className="max-w-7xl mx-auto px-4 py-4 flex flex-col gap-1">
              <p className="text-xs font-semibold text-white/50 uppercase tracking-wider px-4 pb-1">
                Trámites
              </p>
              {siloLinks.map(({ href, label }) => (
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

              {secondaryLinks.map(({ href, label }) => (
                <Link
                  key={href}
                  href={href}
                  className="px-4 py-3 rounded hover:bg-white/10 transition-colors"
                  onClick={() => setOpen(false)}
                >
                  {label}
                </Link>
              ))}

              <Link
                href="/herramientas/consultar-estado"
                className="mt-2 bg-accent text-white px-4 py-3 rounded font-semibold text-center hover:bg-accent-dark transition-colors"
                onClick={() => setOpen(false)}
              >
                Consultar estado de trámite
              </Link>
            </nav>
          </div>
        </>
      )}
    </>
  )
}
