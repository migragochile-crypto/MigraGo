-- Migración: Insertar artículos cluster para Bolivia, Haití y República Dominicana
-- Estos artículos viven en /paises/{pais}/{tema} y se sirven desde app/(paises)/paises/[pais]/[tema]/page.tsx

BEGIN;

-- ============================================================
-- BOLIVIA (5 clusters)
-- ============================================================

INSERT INTO articles (slug, silo, parent_slug, type, title, h1, meta_description, keyword_primary, content, schema_type, faq_items, related_slugs, country_tags, canonical, is_published, published_at)
VALUES (
  'bolivia/documentos-bolivia',
  'bolivia',
  'bolivia',
  'cluster',
  'Documentos bolivianos para trámites en Chile',
  'Documentos bolivianos para trámites en Chile',
  'Qué documentos necesitas desde Bolivia para trámites migratorios en Chile: acta de nacimiento, antecedentes, títulos y cómo apostillarlos paso a paso.',
  'documentos bolivia para chile apostilla acta nacimiento antecedentes',
  $content$<h2>Documentos clave</h2>
<ol>
<li>Acta de nacimiento (Registro de Identidad Multidocumental — RIM)</li>
<li>Certificado de antecedentes penales (DGIP / Policía Boliviana)</li>
<li>Acta de matrimonio (si aplica)</li>
<li>Diploma o certificado de estudios (para homologación)</li>
<li>Pasaporte vigente (recomendado)</li>
</ol>
<p>Cada uno de estos documentos debe presentarse preferentemente apostillado cuando sea posible.</p>
<h2>Proceso recomendado</h2>
<ol>
<li>Solicita y descarga los documentos oficiales en Bolivia (RIM, DGIP, Ministerio de Educación).</li>
<li>Pide apostilla en el Ministerio de Relaciones Exteriores de Bolivia o usa el trámite online en TRAMITE.MINREX.GOB.BO.</li>
<li>Envía una copia certificada a Chile si no viajas personalmente.</li>
<li>Guarda recibos y comprobantes de pago: el SERMIG puede pedirlos en el expediente.</li>
</ol>
<h2>Tiempos y costos (estimados)</h2>
<ul>
<li>Emisión de acta de nacimiento: 1–5 días</li>
<li>Certificado de antecedentes: 2–5 días</li>
<li>Apostilla (Ministerio): 3–7 días (online suele ser más rápido)</li>
<li>Envío internacional: 3–10 días según servicio postal</li>
</ul>$content$,
  'FAQPage',
  '[{"question":"¿Necesito apostillar los documentos?","answer":"Sí. Bolivia es signataria de la Convención de La Haya, por lo que la apostilla es el mecanismo recomendado para que tus documentos sean reconocidos por autoridades chilenas."},{"question":"¿Puedo tramitar todo desde Chile?","answer":"Sí, muchos trámites se pueden iniciar mediante un apoderado en Bolivia o a través del sistema online del Ministerio de Relaciones Exteriores de Bolivia, aunque algunos documentos requieren presencia personal para su emisión original."}]'::jsonb,
  ARRAY['bolivia/apostilla', 'bolivia/antecedentes-penales', 'bolivia/visa-temporaria'],
  ARRAY['bolivia'],
  '/paises/bolivia/documentos-bolivia',
  TRUE,
  NOW()
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO articles (slug, silo, parent_slug, type, title, h1, meta_description, keyword_primary, content, schema_type, faq_items, related_slugs, country_tags, canonical, is_published, published_at)
VALUES (
  'bolivia/antecedentes-penales',
  'bolivia',
  'bolivia',
  'cluster',
  'Certificado de antecedentes penales (Bolivia) para Chile',
  'Certificado de antecedentes penales (Bolivia) para trámites en Chile',
  'Cómo obtener y apostillar el certificado de antecedentes penales en Bolivia para usar en trámites migratorios en Chile. Pasos, tiempos y costos.',
  'antecedentes penales bolivia apostilla chile certificado dgip policia',
  $content$<h2>Pasos para obtenerlo</h2>
<ol>
<li>Solicitarlo en persona o por la web en policia.bo (según disponibilidad local).</li>
<li>Verificar que incluya la firma y timbre oficial.</li>
<li>Apostillarlo en el Ministerio de Relaciones Exteriores de Bolivia.</li>
<li>Traducir solo si el documento está en otro idioma (no suele aplicar para Bolivia).</li>
</ol>
<h2>Tiempo estimado</h2>
<ul>
<li>Emisión: 2–5 días</li>
<li>Apostilla: 2–4 días adicionales</li>
</ul>
<h2>Puntos importantes</h2>
<ul>
<li>La mayoría de trámites exige certificados con emisión no mayor a 90 días.</li>
<li>Algunas oficinas permiten copia digital, pero el SERMIG suele requerir versión apostillada o copia certificada.</li>
<li>Si tramitas desde Chile, puedes hacerlo mediante apoderado con poder notarial.</li>
</ul>$content$,
  'FAQPage',
  '[{"question":"¿Cuánto tiempo antes debo renovar mi certificado?","answer":"Renueva tu certificado si tiene más de 90 días antes de adjuntarlo al trámite migratorio."},{"question":"¿Puedo pedirlo desde Chile?","answer":"Sí, por medio de un apoderado o mediante sistemas online de la Policía Boliviana; después tramita la apostilla y el envío internacional."}]'::jsonb,
  ARRAY['bolivia/documentos-bolivia', 'bolivia/apostilla'],
  ARRAY['bolivia'],
  '/paises/bolivia/antecedentes-penales',
  TRUE,
  NOW()
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO articles (slug, silo, parent_slug, type, title, h1, meta_description, keyword_primary, content, schema_type, faq_items, related_slugs, country_tags, canonical, is_published, published_at)
VALUES (
  'bolivia/apostilla',
  'bolivia',
  'bolivia',
  'cluster',
  'Apostilla y legalización de documentos desde Bolivia',
  'Apostilla y legalización de documentos desde Bolivia',
  'Cómo apostillar documentos bolivianos para trámites en Chile: guía del Ministerio de Relaciones Exteriores, trámite online y pasos prácticos.',
  'apostilla bolivia chile como apostillar documentos bolivianos',
  $content$<h2>¿Dónde apostillar?</h2>
<ul>
<li>Ministerio de Relaciones Exteriores (La Paz, Cochabamba, Santa Cruz, Potosí)</li>
<li>Notarías habilitadas que gestionan apostilla ante el Ministerio</li>
<li>Trámite online: TRAMITE.MINREX.GOB.BO (documentos digitales)</li>
</ul>
<h2>Checklist rápida</h2>
<ul>
<li>Documento original escaneado en alta resolución</li>
<li>Comprobante de pago bancario</li>
<li>Datos del solicitante y dirección de envío</li>
<li>Poder notarial si un tercero gestiona por ti</li>
</ul>
<h2>Errores comunes</h2>
<ul>
<li>Enviar copia no certificada (no válida para apostilla).</li>
<li>No guardar comprobante de pago.</li>
<li>Confundir apostilla con legalización consular: Haití no es signatario del Convenio de La Haya, Bolivia sí.</li>
</ul>$content$,
  'Article',
  '[]'::jsonb,
  ARRAY['bolivia/documentos-bolivia', 'bolivia/visa-temporaria'],
  ARRAY['bolivia'],
  '/paises/bolivia/apostilla',
  TRUE,
  NOW()
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO articles (slug, silo, parent_slug, type, title, h1, meta_description, keyword_primary, content, schema_type, faq_items, related_slugs, country_tags, canonical, is_published, published_at)
VALUES (
  'bolivia/visa-temporaria',
  'bolivia',
  'bolivia',
  'cluster',
  'Visas temporarias para bolivianos — opciones y requisitos',
  'Visas temporarias para bolivianos — opciones y requisitos',
  'Opciones de visa temporaria para ciudadanos bolivianos en Chile: Visa MERCOSUR, contrato de trabajo, reagrupación familiar y pasos necesarios.',
  'visa temporaria bolivianos chile mercosur contrato reagrupacion',
  $content$<h2>Opciones principales</h2>
<h3>Visa MERCOSUR</h3>
<p>Elegible para ciudadanos bolivianos. No requiere contrato ni vínculo familiar. Documentos típicos: pasaporte, certificado de antecedentes, acta de nacimiento apostillada. Plazo de resolución: variable, históricamente 60–180 días.</p>
<h3>Visa por Contrato de Trabajo</h3>
<p>Requiere oferta formal y contrato firmado por empleador chileno. Útil si el objetivo principal es trabajar y cotizar en Chile.</p>
<h3>Visa de Reagrupación Familiar</h3>
<p>Para cónyuge, pareja o hijos de residentes o ciudadanos chilenos. Requiere actas de matrimonio o partidas de nacimiento apostilladas.</p>
<h3>Visa por Estudios</h3>
<p>Para estudiantes inscritos en instituciones acreditadas en Chile.</p>
<h2>Recomendaciones</h2>
<ul>
<li>Si puedes tramitar documentación en Bolivia, apostilla antes de presentar la solicitud.</li>
<li>Si estás en Chile y necesitas regularizarte, consulta la <a href="/autodenuncia">guía de autodenuncia</a> como paso previo.</li>
</ul>$content$,
  'FAQPage',
  '[{"question":"¿Los bolivianos pueden optar a Visa MERCOSUR?","answer":"Sí. Bolivia tiene acceso a la Visa MERCOSUR, que suele ser más sencilla en requisitos que otras categorías."},{"question":"¿Qué visa es más rápida?","answer":"No hay garantía de rapidez; los plazos dependen de la carga del SERMIG. La Visa MERCOSUR suele ser ágil en la práctica, pero verifica el estado en el portal de trámites."}]'::jsonb,
  ARRAY['bolivia/documentos-bolivia', 'bolivia/trabajar-en-chile', 'bolivia/antecedentes-penales'],
  ARRAY['bolivia'],
  '/paises/bolivia/visa-temporaria',
  TRUE,
  NOW()
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO articles (slug, silo, parent_slug, type, title, h1, meta_description, keyword_primary, content, schema_type, faq_items, related_slugs, country_tags, canonical, is_published, published_at)
VALUES (
  'bolivia/trabajar-en-chile',
  'bolivia',
  'bolivia',
  'cluster',
  'Trabajar en Chile siendo boliviano: requisitos y pasos',
  'Trabajar en Chile siendo boliviano: requisitos y pasos',
  'Requisitos para trabajar en Chile para ciudadanos bolivianos: contrato, cotizaciones, trámites y recomendaciones prácticas.',
  'trabajar en chile bolivianos contrato requisitos',
  $content$<h2>Requisitos comunes</h2>
<ul>
<li>Oferta laboral formal y contrato de trabajo firmado.</li>
<li>Documento de identidad y pasaporte vigente.</li>
<li>Certificado de antecedentes apostillado.</li>
<li>Visa temporaria compatible con trabajo o permiso laboral concedido por el SERMIG.</li>
</ul>
<h2>Pasos sugeridos</h2>
<ol>
<li>Acepta una oferta laboral por escrito.</li>
<li>Revisa que el empleador esté dispuesto a contratar con contrato y cotizar en AFP y Salud.</li>
<li>Presenta solicitud de visa (si aplica) y adjunta documentación apostillada.</li>
<li>Una vez contratado, verifica el alta en el sistema de cotizaciones (AFP e ISAPRE).</li>
</ol>
<h2>Casos especiales</h2>
<ul>
<li><strong>Trabajos informales:</strong> no garantizan regularidad migratoria. Prioriza contratos que incluyan cotizaciones.</li>
<li><strong>Si ya estás en Chile sin visa:</strong> consulta la opción de <a href="/autodenuncia">regularización y autodenuncia</a> como paso previo.</li>
</ul>$content$,
  'FAQPage',
  '[{"question":"¿Puedo trabajar con Visa MERCOSUR?","answer":"Sí, la Visa MERCOSUR permite residir y trabajar; revisa requisitos específicos y documentales en el SERMIG."},{"question":"¿Qué pasa si trabajo sin contrato?","answer":"Trabajar sin contrato no garantiza acceso a cotizaciones ni protección laboral; puede complicar trámites migratorios posteriores."}]'::jsonb,
  ARRAY['bolivia/visa-temporaria', 'bolivia/documentos-bolivia'],
  ARRAY['bolivia'],
  '/paises/bolivia/trabajar-en-chile',
  TRUE,
  NOW()
) ON CONFLICT (slug) DO NOTHING;

-- ============================================================
-- HAITÍ (4 clusters)
-- ============================================================

INSERT INTO articles (slug, silo, parent_slug, type, title, h1, meta_description, keyword_primary, content, schema_type, faq_items, related_slugs, country_tags, canonical, is_published, published_at)
VALUES (
  'haiti/pasaporte',
  'haiti',
  'haiti',
  'cluster',
  'Pasaporte haitiano: consideraciones para viajar a Chile',
  'Pasaporte haitiano: consideraciones para viajar a Chile',
  'Requisitos del pasaporte haitiano para viajar a Chile: validez, renovación, y consejos prácticos.',
  'pasaporte haitiano viajar a chile validez renovacion',
  $content$<h2>Puntos clave</h2>
<ul>
<li>Asegura que el pasaporte tenga al menos 6 meses de validez para solicitar visas.</li>
<li>Si necesitas renovar desde Chile, contacta la representación diplomática haitiana más cercana.</li>
<li>Conserva copias certificadas y escaneos antes de viajar.</li>
</ul>
<h2>Renovación desde Chile</h2>
<p>Comunícate con el consulado de Haití en Chile para conocer los requisitos actualizados de renovación. Los tiempos y documentos varían según el estado del pasaporte actual.</p>$content$,
  'FAQPage',
  '[{"question":"¿Puedo renovar el pasaporte desde Chile?","answer":"Depende de la disponibilidad consular; contacta la representación de Haití en Chile o consulados cercanos para conocer el procedimiento actual."}]'::jsonb,
  ARRAY['haiti/documentos-traducidos'],
  ARRAY['haiti'],
  '/paises/haiti/pasaporte',
  TRUE,
  NOW()
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO articles (slug, silo, parent_slug, type, title, h1, meta_description, keyword_primary, content, schema_type, faq_items, related_slugs, country_tags, canonical, is_published, published_at)
VALUES (
  'haiti/documentos-traducidos',
  'haiti',
  'haiti',
  'cluster',
  'Traducción y legalización de documentos haitianos',
  'Traducción y legalización de documentos haitianos',
  'Cómo traducir y legalizar documentos haitianos para trámites en Chile: traductores jurados, apostilla y consejos para evitar rechazos.',
  'traduccion documentos haitianos chile apostilla traductor jurado',
  $content$<h2>Pasos básicos</h2>
<ol>
<li>Verifica si tu documento necesita apostilla. Haití no es signatario universal de la Convención de La Haya — confirma con el consulado.</li>
<li>Si no aplica apostilla, revisa los requisitos de legalización consular.</li>
<li>Contrata un traductor jurado aceptado por autoridades chilenas si el documento está en francés o criollo haitiano.</li>
</ol>
<h2>Recomendaciones</h2>
<ul>
<li>Antes de traducir, confirma con la entidad receptora en Chile (SERMIG o institución educativa) si aceptan al profesional que piensas usar.</li>
<li>Guarda ambos archivos — original y traducido — con firmas y sellos visibles.</li>
<li>La legalización consular suele requerirse cuando la apostilla no aplica.</li>
</ul>$content$,
  'FAQPage',
  '[{"question":"¿Haití requiere apostilla?","answer":"Haití no es signatario universal del Convenio de La Haya; muchos trámites requieren legalización consular en lugar de apostilla. Confirma con el consulado chileno antes de gestionar tus documentos."}]'::jsonb,
  ARRAY['haiti/pasaporte', 'haiti/regularizacion'],
  ARRAY['haiti'],
  '/paises/haiti/documentos-traducidos',
  TRUE,
  NOW()
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO articles (slug, silo, parent_slug, type, title, h1, meta_description, keyword_primary, content, schema_type, faq_items, related_slugs, country_tags, canonical, is_published, published_at)
VALUES (
  'haiti/regularizacion',
  'haiti',
  'haiti',
  'cluster',
  'Regularización en Chile para haitianos',
  'Regularización en Chile para haitianos',
  'Opciones para regularizar la situación migratoria en Chile siendo haitiano: visas disponibles, autodenuncia y recursos.',
  'regularizacion haitianos chile visa opciones autodenuncia',
  $content$<h2>Vías habituales</h2>
<ul>
<li><strong>Visa temporaria</strong> (por trabajo o estudios)</li>
<li><strong>Reagrupación familiar</strong> para cónyuge, hijos o pareja</li>
<li>Procedimientos administrativos de regularización (según disponibilidad normativa vigente)</li>
</ul>
<h2>Autodenuncia como alternativa</h2>
<p>La <a href="/autodenuncia">autodenuncia migratoria</a> es una opción que puede permitir regularizar la situación de quienes se encuentran en Chile de forma irregular. Consulta la guía del sitio y asesórate con entidades legales antes de iniciar el proceso.</p>
<h2>Recomendaciones</h2>
<ul>
<li>Reúne y legaliza todos tus documentos antes de iniciar cualquier trámite.</li>
<li>Consulta con organizaciones de apoyo migrante en Chile para orientación personalizada.</li>
</ul>$content$,
  'FAQPage',
  '[{"question":"¿Qué es la autodenuncia?","answer":"La autodenuncia es el procedimiento administrativo para informar una situación migratoria irregular y solicitar alternativas de regularización; sus efectos dependen del proceso y no garantizan éxito automático."}]'::jsonb,
  ARRAY['haiti/documentos-traducidos', 'haiti/reagrupacion-familiar'],
  ARRAY['haiti'],
  '/paises/haiti/regularizacion',
  TRUE,
  NOW()
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO articles (slug, silo, parent_slug, type, title, h1, meta_description, keyword_primary, content, schema_type, faq_items, related_slugs, country_tags, canonical, is_published, published_at)
VALUES (
  'haiti/reagrupacion-familiar',
  'haiti',
  'haiti',
  'cluster',
  'Reagrupación familiar para haitianos en Chile',
  'Reagrupación familiar para haitianos en Chile',
  'Requisitos y pasos para procesos de reagrupación familiar (pareja, hijos) para haitianos que buscan reunirse con familiares en Chile.',
  'reagrupacion familiar haitianos chile requisitos pasos',
  $content$<h2>Documentos comunes</h2>
<ul>
<li>Actas de nacimiento apostilladas o legalizadas</li>
<li>Certificados de matrimonio (si aplica)</li>
<li>Documentación de residencia del familiar en Chile (cédula o visa vigente)</li>
</ul>
<h2>Recomendaciones</h2>
<ul>
<li>Valida traducciones y legalizaciones antes de presentar la solicitud al SERMIG.</li>
<li>Incluye evidencia adicional — contratos, certificados de convivencia — si el vínculo no es evidente en los documentos.</li>
<li>Los plazos son variables; pueden ir de 3 a 9 meses según la carga administrativa y la calidad del expediente.</li>
</ul>$content$,
  'FAQPage',
  '[{"question":"¿Cuánto demora la reagrupación familiar?","answer":"Los plazos son variables; pueden ir de 3 a 9 meses, según la carga administrativa del SERMIG y la calidad del expediente presentado."}]'::jsonb,
  ARRAY['haiti/regularizacion'],
  ARRAY['haiti'],
  '/paises/haiti/reagrupacion-familiar',
  TRUE,
  NOW()
) ON CONFLICT (slug) DO NOTHING;

-- ============================================================
-- REPÚBLICA DOMINICANA (4 clusters)
-- ============================================================

INSERT INTO articles (slug, silo, parent_slug, type, title, h1, meta_description, keyword_primary, content, schema_type, faq_items, related_slugs, country_tags, canonical, is_published, published_at)
VALUES (
  'republica-dominicana/documentos-republica-dominicana',
  'republica-dominicana',
  'republica-dominicana',
  'cluster',
  'Documentos dominicanos para trámites en Chile',
  'Documentos dominicanos para trámites en Chile',
  'Qué documentos necesitan los dominicanos para trámites migratorios en Chile y cómo apostillarlos.',
  'documentos republica dominicana apostilla chile requisitos',
  $content$<h2>Documentos más solicitados</h2>
<ul>
<li>Acta de nacimiento</li>
<li>Certificado de antecedentes penales</li>
<li>Acta de matrimonio (si aplica)</li>
<li>Títulos y certificados académicos</li>
</ul>
<h2>Pasos y recomendaciones</h2>
<ol>
<li>Emite los documentos originales en República Dominicana (JCE, Ministerio de Educación, Procuraduría).</li>
<li>Solicita apostilla en la JCE o en el Ministerio de Relaciones Exteriores de República Dominicana.</li>
<li>Conserva comprobantes de pago y versiones electrónicas de cada documento.</li>
</ol>
<h2>Apostilla en República Dominicana</h2>
<p>Los lugares más comunes para apostillar son la Junta Central Electoral (JCE) y el Ministerio de Relaciones Exteriores. Para documentos personales — acta de nacimiento, antecedentes penales, diploma — la apostilla es el método válido para que Chile reconozca el documento.</p>$content$,
  'FAQPage',
  '[{"question":"¿Cuánto tardan los trámites de apostilla?","answer":"Los tiempos varían; suele oscilar entre 3 y 14 días según el organismo y el tipo de trámite en República Dominicana."}]'::jsonb,
  ARRAY['republica-dominicana/requisitos', 'republica-dominicana/visa-consular'],
  ARRAY['republica-dominicana'],
  '/paises/republica-dominicana/documentos-republica-dominicana',
  TRUE,
  NOW()
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO articles (slug, silo, parent_slug, type, title, h1, meta_description, keyword_primary, content, schema_type, faq_items, related_slugs, country_tags, canonical, is_published, published_at)
VALUES (
  'republica-dominicana/requisitos',
  'republica-dominicana',
  'republica-dominicana',
  'cluster',
  'Requisitos para entrar y residir en Chile (República Dominicana)',
  'Requisitos para entrar y residir en Chile siendo dominicano',
  'Requisitos generales para ciudadanos dominicanos que viajan o buscan residir en Chile: visas, documentación y pasos iniciales.',
  'requisitos dominicanos chile visa requisitos documentos',
  $content$<h2>Recomendaciones iniciales</h2>
<ul>
<li>Asegura pasaporte vigente y copias certificadas antes de viajar.</li>
<li>Si viajas por trabajo, presenta oferta y contrato cuando correspondan.</li>
<li>Apostilla documentos en República Dominicana antes de viajar.</li>
</ul>
<h2>Tipos de estadía</h2>
<ul>
<li><strong>Turismo (hasta 90 días):</strong> no requiere visa para ciudadanos dominicanos en Chile.</li>
<li><strong>Trabajo o estudios:</strong> debes solicitar una Residencia Temporal o visa consular antes de viajar.</li>
<li><strong>Residencia prolongada:</strong> una vez en Chile, gestiona tu trámite ante el SERMIG.</li>
</ul>$content$,
  'FAQPage',
  '[{"question":"¿Necesito visa para entrar a Chile?","answer":"Como turista puedes permanecer hasta 90 días sin visa. Si planeas trabajar, estudiar o residir, debes solicitar una Residencia Temporal o visa consular antes de viajar."}]'::jsonb,
  ARRAY['republica-dominicana/documentos-republica-dominicana'],
  ARRAY['republica-dominicana'],
  '/paises/republica-dominicana/requisitos',
  TRUE,
  NOW()
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO articles (slug, silo, parent_slug, type, title, h1, meta_description, keyword_primary, content, schema_type, faq_items, related_slugs, country_tags, canonical, is_published, published_at)
VALUES (
  'republica-dominicana/visa-consular',
  'republica-dominicana',
  'republica-dominicana',
  'cluster',
  'Visa consular para dominicanos: cómo solicitarla',
  'Visa consular para dominicanos: cómo solicitarla',
  'Guía para solicitar una visa consular desde República Dominicana: documentos, procesos y consejos prácticos.',
  'visa consular republica dominicana chile solicitar documentos',
  $content$<h2>Pasos prácticos</h2>
<ol>
<li>Revisa los requisitos actualizados en el consulado chileno más cercano en República Dominicana.</li>
<li>Junta todos los documentos apostillados y tradúcelos si están en otro idioma.</li>
<li>Agenda cita consular y lleva copias impresas y digitales de cada documento.</li>
</ol>
<h2>Documentos habituales</h2>
<ul>
<li>Pasaporte dominicano vigente (mínimo 6 meses de validez)</li>
<li>Acta de nacimiento apostillada</li>
<li>Certificado de antecedentes penales apostillado</li>
<li>Contrato de trabajo u oferta laboral (para visa por trabajo)</li>
<li>Comprobante de solvencia económica (si aplica)</li>
</ul>$content$,
  'FAQPage',
  '[{"question":"¿Necesito traducciones juradas?","answer":"Solo si un documento no está en español; confirma si el consulado acepta traducciones locales o requiere traductor jurado certificado."}]'::jsonb,
  ARRAY['republica-dominicana/documentos-republica-dominicana', 'republica-dominicana/requisitos'],
  ARRAY['republica-dominicana'],
  '/paises/republica-dominicana/visa-consular',
  TRUE,
  NOW()
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO articles (slug, silo, parent_slug, type, title, h1, meta_description, keyword_primary, content, schema_type, faq_items, related_slugs, country_tags, canonical, is_published, published_at)
VALUES (
  'republica-dominicana/faq',
  'republica-dominicana',
  'republica-dominicana',
  'cluster',
  'Preguntas frecuentes para dominicanos que migran a Chile',
  'Preguntas frecuentes para dominicanos que migran a Chile',
  'Preguntas frecuentes para dominicanos sobre migración a Chile: visas, apostilla, documentos y trámites consulares.',
  'faq republica dominicana chile migracion visa documentos apostilla',
  $content$<h2>¿Necesito visa para entrar a Chile desde República Dominicana?</h2>
<p>Si entras como turista, puedes permanecer en Chile hasta 90 días sin visa. Si tu plan es trabajar, estudiar o residir, debes solicitar una Residencia Temporal o una visa consular antes de viajar.</p>
<h2>¿Cómo apostillo un documento dominicano para usarlo en Chile?</h2>
<p>Debes apostillar el documento en República Dominicana. Los lugares más comunes son la Junta Central Electoral (JCE) y el Ministerio de Relaciones Exteriores. Para documentos personales como acta de nacimiento, antecedentes penales o diploma, la apostilla es el método válido para que Chile reconozca el documento.</p>
<h2>¿Qué documentos dominicanos son imprescindibles para una visa consular?</h2>
<p>Los documentos más solicitados son: acta de nacimiento, certificado de antecedentes penales, pasaporte dominicano vigente, acta de matrimonio (si corresponde) y títulos o certificados académicos para trámites de trabajo o estudio.</p>
<h2>¿Qué hago si mi pasaporte o cédula dominicana está vencido?</h2>
<p>Renueva tu pasaporte o cédula con la JCE en República Dominicana antes de presentar el expediente. Si estás en Chile, contacta el Consulado de República Dominicana en Santiago para orientación.</p>
<h2>¿Puedo usar un apoderado para apostillar desde Chile?</h2>
<p>Sí. Un apoderado en República Dominicana puede llevar tus documentos a la JCE o al Ministerio de Relaciones Exteriores y gestionar la apostilla en tu nombre. Asegúrate de que el poder notarial sea válido y esté correctamente firmado.</p>$content$,
  'FAQPage',
  '[{"question":"¿Necesito visa para entrar a Chile desde República Dominicana?","answer":"Como turista puedes permanecer hasta 90 días sin visa. Si planeas trabajar, estudiar o residir, debes solicitar una Residencia Temporal o visa consular antes de viajar."},{"question":"¿Cómo apostillo un documento dominicano para Chile?","answer":"Apostilla documentos en la JCE o en el Ministerio de Relaciones Exteriores de República Dominicana. Esto valida el documento para trámites en Chile."},{"question":"¿Qué documentos dominicanos son imprescindibles para una visa consular?","answer":"Los más comunes son acta de nacimiento, antecedentes penales, pasaporte vigente, acta de matrimonio si corresponde y títulos académicos si el trámite lo exige."},{"question":"¿Qué hago si mi pasaporte o cédula dominicana está vencido?","answer":"Renueva los documentos en la JCE de República Dominicana antes de presentar el expediente. Si estás en Chile, contacta al Consulado dominicano en Santiago para orientación."},{"question":"¿Puedo usar un apoderado para apostillar desde Chile?","answer":"Sí. Un apoderado autorizado en República Dominicana puede gestionar la apostilla en tu nombre, siempre que el poder notarial sea válido."}]'::jsonb,
  ARRAY['republica-dominicana/documentos-republica-dominicana', 'republica-dominicana/requisitos', 'republica-dominicana/visa-consular'],
  ARRAY['republica-dominicana'],
  '/paises/republica-dominicana/faq',
  TRUE,
  NOW()
) ON CONFLICT (slug) DO NOTHING;

COMMIT;
