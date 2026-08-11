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
    doc: 'Residencia Temporal y comprobantes asociados',
    detalle: 'Confirma en el portal que tu subcategoría permite postular y que cumples el periodo de residencia exigido.',
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
    detalle: 'Revisa si corresponde a tu caso y si debe estar apostillado, legalizado o traducido. Verifica la vigencia exigida por el SERMIG.',
    href: '/problemas-migratorios/antecedentes-penales-chile',
  },
  {
    id: 'pd-domicilio',
    doc: 'Comprobante de domicilio, si el formulario lo solicita',
    detalle: 'Usa únicamente uno de los documentos aceptados en las instrucciones de tu solicitud.',
  },
  {
    id: 'pd-foto',
    doc: 'Fotografía, si el formulario lo solicita',
    detalle: 'Verifica formato y características directamente en el portal antes de prepararla.',
  },
  {
    id: 'pd-formulario',
    doc: 'Formulario de solicitud completado en el portal del SERMIG',
    detalle: 'Accede a tramites.serviciomigraciones.cl e inicia la solicitud de Residencia Definitiva con tu cuenta.',
  },
]
