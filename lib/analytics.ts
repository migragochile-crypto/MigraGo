export const GA_MEASUREMENT_ID = 'G-M3F08MR4KC'

type AnalyticsValue = string | number | boolean | undefined

declare global {
  interface Window {
    dataLayer?: unknown[]
    gtag?: (command: 'event', eventName: string, params?: Record<string, AnalyticsValue>) => void
  }
}

export function trackAnalyticsEvent(
  eventName: string,
  params: Record<string, AnalyticsValue> = {}
) {
  if (typeof window === 'undefined' || typeof window.gtag !== 'function') return
  window.gtag('event', eventName, params)
}
