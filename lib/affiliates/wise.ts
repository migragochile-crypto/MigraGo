export const WISE_CAMREF = '1101l6u5z5'

export const WISE_AFFILIATE_PLACEMENTS = {
  'cuenta-bancaria': {
    title: '¿Todavía no tienes una cuenta bancaria chilena?',
    description: 'Revisa si Wise está disponible para mover dinero mientras completas tu RUT y abres una cuenta local.',
    button: 'Revisar disponibilidad',
  },
  remesas: {
    title: 'Compara cuánto llegará antes de enviar',
    description: 'Revisa el tipo de cambio, la comisión y el monto final que recibirá la otra persona.',
    button: 'Cotizar transferencia',
  },
  'enviar-dinero-colombia': {
    title: '¿Cuánto recibirán realmente en Colombia?',
    description: 'Cotiza el mismo monto y compara el total que recibirá el destinatario antes de transferir.',
    button: 'Cotizar envío a Colombia',
  },
  'costo-de-vida': {
    title: '¿Necesitas mover dinero para instalarte en Chile?',
    description: 'Compara el costo total antes de transferir tus ahorros o cubrir tus primeros gastos.',
    button: 'Comparar una transferencia',
  },
  'trabajar-en-chile': {
    title: '¿Recibes dinero o ingresos desde otro país?',
    description: 'Consulta si Wise admite tu ruta y revisa el costo antes de mover dinero hacia Chile.',
    button: 'Consultar disponibilidad',
  },
  'como-emigrar-a-chile': {
    title: 'Planifica cómo mover tu dinero a Chile',
    description: 'Antes de viajar, compara la comisión, el tipo de cambio y la disponibilidad para tu moneda.',
    button: 'Revisar opciones en Wise',
  },
  'rut-extranjero': {
    title: 'Una alternativa mientras completas tus trámites bancarios',
    description: 'Revisa si Wise está disponible para tu ruta mientras obtienes tu identificación y cuenta local.',
    button: 'Consultar disponibilidad',
  },
} as const

export type WisePlacement = keyof typeof WISE_AFFILIATE_PLACEMENTS

export function getWiseAffiliateHref(placement: WisePlacement, format?: string) {
  const suffix = format ? `-${format}` : ''
  return `https://wise.prf.hn/click/camref:${WISE_CAMREF}/pubref:${placement}${suffix}`
}
