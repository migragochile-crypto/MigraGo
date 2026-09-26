type SnippetOverride = {
  title?: string
  description?: string
}

/**
 * Search-result copy can be shorter than the editorial headline shown on-page.
 * Keep these overrides focused on pages whose full database title is likely to
 * be truncated after the root layout adds " | MigraGo".
 */
const SNIPPET_OVERRIDES: Record<string, SnippetOverride> = {
  'residencia-temporal': { title: 'Residencia Temporal en Chile: tipos y requisitos' },
  'residencia-definitiva': {
    title: 'Residencia Definitiva en Chile: requisitos 2026',
    description: 'Revisa los requisitos, documentos, plazos y pasos para solicitar la Residencia Definitiva en Chile. Antes llamada permanencia definitiva.',
  },
  autodenuncia: { title: 'Autodenuncia migratoria en Chile: guía 2026' },
  'vivir-en-chile': { title: 'Vivir en Chile siendo extranjero: guía 2026' },
  actualidad: { title: 'Actualidad migratoria en Chile: noticias 2026' },
  'vivir-en-chile/convalidacion-titulos': { title: 'Convalidación de títulos extranjeros en Chile' },
  'vivir-en-chile/apostilla-por-pais': {
    title: 'Apostilla de documentos para Chile por país',
    description: 'Consulta cómo apostillar documentos para usarlos en Chile, qué autoridad corresponde en cada país y cuándo se requiere traducción oficial.',
  },
  'nacionalizacion/examen': { title: 'Examen de nacionalización en Chile: guía 2026' },
  'problemas-migratorios/derechos-migrante': { title: 'Derechos de los migrantes en Chile: guía 2026' },
  'nacionalizacion/doble-nacionalidad': { title: 'Doble nacionalidad en Chile: guía por país' },
  'vivir-en-chile/enviar-dinero-colombia': { title: 'Enviar dinero de Chile a Colombia: costos 2026' },
  'vivir-en-chile/remesas': { title: 'Enviar dinero desde Chile: opciones y costos' },
  'actualidad/sueldo-minimo-2026-tramites': { title: 'Sueldo mínimo en Chile 2026 y trámites migratorios' },
  'residencia-definitiva/como-calcular-plazo': {
    title: 'Plazo para la Residencia Definitiva en Chile',
    description: 'Aprende a calcular el plazo exigido para solicitar la Residencia Definitiva en Chile y qué ausencias pueden modificar la fecha de postulación.',
  },
  'nacionalizacion/cuanto-demora': { title: 'Cuánto demora la nacionalización en Chile' },
  'vivir-en-chile/trabajar-en-chile': { title: 'Trabajar en Chile siendo extranjero: guía 2026' },
  'vivir-en-chile/costo-de-vida': { title: 'Costo de vida en Chile para extranjeros 2026' },
  'residencia-temporal/cuanto-demora': {
    title: 'Cuánto demora la Residencia Temporal en Chile',
    description: 'Conoce los plazos habituales de la Residencia Temporal en Chile, cómo revisar el estado y qué hacer si tu solicitud no presenta avances.',
  },
  'residencia-definitiva/reduccion-plazo-12-meses': { title: 'Residencia Definitiva en 12 meses: requisitos' },
  'problemas-migratorios/recurso-administrativo': { title: 'Recurso administrativo ante SERMIG: guía 2026' },
  'problemas-migratorios/antecedentes-penales-chile': { title: 'Antecedentes penales y visas en Chile 2026' },
  'problemas-migratorios/multas-migratorias': { title: 'Multa por situación irregular en Chile 2026' },
  'problemas-migratorios/rechazo-visa': { title: 'Visa rechazada en Chile: qué hacer en 2026' },
  'problemas-migratorios/expulsion-administrativa': { title: 'Expulsión de Chile: causas y cómo impugnarla' },
  'residencia-temporal/cambio-categoria': { title: 'Cambio de categoría migratoria en Chile 2026' },
  'residencia-definitiva/via-trabajo': { title: 'Residencia Definitiva por trabajo en Chile 2026' },
  'nacionalizacion/hijo-nacido-chile': { title: 'Hijos de extranjeros nacidos en Chile: ciudadanía' },
  'problemas-migratorios/sin-respuesta-sermig': { title: 'SERMIG no responde: qué hacer con tu trámite' },
  'vivir-en-chile/pension-afp': { title: 'AFP en Chile para extranjeros: guía 2026' },
  'vivir-en-chile/trabajo-contrato': { title: 'Contrato de trabajo para extranjeros en Chile' },
  'vivir-en-chile/cuenta-bancaria': { title: 'Cuenta bancaria para extranjeros en Chile' },
  'vivir-en-chile/sistema-salud': { title: 'Salud en Chile para extranjeros: Fonasa o Isapre' },
  'nacionalizacion/requisitos-nacionalidad': { title: 'Requisitos para obtener la nacionalidad chilena' },
  'residencia-temporal/mercosur': { title: 'Residencia Temporal MERCOSUR en Chile 2026' },
  'nacionalizacion/carta-naturalizacion': { title: 'Carta de nacionalización chilena: requisitos 2026' },
  'residencia-temporal/contrato-trabajo': { title: 'Residencia por contrato de trabajo en Chile' },
  colombia: {
    title: 'Colombianos en Chile: visa y documentos 2026',
    description: 'Guía para colombianos en Chile: Residencia Temporal MERCOSUR, documentos apostillados, antecedentes penales, cuenta bancaria y vida cotidiana.',
  },
  venezuela: { title: 'Venezolanos en Chile: visa y regularización 2026' },
  argentina: { title: 'Argentinos en Chile: residencia MERCOSUR 2026' },
  peru: { title: 'Peruanos en Chile: visa y documentos 2026' },
  'residencia-definitiva/documentos': {
    description: 'Revisa los documentos para solicitar la Residencia Definitiva en Chile, su vigencia, apostilla y los antecedentes que pueden pedirte según tu caso.',
  },
}

export function getSnippetOverride(slug: string): SnippetOverride {
  return SNIPPET_OVERRIDES[slug] ?? {}
}
