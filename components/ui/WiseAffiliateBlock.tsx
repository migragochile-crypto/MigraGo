import Link from 'next/link'

const WISE_LINKS = {
  'cuenta-bancaria': 'https://wise.prf.hn/click/camref:1101l6u5z5/pubref:cuenta-bancaria',
  remesas: 'https://wise.prf.hn/click/camref:1101l6u5z5/pubref:remesas',
  'enviar-dinero-colombia': 'https://wise.prf.hn/click/camref:1101l6u5z5/pubref:enviar-dinero-colombia',
} as const

const WISE_REMESAS_CREATIVE = {
  href: 'https://wise.prf.hn/click/camref:1101l6u5z5/creativeref:1101l107624/pubref:remesas-banner',
  src: 'https://wise-creative.prf.hn/source/camref:1101l6u5z5/creativeref:1101l107624',
} as const

interface Props {
  placement: keyof typeof WISE_LINKS
}

export default function WiseAffiliateBlock({ placement }: Props) {
  const isRemesas = placement === 'remesas'
  const isColombiaRoute = placement === 'enviar-dinero-colombia'
  const showCreative = isRemesas || isColombiaRoute
  const creativePubref = isColombiaRoute ? 'enviar-dinero-colombia-banner' : 'remesas-banner'

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
          : isColombiaRoute
            ? 'Cotiza cuánto recibirán en Colombia'
          : '¿Necesitas enviar o recibir dinero internacionalmente?'}
      </h2>

      {showCreative && (
        <a
          href={`${WISE_REMESAS_CREATIVE.href.replace('remesas-banner', creativePubref)}`}
          target="_blank"
          rel="sponsored noopener noreferrer"
          className="mt-5 block overflow-hidden rounded-xl border border-emerald-950/10 bg-[#163300] shadow-sm transition hover:-translate-y-0.5 hover:shadow-md focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-4 focus-visible:outline-primary"
          aria-label="Cotizar una transferencia internacional en Wise (abre en una pestaña nueva)"
        >
          {/* La carga directa conserva la creatividad y su medición oficial en Partnerize. */}
          {/* eslint-disable-next-line @next/next/no-img-element */}
          <img
            src={WISE_REMESAS_CREATIVE.src}
            alt="Wise: Muy rápido, muy justo. Tipo de cambio medio del mercado y comisiones justas."
            width="1200"
            height="628"
            loading="lazy"
            decoding="async"
            className="h-auto w-full"
          />
        </a>
      )}

      <p className="mt-3 leading-7 text-gray-700">
        {isRemesas
          ? 'Antes de enviar, compara la comisión, el tipo de cambio, el monto que recibirá la otra persona y el plazo estimado. Wise es una alternativa disponible para ciertas rutas desde y hacia Chile; la disponibilidad y el precio dependen de la moneda, el país y el método de pago.'
          : isColombiaRoute
            ? 'Compara usando el mismo monto en pesos chilenos y revisa cuántos pesos colombianos recibirá exactamente el destinatario. La cotización final depende del método de pago, la verificación y la ruta disponible para tu cuenta.'
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
          {showCreative ? 'Cotizar transferencia en Wise' : 'Conocer Wise'}
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
