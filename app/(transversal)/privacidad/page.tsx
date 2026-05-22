import type { Metadata } from 'next'
import { buildMetadata } from '@/lib/seo/metadata'
import Breadcrumbs from '@/components/ui/Breadcrumbs'
import { SITE_URL, SITE_NAME } from '@/lib/constants'


export const metadata: Metadata = buildMetadata({
  title: 'Política de Privacidad',
  description: `Política de privacidad de ${SITE_NAME}. Cómo recopilamos, usamos y protegemos tus datos personales conforme a la Ley 19.628 y la Ley 21.719 de Chile.`,
  slug: 'privacidad',
  noIndex: false,
})

const breadcrumbs = [
  { label: 'Inicio', href: SITE_URL },
  { label: 'Política de Privacidad', href: `${SITE_URL}/privacidad` },
]

const LAST_UPDATED = '21 de mayo de 2026'

export default function PrivacidadPage() {
  return (
    <div className="max-w-3xl mx-auto px-4 py-12">
      <Breadcrumbs items={breadcrumbs} />

      <header className="mt-8 mb-10">
        <h1 className="text-3xl font-bold text-gray-900">Política de Privacidad</h1>
        <p className="mt-2 text-sm text-gray-500">Última actualización: {LAST_UPDATED}</p>
      </header>

      <div className="space-y-8 text-gray-700 leading-relaxed">

        <section>
          <h2 className="text-xl font-bold text-gray-900 mb-3">1. Responsable del tratamiento</h2>
          <p>
            El responsable del tratamiento de datos es {SITE_NAME}, sitio web disponible en{' '}
            <strong>{SITE_URL}</strong>. Para consultas sobre privacidad, escríbenos a{' '}
            <a href="mailto:hola@migrago.cl" className="text-primary underline">hola@migrago.cl</a>.
          </p>
        </section>

        <section>
          <h2 className="text-xl font-bold text-gray-900 mb-3">2. Datos que recopilamos</h2>
          <p>{SITE_NAME} no solicita registro de usuario ni recopila datos personales de forma directa. Sin embargo, como la mayoría de los sitios web, podemos recopilar automáticamente:</p>
          <ul className="mt-3 space-y-2 list-disc list-inside">
            <li><strong>Datos de navegación:</strong> dirección IP, tipo de navegador, páginas visitadas, tiempo de permanencia y origen de la visita. Estos datos se recogen a través de herramientas de analítica web (como Google Analytics).</li>
            <li><strong>Cookies:</strong> archivos de texto que se almacenan en tu dispositivo para mejorar la experiencia de navegación y medir el uso del sitio. Ver sección 5.</li>
            <li><strong>Datos de contacto voluntarios:</strong> si nos escribes a nuestro correo electrónico, recopilamos tu dirección de email y el contenido del mensaje para responder tu consulta.</li>
          </ul>
        </section>

        <section>
          <h2 className="text-xl font-bold text-gray-900 mb-3">3. Finalidad del tratamiento</h2>
          <p>Los datos recopilados se usan exclusivamente para:</p>
          <ul className="mt-3 space-y-2 list-disc list-inside">
            <li>Medir el tráfico y el comportamiento de los usuarios para mejorar el contenido del sitio.</li>
            <li>Detectar y corregir errores técnicos.</li>
            <li>Responder consultas enviadas por correo electrónico.</li>
            <li>Mostrar publicidad contextual a través de terceros (cuando corresponda).</li>
          </ul>
          <p className="mt-3">No vendemos ni cedemos datos personales a terceros con fines comerciales propios.</p>
        </section>

        <section>
          <h2 className="text-xl font-bold text-gray-900 mb-3">4. Base legal</h2>
          <p>
            El tratamiento de datos se realiza conforme a la{' '}
            <strong>Ley N° 19.628 sobre Protección de la Vida Privada</strong> de Chile y, en lo que
            corresponda, a la <strong>Ley N° 21.719</strong> (nueva ley de protección de datos personales,
            vigente desde diciembre de 2026). La base legal es el interés legítimo de mejorar el servicio
            y, en el caso de cookies no esenciales, el consentimiento del usuario.
          </p>
        </section>

        <section>
          <h2 className="text-xl font-bold text-gray-900 mb-3">5. Cookies</h2>
          <p>Utilizamos dos tipos de cookies:</p>
          <ul className="mt-3 space-y-2 list-disc list-inside">
            <li><strong>Cookies esenciales:</strong> necesarias para el funcionamiento del sitio. No requieren consentimiento.</li>
            <li><strong>Cookies de analítica:</strong> usadas por herramientas como Google Analytics para medir el uso del sitio. Puedes desactivarlas desde la configuración de tu navegador o mediante extensiones de opt-out.</li>
          </ul>
          <p className="mt-3">
            Puedes configurar tu navegador para rechazar cookies o ser notificado cuando se envían. Si rechazas las cookies, algunas funcionalidades del sitio pueden verse afectadas.
          </p>
        </section>

        <section>
          <h2 className="text-xl font-bold text-gray-900 mb-3">6. Terceros y servicios externos</h2>
          <p>El sitio puede incorporar servicios de terceros que tienen sus propias políticas de privacidad:</p>
          <ul className="mt-3 space-y-2 list-disc list-inside">
            <li><strong>Google Analytics</strong> — analítica de tráfico web.</li>
            <li><strong>Proveedores de publicidad</strong> — si el sitio muestra anuncios, estos pueden usar cookies de terceros para segmentación contextual.</li>
          </ul>
          <p className="mt-3">{SITE_NAME} no controla las políticas de privacidad de estos terceros. Te recomendamos consultarlas directamente.</p>
        </section>

        <section>
          <h2 className="text-xl font-bold text-gray-900 mb-3">7. Conservación de datos</h2>
          <p>
            Los datos de navegación recopilados por herramientas de analítica se conservan según las
            políticas de cada proveedor (Google Analytics los retiene por defecto 14 meses). Los correos
            electrónicos de contacto se conservan mientras sean necesarios para responder la consulta y
            hasta 1 año después.
          </p>
        </section>

        <section>
          <h2 className="text-xl font-bold text-gray-900 mb-3">8. Tus derechos</h2>
          <p>Conforme a la legislación chilena vigente, puedes ejercer los siguientes derechos respecto a tus datos personales:</p>
          <ul className="mt-3 space-y-2 list-disc list-inside">
            <li><strong>Acceso:</strong> conocer qué datos personales tuyos tratamos.</li>
            <li><strong>Rectificación:</strong> corregir datos inexactos.</li>
            <li><strong>Cancelación:</strong> solicitar la eliminación de tus datos.</li>
            <li><strong>Oposición:</strong> oponerte al tratamiento de tus datos.</li>
          </ul>
          <p className="mt-3">
            Para ejercer estos derechos, escríbenos a{' '}
            <a href="mailto:hola@migrago.cl" className="text-primary underline">hola@migrago.cl</a>{' '}
            indicando tu solicitud. Responderemos en un plazo máximo de 30 días hábiles.
          </p>
        </section>

        <section>
          <h2 className="text-xl font-bold text-gray-900 mb-3">9. Cambios en esta política</h2>
          <p>
            Podemos actualizar esta política cuando sea necesario. La fecha de última actualización
            aparece al inicio de esta página. Te recomendamos revisarla periódicamente.
          </p>
        </section>

      </div>
    </div>
  )
}
