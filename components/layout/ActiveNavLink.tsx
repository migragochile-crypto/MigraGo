'use client'
import Link from 'next/link'
import { usePathname } from 'next/navigation'

interface Props {
  href: string
  label: string
}

export default function ActiveNavLink({ href, label }: Props) {
  const pathname = usePathname()
  const isActive = pathname === href || pathname.startsWith(href + '/')
  return (
    <Link
      href={href}
      className={`px-3 py-2 rounded text-sm font-medium transition-colors ${
        isActive ? 'bg-white/20' : 'hover:bg-white/10'
      }`}
    >
      {label}
    </Link>
  )
}
