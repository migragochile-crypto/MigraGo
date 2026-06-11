'use client'

export default function PrintButton() {
  return (
    <button
      onClick={() => window.print()}
      className="flex-shrink-0 bg-primary text-white font-semibold px-5 py-2.5 rounded-xl hover:bg-primary-dark transition-colors text-sm"
    >
      🖨️ Imprimir / Guardar PDF
    </button>
  )
}
