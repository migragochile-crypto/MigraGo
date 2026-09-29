import { getWiseAffiliateHref, WISE_AFFILIATE_PLACEMENTS, type WisePlacement } from '@/lib/affiliates/wise'

interface Props {
  placement: WisePlacement
  format: 'top_inline' | 'bottom_inline' | 'desktop_sidebar'
}

export default function WiseConversionCta({ placement, format }: Props) {
  const copy = WISE_AFFILIATE_PLACEMENTS[placement]
  const isBottom = format === 'bottom_inline'
  const isSidebar = format === 'desktop_sidebar'

  return (
    <aside
      aria-label="Recurso recomendado para transferencias internacionales"
      className={`${isSidebar ? 'sticky top-24' : isBottom ? 'mt-10' : 'mb-8'} overflow-hidden rounded-2xl border border-emerald-900/15 bg-gradient-to-br from-[#eef7e8] to-white p-5 shadow-sm`}
    >
      <div className={`flex flex-col gap-4 ${isSidebar ? '' : 'sm:flex-row sm:items-center sm:justify-between'}`}>
        <div>
          <p className="text-xs font-bold uppercase tracking-[0.14em] text-emerald-800">
            Recurso recomendado
          </p>
          <p className="mt-1 text-lg font-bold text-gray-900">{copy.title}</p>
          <p className="mt-1 max-w-2xl text-sm leading-6 text-gray-600">{copy.description}</p>
        </div>
        <a
          href={getWiseAffiliateHref(placement, format)}
          data-affiliate-provider="wise"
          data-affiliate-placement={placement}
          data-affiliate-link-type={format}
          target="_blank"
          rel="sponsored noopener noreferrer"
          className={`inline-flex min-h-12 shrink-0 items-center justify-center rounded-xl bg-[#163300] px-5 py-3 text-center text-sm font-bold text-white transition hover:bg-[#285500] focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-primary ${isSidebar ? 'w-full' : ''}`}
        >
          {copy.button} →
        </a>
      </div>
      <p className="mt-3 text-[11px] leading-4 text-gray-500">
        Enlace de afiliado: MigraGo puede recibir una comisión sin costo adicional para ti.
      </p>
    </aside>
  )
}
