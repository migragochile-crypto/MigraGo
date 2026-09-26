'use client'

import { useEffect } from 'react'
import { trackAnalyticsEvent } from '@/lib/analytics'

function getWisePlacement(link: HTMLAnchorElement) {
  if (link.dataset.affiliatePlacement) return link.dataset.affiliatePlacement
  return link.href.match(/pubref:([^/?#]+)/)?.[1] ?? 'sin-identificar'
}

export default function AnalyticsEvents() {
  useEffect(() => {
    function handleClick(event: MouseEvent) {
      if (!(event.target instanceof Element)) return

      const link = event.target.closest<HTMLAnchorElement>('a[href*="wise.prf.hn"]')
      if (!link) return

      trackAnalyticsEvent('wise_affiliate_click', {
        affiliate_provider: 'wise',
        page_path: window.location.pathname,
        cta_placement: getWisePlacement(link),
        link_type: link.dataset.affiliateLinkType ?? 'affiliate_link',
        transport_type: 'beacon',
      })
    }

    document.addEventListener('click', handleClick)
    return () => document.removeEventListener('click', handleClick)
  }, [])

  return null
}
