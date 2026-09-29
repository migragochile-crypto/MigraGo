'use client'

import { useEffect, useState } from 'react'
import { getWiseAffiliateHref, WISE_AFFILIATE_PLACEMENTS, type WisePlacement } from '@/lib/affiliates/wise'

interface Props {
  placement: WisePlacement
}

export default function WiseStickyCta({ placement }: Props) {
  const [visible, setVisible] = useState(false)
  const [dismissed, setDismissed] = useState(false)
  const copy = WISE_AFFILIATE_PLACEMENTS[placement]

  useEffect(() => {
    const storageKey = `wise-sticky-dismissed:${placement}`
    const wasDismissed = sessionStorage.getItem(storageKey) === '1'
    if (wasDismissed) return

    function updateVisibility() {
      const scrollable = document.documentElement.scrollHeight - window.innerHeight
      const progress = scrollable > 0 ? window.scrollY / scrollable : 0
      setVisible(progress >= 0.35)
    }

    updateVisibility()
    window.addEventListener('scroll', updateVisibility, { passive: true })
    return () => window.removeEventListener('scroll', updateVisibility)
  }, [placement])

  if (dismissed || !visible) return null

  function dismiss() {
    sessionStorage.setItem(`wise-sticky-dismissed:${placement}`, '1')
    setDismissed(true)
  }

  return (
    <aside className="fixed inset-x-3 bottom-3 z-50 rounded-2xl border border-emerald-950/20 bg-[#163300] p-4 text-white shadow-2xl md:hidden">
      <button
        type="button"
        onClick={dismiss}
        aria-label="Cerrar recomendación"
        className="absolute right-2 top-2 flex h-8 w-8 items-center justify-center rounded-full text-xl text-white/70 hover:bg-white/10 hover:text-white"
      >
        ×
      </button>
      <p className="pr-8 text-sm font-bold">{copy.title}</p>
      <p className="mt-1 pr-8 text-xs leading-5 text-white/75">Compara el costo y el monto final antes de decidir.</p>
      <a
        href={getWiseAffiliateHref(placement, 'mobile-sticky')}
        data-affiliate-provider="wise"
        data-affiliate-placement={placement}
        data-affiliate-link-type="mobile_sticky"
        target="_blank"
        rel="sponsored noopener noreferrer"
        className="mt-3 flex min-h-11 items-center justify-center rounded-xl bg-[#9fe870] px-4 py-2 text-sm font-bold text-[#163300]"
      >
        {copy.button} →
      </a>
      <p className="mt-2 text-center text-[10px] text-white/60">Enlace de afiliado</p>
    </aside>
  )
}
