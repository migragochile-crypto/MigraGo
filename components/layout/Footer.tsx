import Link from 'next/link'
import { SILOS, PAISES, MAIN_SILOS } from '@/lib/content/silos'

export default function Footer() {
  const siloEntries = MAIN_SILOS.map((slug) => [slug, SILOS[slug]] as const).filter(([, c]) => c)
  const paisEntries = Object.entries(PAISES)

  return (
    <footer className="bg-gray-900 text-gray-300 mt-16">
      <div className="max-w-7xl mx-auto px-4 py-12">
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-8">
          {/* Brand + disclaimer */}
          <div className="lg:col-span-1">
            <Link href="/" className="font-bold text-xl text-white">
              Migra<span className="text-blue-400">Go</span>
            </Link>
            <p className="mt-3 text-sm leading-relaxed">
              Tu guía migratoria en Chile. No somos abogados ni representamos al gobierno chileno.
            </p>
            <p className="mt-2 text-xs text-gray-500">
              Información verificada y actualizada regularmente.
            </p>
          </div>

          {/* Trámites */}
          <div>
            <h3 className="font-semibold text-white mb-3 text-sm uppercase tracking-wide">Trámites</h3>
            <ul className="space-y-2 text-sm">
              {siloEntries.map(([slug, config]) => (
                <li key={slug}>
                  <Link href={`/${slug}`} className="hover:text-white transition-colors">
                    {config.label}
                  </Link>
                </li>
              ))}
            </ul>
          </div>

          {/* Por país */}
          <div>
            <h3 className="font-semibold text-white mb-3 text-sm uppercase tracking-wide">Por país</h3>
            <ul className="space-y-2 text-sm">
              {paisEntries.map(([slug, config]) => (
                <li key={slug}>
                  <Link href={`/paises/${slug}`} className="hover:text-white transition-colors">
                    {config.flag} {config.label}
                  </Link>
                </li>
              ))}
            </ul>
          </div>

          {/* Herramientas + Misc */}
          <div>
            <h3 className="font-semibold text-white mb-3 text-sm uppercase tracking-wide">Herramientas</h3>
            <ul className="space-y-2 text-sm">
              <li><Link href="/herramientas/calculadora-elegibilidad" className="hover:text-white transition-colors">Calculadora de elegibilidad</Link></li>
              <li><Link href="/herramientas/simulador-plazos" className="hover:text-white transition-colors">Simulador de plazos</Link></li>
              <li><Link href="/herramientas/checklist-permanencia-definitiva" className="hover:text-white transition-colors">Checklist Residencia Definitiva</Link></li>
              <li><Link href="/herramientas/consultar-estado" className="hover:text-white transition-colors">Consultar estado de trámite</Link></li>
            </ul>
            <h3 className="font-semibold text-white mb-3 mt-6 text-sm uppercase tracking-wide">Recursos</h3>
            <ul className="space-y-2 text-sm">
              <li><Link href="/glosario" className="hover:text-white transition-colors">Glosario migratorio</Link></li>
              <li><Link href="/acerca" className="hover:text-white transition-colors">Acerca de MigraGo</Link></li>
              <li><Link href="/metodologia" className="hover:text-white transition-colors">Metodología</Link></li>
            </ul>
          </div>
        </div>

        <div className="mt-10 pt-6 border-t border-gray-800 flex flex-col sm:flex-row items-center justify-between gap-4 text-xs text-gray-500">
          <p>© {new Date().getFullYear()} MigraGo. Todos los derechos reservados.</p>
          <div className="flex flex-wrap justify-center sm:justify-end gap-x-4 gap-y-1">
            <Link href="/privacidad" className="hover:text-white transition-colors">Política de Privacidad</Link>
            <Link href="/terminos" className="hover:text-white transition-colors">Términos de Uso</Link>
            <span className="text-gray-600">Información orientativa — no reemplaza asesoría legal.</span>
          </div>
        </div>
      </div>
    </footer>
  )
}

