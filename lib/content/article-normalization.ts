const OBSOLETE_PORTALS = [
  'tramitesmigratorios.interior.gob.cl',
  'tramites.extranjeria.gob.cl',
]

const CURRENT_PORTAL = 'tramites.serviciomigraciones.cl'

interface NormalizableArticle {
  slug: string
  silo?: string
  parent_slug?: string | null
  title?: string
  h1?: string
  meta_description?: string
  canonical?: string | null
  content?: string | null
  faq_items?: { q: string; a: string }[]
  howto_steps?: { name: string; text: string }[]
  related_slugs?: string[]
}

export function normalizeArticleSlug(slug: string): string {
  if (slug === 'visa-temporaria' || slug.startsWith('visa-temporaria/')) {
    return slug.replace(/^visa-temporaria/, 'residencia-temporal')
  }
  if (slug === 'permanencia-definitiva' || slug.startsWith('permanencia-definitiva/')) {
    return slug.replace(/^permanencia-definitiva/, 'residencia-definitiva')
  }
  if (slug === 'problemas' || slug.startsWith('problemas/')) {
    return slug.replace(/^problemas/, 'problemas-migratorios')
  }
  return slug
}

export function normalizePublishedText(value: string): string {
  const withCurrentPortal = OBSOLETE_PORTALS.reduce(
    (normalized, obsolete) => normalized.replaceAll(obsolete, CURRENT_PORTAL),
    value
  )
  return withCurrentPortal
    .replaceAll('/visa-temporaria', '/residencia-temporal')
    .replaceAll('/permanencia-definitiva', '/residencia-definitiva')
    .replaceAll('/problemas/', '/problemas-migratorios/')
}

export function normalizeArticleRecord<T extends NormalizableArticle>(article: T): T {
  const normalized = { ...article }
  const fields = ['title', 'h1', 'meta_description', 'canonical', 'content'] as const

  Object.assign(normalized, {
    slug: normalizeArticleSlug(article.slug),
    ...(article.silo ? { silo: normalizeArticleSlug(article.silo) } : {}),
    ...(article.parent_slug ? { parent_slug: normalizeArticleSlug(article.parent_slug) } : {}),
    ...(article.related_slugs
      ? { related_slugs: article.related_slugs.map(normalizeArticleSlug) }
      : {}),
  })

  for (const field of fields) {
    const value = normalized[field]
    if (typeof value === 'string') {
      Object.assign(normalized, { [field]: normalizePublishedText(value) })
    }
  }

  if (normalized.faq_items) {
    Object.assign(normalized, {
      faq_items: normalized.faq_items.map((item) => ({
        q: normalizePublishedText(item.q),
        a: normalizePublishedText(item.a),
      })),
    })
  }

  if (normalized.howto_steps) {
    Object.assign(normalized, {
      howto_steps: normalized.howto_steps.map((step) => ({
        name: normalizePublishedText(step.name),
        text: normalizePublishedText(step.text),
      })),
    })
  }

  if (
    article.slug === 'residencia-temporal/cuanto-demora' ||
    article.slug === 'visa-temporaria/cuanto-demora'
  ) {
    for (const field of ['title', 'h1', 'meta_description'] as const) {
      const value = normalized[field]
      if (typeof value === 'string') {
        Object.assign(normalized, { [field]: value.replaceAll('2025', '2026') })
      }
    }
  }

  return normalized
}
