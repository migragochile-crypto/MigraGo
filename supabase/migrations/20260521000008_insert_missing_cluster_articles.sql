-- Inserta 3 artículos cluster faltantes detectados al cruzar silos.ts con la DB.
-- Slugs: residencia-definitiva/reduccion-plazo-12-meses,
--        vivir-en-chile/emprendimiento,
--        vivir-en-chile/licencia-conducir

INSERT INTO articles (
  slug, title, h1, meta_description, content,
  schema_type, silo, type, author,
  reading_time_minutes, published_at, updated_at,
  faq_items, howto_steps, related_slugs
) VALUES

-- ─────────────────────────────────────────────────────────────────────────────
-- 1. residencia-definitiva/reduccion-plazo-12-meses
-- ─────────────────────────────────────────────────────────────────────────────
(
  'residencia-definitiva/reduccion-plazo-12-meses',
  'Reducción de Plazo a 12 Meses para Residencia Definitiva en Chile',
  'Reducción de plazo a 12 meses para Residencia Definitiva',
  'Cómo solicitar la reducción del plazo de 2 años a 12 meses para obtener la Residencia Definitiva en Chile. Requisitos, quiénes califican y cómo presentar la solicitud.',
  '<p>La Ley 21.325 de Migración y Extranjería permite que ciertos extranjeros soliciten la Residencia Definitiva después de solo <strong>12 meses</strong> de Residencia Temporal, en lugar de los 2 años habituales. Se trata de una reducción del plazo ordinario, no de una vía separada.</p>

<h2>¿Quiénes pueden solicitar la reducción?</h2>
<p>El SERMIG puede autorizar el plazo reducido cuando el solicitante acredita uno o más de los siguientes vínculos con Chile:</p>
<ul>
  <li><strong>Padre o madre de hijo/a chileno/a</strong> — el menor debe estar inscrito en el Registro Civil.</li>
  <li><strong>Cónyuge o conviviente civil de ciudadano/a chileno/a</strong> — el matrimonio o AUC debe estar vigente e inscrito.</li>
  <li><strong>Contrato de trabajo vigente</strong> por al menos 12 meses continuos con el mismo empleador en Chile.</li>
  <li><strong>Actividad económica propia documentada</strong> — inicio de actividades en el SII y declaraciones de renta.</li>
  <li><strong>Razones humanitarias graves</strong> — a criterio del SERMIG, caso a caso.</li>
</ul>
<p>Tener uno de estos vínculos no garantiza la aprobación: el SERMIG evalúa el conjunto del expediente, incluyendo antecedentes migratorios y penales.</p>

<h2>Documentos necesarios</h2>
<ul>
  <li>Formulario de solicitud de Residencia Definitiva (portal <a href="https://tramites.extranjeria.gob.cl" target="_blank" rel="noopener noreferrer">tramites.extranjeria.gob.cl</a>).</li>
  <li>Pasaporte vigente.</li>
  <li>Carnet de Residencia Temporal en vigor.</li>
  <li>Certificado de antecedentes penales chileno (Registro Civil).</li>
  <li>Certificado de antecedentes del país de origen apostillado o legalizado.</li>
  <li><strong>Documento que acredita el vínculo:</strong>
    <ul>
      <li>Certificado de nacimiento del hijo/a chileno/a, o</li>
      <li>Certificado de matrimonio o AUC, o</li>
      <li>Contrato de trabajo y cotizaciones previsionales, o</li>
      <li>Inicio de actividades SII y últimas declaraciones de renta.</li>
    </ul>
  </li>
</ul>

<h2>Cómo presentar la solicitud</h2>
<ol>
  <li>Inicia sesión en el portal de trámites de extranjería.</li>
  <li>Selecciona <em>Solicitar Residencia Definitiva</em>.</li>
  <li>En el formulario, marca la opción <em>reducción de plazo</em> y adjunta los documentos del vínculo.</li>
  <li>Paga el arancel correspondiente (monto publicado en el portal).</li>
  <li>Guarda el número de folio — lo necesitarás para hacer seguimiento.</li>
</ol>

<h2>Plazos y resolución</h2>
<p>El SERMIG no tiene un plazo legal fijo para resolver la solicitud de reducción. En la práctica, los tiempos varían entre <strong>3 y 9 meses</strong>. Puedes consultar el estado de tu trámite en el portal con el número de folio.</p>
<p>Si la reducción es denegada, el SERMIG puede resolver la solicitud como Residencia Definitiva ordinaria (si ya tienes 2 años) o devolver el expediente para que completes el plazo.</p>

<div class="bg-amber-50 border border-amber-200 rounded-xl p-4 mt-6 text-sm text-amber-900">
  <strong>Importante:</strong> La reducción de plazo es una facultad discrecional del SERMIG. Cumplir los requisitos no obliga al servicio a aprobarla. Si tu caso es complejo, considera asesorarte con un abogado migratorio antes de presentar la solicitud.
</div>',
  'Article',
  'residencia-definitiva',
  'cluster',
  'Equipo MigraGo',
  6,
  '2026-05-21T00:00:00Z',
  '2026-05-21T00:00:00Z',
  '[
    {"question": "¿Puedo solicitar la reducción si llevo exactamente 12 meses con Residencia Temporal?", "answer": "Sí, puedes presentar la solicitud una vez cumplidos los 12 meses. El SERMIG evaluará si calificas según el vínculo que acredites."},
    {"question": "¿La reducción aplica para todos los tipos de Residencia Temporal?", "answer": "En general sí, pero el SERMIG puede considerar el tipo de visa con la que obtuviste la Residencia Temporal. Algunos vínculos son más fáciles de acreditar si la visa era de trabajo o de familia."},
    {"question": "¿Qué pasa si el SERMIG rechaza la reducción de plazo?", "answer": "El expediente no queda cerrado. Puedes completar los 2 años habituales y solicitar la Residencia Definitiva por la vía ordinaria, o interponer un recurso administrativo si crees que hay un error en la resolución."},
    {"question": "¿Necesito haber estado en Chile los 12 meses de forma continua?", "answer": "No se exige presencia ininterrumpida, pero ausencias prolongadas pueden afectar negativamente la evaluación. Las ausencias superiores a 90 días consecutivos suelen considerarse negativas."}
  ]'::jsonb,
  '[]'::jsonb,
  ARRAY[
    'residencia-definitiva/requisitos',
    'residencia-definitiva/como-solicitarla',
    'residencia-definitiva/cuanto-demora',
    'residencia-definitiva/casos-especiales'
  ]
),

-- ─────────────────────────────────────────────────────────────────────────────
-- 2. vivir-en-chile/emprendimiento
-- ─────────────────────────────────────────────────────────────────────────────
(
  'vivir-en-chile/emprendimiento',
  'Emprender en Chile como Extranjero: Empresa, RUT y Requisitos',
  'Emprender en Chile como extranjero: empresa, RUT y requisitos',
  'Guía para extranjeros que quieren emprender en Chile. Cómo crear una empresa, requisitos de visa, inscripción en el SII y opciones para trabajar de forma independiente.',
  '<p>Chile permite a los extranjeros con residencia legal crear empresas y trabajar de forma independiente. El proceso es similar al de un chileno, pero hay requisitos migratorios previos que debes tener en orden.</p>

<h2>¿Con qué visa puedes emprender?</h2>
<p>No todas las visas o categorías de Residencia Temporal permiten trabajar de forma independiente. Estas sí lo permiten:</p>
<ul>
  <li><strong>Residencia Temporal por vínculo familiar</strong> (hijo/a chileno/a, cónyuge de chileno/a) — trabajo dependiente e independiente permitido.</li>
  <li><strong>Residencia Temporal por trabajo</strong> — dependiente con el empleador del contrato; la actividad independiente puede requerir autorización adicional.</li>
  <li><strong>Residencia Definitiva</strong> — sin restricciones de actividad laboral.</li>
</ul>
<p>Revisa tu carnet de residencia o resolución del SERMIG para verificar si tu categoría incluye trabajo independiente. Si tienes dudas, consulta en <a href="https://serviciomigraciones.cl" target="_blank" rel="noopener noreferrer">serviciomigraciones.cl</a>.</p>

<h2>Paso 1: Obtén tu RUT</h2>
<p>Sin RUT no puedes abrir una empresa ni emitir boletas. Si aún no lo tienes, tramítalo en el <a href="https://www.registrocivil.cl" target="_blank" rel="noopener noreferrer">Registro Civil</a> con tu pasaporte y carnet de residencia.</p>

<h2>Paso 2: Elige la forma jurídica</h2>
<ul>
  <li><strong>Empresa Individual de Responsabilidad Limitada (EIRL)</strong> — la forma más simple para trabajar solo. Responsabilidad limitada al capital declarado.</li>
  <li><strong>Sociedad por Acciones (SpA)</strong> — flexible, permite socios y estructura más formal. Muy usada por startups.</li>
  <li><strong>Boleta de honorarios (sin empresa)</strong> — si solo prestarás servicios a otras empresas de forma ocasional, puedes emitir boletas directamente como persona natural, sin constituir empresa.</li>
</ul>

<h2>Paso 3: Constituye la empresa</h2>
<p>La forma más rápida es el portal <strong>Tu Empresa en un Día</strong> (<a href="https://www.tuempresaenundia.cl" target="_blank" rel="noopener noreferrer">tuempresaenundia.cl</a>), que permite constituir una empresa en línea, sin notario, con firma electrónica. Necesitas:</p>
<ul>
  <li>RUT vigente.</li>
  <li>Clave Única del Registro Civil (si no la tienes, puedes solicitarla en el Registro Civil).</li>
  <li>Definir el capital inicial, el giro y el domicilio fiscal.</li>
</ul>

<h2>Paso 4: Inscripción en el SII</h2>
<p>Una vez constituida la empresa (o si trabajas como persona natural con honorarios), debes iniciar actividades en el <strong>Servicio de Impuestos Internos (SII)</strong> en <a href="https://www.sii.cl" target="_blank" rel="noopener noreferrer">sii.cl</a>. Este paso activa tu RUT empresarial y te permite emitir boletas o facturas electrónicas.</p>

<h2>Paso 5: Cumplimiento previsional</h2>
<p>Como trabajador independiente debes cotizar en AFP y, opcionalmente, en FONASA o Isapre. Las cotizaciones se pagan mensualmente sobre tu renta declarada. Desde 2024, las cotizaciones de independientes son obligatorias si emites boletas de honorarios.</p>

<div class="bg-blue-50 border border-blue-200 rounded-xl p-4 mt-6 text-sm text-blue-900">
  <strong>Consejo:</strong> Si tu visa es de trabajo dependiente y quieres emprender paralelamente, consulta primero con el SERMIG si necesitas autorización adicional. Trabajar fuera de los términos de tu visa puede afectar futuras solicitudes de Residencia Definitiva.
</div>',
  'HowTo',
  'vivir-en-chile',
  'cluster',
  'Equipo MigraGo',
  7,
  '2026-05-21T00:00:00Z',
  '2026-05-21T00:00:00Z',
  '[
    {"question": "¿Puedo emprender si tengo Residencia Temporal por trabajo?", "answer": "Depende de los términos de tu residencia. Algunas categorías solo autorizan trabajo dependiente con el empleador del contrato. Revisa tu resolución del SERMIG o consulta directamente con ellos antes de iniciar actividades independientes."},
    {"question": "¿Necesito cambiar mi visa para trabajar de forma independiente?", "answer": "No siempre. La Residencia Definitiva y algunas categorías de Residencia Temporal ya incluyen trabajo independiente. Si tu categoría no lo permite, podrías solicitar un cambio de categoría al SERMIG."},
    {"question": "¿Puedo ser socio de una empresa sin ser el emprendedor principal?", "answer": "Sí, los extranjeros con residencia legal pueden ser socios de sociedades chilenas sin restricciones, incluso si no trabajan activamente en la empresa."},
    {"question": "¿Qué pasa con mis cotizaciones si soy extranjero independiente?", "answer": "Las cotizaciones son obligatorias igual que para un chileno. Debes afiliarte a una AFP y al sistema de salud. Si tienes convenio de seguridad social con tu país de origen, revisa si aplica en Chile."}
  ]'::jsonb,
  '[
    {"name": "Verificar que tu visa permite trabajo independiente", "text": "Revisa tu carnet de residencia o resolución del SERMIG para confirmar que tu categoría incluye trabajo independiente o por cuenta propia."},
    {"name": "Obtener o verificar tu RUT", "text": "Si aún no tienes RUT, trámitalo en el Registro Civil (www.registrocivil.cl) con tu pasaporte y carnet de residencia vigente."},
    {"name": "Elegir la forma jurídica", "text": "Decide entre EIRL, SpA u honorarios directos según la escala y formalidad de tu actividad."},
    {"name": "Constituir la empresa en Tu Empresa en un Día", "text": "Ingresa a tuempresaenundia.cl con tu Clave Única y constituye la empresa en línea. No necesitas notario."},
    {"name": "Iniciar actividades en el SII", "text": "Entra a sii.cl, selecciona Inicio de Actividades y registra tu giro y domicilio fiscal para poder emitir boletas o facturas electrónicas."},
    {"name": "Inscribirte en AFP y sistema de salud", "text": "Afíliate a una AFP y elige FONASA o Isapre para cotizar mensualmente sobre tu renta declarada."}
  ]'::jsonb,
  ARRAY[
    'vivir-en-chile/rut-extranjero',
    'vivir-en-chile/cuenta-bancaria',
    'vivir-en-chile/trabajo-contrato',
    'vivir-en-chile/afp-extranjero'
  ]
),

-- ─────────────────────────────────────────────────────────────────────────────
-- 3. vivir-en-chile/licencia-conducir
-- ─────────────────────────────────────────────────────────────────────────────
(
  'vivir-en-chile/licencia-conducir',
  'Licencia de Conducir para Extranjeros en Chile: Canje y Trámite',
  'Licencia de conducir para extranjeros en Chile: canje y trámite',
  'Cómo obtener o canjear la licencia de conducir en Chile si eres extranjero. Requisitos, países con convenio de canje, exámenes y dónde tramitarla.',
  '<p>Si tienes licencia de conducir extranjera y vives en Chile con Residencia Temporal o Definitiva, necesitas tramitar una <strong>licencia chilena</strong>. Conducir solo con la licencia extranjera tiene un plazo límite.</p>

<h2>¿Hasta cuándo puedes conducir con tu licencia extranjera?</h2>
<ul>
  <li><strong>Turistas:</strong> puedes conducir hasta 90 días con licencia extranjera vigente y el Permiso de Turismo.</li>
  <li><strong>Residentes temporales o definitivos:</strong> la licencia extranjera ya no te habilita legalmente para conducir en Chile. Debes tramitar la licencia chilena.</li>
</ul>

<h2>Canje de licencia (países con convenio)</h2>
<p>Chile tiene convenios de reconocimiento mutuo con algunos países que permiten canjear la licencia extranjera por una chilena sin rendir los exámenes de conducción (solo se exigen los médicos).</p>
<p>Consulta en tu municipalidad si tu país tiene convenio vigente. Los más comunes son con <strong>Argentina</strong> y algunos países de la Unión Europea. El listado oficial está en el Ministerio de Transportes.</p>

<h2>Proceso general (sin convenio de canje)</h2>
<ol>
  <li><strong>Certificado médico:</strong> visita un centro médico autorizado por el Ministerio de Transportes para la evaluación psicofísica (vista, audición, reflejos). Costo aproximado: $15.000–$25.000 CLP.</li>
  <li><strong>Examen teórico:</strong> prueba de conocimiento del Código de Tránsito chileno. Puedes prepararte con la app oficial del CONASET y rendir el examen en línea o de forma presencial en el SEMTT (Servicio de Evaluación Médica y Técnica de Tránsito).</li>
  <li><strong>Examen práctico:</strong> prueba en el circuito de conducción habilitado por la municipalidad o el SEMTT. Si tienes licencia extranjera vigente de la misma clase que solicitas, algunos municipios pueden dispensarte del examen práctico.</li>
  <li><strong>Pago y emisión:</strong> una vez aprobados los exámenes, pagas el arancel municipal (varía por comuna, aprox. $10.000–$20.000 CLP) y retiras la licencia.</li>
</ol>

<h2>Documentos necesarios</h2>
<ul>
  <li>Cédula de Identidad para extranjeros (RUN vigente) o pasaporte con carnet de residencia.</li>
  <li>Licencia de conducir extranjera vigente (original).</li>
  <li>Certificado médico de conductor emitido por centro autorizado.</li>
  <li>Certificado de antecedentes de tránsito (gratis en línea en <a href="https://www.registrocivil.cl" target="_blank" rel="noopener noreferrer">registrocivil.cl</a>).</li>
</ul>

<h2>Dónde tramitarla</h2>
<p>El trámite se realiza en el <strong>municipio de tu domicilio</strong>. Algunas comunas tienen sistemas en línea para agendar hora; otras son presenciales. Busca la sección de Tránsito en el sitio web de tu municipalidad.</p>

<div class="bg-amber-50 border border-amber-200 rounded-xl p-4 mt-6 text-sm text-amber-900">
  <strong>Importante:</strong> Conducir sin licencia chilena siendo residente puede resultar en multa y retención del vehículo. No esperes a que te detengan — tramita la licencia apenas tengas tu cédula de extranjero.
</div>',
  'HowTo',
  'vivir-en-chile',
  'cluster',
  'Equipo MigraGo',
  6,
  '2026-05-21T00:00:00Z',
  '2026-05-21T00:00:00Z',
  '[
    {"question": "¿Puedo conducir en Chile con mi licencia extranjera si tengo Residencia Temporal?", "answer": "No. Una vez que tienes Residencia Temporal o Definitiva, la licencia extranjera deja de habilitarte para conducir en Chile. Debes tramitar la licencia chilena."},
    {"question": "¿Cuánto tarda el trámite?", "answer": "Depende de la municipalidad. En comunas con sistema online puede resolverse en 1–2 semanas desde que apruebas los exámenes. En comunas con alta demanda puede tardar 4–6 semanas."},
    {"question": "¿Mi licencia extranjera sirve como antecedente para saltarme el examen práctico?", "answer": "En algunas municipalidades, presentar una licencia extranjera vigente de la misma clase puede liberar del examen práctico. No es un derecho garantizado — depende de cada municipio y del convenio con tu país."},
    {"question": "¿Qué clase de licencia debo pedir?", "answer": "La clase A (vehículos particulares) es la más común. Si quieres conducir motos, camiones o transporte de pasajeros, necesitas clases específicas con requisitos adicionales."}
  ]'::jsonb,
  '[
    {"name": "Verificar si tu país tiene convenio de canje con Chile", "text": "Consulta en la municipalidad de tu domicilio o en el Ministerio de Transportes si tu país tiene convenio de reconocimiento mutuo de licencias."},
    {"name": "Obtener el certificado médico de conductor", "text": "Ve a un centro de evaluación médica autorizado por el Ministerio de Transportes. Llevan a cabo exámenes de vista, audición y psicomotricidad."},
    {"name": "Preparar y rendir el examen teórico", "text": "Estudia el Código de Tránsito con la app del CONASET y rinde el examen teórico en línea o presencialmente en el SEMTT."},
    {"name": "Rendir el examen práctico de conducción", "text": "Agenda el examen práctico en tu municipalidad. Si tienes licencia extranjera vigente de la misma clase, pregunta si estás exento."},
    {"name": "Pagar el arancel y retirar la licencia", "text": "Una vez aprobados todos los exámenes, paga el arancel municipal correspondiente y retira tu licencia de conducir chilena."}
  ]'::jsonb,
  ARRAY[
    'vivir-en-chile/rut-extranjero',
    'vivir-en-chile/cedula-extranjero',
    'vivir-en-chile/trabajo-contrato'
  ]
)

ON CONFLICT (slug) DO UPDATE SET
  title               = EXCLUDED.title,
  h1                  = EXCLUDED.h1,
  meta_description    = EXCLUDED.meta_description,
  content             = EXCLUDED.content,
  schema_type         = EXCLUDED.schema_type,
  faq_items           = EXCLUDED.faq_items,
  howto_steps         = EXCLUDED.howto_steps,
  related_slugs       = EXCLUDED.related_slugs,
  updated_at          = EXCLUDED.updated_at;
