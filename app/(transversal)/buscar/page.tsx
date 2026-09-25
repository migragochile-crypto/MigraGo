import type { Metadata } from 'next'
import Link from 'next/link'
import Breadcrumbs from '@/components/ui/Breadcrumbs'
import { SILOS } from '@/lib/content/silos'
import { getSearchIndex } from '@/lib/supabase/queries'
import { articleHref, searchArticles, searchTools } from '@/lib/search'

export const metadata: Metadata = {
  title: 'Buscar en MigraGo',
  description: 'Busca guías, trámites y respuestas sobre migración y vida en Chile.',
  robots: { index: false, follow: true },
}

const SUGGESTIONS = [
  'visa vencida',
  'residencia temporal',
  'RUT para extranjeros',
  'estado del trámite',
  'cuenta bancaria',
]

export default async function SearchPage({
  searchParams,
}: {
  searchParams: Promise<{ q?: string | string[] }>
}) {
  const rawQuery = (await searchParams).q
  const query = (Array.isArray(rawQuery) ? rawQuery[0] : rawQuery ?? '').trim().slice(0, 120)
  const articles = query.length >= 2 ? await getSearchIndex() : []
  const results = searchArticles(articles, query)
  const toolResults = searchTools(query)
  const resultCount = results.length + toolResults.length

  return (
    <main className="min-h-[70vh] bg-surface px-4 py-8">
      <div className="mx-auto max-w-5xl">
        <Breadcrumbs items={[{ label: 'Inicio', href: '/' }, { label: 'Buscar', href: '/buscar' }]} />

        <section className="mt-8 rounded-3xl bg-primary px-6 py-10 text-white shadow-sm sm:px-10">
          <p className="text-sm font-semibold uppercase tracking-[0.16em] text-white/65">
            Encuentra una respuesta
          </p>
          <h1 className="mt-2 text-3xl font-bold sm:text-4xl">¿Qué necesitas resolver?</h1>
          <p className="mt-3 max-w-2xl text-white/80">
            Escribe tu situación con palabras simples. Por ejemplo: “tengo la visa vencida” o
            “quiero abrir una cuenta sin RUT”.
          </p>
          <form action="/buscar" method="get" role="search" className="mt-7 flex flex-col gap-3 sm:flex-row">
            <label htmlFor="site-search" className="sr-only">Buscar en MigraGo</label>
            <div className="relative flex-1">
              <svg
                aria-hidden="true"
                className="absolute left-4 top-1/2 h-5 w-5 -translate-y-1/2 text-gray-400"
                fill="none"
                stroke="currentColor"
                viewBox="0 0 24 24"
              >
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="m21 21-4.35-4.35m1.35-5.65a7 7 0 1 1-14 0 7 7 0 0 1 14 0Z" />
              </svg>
              <input
                id="site-search"
                name="q"
                type="search"
                defaultValue={query}
                minLength={2}
                maxLength={120}
                autoFocus
                placeholder="Ej.: tengo la visa vencida"
                className="h-14 w-full rounded-xl border border-white/20 bg-white pl-12 pr-4 text-base text-gray-900 outline-none ring-accent transition focus:ring-4"
              />
            </div>
            <button
              type="submit"
              className="h-14 rounded-xl bg-accent px-7 font-semibold text-white transition-colors hover:bg-accent-dark"
            >
              Buscar
            </button>
          </form>
        </section>

        {!query && (
          <section className="py-10">
            <h2 className="text-lg font-semibold text-gray-900">Búsquedas frecuentes</h2>
            <div className="mt-4 flex flex-wrap gap-2">
              {SUGGESTIONS.map((suggestion) => (
                <Link
                  key={suggestion}
                  href={`/buscar?q=${encodeURIComponent(suggestion)}`}
                  className="rounded-full border border-gray-200 bg-white px-4 py-2 text-sm font-medium text-gray-700 transition hover:border-primary hover:text-primary"
                >
                  {suggestion}
                </Link>
              ))}
            </div>
          </section>
        )}

        {query && (
          <section className="py-10" aria-live="polite">
            <div className="flex flex-wrap items-end justify-between gap-2">
              <div>
                <p className="text-sm font-medium text-primary">
                  {resultCount} {resultCount === 1 ? 'resultado' : 'resultados'}
                </p>
                <h2 className="mt-1 text-2xl font-bold text-gray-900">Resultados para “{query}”</h2>
              </div>
              <p className="text-sm text-gray-500">Ordenados por relevancia</p>
            </div>

            {resultCount > 0 ? (
              <div className="mt-6 grid gap-4">
                {toolResults.map((tool) => (
                  <Link
                    key={tool.slug}
                    href={`/herramientas/${tool.slug}`}
                    className="group rounded-2xl border border-primary/20 bg-primary/5 p-6 transition hover:border-primary/50 hover:shadow-sm"
                  >
                    <p className="text-xs font-semibold uppercase tracking-wide text-primary">Herramienta interactiva</p>
                    <h3 className="mt-2 text-xl font-semibold text-gray-900 transition group-hover:text-primary">
                      {tool.label}
                    </h3>
                    <p className="mt-2 leading-relaxed text-gray-600">{tool.description}</p>
                    <span className="mt-4 inline-flex items-center gap-1 text-sm font-semibold text-primary">
                      Usar herramienta <span aria-hidden="true">→</span>
                    </span>
                  </Link>
                ))}
                {results.map((article) => (
                  <Link
                    key={article.slug}
                    href={articleHref(article)}
                    className="group rounded-2xl border border-gray-200 bg-white p-6 transition hover:border-primary/50 hover:shadow-sm"
                  >
                    <div className="flex flex-wrap items-center gap-2 text-xs font-semibold uppercase tracking-wide text-primary">
                      <span>{SILOS[article.silo]?.label ?? 'Guía'}</span>
                      <span className="text-gray-300" aria-hidden="true">•</span>
                      <span className="text-gray-500">
                        Actualizado {new Date(article.updated_at).toLocaleDateString('es-CL', { year: 'numeric', month: 'short' })}
                      </span>
                    </div>
                    <h3 className="mt-2 text-xl font-semibold text-gray-900 transition group-hover:text-primary">
                      {article.h1}
                    </h3>
                    <p className="mt-2 line-clamp-2 leading-relaxed text-gray-600">
                      {article.meta_description}
                    </p>
                    <span className="mt-4 inline-flex items-center gap-1 text-sm font-semibold text-primary">
                      Ver guía <span aria-hidden="true">→</span>
                    </span>
                  </Link>
                ))}
              </div>
            ) : (
              <div className="mt-6 rounded-2xl border border-gray-200 bg-white p-8 text-center">
                <h3 className="text-lg font-semibold text-gray-900">No encontramos una coincidencia clara</h3>
                <p className="mt-2 text-gray-600">
                  Prueba con menos palabras o usa términos como “visa vencida”, “RUT” o “residencia”.
                </p>
                <Link href="/herramientas/calculadora-elegibilidad" className="mt-5 inline-flex rounded-lg bg-primary px-5 py-3 font-semibold text-white hover:bg-primary-dark">
                  Usar el orientador de permisos
                </Link>
              </div>
            )}
          </section>
        )}
      </div>
    </main>
  )
}
