import Link from 'next/link'
import { SILOS, PAISES, HERRAMIENTAS_LIST, MAIN_SILOS } from '@/lib/content/silos'

export default function NotFound() {
  return (
    <div className="flex-1 flex flex-col items-center justify-center py-24 px-4 text-center">
      <p className="text-6xl font-bold text-primary">404</p>
      <h1 className="mt-4 text-2xl font-bold text-gray-900">Página no encontrada</h1>
      <p className="mt-3 text-gray-500 max-w-md">
        Lo sentimos, la página que buscas no existe o fue movida. Puede que la URL esté
        mal escrita o que el contenido haya cambiado de dirección.
      </p>
      
      <div className="mt-8 flex flex-wrap justify-center gap-3">
        <Link
          href="/"
          className="bg-primary text-white px-6 py-3 rounded-xl font-medium hover:bg-primary-dark transition-colors"
        >
          Ir al inicio
        </Link>
        <Link
          href="/glosario"
          className="border border-border px-6 py-3 rounded-xl font-medium text-gray-700 hover:border-primary hover:text-primary transition-colors"
        >
          Ver glosario
        </Link>
      </div>

      <div className="mt-12 max-w-4xl mx-auto w-full">
        <div className="grid grid-cols-1 md:grid-cols-3 gap-6 text-left">
          {/* Silos */}
          <div>
            <h3 className="font-semibold text-gray-900 mb-3">Trámites</h3>
            <ul className="space-y-2">
              {MAIN_SILOS.slice(0, 4).map((slug) => {
                const config = SILOS[slug]
                if (!config) return null
                return (
                  <li key={slug}>
                    <Link
                      href={`/${slug}`}
                      className="text-sm text-gray-600 hover:text-primary transition-colors"
                    >
                      {config.label}
                    </Link>
                  </li>
                )
              })}
            </ul>
          </div>

          {/* Países */}
          <div>
            <h3 className="font-semibold text-gray-900 mb-3">Por país</h3>
            <ul className="space-y-2">
              {Object.entries(PAISES).slice(0, 4).map(([slug, config]) => (
                <li key={slug}>
                  <Link
                    href={`/paises/${slug}`}
                    className="text-sm text-gray-600 hover:text-primary transition-colors"
                  >
                    {config.flag} {config.label}
                  </Link>
                </li>
              ))}
            </ul>
          </div>

          {/* Herramientas */}
          <div>
            <h3 className="font-semibold text-gray-900 mb-3">Herramientas</h3>
            <ul className="space-y-2">
              {HERRAMIENTAS_LIST.slice(0, 4).map((tool) => (
                <li key={tool.slug}>
                  <Link
                    href={`/herramientas/${tool.slug}`}
                    className="text-sm text-gray-600 hover:text-primary transition-colors"
                  >
                    {tool.label}
                  </Link>
                </li>
              ))}
            </ul>
          </div>
        </div>

        <div className="mt-8 pt-6 border-t border-gray-200">
          <p className="text-sm text-gray-500 mb-2">¿No encuentras lo que buscas?</p>
          <Link
            href="/glosario"
            className="text-sm text-primary hover:underline font-medium"
          >
            Busca en nuestro glosario de términos migratorios →
          </Link>
        </div>
      </div>
    </div>
  )
}

