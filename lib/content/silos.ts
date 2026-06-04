import type { SiloConfig, PaisConfig } from '@/types/content'

export const SILOS: Record<string, SiloConfig> = {
  autodenuncia: {
    label: 'Autodenuncia Migratoria',
    description: 'Cómo regularizar tu situación migratoria si estás en Chile de forma irregular',
    clusters: [
      'pdi-paso-a-paso',
      'sermig-vs-pdi',
      'empadronamiento-biometrico',
      'estado-tramite',
      'errores-comunes',
      'tiempos-reales',
      'que-es-autodenuncia',
    ],
    cta: { text: 'Ir al portal PDI', href: 'https://www.pdichile.cl/tramites-online/denuncia-por-ingreso-clandestino' },
  },
  'residencia-temporal': {
    label: 'Residencia Temporal',
    description: 'Todo sobre la Residencia Temporal en Chile (antes llamada visa temporaria)',
    clusters: [
      'hijo-chileno',
      'pareja-chilena',
      'contrato-trabajo',
      'oferta-laboral',
      'estudiante',
      'razones-humanitarias',
      'jubilado-rentista',
      'responsabilidad-democratica',
      'mercosur',
      'cuanto-demora',
      'renovacion',
      'prorroga',
      'cambio-categoria',
      'rechazo',
    ],
    cta: { text: 'Ir a Trámites en Línea', href: 'https://tramites.extranjeria.gob.cl' },
  },
  'residencia-definitiva': {
    label: 'Residencia Definitiva',
    description: 'Requisitos y proceso para obtener la Residencia Definitiva en Chile (antes llamada permanencia definitiva)',
    clusters: [
      'requisitos',
      'como-solicitarla',
      'cuanto-demora',
      'como-calcular-plazo',
      'reduccion-plazo-12-meses',
      'casos-especiales',
      'rechazo',
      'estado-tramite',
      'prorroga-fuera-chile',
    ],
    cta: { text: 'Ir a Trámites en Línea', href: 'https://tramites.extranjeria.gob.cl' },
  },
  nacionalizacion: {
    label: 'Nacionalización',
    description: 'Cómo obtener la nacionalidad chilena por gracia o naturalización',
    clusters: [
      'requisitos',
      'cuanto-demora',
      'examen',
      'paso-a-paso',
      'doble-nacionalidad',
      'hijos-extranjeros',
      'perdida-nacionalidad-anterior',
    ],
    cta: { text: 'Consultar en el SRCeI', href: 'https://www.registrocivil.cl' },
  },
  'problemas-migratorios': {
    label: 'Problemas Migratorios',
    description: 'Qué hacer ante rechazos, multas, visas vencidas y otros problemas migratorios',
    clusters: [
      'rechazo-visa',
      'recurso-administrativo',
      'multas-migratorias',
      'visa-vencida',
      'expulsion-administrativa',
      'reposicion',
      'antecedentes-penales-chile',
      'trabajo-sin-visa',
      'documentos-perdidos',
      'prohibicion-ingreso',
      'notificacion-irregular',
      'sin-respuesta-sermig',
      'derechos-migrante',
    ],
    cta: { text: 'Consultar estado de trámite', href: 'https://tramites.extranjeria.gob.cl' },
  },
  'vivir-en-chile': {
    label: 'Vivir en Chile',
    description: 'Todo lo que necesitas para establecerte: RUT, cuenta bancaria, salud, educación y más',
    clusters: [
      'como-emigrar-a-chile',
      'pros-y-contras',
      'costo-de-vida',
      'trabajar-en-chile',
      'estudiar-en-chile',
      'rut-extranjero',
      'cedula-extranjero',
      'cuenta-bancaria',
      'fonasa-isapre',
      'afp-extranjero',
      'arriendo',
      'remesas',
      'educacion-hijos',
      'convalidacion-titulos',
      'apostilla-traduccion',
      'trabajar-en-chile',
      'trabajo-contrato',
      'traer-familia',
      'emprendimiento',
      'licencia-conducir',
      'seguro-cesantia',
      'apostilla-por-pais',
    ],
    cta: { text: 'Ir al Registro Civil (SRCeI)', href: 'https://www.registrocivil.cl' },
  },
  venezuela: {
    label: 'Venezuela',
    description: 'Guía para venezolanos en Chile: visa, documentos sin apostilla y regularización',
    clusters: [
      'documentos-apostilla',
      'pasaporte',
      'antecedentes-penales',
      'visa-vrd',
    ],
    cta: { text: 'Iniciar trámite en línea', href: 'https://tramites.extranjeria.gob.cl' },
  },
  bolivia: {
    label: 'Bolivia',
    description: 'Guía práctica para ciudadanos bolivianos: documentos, apostilla y opciones de visa',
    clusters: [
      'documentos-bolivia',
      'antecedentes-penales',
      'apostilla',
      'visa-temporaria',
      'trabajar-en-chile',
    ],
    cta: { text: 'Iniciar trámite en línea', href: 'https://tramites.extranjeria.gob.cl' },
  },
  haiti: {
    label: 'Haití',
    description: 'Información para haitianos: legalización de documentos, traducción y opciones de visa',
    clusters: [
      'pasaporte',
      'documentos-traducidos',
      'regularizacion',
      'reagrupacion-familiar',
      'visas-haitianas',
    ],
    cta: { text: 'Iniciar trámite en línea', href: 'https://tramites.extranjeria.gob.cl' },
  },
  'republica-dominicana': {
    label: 'República Dominicana',
    description: 'Trámites y documentos para dominicanos: apostilla, antecedentes y opciones de visa',
    clusters: [
      'documentos-republica-dominicana',
      'requisitos',
      'visa-consular',
      'faq',
    ],
    cta: { text: 'Iniciar trámite en línea', href: 'https://tramites.extranjeria.gob.cl' },
  },
  peru: {
    label: 'Perú',
    description: 'Guía para peruanos en Chile: documentos, antecedentes penales y visa MERCOSUR',
    clusters: [
      'documentos-peru',
      'antecedentes-penales',
      'visa-mercosur',
    ],
    cta: { text: 'Iniciar trámite en línea', href: 'https://tramites.extranjeria.gob.cl' },
  },
  colombia: {
    label: 'Colombia',
    description: 'Guía para colombianos en Chile: apostilla, antecedentes penales y visa MERCOSUR',
    clusters: [
      'apostilla-colombia',
      'antecedentes-penales',
      'visa-mercosur',
    ],
    cta: { text: 'Iniciar trámite en línea', href: 'https://tramites.extranjeria.gob.cl' },
  },
  argentina: {
    label: 'Argentina',
    description: 'Guía para argentinos en Chile: documentos, antecedentes penales y visa MERCOSUR con DNI',
    clusters: [
      'documentos-argentina',
      'antecedentes-penales',
      'visa-mercosur',
    ],
    cta: { text: 'Iniciar trámite en línea', href: 'https://tramites.extranjeria.gob.cl' },
  },
  ecuador: {
    label: 'Ecuador',
    description: 'Guía para ecuatorianos en Chile: apostilla de documentos, antecedentes penales y opciones de visa',
    clusters: [
      'documentos-ecuador',
      'antecedentes-penales',
      'apostilla-ecuador',
      'opciones-visa',
      'trabajar-en-chile',
    ],
    cta: { text: 'Iniciar trámite en línea', href: 'https://tramites.extranjeria.gob.cl' },
  },
  cuba: {
    label: 'Cuba',
    description: 'Guía para cubanos en Chile: legalización de documentos, antecedentes penales y opciones de visa',
    clusters: [
      'documentos-cuba',
      'antecedentes-penales',
      'opciones-visa',
    ],
    cta: { text: 'Iniciar trámite en línea', href: 'https://tramites.extranjeria.gob.cl' },
  },
}

export const PAISES: Record<string, PaisConfig> = {
  venezuela: { label: 'Venezuela', flag: '🇻🇪', demonym: 'venezolano/a' },
  peru: { label: 'Perú', flag: '🇵🇪', demonym: 'peruano/a' },
  colombia: { label: 'Colombia', flag: '🇨🇴', demonym: 'colombiano/a' },
  ecuador: { label: 'Ecuador', flag: '🇪🇨', demonym: 'ecuatoriano/a' },
  haiti: { label: 'Haití', flag: '🇭🇹', demonym: 'haitiano/a' },
  bolivia: { label: 'Bolivia', flag: '🇧🇴', demonym: 'boliviano/a' },
  argentina: { label: 'Argentina', flag: '🇦🇷', demonym: 'argentino/a' },
  cuba: { label: 'Cuba', flag: '🇨🇺', demonym: 'cubano/a' },
  'republica-dominicana': { label: 'República Dominicana', flag: '🇩🇴', demonym: 'dominicano/a' },
}

export const MAIN_SILOS = [
  'residencia-temporal',
  'residencia-definitiva',
  'autodenuncia',
  'nacionalizacion',
  'vivir-en-chile',
  'problemas-migratorios',
] as const

export const HERRAMIENTAS_LIST = [
  { slug: 'calculadora-elegibilidad', label: 'Calculadora de Elegibilidad', icon: '✅' },
  { slug: 'simulador-plazos', label: 'Simulador de Plazos', icon: '⏱️' },
  { slug: 'checklist-permanencia-definitiva', label: 'Checklist Residencia Definitiva', icon: '📋' },
  { slug: 'checklist-temporaria', label: 'Checklist Residencia Temporal', icon: '📋' },
  { slug: 'consultar-estado', label: 'Consultar Estado de Trámite', icon: '🔍' },
  { slug: 'quiz-visas', label: '¿Cuál visa me conviene?', icon: '❓' },
  { slug: 'calculadora-multas', label: 'Calculadora de Multas + PD', icon: '💰' },
  { slug: 'matriz-visas', label: 'Comparador de Visas', icon: '📊' },
]

export function slugToLabel(slug: string): string {
  return slug
    .split('-')
    .map((w) => w.charAt(0).toUpperCase() + w.slice(1))
    .join(' ')
}

