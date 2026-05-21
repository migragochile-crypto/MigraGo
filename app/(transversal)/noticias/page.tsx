import type { Metadata } from 'next'
import Link from 'next/link'
import { getLatestNews } from '@/lib/supabase/queries'
import Breadcrumbs from '@/components/ui/Breadcrumbs'

const SITE_URL = process.env.NEXT_PUBLIC_SITE_URL ?? 'https://migrago.cl'

export const revalidate = 3600

export const metadata: Metadata = {
  title: 'Noticias de inmigración en Chile',
  description:
    'Últimas novedades sobre leyes migratorias, cambios en trámites y actualizaciones del Servicio de Migraciones en Chile.',
  alternates: { canonical: `${SITE_URL}/noticias` },
}

export default async function NoticiasPage() {
  const noticias = await getLatestNews(20)
  const breadcrumbs = [
    { label: 'Inicio', href: SITE_URL },
    { label: 'Noticias', href: `${SITE_URL}/noticias` },
  ]

  return (
    <div className="max-w-4xl mx-auto px-4 py-10">
      <Breadcrumbs items={breadcrumbs} />
      <h1 className="mt-6 text-3xl font-bold text-gray-900">Noticias de inmigración</h1>
      <p className="mt-3 text-gray-600">Actualizaciones sobre leyes y trámites migratorios en Chile.</p>

      {noticias.length === 0 ? (
        <p className="mt-10 text-gray-400 text-center py-16">No hay noticias publicadas aún.</p>
      ) : (
        <div className="mt-10 space-y-6">
          {noticias.map((noticia) => (
            <article
              key={noticia.slug}
              className="border-b border-border pb-6 last:border-0"
            >
              <Link href={`/${noticia.slug}`} className="group">
                <h2 className="text-xl font-semibold text-gray-900 group-hover:text-primary transition-colors">
                  {noticia.h1}
                </h2>
                {noticia.meta_description && (
                  <p className="mt-2 text-gray-600 line-clamp-2">{noticia.meta_description}</p>
                )}
                {noticia.published_at && (
                  <p className="mt-2 text-sm text-gray-400">
                    {new Date(noticia.published_at).toLocaleDateString('es-CL', {
                      year: 'numeric',
                      month: 'long',
                      day: 'numeric',
                    })}
                  </p>
                )}
              </Link>
            </article>
          ))}
        </div>
      )}
    </div>
  )
}

