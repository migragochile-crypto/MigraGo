-- ============================================================
-- MigraciónChile — Seed v15c: solo visa-temporaria/hijo-chileno
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, schema_type, howto_steps, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'visa-temporaria/hijo-chileno',
  'visa-temporaria',
  'visa-temporaria',
  'cluster',
  'Visa Temporaria por Hijo Chileno: Requisitos y Proceso 2026',
  'Cómo Obtener Visa Temporaria en Chile por Ser Padre o Madre de Hijo Chileno',
  'Guía para obtener visa temporaria en Chile por ser padre o madre de un hijo con nacionalidad chilena. Requisitos, documentos y proceso ante el SERMIG en 2026.',
  'visa temporaria hijo chileno padre madre',
  $s1$
<p>Si tienes un hijo o hija con <strong>nacionalidad chilena</strong>, tienes derecho a solicitar una <strong>visa temporaria en Chile por vínculo familiar</strong>. Esta es una de las vías más sólidas para regularizarse y eventualmente obtener la Permanencia Definitiva, porque el vínculo con un hijo chileno es un arraigo familiar reconocido por la ley.</p>

<h2>¿Quién califica?</h2>
<p>Para solicitar esta visa necesitas ser padre o madre (con filiación reconocida) de un hijo o hija que:</p>
<ul>
  <li>Sea <strong>ciudadano chileno</strong> — ya sea por nacimiento en Chile (ius soli), por ser hijo de chileno nacido en el extranjero (ius sanguinis), o por naturalización.</li>
  <li>La mayoría de los casos corresponden a hijos nacidos en Chile de padres extranjeros — estos niños son chilenos por derecho de suelo.</li>
</ul>
<p>La filiación debe estar reconocida legalmente — ya sea por registro del nacimiento con ambos padres, reconocimiento voluntario ante el Registro Civil, o resolución judicial de filiación.</p>

<h2>¿En qué situación puedo solicitarla?</h2>
<p>Puedes solicitar esta visa:</p>
<ul>
  <li>Estando en Chile como turista (dentro del período de turismo).</li>
  <li>Estando en Chile con otra visa temporaria que vence pronto.</li>
  <li>Luego de autodenunciarte si estabas en situación irregular — el arraigo familiar es un factor que el SERMIG valora positivamente.</li>
</ul>

<h2>Documentos requeridos</h2>
<ul>
  <li><strong>Pasaporte vigente.</strong></li>
  <li><strong>Certificado de nacimiento del hijo/a emitido por el Registro Civil de Chile</strong>, con no más de 90 días de antigüedad.</li>
  <li><strong>Cédula de identidad del hijo/a</strong> (si ya la tiene) o pasaporte.</li>
  <li><strong>Documentos que acrediten la filiación</strong> — si el padre no está en el certificado de nacimiento, puede requerirse reconocimiento ante el Registro Civil o resolución judicial.</li>
  <li><strong>Comprobante de residencia</strong> en Chile (contrato de arriendo, certificado de residencia).</li>
  <li><strong>Comprobante de actividad lícita o sustento</strong> (trabajo, beca, pensión u otro medio de vida).</li>
</ul>

<h2>Proceso de solicitud</h2>
<p>La solicitud se realiza en el portal <a href="https://tramitesmigratorios.interior.gob.cl" target="_blank" rel="noopener noreferrer">tramitesmigratorios.interior.gob.cl</a>:</p>
<ol>
  <li>Crea o accede a tu cuenta.</li>
  <li>Selecciona "Solicitar visa temporaria" → categoría "Vínculo con ciudadano chileno" o "Arraigo familiar".</li>
  <li>Sube todos los documentos en formato PDF.</li>
  <li>Envía la solicitud y guarda el número y comprobante.</li>
</ol>
<p>El comprobante de trámite activo te habilita para permanecer y trabajar en Chile mientras se resuelve.</p>

<h2>¿Cuánto demora?</h2>
<ul>
  <li><strong>Plazo legal:</strong> 30 días hábiles.</li>
  <li><strong>Plazo real:</strong> 2–5 meses en promedio.</li>
</ul>
<p>El arraigo familiar (hijo chileno) es generalmente valorado positivamente por el SERMIG, lo que puede facilitar la aprobación.</p>

<h2>Camino hacia la Permanencia Definitiva</h2>
<p>Con la visa temporaria aprobada:</p>
<ul>
  <li>Mantén residencia legal continua durante <strong>2 años</strong>.</li>
  <li>Solicita la <strong>Permanencia Definitiva</strong> — el vínculo con hijo chileno fortalece la solicitud.</li>
  <li>Si eres cónyuge del otro padre/madre chileno/a, puede haber vía directa a PD por vínculo conyugal. Ver <a href="/visa-temporaria/pareja-chilena">Visa por Pareja Chilena</a>.</li>
</ul>
  $s1$,
  'HowTo',
  '[
    {"name": "Verificar que el hijo tiene nacionalidad chilena", "text": "Si tu hijo nació en Chile, es chileno por ius soli. Verifica que el nacimiento está registrado en el Registro Civil de Chile."},
    {"name": "Verificar que la filiación está reconocida", "text": "Tu nombre debe constar en el certificado de nacimiento del hijo. Si no figura, trámitalo ante el Registro Civil o vía judicial antes de solicitar la visa."},
    {"name": "Obtener certificado de nacimiento actualizado", "text": "Solicita el certificado de nacimiento del hijo en el Registro Civil, con no más de 90 días de antigüedad. Puede obtenerse en línea en el sitio del SRCeI."},
    {"name": "Preparar documentos de sustento y residencia", "text": "Reúne comprobante de residencia en Chile y comprobante de actividad lícita o sustento económico."},
    {"name": "Ingresar la solicitud en el portal SERMIG", "text": "Accede a tramitesmigratorios.interior.gob.cl, selecciona visa temporaria por arraigo familiar, sube todos los documentos y envía."},
    {"name": "Usar el comprobante para trabajar y residir mientras esperas", "text": "El comprobante de trámite activo te habilita para trabajar y permanecer en Chile legalmente durante el proceso."}
  ]'::jsonb,
  '[
    {
      "question": "¿Mi hijo nacido en Chile es automáticamente chileno aunque yo sea extranjero?",
      "answer": "Sí, en casi todos los casos. Chile aplica el principio de ius soli: los hijos nacidos en territorio chileno son chilenos, independientemente de la nacionalidad de los padres. La excepción son hijos de personas en tránsito o de diplomáticos."
    },
    {
      "question": "¿Puedo solicitar esta visa si mi hijo está fuera de Chile?",
      "answer": "La visa se solicita para residir en Chile junto con tu hijo. Si tu hijo está fuera de Chile y no tiene residencia aquí, el arraigo es más débil. El SERMIG evalúa el vínculo efectivo — consulta directamente si esta es tu situación."
    },
    {
      "question": "¿Puedo solicitar esta visa si estoy en situación migratoria irregular?",
      "answer": "Sí, pero primero debes autodenunciarte ante el SERMIG. El arraigo familiar (hijo chileno) es un factor positivo que el SERMIG considera en la regularización."
    },
    {
      "question": "¿Cuántos años debo tener esta visa antes de pedir Permanencia Definitiva?",
      "answer": "2 años de residencia legal continua en Chile, contando todo el período desde tu primera visa temporal. Al cumplir 2 años continuos puedes solicitar la Permanencia Definitiva."
    }
  ]'::jsonb,
  ARRAY[
    'visa-temporaria',
    'visa-temporaria/pareja-chilena',
    'permanencia-definitiva',
    'permanencia-definitiva/requisitos',
    'autodenuncia'
  ]::TEXT[],
  5,
  TRUE,
  NOW()
)
ON CONFLICT (slug) DO NOTHING;
