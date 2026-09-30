export interface ChecklistItem {
  id: string
  doc: string
  detalle: string
  href?: string
}

export const CHECKLIST_RESIDENCIA_DEFINITIVA: ChecklistItem[] = [
  {
    id: 'pd-identidad',
    doc: 'Hoja de identificación del pasaporte o documento de identidad',
    detalle: 'Imagen legible del documento de identidad del país de origen.',
  },
  {
    id: 'pd-visa',
    doc: 'Estampado Electrónico de Residencia Temporal o documento equivalente',
    detalle: 'Adjunta el Estampado Electrónico, la visa estampada en pasaporte o el documento que corresponda a tu caso. Confirma que la subcategoría permite postular.',
    href: '/residencia-temporal/renovacion',
  },
  {
    id: 'pd-cedula',
    doc: 'Cédula de identidad chilena para extranjeros',
    detalle: 'Imagen legible; obligatoria para mayores de 18 años según la ficha general de SERMIG.',
  },
  {
    id: 'pd-ant-origen',
    doc: 'Certificado de antecedentes del país de origen',
    detalle: 'Obligatorio para mayores de 18 años; máximo 60 días desde su emisión, apostillado o legalizado y traducido si corresponde.',
    href: '/problemas-migratorios/antecedentes-penales-chile',
  },
  {
    id: 'pd-foto',
    doc: 'Fotografía reciente',
    detalle: 'A color, fondo blanco, rostro completo, expresión neutral y sin accesorios; en JPG o PNG.',
  },
  {
    id: 'pd-especificos',
    doc: 'Documentos específicos de vínculo, actividad, ingresos o sustento',
    detalle: 'La lista cambia según tu situación personal. Abre tu apartado exacto en la ficha de SERMIG y no presentes una lista genérica.',
    href: '/residencia-definitiva/documentos',
  },
]
