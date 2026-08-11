/**
 * Umbral editorial usado solo para priorizar URLs en los sitemaps.
 * Una URL excluida sigue siendo accesible e indexable mediante enlaces internos;
 * simplemente no se presenta como contenido prioritario hasta tener cuerpo propio.
 */
const MIN_SITEMAP_CONTENT_CHARS = 800

const DEPRECATED_ARTICLE_SLUGS = new Set([
  'residencia-temporal/responsabilidad-democratica',
  'venezuela/visa-vrd',
])

export function hasSubstantiveArticleContent(content: string | null | undefined): boolean {
  if (!content) return false
  const plainText = content
    .replace(/<[^>]*>/g, ' ')
    .replace(/\s+/g, ' ')
    .trim()

  return plainText.length >= MIN_SITEMAP_CONTENT_CHARS
}

export function isCurrentArticleSlug(slug: string): boolean {
  return !DEPRECATED_ARTICLE_SLUGS.has(slug)
}
