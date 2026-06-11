import type { Metadata } from 'next'
import Link from 'next/link'
import { buildMetadata } from '@/lib/seo/metadata'
import Breadcrumbs from '@/components/ui/Breadcrumbs'
import LeadMagnet from '@/components/ui/LeadMagnet'
import JsonLd from '@/components/seo/JsonLd'
import { breadcrumbSchema } from '@/lib/seo/schemas'
import { getNewsArticles } from '@/lib/supabase/queries'
import { SITE_URL } from '@/lib/constants'

export const revalidate = 600

export const metadata: Metadata = buildMetadata({
  title: 'Actualidad Migratoria Chile 2026: Cambios Normativos y Noticias',
  description:
    'Noticias y cambios normativos que afectan tu trámite migratorio en Chile: actualizaciones del SERMIG, nuevos procesos, plazos y requisitos. Actualizado regularmente.',
  slug: 'actualidad',
})

const breadcrumbs = [
  { label: 'Inicio', href: SITE_URL },
  { label: 'Actualidad migratoria', href: `${SITE_URL}/actualidad` },
]

function formatDate(date: string | null): string {
  if (!date) return ''
  return new Date(date).toLocaleDateString('es-CL', {
    year: 'numeric',
    month: 'long',
    day: 'numeric',
  })
}

export default async function ActualidadPage() {
  const posts = await getNewsArticles()

  return (
    <>
      <JsonLd schema={breadcrumbSchema(breadcrumbs.map((b) => ({ name: b.label, url: b.href })))} />
      <div className="max-w-4xl mx-auto px-4 py-8">
        <Breadcrumbs items={breadcrumbs} />

        <header className="mt-6 mb-10">
          <h1 className="text-3xl lg:text-4xl font-bold text-gray-900">Actualidad migratoria</h1>
          <p className="mt-3 text-lg text-gray-600">
            Cambios normativos, anuncios del SERMIG y novedades que afectan tu trámite en Chile.
          </p>
        </header>

        {posts.length === 0 ? (
          <p className="text-gray-500">Aún no hay publicaciones. Vuelve pronto.</p>
        ) : (
          <div className="space-y-5">
            {posts.map((post) => {
              const slugPath = post.slug.startsWith('actualidad/')
                ? post.slug
                : `actualidad/${post.slug}`
              return (
                <Link
                  key={post.slug}
                  href={`/${slugPath}`}
                  className="block border border-border rounded-2xl p-6 hover:border-primary hover:shadow-sm transition-all group"
                >
                  <p className="text-sm text-gray-400">{formatDate(post.published_at)}</p>
                  <h2 className="mt-1 text-xl font-semibold text-gray-900 group-hover:text-primary transition-colors">
                    {post.h1}
                  </h2>
                  <p className="mt-2 text-sm text-gray-600 leading-relaxed">{post.meta_description}</p>
                  <span className="mt-3 inline-flex items-center text-primary text-sm font-medium">
                    Leer más
                    <svg className="w-4 h-4 ml-1 group-hover:translate-x-1 transition-transform" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                      <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M9 5l7 7-7 7" />
                    </svg>
                  </span>
                </Link>
              )
            })}
          </div>
        )}

        <div className="mt-12">
          <LeadMagnet
            source="actualidad-hub"
            title="No te pierdas ningún cambio normativo"
            description="Te enviamos un aviso por correo cuando el SERMIG cambie requisitos, plazos o procesos que afecten tu trámite. Sin spam."
          />
        </div>
      </div>
    </>
  )
}
