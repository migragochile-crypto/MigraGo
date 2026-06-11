export interface ChecklistItem {
  id: string
  doc: string
  detalle: string
  href?: string
}

export const CHECKLIST_RESIDENCIA_DEFINITIVA: ChecklistItem[] = [
  {
    id: 'pd-pasaporte',
    doc: 'Pasaporte vigente',
    detalle: 'Con vigencia suficiente conforme a los criterios del SERMIG al momento de presentar. Si está por vencer, renuévalo antes de presentar.',
  },
  {
    id: 'pd-visa',
    doc: 'Residencia Temporal vigente o comprobante de renovación',
    detalle: 'Debes tener residencia legal continua. Si tu visa está en proceso de renovación, el comprobante puede habilitar la presentación.',
    href: '/residencia-temporal/renovacion',
  },
  {
    id: 'pd-cedula',
    doc: 'Cédula de identidad para extranjeros vigente',
    detalle: 'Emitida por el SRCeI (Registro Civil). Debe estar vigente al momento de presentar la solicitud.',
  },
  {
    id: 'pd-ant-chile',
    doc: 'Certificado de antecedentes penales de Chile',
    detalle: 'Se obtiene gratis en registrocivil.cl. Verifica el plazo de vigencia exigido por el SERMIG al momento de presentar.',
  },
  {
    id: 'pd-ant-origen',
    doc: 'Certificado de antecedentes del país de origen',
    detalle: 'Debe estar apostillado y, si no está en español, traducido por un traductor oficial. Verifica el plazo de vigencia exigido por el SERMIG.',
    href: '/problemas-migratorios/antecedentes-penales-chile',
  },
  {
    id: 'pd-domicilio',
    doc: 'Comprobante de domicilio en Chile',
    detalle: 'Puede ser contrato de arriendo, boleta de servicio o declaración jurada según lo que acepte el SERMIG.',
  },
  {
    id: 'pd-foto',
    doc: 'Fotografía reciente tamaño carnet',
    detalle: 'El SERMIG puede solicitarla al presentar en oficina. Verifica los requisitos específicos en el portal.',
  },
  {
    id: 'pd-formulario',
    doc: 'Formulario de solicitud completado en el portal del SERMIG',
    detalle: 'Accede a tramites.extranjeria.gob.cl e inicia la solicitud de Residencia Definitiva con tu cuenta.',
  },
]
