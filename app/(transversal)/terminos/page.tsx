import type { Metadata } from 'next'
import { buildMetadata } from '@/lib/seo/metadata'
import Breadcrumbs from '@/components/ui/Breadcrumbs'
import { SITE_URL, SITE_NAME } from '@/lib/constants'


export const metadata: Metadata = buildMetadata({
  title: 'Términos de Uso',
  description: `Términos y condiciones de uso de ${SITE_NAME}. Condiciones de acceso al sitio, propiedad intelectual, limitación de responsabilidad y ley aplicable.`,
  slug: 'terminos',
  noIndex: false,
})

const breadcrumbs = [
  { label: 'Inicio', href: SITE_URL },
  { label: 'Términos de Uso', href: `${SITE_URL}/terminos` },
]

const LAST_UPDATED = '21 de mayo de 2026'

export default function TerminosPage() {
  return (
    <div className="max-w-3xl mx-auto px-4 py-12">
      <Breadcrumbs items={breadcrumbs} />

      <header className="mt-8 mb-10">
        <h1 className="text-3xl font-bold text-gray-900">Términos de Uso</h1>
        <p className="mt-2 text-sm text-gray-500">Última actualización: {LAST_UPDATED}</p>
      </header>

      <div className="space-y-8 text-gray-700 leading-relaxed">

        <section>
          <h2 className="text-xl font-bold text-gray-900 mb-3">1. Aceptación de los términos</h2>
          <p>
            Al acceder y usar {SITE_NAME} (<strong>{SITE_URL}</strong>), aceptas estos Términos de Uso
            en su totalidad. Si no estás de acuerdo con alguna parte de estos términos, te pedimos que
            no uses el sitio.
          </p>
        </section>

        <section>
          <h2 className="text-xl font-bold text-gray-900 mb-3">2. Naturaleza del servicio</h2>
          <p>
            {SITE_NAME} es un sitio web de carácter <strong>informativo y educativo</strong> sobre
            trámites migratorios en Chile. El contenido publicado tiene por objetivo explicar de forma
            clara los procesos y requisitos migratorios basándose en fuentes oficiales.
          </p>
          <p className="mt-3">
            {SITE_NAME} <strong>no presta servicios legales, no es un estudio jurídico y no representa
            al Gobierno de Chile ni a ninguna institución pública</strong>. La información publicada
            no constituye asesoría legal personalizada y no puede sustituir la opinión de un abogado
            especializado en derecho migratorio.
          </p>
        </section>

        <section>
          <h2 className="text-xl font-bold text-gray-900 mb-3">3. Exactitud de la información</h2>
          <p>
            Nos esforzamos por mantener el contenido actualizado y basado en fuentes oficiales
            (Ley 21.325, SERMIG, PDI, Registro Civil, Dirección del Trabajo). Sin embargo, la
            normativa migratoria puede cambiar sin previo aviso.
          </p>
          <p className="mt-3">
            {SITE_NAME} <strong>no garantiza</strong> que la información sea completa, exacta o
            esté actualizada en todo momento. Siempre verifica la información directamente con las
            instituciones oficiales antes de tomar decisiones migratorias.
          </p>
        </section>

        <section>
          <h2 className="text-xl font-bold text-gray-900 mb-3">4. Limitación de responsabilidad</h2>
          <p>
            En la máxima medida permitida por la ley chilena, {SITE_NAME} no será responsable por:
          </p>
          <ul className="mt-3 space-y-2 list-disc list-inside">
            <li>Decisiones migratorias tomadas basándose en el contenido de este sitio.</li>
            <li>Rechazos de solicitudes de visa o residencia.</li>
            <li>Daños derivados del uso o la imposibilidad de uso del sitio.</li>
            <li>Errores u omisiones en el contenido, aunque nos esforzamos por evitarlos.</li>
            <li>Cambios en la normativa migratoria que hagan que el contenido quede desactualizado.</li>
          </ul>
        </section>

        <section>
          <h2 className="text-xl font-bold text-gray-900 mb-3">5. Propiedad intelectual</h2>
          <p>
            Todo el contenido de {SITE_NAME} —incluyendo textos, gráficos, logotipos, íconos y
            herramientas interactivas— es propiedad de {SITE_NAME} o de sus proveedores de contenido,
            y está protegido por las leyes de propiedad intelectual de Chile.
          </p>
          <p className="mt-3">
            Queda prohibida la reproducción total o parcial del contenido con fines comerciales sin
            autorización expresa y por escrito. Puedes citar fragmentos del contenido con fines
            informativos o periodísticos, siempre que indiques la fuente y enlaces al artículo original.
          </p>
        </section>

        <section>
          <h2 className="text-xl font-bold text-gray-900 mb-3">6. Enlaces a terceros</h2>
          <p>
            El sitio puede incluir enlaces a portales oficiales del gobierno (SERMIG, PDI, Registro Civil,
            etc.) y a otros recursos externos. {SITE_NAME} no controla ni es responsable del contenido,
            la disponibilidad ni las políticas de privacidad de esos sitios. Los enlaces se proporcionan
            únicamente como referencia.
          </p>
        </section>

        <section>
          <h2 className="text-xl font-bold text-gray-900 mb-3">7. Publicidad</h2>
          <p>
            El sitio puede mostrar publicidad contextual de terceros. {SITE_NAME} no respalda ni
            garantiza los productos o servicios anunciados. Ningún anunciante influye en el contenido
            editorial del sitio.
          </p>
        </section>

        <section>
          <h2 className="text-xl font-bold text-gray-900 mb-3">8. Modificaciones</h2>
          <p>
            Nos reservamos el derecho de modificar estos Términos de Uso en cualquier momento. Los
            cambios entran en vigencia al publicarse en esta página. El uso continuado del sitio tras
            la publicación de cambios implica la aceptación de los nuevos términos.
          </p>
        </section>

        <section>
          <h2 className="text-xl font-bold text-gray-900 mb-3">9. Ley aplicable y jurisdicción</h2>
          <p>
            Estos Términos de Uso se rigen por las leyes de la República de Chile. Cualquier
            controversia derivada del uso de este sitio se someterá a la jurisdicción de los
            tribunales competentes de Santiago de Chile.
          </p>
        </section>

        <section>
          <h2 className="text-xl font-bold text-gray-900 mb-3">10. Contacto</h2>
          <p>
            Para consultas sobre estos términos, escríbenos a{' '}
            <a href="mailto:hola@migrago.cl" className="text-primary underline">hola@migrago.cl</a>.
          </p>
        </section>

      </div>
    </div>
  )
}
