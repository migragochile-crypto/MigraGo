import type { Metadata } from 'next'
import { Geist, Geist_Mono } from 'next/font/google'
import './globals.css'
import Header from '@/components/layout/Header'
import Footer from '@/components/layout/Footer'
import { SITE_URL, SITE_NAME } from '@/lib/constants'

const geistSans = Geist({ variable: '--font-geist-sans', subsets: ['latin'] })
const geistMono = Geist_Mono({ variable: '--font-geist-mono', subsets: ['latin'] })


export const metadata: Metadata = {
  metadataBase: new URL(SITE_URL),
  title: {
    default: `${SITE_NAME} — Tu guía migratoria en Chile`,
    template: `%s | ${SITE_NAME}`,
  },
  description:
    'Guía actualizada sobre visas, autodenuncia, permanencia definitiva, nacionalización y vivir en Chile. Información clara, sin jerga legal.',
  openGraph: {
    siteName: SITE_NAME,
    locale: 'es_CL',
    type: 'website',
  },
  robots: { index: true, follow: true },
  verification: { google: 'aB-ED4GeTjDo1QomL7I_vVhawTo3KQB_d6K7CuRqmVE' },
}

export default function RootLayout({ children }: { children: React.ReactNode }) {
  return (
    <html lang="es" className={`${geistSans.variable} ${geistMono.variable} h-full`}>
      <body className="min-h-full flex flex-col antialiased">
        <Header />
        <div className="flex-1 flex flex-col">{children}</div>
        <Footer />
      </body>
    </html>
  )
}

