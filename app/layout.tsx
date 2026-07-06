import type { Metadata } from 'next'
import { Geist, Geist_Mono } from 'next/font/google'
import Script from 'next/script'
import './globals.css'
import Header from '@/components/layout/Header'
import Footer from '@/components/layout/Footer'
import { SITE_URL, SITE_NAME } from '@/lib/constants'

const geistSans = Geist({ variable: '--font-geist-sans', subsets: ['latin'] })
const geistMono = Geist_Mono({ variable: '--font-geist-mono', subsets: ['latin'] })

const adsensePublisherId = process.env.NEXT_PUBLIC_ADSENSE_PUBLISHER_ID ?? 'ca-pub-6798179737019144'
const adsenseScriptSrc = adsensePublisherId
  ? `https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=${adsensePublisherId}`
  : null
const googleSiteVerification = process.env.NEXT_PUBLIC_GOOGLE_SITE_VERIFICATION ?? 'aB-ED4GeTjDo1QomL7I_vVhawTo3KQB_d6K7CuRqmVE'

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
  verification: { google: googleSiteVerification },
}

export default function RootLayout({ children }: { children: React.ReactNode }) {
  return (
    <html lang="es" className={`${geistSans.variable} ${geistMono.variable} h-full`}>
      <head>
        {adsenseScriptSrc ? (
          <Script
            id="adsense-script"
            async
            src={adsenseScriptSrc}
            crossOrigin="anonymous"
            strategy="afterInteractive"
          />
        ) : null}
        <Script async src="https://www.googletagmanager.com/gtag/js?id=G-M3F08MR4KC" strategy="afterInteractive" />
        <Script id="ga4" strategy="afterInteractive">{`
          window.dataLayer = window.dataLayer || [];
          function gtag(){dataLayer.push(arguments);}
          gtag('js', new Date());
          gtag('config', 'G-M3F08MR4KC');
        `}</Script>
      </head>
      <body className="min-h-full flex flex-col antialiased">
        <Header />
        <div className="flex-1 flex flex-col">{children}</div>
        <Footer />
      </body>
    </html>
  )
}

