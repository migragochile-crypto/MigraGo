import Link from 'next/link'

const WISE_LINKS = {
  'cuenta-bancaria': 'https://wise.prf.hn/click/camref:1101l6u5z5/pubref:cuenta-bancaria',
  remesas: 'https://wise.prf.hn/click/camref:1101l6u5z5/pubref:remesas',
} as const

interface Props {
  placement: keyof typeof WISE_LINKS
}

export default function WiseAffiliateBlock({ placement }: Props) {
  const isRemesas = placement === 'remesas'

  return (
    <aside
      aria-labelledby={`wise-${placement}-title`}
      className="mt-10 rounded-2xl border border-sky-200 bg-sky-50/70 p-6"
    >
      <p className="mb-2 text-xs font-semibold uppercase tracking-wide text-sky-800">
        Opción para evaluar
      </p>
      <h2 id={`wise-${placement}-title`} className="text-xl font-bold text-gray-900">
        {isRemesas
          ? 'Revisa el costo de tu transferencia en Wise'
          : '¿Necesitas enviar o recibir dinero internacionalmente?'}
      </h2>
      <p className="mt-3 leading-7 text-gray-700">
        {isRemesas
          ? 'Antes de enviar, compara la comisión, el tipo de cambio, el monto que recibirá la otra persona y el plazo estimado. Wise es una alternativa disponible para ciertas rutas desde y hacia Chile; la disponibilidad y el precio dependen de la moneda, el país y el método de pago.'
          : 'Una cuenta bancaria chilena sirve para pagos locales. Para mover dinero entre países también puedes evaluar un servicio de transferencias internacionales y compararlo con el costo total que ofrece tu banco.'}
      </p>

      <div className="mt-5 flex flex-col gap-3 sm:flex-row sm:items-center">
        {!isRemesas && (
          <Link
            href="/vivir-en-chile/remesas"
            className="inline-flex min-h-11 items-center justify-center rounded-lg bg-primary px-5 py-3 font-semibold text-white transition-colors hover:bg-primary-dark"
          >
            Ver guía para enviar dinero
          </Link>
        )}
        <a
          href={WISE_LINKS[placement]}
          target="_blank"
          rel="sponsored noopener noreferrer"
          className={`inline-flex min-h-11 items-center justify-center rounded-lg px-5 py-3 font-semibold transition-colors ${
            isRemesas
              ? 'bg-primary text-white hover:bg-primary-dark'
              : 'border border-primary bg-white text-primary hover:bg-primary/5'
          }`}
        >
          {isRemesas ? 'Consultar precio en Wise' : 'Conocer Wise'}
          <span className="sr-only"> (abre en una pestaña nueva)</span>
        </a>
      </div>

      <p className="mt-4 text-xs leading-5 text-gray-600">
        <strong>Aviso de afiliación:</strong> este bloque contiene un enlace de afiliado de Wise. Si
        te registras y completas una operación mediante ese enlace, MigraGo puede recibir una
        comisión, sin costo adicional para ti. Esto no cambia nuestra evaluación editorial.
      </p>
    </aside>
  )
}
