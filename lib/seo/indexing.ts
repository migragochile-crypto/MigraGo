/**
 * Inventario editorial que MigraGo presenta activamente a buscadores.
 *
 * La web conserva otras guias accesibles para lectores, pero permanecen fuera del
 * indice hasta que tengan una revision editorial individual, fuentes vigentes y
 * una intencion de busqueda claramente distinta. Esto evita volver a publicar en
 * bloque contenido generado con estructuras demasiado similares.
 */
export const INDEXABLE_ARTICLE_SLUGS = new Set([
  // Hubs principales
  'autodenuncia',
  'residencia-temporal',
  'residencia-definitiva',
  'nacionalizacion',
  'problemas-migratorios',
  'vivir-en-chile',

  // Autodenuncia
  'autodenuncia/pdi-paso-a-paso',
  'autodenuncia/sermig-vs-pdi',
  'autodenuncia/empadronamiento-biometrico',
  'autodenuncia/errores-comunes',

  // Residencia Temporal
  'residencia-temporal/cambio-categoria',
  'residencia-temporal/contrato-trabajo',
  'residencia-temporal/cuanto-demora',
  'residencia-temporal/estudiante',
  'residencia-temporal/hijo-chileno',
  'residencia-temporal/mercosur',
  'residencia-temporal/pareja-chilena',
  'residencia-temporal/renovacion',

  // Residencia Definitiva
  'residencia-definitiva/como-calcular-plazo',
  'residencia-definitiva/cuanto-demora',
  'residencia-definitiva/documentos',
  'residencia-definitiva/rechazo',
  'residencia-definitiva/reduccion-plazo-12-meses',
  'residencia-definitiva/requisitos',
  'residencia-definitiva/via-conyugue',
  'residencia-definitiva/via-trabajo',

  // Nacionalizacion
  'nacionalizacion/carta-naturalizacion',
  'nacionalizacion/cuanto-demora',
  'nacionalizacion/doble-nacionalidad',
  'nacionalizacion/examen',
  'nacionalizacion/hijo-nacido-chile',
  'nacionalizacion/requisitos-nacionalidad',

  // Problemas migratorios
  'problemas-migratorios/antecedentes-penales-chile',
  'problemas-migratorios/derechos-migrante',
  'problemas-migratorios/documentos-perdidos',
  'problemas-migratorios/expulsion-administrativa',
  'problemas-migratorios/multas-migratorias',
  'problemas-migratorios/rechazo-visa',
  'problemas-migratorios/recurso-administrativo',
  'problemas-migratorios/sin-respuesta-sermig',
  'problemas-migratorios/visa-vencida',

  // Vida practica en Chile
  'vivir-en-chile/apostilla-por-pais',
  'vivir-en-chile/arriendo-vivienda',
  'vivir-en-chile/convalidacion-titulos',
  'vivir-en-chile/costo-de-vida',
  'vivir-en-chile/cuenta-bancaria',
  'vivir-en-chile/homologacion-titulos',
  'vivir-en-chile/pension-afp',
  'vivir-en-chile/rut-extranjero',
  'vivir-en-chile/sistema-salud',
  'vivir-en-chile/trabajar-en-chile',
  'vivir-en-chile/trabajo-contrato',

  // Hubs de pais con cuerpo editorial propio
  'argentina',
  'bolivia',
  'colombia',
  'peru',
  'venezuela',

  // Actualidad consolidada
  'actualidad/sueldo-minimo-2026-tramites',
])

export const INDEXABLE_TOOL_SLUGS = new Set([
  'calculadora-elegibilidad',
  'calculadora-multas',
  'checklist-permanencia-definitiva',
])

/** Umbral de seguridad adicional para no enviar articulos vacios al sitemap. */
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

export function isIndexableArticleSlug(slug: string): boolean {
  return isCurrentArticleSlug(slug) && INDEXABLE_ARTICLE_SLUGS.has(slug)
}

export function isIndexableToolSlug(slug: string): boolean {
  return INDEXABLE_TOOL_SLUGS.has(slug)
}
