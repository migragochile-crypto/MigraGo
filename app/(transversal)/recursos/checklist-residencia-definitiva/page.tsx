import type { Metadata } from 'next'
import { CHECKLIST_RESIDENCIA_DEFINITIVA } from '@/lib/content/checklists'
import PrintButton from '@/components/ui/PrintButton'

export const metadata: Metadata = {
  title: 'Checklist Residencia Definitiva — Versión Imprimible',
  robots: { index: false, follow: false },
}

export default function ChecklistImprimiblePage() {
  const fecha = new Date().toLocaleDateString('es-CL', {
    year: 'numeric',
    month: 'long',
    day: 'numeric',
  })

  return (
    <div className="max-w-3xl mx-auto px-6 py-10 print:py-4">
      {/* Botón imprimir — oculto al imprimir */}
      <div className="print:hidden mb-8 flex items-center justify-between gap-4 rounded-2xl border border-primary/20 bg-primary/5 p-4">
        <p className="text-sm text-gray-700">
          Usa el botón para imprimir o guardar como PDF (en el diálogo de impresión elige
          &ldquo;Guardar como PDF&rdquo;).
        </p>
        <PrintButton />
      </div>

      {/* Encabezado */}
      <header className="border-b-2 border-gray-900 pb-4 mb-6">
        <p className="text-2xl font-bold text-gray-900">
          Migra<span className="text-blue-600">Go</span>
        </p>
        <h1 className="mt-2 text-xl font-bold text-gray-900">
          Checklist de documentos — Residencia Definitiva en Chile
        </h1>
        <p className="mt-1 text-sm text-gray-500">
          Generado el {fecha} · www.migrago.cl/herramientas/checklist-permanencia-definitiva
        </p>
      </header>

      {/* Lista imprimible */}
      <ol className="space-y-4">
        {CHECKLIST_RESIDENCIA_DEFINITIVA.map((item, i) => (
          <li key={item.id} className="flex items-start gap-3 break-inside-avoid">
            <span
              aria-hidden
              className="mt-0.5 inline-block h-5 w-5 flex-shrink-0 rounded border-2 border-gray-700"
            />
            <div>
              <p className="font-semibold text-gray-900">
                {i + 1}. {item.doc}
              </p>
              <p className="text-sm text-gray-600 mt-0.5">{item.detalle}</p>
            </div>
          </li>
        ))}
      </ol>

      {/* Notas */}
      <section className="mt-8 rounded-xl border border-gray-300 p-4 text-sm text-gray-700 break-inside-avoid">
        <p className="font-semibold mb-1">Antes de presentar:</p>
        <ul className="list-disc list-inside space-y-1">
          <li>Verifica los requisitos actualizados en tramites.extranjeria.gob.cl — el SERMIG puede cambiarlos.</li>
          <li>Los antecedentes penales tienen vigencia limitada (generalmente 90 días): solicítalos al final.</li>
          <li>Todos los documentos extranjeros deben estar apostillados y, si no están en español, traducidos.</li>
        </ul>
      </section>

      <footer className="mt-8 pt-4 border-t border-gray-300 text-xs text-gray-400">
        Información orientativa — no reemplaza asesoría legal ni la información oficial del SERMIG.
        © {new Date().getFullYear()} MigraGo · www.migrago.cl
      </footer>
    </div>
  )
}
