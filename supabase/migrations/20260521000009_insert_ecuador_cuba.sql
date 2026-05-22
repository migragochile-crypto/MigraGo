-- Agrega Ecuador y Cuba: hub + clusters para cada país.
-- Ecuador: 3er/4to país de origen de migrantes en Chile (~170.000 personas)
-- Cuba: comunidad significativa con documentación compleja

INSERT INTO articles (
  slug, title, h1, meta_description, content,
  schema_type, silo, type, author,
  reading_time_minutes, published_at, updated_at,
  faq_items, howto_steps, related_slugs
) VALUES

-- ═════════════════════════════════════════════════════════════════════════════
-- ECUADOR — HUB
-- ═════════════════════════════════════════════════════════════════════════════
(
  'ecuador',
  'Guía Migratoria para Ecuatorianos en Chile 2024',
  'Guía migratoria para ecuatorianos en Chile',
  'Todo lo que necesita saber un ecuatoriano para vivir legalmente en Chile: apostilla de documentos, antecedentes penales, opciones de visa y trámites en el SERMIG.',
  '<p>Ecuador es uno de los países con mayor presencia migrante en Chile. Si eres ecuatoriano/a y quieres vivir o trabajar en Chile, esta guía resume los pasos esenciales: documentos que necesitas, cómo apostillarlos y qué opciones de visa tienes disponibles.</p>

<h2>Lo primero: tus documentos</h2>
<p>Ecuador es parte del Convenio de La Haya, por lo que sus documentos oficiales pueden <strong>apostillarse</strong> en lugar de legalizarse por vía consular. La apostilla es más rápida y económica.</p>
<p>Los documentos que habitualmente exige el SERMIG son:</p>
<ul>
  <li>Pasaporte vigente (mínimo 6 meses de validez).</li>
  <li>Certificado de antecedentes penales del Ministerio del Interior de Ecuador, apostillado.</li>
  <li>Partida de nacimiento apostillada (para trámites de familia o nacionalización).</li>
  <li>Documentos de respaldo según el tipo de visa (contrato de trabajo, certificado de estudios, etc.).</li>
</ul>

<h2>Opciones de visa para ecuatorianos</h2>
<p>Ecuador no es miembro del MERCOSUR, por lo que no tienes acceso a la <em>Visa MERCOSUR</em>. Las principales vías para obtener Residencia Temporal son:</p>
<ul>
  <li><strong>Contrato de trabajo</strong> — con un empleador chileno que firme un contrato antes de tu llegada o en Chile.</li>
  <li><strong>Oferta de trabajo</strong> — si tienes una oferta formal pero aún no has firmado contrato.</li>
  <li><strong>Vínculo familiar</strong> — si tienes hijos chilenos, cónyuge chileno/a o conviviente civil.</li>
  <li><strong>Razones humanitarias</strong> — evaluada caso a caso por el SERMIG.</li>
  <li><strong>Jubilado o rentista</strong> — si tienes ingresos demostrables desde el extranjero.</li>
</ul>

<h2>¿Por dónde empezar?</h2>
<p>El trámite se inicia en el portal <a href="https://tramites.extranjeria.gob.cl" target="_blank" rel="noopener noreferrer">tramites.extranjeria.gob.cl</a>. Antes de postular, asegúrate de tener todos los documentos apostillados y traducidos si corresponde (Ecuador usa español, por lo que no se requiere traducción).</p>

<div class="bg-blue-50 border border-blue-200 rounded-xl p-4 mt-6 text-sm text-blue-900">
  <strong>Consejo:</strong> Tramita el certificado de antecedentes penales en Ecuador antes de viajar. El proceso puede tardar varias semanas y es uno de los documentos más difíciles de obtener desde Chile.
</div>',
  'Article',
  'ecuador',
  'hub',
  'Equipo MigraGo',
  5,
  '2026-05-21T00:00:00Z',
  '2026-05-21T00:00:00Z',
  '[
    {"question": "¿Los ecuatorianos necesitan visa para entrar a Chile?", "answer": "No. Los ciudadanos ecuatorianos pueden ingresar a Chile como turistas sin visa y permanecer hasta 90 días. Para quedarse más tiempo o trabajar de forma regular, necesitan solicitar una Residencia Temporal."},
    {"question": "¿Ecuador tiene acuerdo MERCOSUR con Chile?", "answer": "No. Ecuador no es miembro del MERCOSUR, por lo que los ecuatorianos no pueden acceder a la Visa MERCOSUR. Deben aplicar por otras categorías de Residencia Temporal."},
    {"question": "¿Puedo apostillar mis documentos ecuatorianos en Chile?", "answer": "No. La apostilla debe tramitarse en Ecuador, en el Ministerio de Relaciones Exteriores o en las oficinas habilitadas. Si ya estás en Chile, debes coordinar con alguien en Ecuador o tramitarla a través del consulado ecuatoriano en Chile."}
  ]'::jsonb,
  '[]'::jsonb,
  ARRAY[
    'ecuador/documentos-ecuador',
    'ecuador/antecedentes-penales',
    'ecuador/apostilla-ecuador',
    'ecuador/opciones-visa'
  ]
),

-- ECUADOR — CLUSTERS

(
  'ecuador/documentos-ecuador',
  'Documentos para Ecuatorianos en Chile: Qué Necesitas y Cómo Apostillarlos',
  'Documentos para ecuatorianos en Chile: qué necesitas y cómo apostillarlos',
  'Lista de documentos que necesita un ecuatoriano para solicitar Residencia Temporal en Chile y cómo apostillarlos correctamente desde Ecuador.',
  '<p>Para solicitar Residencia Temporal en Chile, el SERMIG exige documentos ecuatorianos debidamente <strong>apostillados</strong>. Ecuador forma parte del Convenio de La Haya, lo que simplifica el proceso respecto a países que requieren legalización consular.</p>

<h2>Documentos base (todos los solicitantes)</h2>
<ul>
  <li><strong>Pasaporte vigente</strong> con al menos 6 meses de validez desde la fecha de solicitud.</li>
  <li><strong>Certificado de antecedentes penales</strong> emitido por el Ministerio del Interior de Ecuador, apostillado (ver artículo específico).</li>
  <li><strong>Fotografía reciente</strong> en formato digital (especificaciones en el portal de trámites).</li>
</ul>

<h2>Documentos adicionales según el tipo de visa</h2>
<ul>
  <li><strong>Contrato de trabajo:</strong> contrato firmado por empleador chileno, con firma notarial.</li>
  <li><strong>Vínculo familiar:</strong> partida de nacimiento apostillada del hijo/a chileno/a, o certificado de matrimonio apostillado.</li>
  <li><strong>Estudios:</strong> carta de aceptación de la institución educativa en Chile.</li>
  <li><strong>Jubilado/rentista:</strong> certificado bancario o pensión que acredite ingresos regulares.</li>
</ul>

<h2>Cómo apostillar en Ecuador</h2>
<p>La apostilla de documentos ecuatorianos se tramita en el <strong>Ministerio de Relaciones Exteriores y Movilidad Humana</strong> de Ecuador, en las oficinas de Quito, Guayaquil y otras ciudades.</p>
<ol>
  <li>El documento debe ser original y estar firmado por la autoridad competente.</li>
  <li>Se presenta en las oficinas del Ministerio de Relaciones Exteriores.</li>
  <li>Se paga el arancel correspondiente.</li>
  <li>El apostille queda estampado en el propio documento o en una hoja adjunta.</li>
</ol>
<p>Si ya estás en Chile, puedes coordinar el trámite a través de un familiar en Ecuador o consultar en el <strong>Consulado de Ecuador en Santiago</strong>.</p>

<h2>¿Necesito traducción?</h2>
<p>No. Los documentos ecuatorianos están en español, por lo que el SERMIG los acepta directamente sin traducción oficial.</p>',
  'HowTo',
  'ecuador',
  'cluster',
  'Equipo MigraGo',
  5,
  '2026-05-21T00:00:00Z',
  '2026-05-21T00:00:00Z',
  '[
    {"question": "¿Puedo usar copias apostilladas o deben ser originales?", "answer": "El SERMIG generalmente exige los documentos originales apostillados. Las fotocopias, aunque estén apostilladas, pueden no ser aceptadas. Consulta el portal de trámites para el tipo de solicitud específico."},
    {"question": "¿Cuánto tarda la apostilla en Ecuador?", "answer": "El trámite en el Ministerio de Relaciones Exteriores de Ecuador puede tardar entre 1 y 5 días hábiles dependiendo de la oficina y la demanda. Se recomienda tramitarla con anticipación antes de viajar a Chile."}
  ]'::jsonb,
  '[
    {"name": "Reunir los documentos originales en Ecuador", "text": "Obtén los documentos originales: antecedentes penales, partida de nacimiento, certificado de matrimonio u otros según tu caso."},
    {"name": "Presentar en el Ministerio de Relaciones Exteriores de Ecuador", "text": "Lleva los documentos originales a la oficina del Ministerio de RR.EE. más cercana (Quito, Guayaquil u otras ciudades habilitadas) para tramitar la apostilla."},
    {"name": "Pagar el arancel y retirar documentos apostillados", "text": "Cancela el valor del trámite y retira los documentos con la apostilla estampada."},
    {"name": "Subir los documentos al portal del SERMIG", "text": "Ingresa a tramites.extranjeria.gob.cl y adjunta los documentos apostillados en el formulario de solicitud de Residencia Temporal."}
  ]'::jsonb,
  ARRAY[
    'ecuador/antecedentes-penales',
    'ecuador/apostilla-ecuador',
    'ecuador/opciones-visa'
  ]
),

(
  'ecuador/antecedentes-penales',
  'Antecedentes Penales de Ecuador para Chile: Cómo Obtenerlos',
  'Antecedentes penales de Ecuador para Chile: cómo obtenerlos',
  'Cómo obtener el certificado de antecedentes penales de Ecuador para trámites migratorios en Chile. Dónde tramitarlo, cómo apostillarlo y cuánto demora.',
  '<p>El certificado de antecedentes penales es uno de los documentos más importantes para cualquier trámite de Residencia Temporal o Residencia Definitiva en Chile. Si eres ecuatoriano/a, debes obtenerlo en Ecuador, <strong>apostillado</strong>, antes de presentar tu solicitud.</p>

<h2>¿Qué documento se necesita?</h2>
<p>El SERMIG acepta el <strong>Certificado de Antecedentes Penales</strong> emitido por el <strong>Ministerio del Interior de Ecuador</strong>, a través del sistema SIIPNE (Sistema Integrado de Información Policial Nacional del Ecuador), disponible en el portal del Ministerio del Interior.</p>

<h2>Cómo obtenerlo desde Ecuador</h2>
<ol>
  <li>Ingresa al portal del Ministerio del Interior de Ecuador.</li>
  <li>Selecciona <em>Certificado de Antecedentes Penales</em>.</li>
  <li>Completa el formulario con tu cédula de identidad ecuatoriana.</li>
  <li>Descarga el certificado o recíbelo en el correo electrónico.</li>
  <li>Lleva el certificado impreso al Ministerio de Relaciones Exteriores para apostillarlo.</li>
</ol>

<h2>Cómo obtenerlo estando en Chile</h2>
<p>Si ya estás en Chile y no puedes tramitarlo directamente, tienes dos opciones:</p>
<ul>
  <li><strong>A través de un familiar en Ecuador:</strong> que tramite y apostille el documento y te lo envíe por correo certificado.</li>
  <li><strong>A través del Consulado de Ecuador en Chile:</strong> consulta con el consulado si ofrecen gestión de documentos. Algunos consulados tienen convenios para tramitar antecedentes para sus ciudadanos en el exterior.</li>
</ul>

<h2>Vigencia del certificado</h2>
<p>El SERMIG exige que el certificado no tenga más de <strong>90 días de antigüedad</strong> al momento de presentar la solicitud. Planifica bien el momento de tramitarlo para que no caduque antes de completar tu postulación.</p>',
  'HowTo',
  'ecuador',
  'cluster',
  'Equipo MigraGo',
  5,
  '2026-05-21T00:00:00Z',
  '2026-05-21T00:00:00Z',
  '[
    {"question": "¿Puedo tramitar los antecedentes penales de Ecuador en línea desde Chile?", "answer": "El certificado se puede generar en línea en el portal del Ministerio del Interior de Ecuador, pero la apostilla debe hacerse físicamente en Ecuador. Si ya estás en Chile, necesitas que alguien en Ecuador tramite y envíe el documento apostillado."},
    {"question": "¿El certificado de antecedentes de la Policía Nacional sirve también?", "answer": "El SERMIG generalmente acepta el certificado del Ministerio del Interior (SIIPNE). Verifica en el portal de trámites qué institución emisora es aceptada para tu tipo de solicitud."},
    {"question": "¿Cuánto cuesta el certificado de antecedentes penales de Ecuador?", "answer": "El certificado del Ministerio del Interior es gratuito o tiene un costo mínimo. La apostilla tiene un costo adicional en el Ministerio de Relaciones Exteriores de Ecuador."}
  ]'::jsonb,
  '[
    {"name": "Obtener el certificado del Ministerio del Interior de Ecuador", "text": "Ingresa al portal online del Ministerio del Interior de Ecuador y genera el Certificado de Antecedentes Penales con tu cédula de identidad."},
    {"name": "Apostillar el certificado en Ecuador", "text": "Lleva el certificado impreso al Ministerio de Relaciones Exteriores de Ecuador para obtener la apostilla del Convenio de La Haya."},
    {"name": "Verificar la vigencia antes de presentar", "text": "Confirma que el certificado tenga menos de 90 días de antigüedad al momento de presentar tu solicitud en el SERMIG."}
  ]'::jsonb,
  ARRAY[
    'ecuador/documentos-ecuador',
    'ecuador/apostilla-ecuador',
    'vivir-en-chile/apostilla-traduccion'
  ]
),

(
  'ecuador/apostilla-ecuador',
  'Apostilla de Documentos Ecuatorianos: Guía Completa para Trámites en Chile',
  'Apostilla de documentos ecuatorianos para trámites en Chile',
  'Cómo apostillar documentos ecuatorianos para usarlos en Chile. Dónde tramitar la apostilla, qué documentos la necesitan y cuánto demora el proceso.',
  '<p>Ecuador es miembro del Convenio de La Haya desde 1978, por lo que sus documentos públicos pueden <strong>apostillarse</strong> para ser válidos en Chile sin necesidad de legalización consular adicional. La apostilla es el mecanismo más rápido y económico para validar tus documentos.</p>

<h2>¿Qué documentos necesitan apostilla para Chile?</h2>
<ul>
  <li>Certificado de antecedentes penales.</li>
  <li>Partida de nacimiento (para trámites de familia o nacionalización).</li>
  <li>Certificado de matrimonio o divorcio.</li>
  <li>Títulos universitarios o técnicos (para convalidación o como respaldo de visa).</li>
  <li>Poderes notariales.</li>
</ul>
<p>Los documentos privados (contratos, cartas de empleadores) <strong>no pueden apostillarse</strong> — solo los documentos públicos o notariales.</p>

<h2>Dónde tramitar la apostilla en Ecuador</h2>
<p>La apostilla en Ecuador se tramita en el <strong>Ministerio de Relaciones Exteriores y Movilidad Humana</strong>. Hay oficinas en:</p>
<ul>
  <li>Quito (oficina central)</li>
  <li>Guayaquil</li>
  <li>Cuenca y otras ciudades</li>
</ul>
<p>También existe un servicio de apostilla en línea para algunos documentos digitales emitidos por instituciones públicas ecuatorianas. Verifica en el portal del Ministerio de RR.EE. si tu documento califica.</p>

<h2>Proceso de apostilla</h2>
<ol>
  <li>El documento debe estar firmado y sellado por la institución emisora (Ministerio del Interior, Registro Civil, etc.).</li>
  <li>Presentas el documento original en la oficina del Ministerio de RR.EE.</li>
  <li>Pagas el arancel (varía según el tipo de documento).</li>
  <li>Recibes el documento con la apostilla estampada, lista para presentar en Chile.</li>
</ol>

<h2>¿Y si el documento es muy antiguo?</h2>
<p>Los documentos más antiguos pueden requerir que primero sean <em>reconocidos</em> por la institución original antes de apostillar. Consulta directamente con el Ministerio de RR.EE. de Ecuador en cada caso.</p>',
  'HowTo',
  'ecuador',
  'cluster',
  'Equipo MigraGo',
  5,
  '2026-05-21T00:00:00Z',
  '2026-05-21T00:00:00Z',
  '[
    {"question": "¿Puedo apostillar documentos ecuatorianos en Chile?", "answer": "No. La apostilla debe tramitarse en Ecuador, en el Ministerio de Relaciones Exteriores. Chile no puede apostillar documentos extranjeros."},
    {"question": "¿La apostilla tiene fecha de vencimiento?", "answer": "La apostilla en sí no vence, pero el documento que apostilla puede tener requisitos de vigencia. Por ejemplo, el SERMIG exige que el certificado de antecedentes penales no tenga más de 90 días."},
    {"question": "¿Puedo apostillar un título universitario para trabajar en Chile?", "answer": "Sí, pero la apostilla solo certifica la autenticidad del documento, no su equivalencia académica. Para ejercer una profesión regulada en Chile (medicina, derecho, etc.) necesitarás además la convalidación del título ante la institución correspondiente."}
  ]'::jsonb,
  '[
    {"name": "Identificar qué documentos necesitan apostilla", "text": "Revisa los requisitos del tipo de visa o trámite que vas a solicitar en el SERMIG y determina cuáles de tus documentos ecuatorianos requieren apostilla."},
    {"name": "Asegurarte de que el documento esté correctamente firmado por la institución emisora", "text": "El Ministerio de RR.EE. solo apostilla documentos emitidos correctamente por instituciones públicas ecuatorianas."},
    {"name": "Presentar en el Ministerio de Relaciones Exteriores de Ecuador", "text": "Lleva los documentos originales a la oficina más cercana (Quito, Guayaquil u otras) y solicita la apostilla."},
    {"name": "Verificar la apostilla antes de enviar a Chile", "text": "Confirma que la apostilla esté estampada correctamente y que el documento esté en buen estado para presentarlo al SERMIG."}
  ]'::jsonb,
  ARRAY[
    'ecuador/documentos-ecuador',
    'ecuador/antecedentes-penales',
    'vivir-en-chile/apostilla-traduccion'
  ]
),

(
  'ecuador/opciones-visa',
  'Opciones de Visa para Ecuatorianos en Chile: Cuál Te Conviene',
  'Opciones de visa para ecuatorianos en Chile: cuál te conviene',
  'Cuáles son las opciones de Residencia Temporal disponibles para ecuatorianos en Chile. Comparativa de categorías: trabajo, familia, razones humanitarias y más.',
  '<p>Ecuador no es parte del MERCOSUR, por lo que los ecuatorianos no pueden acceder a la Visa MERCOSUR. Sin embargo, hay varias categorías de <strong>Residencia Temporal</strong> a las que sí puedes postular, dependiendo de tu situación.</p>

<h2>Principales opciones de Residencia Temporal</h2>

<h3>1. Residencia Temporal por Contrato de Trabajo</h3>
<p>La opción más usada. Necesitas un contrato de trabajo firmado con un empleador chileno. El contrato debe tener al menos 12 meses de duración y estar con firma notarial.</p>
<ul>
  <li><strong>Requisitos clave:</strong> contrato firmado, antecedentes penales apostillados, pasaporte vigente.</li>
  <li><strong>Duración inicial:</strong> 1 año, renovable.</li>
</ul>

<h3>2. Residencia Temporal por Oferta de Trabajo</h3>
<p>Si tienes una oferta formal pero aún no has firmado contrato, puedes postular con la carta de oferta. El contrato definitivo debes presentarlo dentro del plazo que fija el SERMIG.</p>

<h3>3. Residencia Temporal por Vínculo Familiar</h3>
<p>Si tienes:</p>
<ul>
  <li>Hijos/as con nacionalidad chilena, o</li>
  <li>Cónyuge o conviviente civil chileno/a.</li>
</ul>
<p>Esta categoría otorga permiso de trabajo dependiente e independiente.</p>

<h3>4. Residencia Temporal por Razones Humanitarias</h3>
<p>Evaluada caso a caso por el SERMIG. Aplica cuando hay circunstancias especiales que justifican la permanencia en Chile y no calificás para otras categorías.</p>

<h3>5. Residencia Temporal para Estudiantes</h3>
<p>Si tienes matrícula en una institución de educación superior chilena reconocida. Permite estudiar pero con restricciones para trabajar.</p>

<h3>6. Jubilado o Rentista</h3>
<p>Si tienes ingresos regulares desde el extranjero (pensión, renta, dividendos) demostrables con documentación bancaria.</p>

<h2>¿Cuál elegir?</h2>
<p>La mayoría de los ecuatorianos en Chile aplican por <strong>contrato de trabajo</strong> o <strong>vínculo familiar</strong>. Si tienes trabajo, es la ruta más directa. Si tienes familia chilena, es la más estable a largo plazo porque no depende de un empleador específico.</p>

<div class="bg-blue-50 border border-blue-200 rounded-xl p-4 mt-4 text-sm text-blue-900">
  <strong>Recuerda:</strong> Después de 2 años con Residencia Temporal puedes solicitar la Residencia Definitiva, que no tiene restricciones de actividad y es permanente.
</div>',
  'Article',
  'ecuador',
  'cluster',
  'Equipo MigraGo',
  6,
  '2026-05-21T00:00:00Z',
  '2026-05-21T00:00:00Z',
  '[
    {"question": "¿Los ecuatorianos pueden usar la visa MERCOSUR?", "answer": "No. Ecuador no es miembro del MERCOSUR ni estado asociado con acceso a la visa MERCOSUR en Chile. Los ecuatorianos deben postular a las categorías ordinarias de Residencia Temporal."},
    {"question": "¿Puedo trabajar mientras espero la resolución de mi visa?", "answer": "Si ingresas a Chile como turista y presentas la solicitud dentro del país, puedes solicitar un permiso de trabajo provisorio mientras el SERMIG resuelve tu solicitud. Consulta las condiciones en el portal."},
    {"question": "¿Puedo cambiar de categoría de visa si ya estoy en Chile?", "answer": "Sí. Si tus circunstancias cambian (por ejemplo, consigues trabajo teniendo visa de familia), puedes solicitar un cambio de categoría ante el SERMIG sin salir del país."}
  ]'::jsonb,
  '[]'::jsonb,
  ARRAY[
    'ecuador/documentos-ecuador',
    'residencia-temporal/contrato-trabajo',
    'residencia-temporal/hijo-chileno',
    'residencia-temporal/mercosur'
  ]
),

-- ═════════════════════════════════════════════════════════════════════════════
-- CUBA — HUB
-- ═════════════════════════════════════════════════════════════════════════════
(
  'cuba',
  'Guía Migratoria para Cubanos en Chile 2024',
  'Guía migratoria para cubanos en Chile',
  'Todo lo que necesita saber un cubano para vivir legalmente en Chile: legalización de documentos, antecedentes penales, opciones de visa y situación migratoria especial.',
  '<p>Cuba tiene una de las comunidades migrantes más particulares en Chile, con características propias que la diferencian de otros países latinoamericanos. Los documentos cubanos requieren un proceso de <strong>legalización específico</strong> y las opciones de visa siguen las categorías generales del SERMIG.</p>

<h2>Lo primero: la situación documental cubana</h2>
<p>A diferencia de la mayoría de los países latinoamericanos, Cuba adhirió al Convenio de La Haya sobre apostilla en 2024, pero en la práctica el proceso de validación de documentos cubanos en Chile aún puede requerir pasos adicionales. Muchos cubanos tramitan sus documentos a través de la <strong>legalización consular</strong> como vía más segura.</p>
<p>Consulta directamente con el <strong>Consulado de Cuba en Santiago</strong> el procedimiento actualizado para cada tipo de documento.</p>

<h2>Opciones de visa para cubanos</h2>
<p>Cuba no es miembro del MERCOSUR. Las principales vías de Residencia Temporal son:</p>
<ul>
  <li><strong>Contrato de trabajo</strong> — la opción más común.</li>
  <li><strong>Vínculo familiar</strong> — hijo/a chileno/a, cónyuge o conviviente civil.</li>
  <li><strong>Razones humanitarias</strong> — evaluada caso a caso.</li>
  <li><strong>Jubilado o rentista</strong> — con ingresos demostrables.</li>
</ul>

<h2>Particularidades de la situación cubana</h2>
<p>Algunos ciudadanos cubanos presentan situaciones documentales complejas: pasaportes vencidos que no pueden renovar fácilmente, documentos anteriores a 1990 o registros incompletos. El SERMIG evalúa estos casos de forma individual — si es tu situación, considera asesorarte con un abogado migratorio antes de presentar la solicitud.</p>

<div class="bg-amber-50 border border-amber-200 rounded-xl p-4 mt-6 text-sm text-amber-900">
  <strong>Importante:</strong> Los procedimientos de documentación para cubanos pueden cambiar. Verifica siempre el estado actualizado en el Consulado de Cuba en Chile o directamente con el SERMIG.
</div>',
  'Article',
  'cuba',
  'hub',
  'Equipo MigraGo',
  5,
  '2026-05-21T00:00:00Z',
  '2026-05-21T00:00:00Z',
  '[
    {"question": "¿Los cubanos necesitan visa para entrar a Chile?", "answer": "No. Los ciudadanos cubanos pueden ingresar a Chile como turistas sin visa por hasta 90 días. Para quedarse más tiempo o trabajar legalmente, deben solicitar una Residencia Temporal."},
    {"question": "¿Los documentos cubanos se apostillan o se legalizan?", "answer": "Cuba se adhirió al Convenio de La Haya en 2024. Sin embargo, en la práctica el proceso puede requerir pasos adicionales. Consulta con el Consulado de Cuba en Chile o con el SERMIG el procedimiento vigente para tu tipo de documento."},
    {"question": "¿Puedo renovar el pasaporte cubano desde Chile?", "answer": "Sí, el Consulado de Cuba en Chile tramita renovaciones de pasaportes para ciudadanos cubanos residentes en Chile. El proceso puede ser lento — solicítalo con anticipación."}
  ]'::jsonb,
  '[]'::jsonb,
  ARRAY[
    'cuba/documentos-cuba',
    'cuba/antecedentes-penales',
    'cuba/opciones-visa'
  ]
),

-- CUBA — CLUSTERS

(
  'cuba/documentos-cuba',
  'Documentos Cubanos para Trámites Migratorios en Chile',
  'Documentos cubanos para trámites migratorios en Chile',
  'Qué documentos necesita un ciudadano cubano para solicitar Residencia Temporal en Chile y cómo legalizarlos o apostillarlos para que sean válidos ante el SERMIG.',
  '<p>Los documentos cubanos tienen características particulares que los diferencian de otros países latinoamericanos. Aquí te explicamos qué necesitas y cómo validarlos para presentarlos ante el SERMIG.</p>

<h2>Documentos base requeridos</h2>
<ul>
  <li><strong>Pasaporte cubano vigente</strong> — con al menos 6 meses de validez. Si está por vencer, tramita la renovación en el Consulado de Cuba en Chile antes de iniciar la solicitud.</li>
  <li><strong>Certificado de antecedentes penales</strong> — ver artículo específico sobre antecedentes cubanos.</li>
  <li><strong>Documentos de respaldo</strong> según el tipo de visa (contrato de trabajo, partida de nacimiento, certificado de matrimonio, etc.).</li>
</ul>

<h2>Validación de documentos cubanos</h2>
<p>Cuba se adhirió al Convenio de La Haya en 2024. Para documentos emitidos después de esa fecha, puede aplicar la apostilla. Para documentos anteriores o en casos de duda, la vía más segura sigue siendo la <strong>legalización consular</strong>:</p>
<ol>
  <li>El documento es autenticado por la institución cubana emisora (Ministerio del Interior, Registro Civil, etc.).</li>
  <li>Luego es legalizado por el Ministerio de Relaciones Exteriores de Cuba.</li>
  <li>Finalmente, el Consulado de Cuba en Chile certifica la autenticidad.</li>
</ol>
<p>Consulta con el <strong>Consulado de Cuba en Santiago</strong> el procedimiento actualizado, ya que las prácticas pueden variar.</p>

<h2>Dificultades frecuentes</h2>
<ul>
  <li>Documentos emitidos antes de los años 90 que pueden estar deteriorados o con formatos no estándar.</li>
  <li>Registros civiles incompletos o con discrepancias en nombres.</li>
  <li>Demoras en la obtención de documentos desde Cuba cuando se está en Chile.</li>
</ul>
<p>Si enfrentas alguna de estas situaciones, el SERMIG evalúa cada caso individualmente. Considera asesorarte con un abogado migratorio para preparar la solicitud correctamente.</p>',
  'Article',
  'cuba',
  'cluster',
  'Equipo MigraGo',
  5,
  '2026-05-21T00:00:00Z',
  '2026-05-21T00:00:00Z',
  '[
    {"question": "¿Puedo usar una copia del pasaporte cubano si el original está en mal estado?", "answer": "No. El SERMIG requiere el documento original. Si tu pasaporte está en mal estado, tramita la renovación en el Consulado de Cuba en Chile antes de iniciar la solicitud."},
    {"question": "¿Qué hago si tengo discrepancias en mis documentos (nombre, fecha de nacimiento)?", "answer": "Las discrepancias deben regularizarse antes de presentar la solicitud. El Consulado de Cuba puede orientarte sobre cómo corregirlas a través de los registros civiles cubanos."}
  ]'::jsonb,
  '[]'::jsonb,
  ARRAY[
    'cuba/antecedentes-penales',
    'cuba/opciones-visa',
    'vivir-en-chile/apostilla-traduccion'
  ]
),

(
  'cuba/antecedentes-penales',
  'Antecedentes Penales de Cuba para Trámites en Chile',
  'Antecedentes penales de Cuba para trámites en Chile',
  'Cómo obtener el certificado de antecedentes penales cubano para solicitar Residencia Temporal o Definitiva en Chile. Proceso, legalizacion y tiempos de espera.',
  '<p>El certificado de antecedentes penales es un documento obligatorio para cualquier solicitud de Residencia Temporal o Definitiva en Chile. Para los ciudadanos cubanos, el proceso de obtención y validación tiene particularidades importantes.</p>

<h2>¿Qué documento emite Cuba?</h2>
<p>Cuba emite el <strong>Certificado de Antecedentes Penales</strong> a través del <strong>Ministerio del Interior de Cuba (MININT)</strong>. El documento debe estar firmado por la autoridad competente y posteriormente validado para ser aceptado en Chile.</p>

<h2>Cómo obtenerlo estando en Chile</h2>
<p>Si ya estás en Chile, tienes dos vías principales:</p>
<ol>
  <li><strong>A través del Consulado de Cuba en Santiago:</strong> el consulado puede tramitar la solicitud del certificado de antecedentes ante las autoridades en Cuba. Los tiempos pueden ser prolongados (varias semanas o meses). Contacta directamente al consulado para conocer el procedimiento actualizado y los costos.</li>
  <li><strong>A través de un familiar en Cuba:</strong> quien puede tramitar el documento en el MININT y enviártelo. Luego debes coordinar la legalización a través del consulado.</li>
</ol>

<h2>Validación del documento</h2>
<p>Una vez emitido por el MININT, el certificado debe ser:</p>
<ol>
  <li>Autenticado por el Ministerio de Relaciones Exteriores de Cuba.</li>
  <li>Legalizado o apostillado según el procedimiento vigente.</li>
  <li>Presentado ante el SERMIG junto con el resto de la solicitud.</li>
</ol>

<h2>Tiempos estimados</h2>
<p>El proceso completo (obtención + legalización) puede tomar entre <strong>4 y 12 semanas</strong>, dependiendo de la vía elegida y la demanda en Cuba. Se recomienda iniciar este trámite con mucha anticipación.</p>

<div class="bg-amber-50 border border-amber-200 rounded-xl p-4 mt-6 text-sm text-amber-900">
  <strong>Vigencia:</strong> El SERMIG exige que el certificado no tenga más de 90 días de antigüedad al presentar la solicitud. Coordina los tiempos con cuidado.
</div>',
  'HowTo',
  'cuba',
  'cluster',
  'Equipo MigraGo',
  5,
  '2026-05-21T00:00:00Z',
  '2026-05-21T00:00:00Z',
  '[
    {"question": "¿Cuánto demora obtener los antecedentes penales de Cuba desde Chile?", "answer": "A través del Consulado de Cuba en Chile, el proceso puede tardar entre 4 y 12 semanas. Es uno de los trámites más lentos para ciudadanos cubanos y debe iniciarse con anticipación."},
    {"question": "¿El certificado de antecedentes cubano necesita traducción?", "answer": "No, el documento está en español y no requiere traducción oficial para ser presentado ante el SERMIG."}
  ]'::jsonb,
  '[
    {"name": "Contactar al Consulado de Cuba en Santiago", "text": "Comunícate con el Consulado de Cuba para conocer el procedimiento actualizado y los tiempos estimados para tramitar los antecedentes penales desde Chile."},
    {"name": "Solicitar el certificado al MININT de Cuba", "text": "A través del consulado o de un familiar en Cuba, inicia la solicitud del Certificado de Antecedentes Penales ante el Ministerio del Interior."},
    {"name": "Gestionar la legalización del documento", "text": "Una vez emitido, el certificado debe ser autenticado por el Ministerio de RR.EE. de Cuba y legalizado antes de ser válido en Chile."},
    {"name": "Presentar ante el SERMIG dentro del plazo de vigencia", "text": "Confirma que el certificado tenga menos de 90 días al momento de presentar tu solicitud de residencia."}
  ]'::jsonb,
  ARRAY[
    'cuba/documentos-cuba',
    'cuba/opciones-visa',
    'vivir-en-chile/apostilla-traduccion'
  ]
),

(
  'cuba/opciones-visa',
  'Opciones de Visa para Cubanos en Chile: Categorías y Requisitos',
  'Opciones de visa para cubanos en Chile: categorías y requisitos',
  'Cuáles son las opciones de Residencia Temporal para ciudadanos cubanos en Chile. Categorías disponibles, documentos necesarios y cómo elegir la más adecuada.',
  '<p>Cuba no es parte del MERCOSUR, por lo que los ciudadanos cubanos deben postular a las categorías ordinarias de <strong>Residencia Temporal</strong> que ofrece el SERMIG según la Ley 21.325.</p>

<h2>Opciones disponibles</h2>

<h3>1. Residencia Temporal por Contrato de Trabajo</h3>
<p>La vía más utilizada por cubanos en Chile. Requiere un contrato de trabajo firmado con un empleador chileno, con firma notarial, por un mínimo de 12 meses.</p>
<ul>
  <li>Permite trabajo solo con ese empleador inicialmente.</li>
  <li>Es renovable y puede conducir a la Residencia Definitiva tras 2 años.</li>
</ul>

<h3>2. Residencia Temporal por Vínculo Familiar</h3>
<p>Disponible si tienes:</p>
<ul>
  <li>Hijos/as con nacionalidad chilena, o</li>
  <li>Cónyuge o conviviente civil chileno/a con AUC inscrito en el Registro Civil.</li>
</ul>
<p>Esta categoría permite trabajo dependiente e independiente sin restricción de empleador.</p>

<h3>3. Residencia Temporal por Razones Humanitarias</h3>
<p>Evaluada caso a caso. El SERMIG puede otorgarla cuando hay circunstancias especiales que justifiquen la permanencia en Chile y el solicitante no califica para otras categorías.</p>

<h3>4. Residencia Temporal para Estudiantes</h3>
<p>Si tienes matrícula vigente en una institución de educación superior reconocida en Chile. Tiene restricciones para trabajar.</p>

<h2>Consideraciones especiales</h2>
<p>Algunos ciudadanos cubanos enfrentan dificultades documentales (pasaporte vencido, documentos sin posibilidad de apostilla simple) que complican la postulación. En estos casos, el SERMIG evalúa la situación de forma individual.</p>
<p>Si tu situación documental es compleja, considera asesorarte con un <strong>abogado especializado en derecho migratorio</strong> antes de presentar la solicitud.</p>

<h2>Después de la Residencia Temporal</h2>
<p>Con 2 años de Residencia Temporal continua en Chile, puedes solicitar la <strong>Residencia Definitiva</strong>, que no tiene restricciones de actividad y es permanente. Tras 5 años con Residencia Definitiva, puedes postular a la <strong>nacionalización</strong>.</p>',
  'Article',
  'cuba',
  'cluster',
  'Equipo MigraGo',
  6,
  '2026-05-21T00:00:00Z',
  '2026-05-21T00:00:00Z',
  '[
    {"question": "¿Los cubanos tienen alguna visa especial en Chile?", "answer": "No existe una visa específica para cubanos. Deben postular a las mismas categorías de Residencia Temporal que cualquier otro migrante: trabajo, familia, humanitaria, estudios o rentista."},
    {"question": "¿Puedo postular a Residencia Temporal si entré como turista?", "answer": "Sí. Puedes presentar la solicitud de Residencia Temporal estando en Chile con permiso de turismo vigente. Es importante presentar la solicitud antes de que venza tu permiso de turismo."},
    {"question": "¿Qué pasa si mi permiso de turismo venció mientras espero resolución?", "answer": "Si presentaste tu solicitud de Residencia Temporal antes del vencimiento, en general tu situación queda regularizada mientras el SERMIG resuelve. Guarda el comprobante de tu solicitud. Si ya venció sin haber presentado solicitud, considera la autodenuncia ante la PDI."}
  ]'::jsonb,
  '[]'::jsonb,
  ARRAY[
    'cuba/documentos-cuba',
    'cuba/antecedentes-penales',
    'residencia-temporal/contrato-trabajo',
    'residencia-temporal/razones-humanitarias',
    'autodenuncia/que-es-autodenuncia'
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
