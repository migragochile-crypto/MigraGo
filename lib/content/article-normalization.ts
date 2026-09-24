const OBSOLETE_PORTALS = [
  'tramitesmigratorios.interior.gob.cl',
  'tramites.extranjeria.gob.cl',
]

const CURRENT_PORTAL = 'tramites.serviciomigraciones.cl'

/**
 * Correspondencias editoriales, no solo cambios de nombre. Estas rutas antiguas
 * se consolidan en una guia canonica con una intencion de busqueda unica.
 */
const LEGACY_ARTICLE_SLUGS: Record<string, string> = {
  problemas: 'problemas-migratorios',
  'problemas/antecedentes-penales': 'problemas-migratorios/antecedentes-penales-chile',
  'problemas/derechos-migrante': 'problemas-migratorios/derechos-migrante',
  'problemas/expulsion': 'problemas-migratorios/expulsion-administrativa',
  'problemas/multa-migracion': 'problemas-migratorios/multas-migratorias',
  'problemas/rechazo-visa': 'problemas-migratorios/rechazo-visa',
  'problemas/recurso-administrativo': 'problemas-migratorios/recurso-administrativo',
  'problemas/sin-respuesta-sermig': 'problemas-migratorios/sin-respuesta-sermig',
  'problemas/visa-vencida': 'problemas-migratorios/visa-vencida',
  'problemas-migratorios/antecedentes-penales': 'problemas-migratorios/antecedentes-penales-chile',
  'problemas-migratorios/expulsion': 'problemas-migratorios/expulsion-administrativa',
  'problemas-migratorios/multa-migracion': 'problemas-migratorios/multas-migratorias',
}

const CONSOLIDATED_ARTICLE_SLUGS: Record<string, string> = {
  'actualidad/nuevo-sueldo-minimo-553553-mayo-2026': 'actualidad/sueldo-minimo-2026-tramites',
  'autodenuncia/estado-tramite': 'autodenuncia',
  'autodenuncia/que-es-autodenuncia': 'autodenuncia',
  'nacionalizacion/paso-a-paso': 'nacionalizacion/carta-naturalizacion',
  'nacionalizacion/proceso-naturalizacion': 'nacionalizacion/carta-naturalizacion',
  'nacionalizacion/requisitos': 'nacionalizacion/requisitos-nacionalidad',
  'residencia-definitiva/como-solicitarla': 'residencia-definitiva',
  'residencia-temporal/responsabilidad-democratica': 'residencia-temporal',
  'vivir-en-chile/afp-extranjero': 'vivir-en-chile/pension-afp',
  'vivir-en-chile/arriendo': 'vivir-en-chile/arriendo-vivienda',
  'vivir-en-chile/fonasa-isapre': 'vivir-en-chile/sistema-salud',
}

const COUNTRY_ROUTE_PREFIXES = [
  'argentina',
  'bolivia',
  'colombia',
  'cuba',
  'ecuador',
  'haiti',
  'peru',
  'republica-dominicana',
  'venezuela',
]

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
  const editorialAlias = LEGACY_ARTICLE_SLUGS[slug]
  if (editorialAlias) return editorialAlias

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

/**
 * Devuelve las variantes que pueden existir en una base aun no migrada. La ruta
 * canonica siempre se consulta primero para no reemplazar contenido ya corregido.
 */
export function getArticleLookupSlugs(slug: string): string[] {
  const canonicalSlug = normalizeArticleSlug(slug)
  const legacySlugs = Object.entries(LEGACY_ARTICLE_SLUGS)
    .filter(([, canonical]) => canonical === canonicalSlug)
    .map(([legacy]) => legacy)

  return [...new Set([canonicalSlug, ...legacySlugs])]
}

export function normalizePublishedText(value: string): string {
  const withCurrentPortal = OBSOLETE_PORTALS.reduce(
    (normalized, obsolete) => normalized.replaceAll(obsolete, CURRENT_PORTAL),
    value
  )

  const withEditorialAliases = Object.entries(LEGACY_ARTICLE_SLUGS)
    .sort(([first], [second]) => second.length - first.length)
    .reduce(
      (normalized, [legacy, canonical]) => {
        const escapedLegacy = legacy.replace(/[.*+?^${}()|[\]\\]/g, '\\$&')
        return normalized.replace(
          new RegExp(`/${escapedLegacy}(?=[/"'#?\\s<]|$)`, 'g'),
          `/${canonical}`
        )
      },
      withCurrentPortal
    )

  const withCurrentRoutes = withEditorialAliases
    .replaceAll('/visa-temporaria', '/residencia-temporal')
    .replaceAll('/permanencia-definitiva', '/residencia-definitiva')
    .replaceAll('/problemas/', '/problemas-migratorios/')

  const withConsolidatedLinks = Object.entries(CONSOLIDATED_ARTICLE_SLUGS).reduce(
    (normalized, [source, destination]) =>
      normalized
        .replaceAll(`href="/${source}"`, `href="/${destination}"`)
        .replaceAll(`href='/${source}'`, `href='/${destination}'`),
    withCurrentRoutes
  )

  const withCountryRoutes = COUNTRY_ROUTE_PREFIXES.reduce(
    (normalized, country) =>
      normalized
        .replaceAll(`href="/${country}/`, `href="/paises/${country}/`)
        .replaceAll(`href='/${country}/`, `href='/paises/${country}/`),
    withConsolidatedLinks
  )

  return withCountryRoutes.replaceAll(
    '/problemas-migratorios-migratorios/',
    '/problemas-migratorios/'
  )
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
