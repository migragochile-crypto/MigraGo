'use client'
import { useState, useRef, useEffect } from 'react'
import Link from 'next/link'
import { usePathname } from 'next/navigation'

const SILOS = [
  { href: '/residencia-temporal', label: 'Residencia Temporal' },
  { href: '/residencia-definitiva', label: 'Residencia Definitiva' },
  { href: '/autodenuncia', label: 'Autodenuncia' },
  { href: '/nacionalizacion', label: 'Nacionalización' },
  { href: '/vivir-en-chile', label: 'Vivir en Chile' },
  { href: '/problemas-migratorios', label: 'Problemas Migratorios' },
]

export default function TramitesDropdown() {
  const [open, setOpen] = useState(false)
  const ref = useRef<HTMLDivElement>(null)
  const pathname = usePathname()
  const isActive = SILOS.some((s) => pathname.startsWith(s.href))

  useEffect(() => {
    if (!open) return
    function handleClick(e: MouseEvent) {
      if (ref.current && !ref.current.contains(e.target as Node)) setOpen(false)
    }
    document.addEventListener('mousedown', handleClick)
    return () => document.removeEventListener('mousedown', handleClick)
  }, [open])

  useEffect(() => {
    setOpen(false)
  }, [pathname])

  return (
    <div ref={ref} className="relative">
      <button
        onClick={() => setOpen((v) => !v)}
        aria-expanded={open}
        aria-haspopup="menu"
        className={`flex items-center gap-1 px-3 py-2 rounded text-sm font-medium transition-colors ${
          isActive ? 'bg-white/20' : 'hover:bg-white/10'
        }`}
      >
        Trámites
        <svg
          className={`w-3.5 h-3.5 transition-transform duration-200 ${open ? 'rotate-180' : ''}`}
          fill="none"
          stroke="currentColor"
          viewBox="0 0 24 24"
        >
          <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M19 9l-7 7-7-7" />
        </svg>
      </button>

      {open && (
        <div
          role="menu"
          className="absolute top-full left-0 mt-1.5 w-72 bg-white rounded-xl shadow-xl border border-gray-100 overflow-hidden z-50"
        >
          <div className="grid grid-cols-2 p-2 gap-0.5">
            {SILOS.map(({ href, label }) => (
              <Link
                key={href}
                href={href}
                role="menuitem"
                onClick={() => setOpen(false)}
                className={`px-3 py-2.5 rounded-lg text-sm font-medium transition-colors ${
                  pathname.startsWith(href)
                    ? 'text-primary bg-primary/10 font-semibold'
                    : 'text-gray-700 hover:bg-gray-50 hover:text-primary'
                }`}
              >
                {label}
              </Link>
            ))}
          </div>
        </div>
      )}
    </div>
  )
}
