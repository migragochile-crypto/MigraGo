-- ============================================================
-- MigraciónChile — Seed: Llenar gaps geográficos
-- Bolivia y República Dominicana: documentos específicos
-- Artículos a crear:
--   1. bolivia/documentos-bolivia: documentos y apostilla
--   2. republica-dominicana/documentos-republica-dominicana: documentos y apostilla
--   3. haiti/visas-dominicanas: opciones específicas de visa para haitianos
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

-- ──────────────────────────────────────────────────────────
-- 1. bolivia/documentos-bolivia
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'bolivia/documentos-bolivia',
  'bolivia',
  'bolivia',
  'cluster',
  'Documentos Bolivianos para Trámites en Chile: Apostilla y Traducción 2026',
  'Cómo Legalizar Documentos Bolivianos para Visas en Chile',
  'Guía completa para apostillar y traducir documentos bolivianos para trámites migratorios en Chile. Procedimiento con embajadas, plazos y documentos más solicitados.',
  'documentos bolivianos apostilla chile traduccion',
  $x1$
<p>Bolivia es miembro del Convenio de La Haya (1961), lo que facilita la legalización de documentos para uso en Chile. Los documentos bolivianos legalizados en Bolivia con apostilla son reconocidos automáticamente por el SERMIG. Esta guía explica el proceso paso a paso.</p>

<h2>¿Qué es la apostilla?</h2>
<p>La apostilla es un certificado emitido por autoridades de un país, que autentica la firma, el sello o la firma y sello de un funcionario público en un documento. Es parte del Convenio de La Haya (1961). Los documentos apostillados en Bolivia son válidos en Chile sin necesidad de autenticación consular adicional.</p>

<h2>¿Dónde se apostillan documentos en Bolivia?</h2>
<p>Los documentos se apostillan en:</p>
<ul>
  <li><strong>Ministerio de Relaciones Exteriores de Bolivia</strong> (La Paz, Cochabamba, Santa Cruz, Potosí): gestión directa o virtual (desde enero 2020 se permite trámite online).</li>
  <li><strong>Notarías habilitadas:</strong> algunas notarías pueden gestionar apostilla ante el Ministerio.</li>
  <li><strong>Embajada o Consulado de Bolivia en Chile:</strong> es posible apostillar allí si tienes el documento en mano en Chile (más lento, evita si puedes hacerlo en Bolivia).</li>
</ul>

<h3>Trámite online (recomendado si estás fuera de Bolivia)</h3>
<p>El Ministerio de Relaciones Exteriores de Bolivia permite solicitar apostilla online mediante su sistema <strong>TRAMITE.MINREX.GOB.BO</strong>. Requiere:</p>
<ul>
  <li>Cédula de identidad o pasaporte boliviano vigente</li>
  <li>Foto digital del documento a apostillar (frente y reverso si aplica)</li>
  <li>Comprobante de pago (transferencia bancaria a cuenta del Ministerio)</li>
  <li>Plazo: 3-5 días hábiles desde el pago</li>
  <li>Entrega: por correo a tu dirección en Chile (costo de envío a cargo)</li>
</ul>

<h2>Documentos más solicitados y cómo apostillarlos</h2>

<h3>1. Acta de Nacimiento (Certificado de Nacimiento)</h3>
<p>Emitido por el <strong>Registro de Identidad Multidocumental (RIM)</strong> en Bolivia (antes Registro Civil).</p>
<ul>
  <li><strong>Cómo obtenerlo:</strong> en persona en cualquier oficina del RIM en Bolivia, o por correo si estás fuera.</li>
  <li><strong>Cómo apostillarlo:</strong> en el Ministerio de Relaciones Exteriores. Pueden apostillar hasta 5 copias del mismo documento en una sola gestión.</li>
  <li><strong>Plazo:</strong> 3-5 días hábiles</li>
  <li><strong>Costo:</strong> variable según región, ~Bs. 30-50 (aproximadamente)</li>
</ul>

<h3>2. Certificado de Antecedentes Penales (Certificado de Conducta)</h3>
<p>Emitido por la <strong>Dirección General de Identificación Personal (DGIP)</strong> de la Policía Boliviana.</p>
<ul>
  <li><strong>Cómo obtenerlo:</strong> en persona o por poder notarial en cualquier DGIP de Bolivia. Desde 2023, se puede solicitar online en <strong>policia.bo</strong>.</li>
  <li><strong>Cómo apostillarlo:</strong> en el Ministerio de Relaciones Exteriores (el certificado ya sale con firma de la Policía, listo para apostillar).</li>
  <li><strong>Plazo:</strong> emisión 2-3 días, apostilla 2-3 días adicionales</li>
  <li><strong>Costo:</strong> ~Bs. 20-30 + ~Bs. 40 por apostilla</li>
</ul>

<h3>3. Acta de Matrimonio (si aplica)</h3>
<p>Emitido por el RIM cuando el matrimonio fue registrado en Bolivia. Si fue matrimonio religioso sin registro posterior, consulta con el SERMIG sobre documentos alternativos.</p>
<ul>
  <li><strong>Cómo obtenerlo:</strong> en el RIM (en La Paz o en la ciudad de registro).</li>
  <li><strong>Cómo apostillarlo:</strong> en el Ministerio (mismo proceso que acta de nacimiento).</li>
  <li><strong>Plazo:</strong> 3-5 días</li>
</ul>

<h3>4. Diploma o Certificado de Estudios</h3>
<p>Emitido por el Ministerio de Educación de Bolivia o por la institución educativa (universidad, colegio, etc.).</p>
<ul>
  <li><strong>Cómo obtenerlo:</strong> en el Ministerio de Educación o directamente en la institución. Para títulos universitarios, requiere firma del rector u otro funcionario autorizado.</li>
  <li><strong>Cómo apostillarlo:</strong> en el Ministerio de Relaciones Exteriores.</li>
  <li><strong>Plazo:</strong> 3-5 días</li>
  <li><strong>Nota:</strong> si planeas homologar tu título en Chile, además de apostilla necesitarás traducción jurada.</li>
</ul>

<h3>5. Pasaporte Boliviano</h3>
<p>Es difícil apostillar el pasaporte mismo. Si necesitas acreditar tu identidad, usa el acta de nacimiento apostillada + copia del pasaporte (o usa pasaporte como documento de respaldo pero no como documento apostillable).</p>

<h2>Traducción de documentos</h2>
<p>Los documentos en español boliviano generalmente NO requieren traducción para Chile (ambos países usan español). Si el documento tiene términos técnicos específicos, algunos traductores jurados pueden proporcionar una traducción "para mayor certeza legal", pero no es obligatorio.</p>
<p>Sin embargo, si la autoridad chilena (SERMIG) lo exige o si quieres evitar discusiones, puedes usar un <strong>traductor jurado</strong> — ver registro en <a href="https://www.minrel.gob.cl" target="_blank" rel="noopener noreferrer">minrel.gob.cl</a>. El costo es ~CLP 30.000-50.000 por documento.</p>

<h2>Organización de los trámites</h2>
<p>Orden recomendado:</p>
<ol>
  <li><strong>En Bolivia:</strong> obtén acta de nacimiento + antecedentes penales + diploma (si aplica)</li>
  <li><strong>En Bolivia:</strong> apostilla todos simultáneamente en Ministerio (online o presencial)</li>
  <li><strong>Envío a Chile:</strong> por correo de Bolivia a tu dirección en Chile (o envíaselo a ti mismo)</li>
  <li><strong>En Chile:</strong> si el SERMIG solicita traducción, usa traductor jurado (raro pero posible)</li>
  <li><strong>En Chile:</strong> presenta los documentos al SERMIG para tu trámite de visa</li>
</ol>

<h2>Plazos totales estimados</h2>
<ul>
  <li><strong>Si tienes alguien en Bolivia:</strong> 7-10 días (obtención + apostilla + envío)</li>
  <li><strong>Si lo haces online desde Chile:</strong> 10-15 días (solicitud + apostilla + envío postal)</li>
</ul>

<h2>Costos estimados (total)</h2>
<ul>
  <li>Acta de nacimiento + antecedentes: Bs. 50-80 (~USD 7-12)</li>
  <li>Apostillas (2-3 documentos): Bs. 100-150 (~USD 15-22)</li>
  <li>Envío postal Bolivia-Chile: Bs. 150-250 (~USD 22-36)</li>
  <li><strong>Total:</strong> ~USD 45-70 (muy accesible comparado con obtener documentos en otros países)</li>
</ul>

<h2>Dificultades específicas para bolivianos</h2>

<h3>Sin registro de nacimiento</h3>
<p>Algunos ciudadanos bolivianos (especialmente de zonas rurales) no tienen acta de nacimiento registrada. En este caso:</p>
<ul>
  <li>Solícita al RIM un <strong>"Acta de Reconocimiento"</strong> o acude a tu municipalidad para un trámite de rectificación o asiento tardío (esto puede llevar más tiempo).</li>
  <li>Consulta con el SERMIG si acepta otros documentos (cédula de identidad como documento de identidad primario, aunque no es lo ideal).</li>
</ul>

<h3>Pasaporte boliviano vencido</h3>
<p>Si tu pasaporte está vencido pero está en Bolivia, puedes renovarlo en cualquier DGIP o en la Embajada/Consulado de Bolivia en Chile. Para renovación remota desde Chile, comunícate con el Consulado de Bolivia en Santiago.</p>

<h3>Cédula de identidad (no pasaporte)</h3>
<p>Muchos bolivianos usan cédula de identidad en lugar de pasaporte. Para viajar y tramitar visas en Chile, se acepta la cédula para ingreso terrestre pero el SERMIG generalmente requiere pasaporte para el trámite de visa. Prioriza renovar/obtener pasaporte antes de solicitar visa.</p>

<h2>Consulate de Bolivia en Chile</h2>
<p>Si necesitas ayuda:</p>
<ul>
  <li><strong>Consulado de Bolivia en Santiago:</strong> Avenida Andrés Bello 2547, piso 4, Las Condes | Tel: +56 2 2208 0717 | <a href="https://www.cancilleria.gob.bo" target="_blank" rel="noopener noreferrer">cancilleria.gob.bo</a></li>
  <li>Horarios: Lunes a viernes, 9:00-13:00 (consultas)</li>
</ul>

<h2>Siguientes pasos</h2>
<p>Una vez tengas los documentos apostillados, el siguiente paso es elegir tu categoría de visa:</p>
<ul>
  <li><a href="/visa-temporaria/mercosur">Visa MERCOSUR</a> (opción más fácil para bolivianos)</li>
  <li><a href="/visa-temporaria">Ver todas las opciones de visa temporaria</a></li>
</ul>
  $x1$,
  '[
    {
      "question": "¿Los documentos bolivianos necesitan traducción en Chile?",
      "answer": "Generalmente no. Bolivia y Chile usan español, así que los documentos en español boliviano se entienden directamente. Excepción: si contienen terminología muy específica o si el SERMIG lo solicita expresamente (raro). En ese caso, usarías un traductor jurado."
    },
    {
      "question": "¿Cuánto cuesta apostillar en Bolivia?",
      "answer": "El costo varía pero es bajo: entre Bs. 100-150 (~USD 15-22) para 2-3 documentos. El Ministerio de Relaciones Exteriores es la autoridad central. Es mucho más barato que otros países."
    },
    {
      "question": "¿Puedo apostillar documentos desde Chile sin volver a Bolivia?",
      "answer": "Sí. El Ministerio de Relaciones Exteriores de Bolivia permite solicitud online. Envías foto digital del documento, comprobante de pago bancario, y ellos envían por correo. Tarda 10-15 días en total. También puedes hacerlo en el Consulado de Bolivia en Santiago (más lento)."
    },
    {
      "question": "¿Qué pasa si no tengo acta de nacimiento registrada?",
      "answer": "Algunos bolivianos de zonas rurales no tienen registro. Debes dirigirte al Registro de Identidad Multidocumental (RIM) para un proceso de asiento tardío o acta de reconocimiento. Lleva documentos de identificación y testigos si es necesario. Esto puede tomar 1-2 meses."
    },
    {
      "question": "¿El SERMIG acepta cédula de identidad en lugar de pasaporte?",
      "answer": "Para ingreso a Chile como turista, sí (90 días). Para tramitar una visa, el SERMIG generalmente requiere pasaporte. Te recomendamos renovar tu pasaporte antes de solicitar visa si está vencido."
    }
  ]'::jsonb,
  ARRAY[
    'bolivia',
    'visa-temporaria/mercosur',
    'visa-temporaria',
    'vivir-en-chile/apostilla-traduccion',
    'permanencia-definitiva'
  ]::TEXT[],
  5,
  TRUE,
  NOW()
)
ON CONFLICT (slug) DO NOTHING;

-- ──────────────────────────────────────────────────────────
-- 2. republica-dominicana/documentos-republica-dominicana
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'republica-dominicana/documentos-republica-dominicana',
  'republica-dominicana',
  'republica-dominicana',
  'cluster',
  'Documentos Dominicanos para Trámites en Chile: Apostilla y Traducción 2026',
  'Cómo Legalizar Documentos de República Dominicana para Visas en Chile',
  'Guía completa para apostillar y traducir documentos dominicanos para trámites migratorios en Chile. Embajada, Junta Central Electoral, plazos y costo.',
  'documentos republica dominicana apostilla chile traduccion',
  $x2$
<p>República Dominicana es miembro del Convenio de La Haya (1961), lo que facilita la legalización de documentos para uso en Chile. Los documentos dominicanos apostillados en República Dominicana son automáticamente reconocidos por el SERMIG sin necesidad de autenticación consular adicional. Esta guía te muestra el proceso.</p>

<h2>¿Qué es la apostilla?</h2>
<p>La apostilla es un certificado emitido por autoridades de un país que autentica la firma, sello o firma y sello de un funcionario público en un documento. Es parte del Convenio de La Haya (1961). Los documentos apostillados en República Dominicana son válidos en Chile automáticamente.</p>

<h2>¿Dónde se apostillan documentos en República Dominicana?</h2>
<p>Los documentos se apostillan en:</p>
<ul>
  <li><strong>Ministerio de Relaciones Exteriores de República Dominicana</strong> (Santo Domingo): principal autoridad de apostilla.</li>
  <li><strong>Junta Central Electoral (JCE)</strong> (Santo Domingo): para documentos de identidad (cédula, pasaporte).</li>
  <li><strong>Embajada o Consulado de República Dominicana en Chile:</strong> si tienes el documento en mano en Chile (más lento, evita si puedes hacer en Rep. Dom.).</li>
  <li><strong>Notarías habilitadas:</strong> algunas notarías pueden gestionar apostilla ante el Ministerio.</li>
</ul>

<h3>Opciones de trámite</h3>
<p><strong>Presencial en Rep. Dominicana:</strong></p>
<ul>
  <li>Dirígete al Ministerio de Relaciones Exteriores (Santo Domingo) con el documento original. Puedes ir en persona o enviar por poder.</li>
  <li>Plazo: 1-3 días hábiles</li>
  <li>Costo: ~RD$ 500-1.000 (~USD 9-18)</li>
</ul>

<p><strong>Por correo/represente desde Chile:</strong></p>
<ul>
  <li>Si tienes alguien de confianza en Rep. Dominicana, puede llevar los documentos al Ministerio.</li>
  <li>Plazo total: 7-14 días (envío + gestión + envío de retorno)</li>
</ul>

<p><strong>A través del Consulado de República Dominicana en Chile (menos recomendado):</strong></p>
<ul>
  <li>Es posible hacer apostilla en el Consulado, pero es más lento (2-3 semanas).</li>
  <li>Se prefiere hacerlo en Rep. Dominicana directamente.</li>
</ul>

<h2>Documentos más solicitados y cómo apostillarlos</h2>

<h3>1. Acta de Nacimiento (Certificado de Nacimiento)</h3>
<p>Emitido por la <strong>Junta Central Electoral (JCE)</strong> de República Dominicana.</p>
<ul>
  <li><strong>Cómo obtenerlo:</strong> en cualquier oficina de la JCE en Rep. Dominicana, o por correo si estás fuera (tardaría semanas).</li>
  <li><strong>Cómo apostillarlo:</strong> llevar a la JCE misma — ellos pueden apostillar simultáneamente. O al Ministerio de Relaciones Exteriores.</li>
  <li><strong>Plazo:</strong> 1-2 días si todo está en orden</li>
  <li><strong>Costo:</strong> ~RD$ 100-200 para emisión + ~RD$ 500 para apostilla</li>
</ul>

<h3>2. Certificado de Antecedentes Penales (Certificado de Conducta)</h3>
<p>Emitido por la <strong>Procuraduría General de la República (PGR)</strong> o por la Policía Nacional de Rep. Dominicana.</p>
<ul>
  <li><strong>Cómo obtenerlo:</strong> en cualquier estación de la Policía Nacional o en la PGR (Santo Domingo). Requiere cédula de identidad dominicana.</li>
  <li><strong>Cómo apostillarlo:</strong> al Ministerio de Relaciones Exteriores (el certificado ya viene firmado por el funcionario competente).</li>
  <li><strong>Plazo:</strong> emisión 2 días + apostilla 1 día = 3 días total</li>
  <li><strong>Costo:</strong> ~RD$ 300-500 para emisión + ~RD$ 500 para apostilla</li>
</ul>

<h3>3. Cédula de Identidad Dominicana (Cédula de Identificación Personal)</h3>
<p>Emitida por la JCE. Si necesitas apostillar tu cédula (raro), va a la JCE o al Ministerio.</p>
<ul>
  <li><strong>Cómo apostillarla:</strong> en la JCE directamente, o en el Ministerio de Relaciones Exteriores.</li>
  <li><strong>Plazo:</strong> 1-2 días</li>
  <li><strong>Costo:</strong> ~RD$ 500</li>
</ul>

<h3>4. Acta de Matrimonio (si aplica)</h3>
<p>Emitida por la JCE si el matrimonio fue registrado en Rep. Dominicana. Para matrimonio religioso sin registro, consulta con el SERMIG sobre documentos alternativos.</p>
<ul>
  <li><strong>Cómo obtenerlo:</strong> en la JCE (Santo Domingo o provincia).</li>
  <li><strong>Cómo apostillarlo:</strong> en la JCE o Ministerio de Relaciones Exteriores.</li>
  <li><strong>Plazo:</strong> 1-2 días si está registrado</li>
</ul>

<h3>5. Diploma o Certificado de Estudios</h3>
<p>Emitido por el Ministerio de Educación, o directamente por la institución (universidad, colegio).</p>
<ul>
  <li><strong>Cómo obtenerlo:</strong> en el Ministerio de Educación de Rep. Dominicana, o directamente en la institución donde estudiaste.</li>
  <li><strong>Cómo apostillarlo:</strong> en el Ministerio de Relaciones Exteriores.</li>
  <li><strong>Plazo:</strong> 1-2 días</li>
  <li><strong>Nota:</strong> si planeas homologar en Chile, necesitarás apostilla + traducción jurada.</li>
</ul>

<h2>Traducción de documentos</h2>
<p>La mayoría de documentos dominicanos están en español (español dominicano) y no requieren traducción para Chile (ambos países usan español). Sin embargo, hay diferencias de terminología, y algunos SERMIG pueden solicitar traducción "para mayor claridad legal".</p>
<p>Si la necesitas, usa un <strong>traductor jurado</strong> chileno de español (aunque sea poco probable). Verifica registro en <a href="https://www.minrel.gob.cl" target="_blank" rel="noopener noreferrer">minrel.gob.cl</a>. Costo: ~CLP 30.000-50.000 por documento.</p>

<h2>Organización de los trámites (flujo recomendado)</h2>
<ol>
  <li><strong>En Rep. Dominicana:</strong> obtén acta de nacimiento + antecedentes penales + diploma (si aplica) en sus fuentes oficiales</li>
  <li><strong>En Rep. Dominicana:</strong> lleva todos a la JCE o Ministerio de Relaciones Exteriores para apostilla (idealmente en el mismo día si están cerca)</li>
  <li><strong>Envío a Chile:</strong> por correo de Rep. Dominicana a tu dirección en Chile, o trae personalmente</li>
  <li><strong>En Chile:</strong> presenta los documentos al SERMIG para tu trámite de visa (generalmente sin traducción necesaria)</li>
</ol>

<h2>Plazos totales estimados</h2>
<ul>
  <li><strong>Si tienes alguien en Rep. Dominicana:</strong> 3-5 días (obtención + apostilla)</li>
  <li><strong>Con envío por correo:</strong> 7-14 días (gestión + correo a Chile)</li>
</ul>

<h2>Costos estimados (total)</h2>
<ul>
  <li>Acta de nacimiento + antecedentes: RD$ 400-700 (~USD 7-13)</li>
  <li>Apostillas (2-3 documentos): RD$ 1.500-2.000 (~USD 28-37)</li>
  <li>Envío postal Rep. Dom.-Chile (si no los traes): RD$ 2.000-3.000 (~USD 37-56)</li>
  <li><strong>Total:</strong> ~USD 45-105 (bastante accesible)</li>
</ul>

<h2>Dificultades específicas para dominicanos</h2>

<h3>Cédula vencida</h3>
<p>Muchos documentos requieren cédula vigente. Si la tuya está vencida, renuela en la JCE de Rep. Dominicana antes de otros trámites (puedes hacerlo en línea via JCE online).</p>

<h3>Migrante irregular sin acceso a documentos</h3>
<p>Si estás en Chile en situación irregular y no puedes regresar a Rep. Dominicana, contacta al Consulado de República Dominicana en Santiago — pueden asistirte con gestión de documentos por correo o video conferencia para ciertos trámites.</p>

<h3>Pasaporte vencido</h3>
<p>El pasaporte dominicano puede renovarse en la JCE o en el Consulado de Rep. Dominicana en Chile. Para visas, el SERMIG generalmente requiere pasaporte vigente. Prioriza renovarlo antes de solicitar visa.</p>

<h2>Consulado de República Dominicana en Chile</h2>
<p>Si necesitas ayuda desde Chile:</p>
<ul>
  <li><strong>Consulado de República Dominicana en Santiago:</strong> Avenida El Bosque 0555, piso 6, Las Condes | Tel: +56 2 2335 4400 | <a href="https://www.mirex.gob.do" target="_blank" rel="noopener noreferrer">mirex.gob.do</a></li>
  <li>Horarios: Lunes a viernes, 9:00-13:00 (consultas)</li>
</ul>

<h2>Siguientes pasos</h2>
<p>Una vez tengas los documentos apostillados, elige tu categoría de visa según tu situación:</p>
<ul>
  <li><a href="/visa-temporaria">Ver opciones de visa temporaria disponibles</a></li>
  <li><a href="/autodenuncia">Si estás en situación irregular, aquí comienza el proceso</a></li>
</ul>
  $x2$,
  '[
    {
      "question": "¿Los documentos dominicanos necesitan traducción en Chile?",
      "answer": "Generalmente no. Rep. Dominicana y Chile usan español, así que los documentos dominicanos se entienden directamente en Chile. Excepción: si contienen palabras muy específicas de derecho dominicano o si el SERMIG lo pide (raro). En ese caso, usarías traductor jurado chileno."
    },
    {
      "question": "¿Cuánto cuesta apostillar en República Dominicana?",
      "answer": "El costo es bajo: entre RD$ 1.500-2.000 (~USD 28-37) para 2-3 documentos. El Ministerio de Relaciones Exteriores o la JCE lo hacen rápidamente (1-2 días). Mucho más barato que otros países."
    },
    {
      "question": "¿Puedo apostillar documentos desde Chile sin volver a Rep. Dominicana?",
      "answer": "Sí, con ayuda de alguien de confianza allá. Pueden llevar los documentos al Ministerio de Relaciones Exteriores o JCE, y enviar los documentos apostillados por correo (7-14 días total). O visita el Consulado de Rep. Dominicana en Santiago (más lento, pero posible)."
    },
    {
      "question": "¿Qué pasa si mi cédula de identidad dominicana está vencida?",
      "answer": "Necesitas renovarla antes de continuar con otros trámites. La JCE permite renovación online (desde 2022) en jce.gob.do, o puedes hacerlo presencialmente. El Consulado en Chile también puede ayudarte."
    },
    {
      "question": "¿El SERMIG acepta cédula dominicana en lugar de pasaporte?",
      "answer": "Para ingreso a Chile como turista, la cédula es válida (90 días). Para tramitar una visa formal, el SERMIG generalmente requiere pasaporte dominicano vigente. Renovalo si está vencido."
    }
  ]'::jsonb,
  ARRAY[
    'republica-dominicana',
    'visa-temporaria',
    'autodenuncia/pdi-paso-a-paso',
    'vivir-en-chile/apostilla-traduccion',
    'permanencia-definitiva'
  ]::TEXT[],
  5,
  TRUE,
  NOW()
)
ON CONFLICT (slug) DO NOTHING;

-- ──────────────────────────────────────────────────────────
-- 2b. republica-dominicana/faq
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, faq_items, schema_type,
  related_slugs, country_tags, reading_time_minutes, is_published, published_at
) VALUES (
  'republica-dominicana/faq',
  'republica-dominicana',
  'republica-dominicana',
  'cluster',
  'Preguntas frecuentes para dominicanos que migran a Chile',
  'FAQ para dominicanos que migran a Chile',
  'Preguntas frecuentes sobre visas, apostilla, documentos y trámites consulares para ciudadanos dominicanos en Chile.',
  'faq republica dominicana chile migracion documentos apostilla visa',
  $x4$
<p>Esta guía responde las dudas más frecuentes de dominicanos sobre cómo usar documentos, conseguir visa consular y presentar expedientes para trámites migratorios en Chile.</p>

<h2>¿Necesito visa para entrar a Chile desde República Dominicana?</h2>
<p>Si entras como turista, puedes permanecer hasta 90 días sin visa. Si quieres trabajar, estudiar o residir en Chile, debes solicitar una visa temporaria o consular antes de viajar.</p>

<h2>¿Cómo apostillo un documento dominicano para un trámite en Chile?</h2>
<p>Los documentos dominicanos se apostillan en la Junta Central Electoral (JCE) o en el Ministerio de Relaciones Exteriores de República Dominicana. Esto incluye actas de nacimiento, antecedentes penales, actas de matrimonio y títulos académicos.</p>

<h2>¿Qué documentos son imprescindibles para una visa consular?</h2>
<p>Los documentos más solicitados suelen ser:</p>
<ul>
  <li>Acta de nacimiento</li>
  <li>Certificado de antecedentes penales</li>
  <li>Pasaporte dominicano vigente</li>
  <li>Acta de matrimonio, si aplica</li>
  <li>Títulos o certificados académicos</li>
</ul>
<p>Para más detalle, revisa <a href="/republica-dominicana/documentos-republica-dominicana">Documentos dominicanos para trámites en Chile</a>.</p>

<h2>¿Qué hago si mi pasaporte o cédula está vencido?</h2>
<p>Renueva tus documentos en la JCE de República Dominicana antes de presentar el expediente. Si estás en Chile sin documentos vigentes, contacta al Consulado de República Dominicana en Santiago.</p>

<h2>¿Puedo usar un apoderado para apostillar desde Chile?</h2>
<p>Sí, un apoderado puede gestionar la apostilla en tu nombre en República Dominicana siempre que el poder notarial sea válido y esté bien firmado.</p>

<h2>¿Dónde obtengo requisitos de visa consular para dominicanos?</h2>
<p>Los requisitos dependen del tipo de visa. Consulta <a href="/republica-dominicana/visa-consular">Visa consular para dominicanos: cómo solicitarla</a> para ver la lista de documentos y pasos.</p>
  $x4$,
  '[
    {
      "question": "¿Necesito visa para entrar a Chile desde República Dominicana?",
      "answer": "Si entras como turista, puedes permanecer hasta 90 días sin visa. Si deseas trabajar, estudiar o residir, debes solicitar una visa temporaria o consular antes de viajar."
    },
    {
      "question": "¿Cómo apostillo un documento dominicano para Chile?",
      "answer": "Apostilla tus documentos en la JCE o en el Ministerio de Relaciones Exteriores de República Dominicana. Esto es especialmente importante para actas de nacimiento, antecedentes penales y títulos académicos."
    },
    {
      "question": "¿Qué documentos son imprescindibles para una visa consular?",
      "answer": "Los documentos más comunes son acta de nacimiento, antecedentes penales, pasaporte vigente, acta de matrimonio si aplica y títulos académicos cuando sean necesarios."
    },
    {
      "question": "¿Qué hago si mi pasaporte o cédula dominicana está vencido?",
      "answer": "Renueva los documentos en la JCE de República Dominicana antes de presentar tu expediente. Si estás en Chile, contacta al Consulado dominicano en Santiago para asistencia."
    },
    {
      "question": "¿Puedo usar un apoderado para apostillar desde Chile?",
      "answer": "Sí, un apoderado autorizado en República Dominicana puede tramitar la apostilla en tu nombre. Asegúrate de que el poder notarial sea válido."
    }
  ]'::jsonb,
  ARRAY[
    'republica-dominicana',
    'republica-dominicana/documentos-republica-dominicana',
    'republica-dominicana/requisitos',
    'republica-dominicana/visa-consular'
  ]::TEXT[],
  5,
  TRUE,
  NOW()
)
ON CONFLICT (slug) DO NOTHING;

-- ──────────────────────────────────────────────────────────
-- 3. haiti/visas-haitianas (complementar cobertura)
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'haiti/visas-haitianas',
  'haiti',
  'haiti',
  'cluster',
  'Visas Disponibles para Haitianos en Chile 2026: Opciones y Requisitos',
  'Qué Visas Puede Solicitar un Ciudadano Haitiano en Chile',
  'Guía de categorías de visa disponibles para ciudadanos haitianos en Chile. Razones humanitarias, contrato trabajo, familia y alternativas 2026.',
  'visa haitiana chile categorias requisitos 2026',
  $x3$
<p>Haití no es miembro del MERCOSUR ni tiene convenios especiales de visa con Chile como otros países latinoamericanos. Sin embargo, los ciudadanos haitianos tienen acceso a varias categorías de visa temporaria. Esta guía explica las opciones disponibles y sus requisitos específicos.</p>

<h2>Situación especial de Haití en la región</h2>
<p>Haití es una nación francófona en el Caribe con una historia migratoria compleja en la región. Muchos ciudadanos haitianos buscan oportunidades laborales o reagrupación familiar en América Latina, incluyendo Chile. El SERMIG reconoce esto y mantiene varias categorías de visa accesibles para haitianos, aunque con requisitos más exigentes que para ciudadanos de países MERCOSUR.</p>

<h2>Visas disponibles para haitianos</h2>

<h3>1. Visa por Razones Humanitarias (RECOMENDADA)</h3>
<p><strong>Descripción:</strong> Para personas que enfrentan situaciones de vulnerabilidad especial (riesgo de persecución, violencia, inseguridad en el país de origen).</p>
<p><strong>¿Por qué para haitianos?</strong> Haití ha enfrentado períodos de inestabilidad política, violencia y crisis económica. El SERMIG evalúa solicitudes de razones humanitarias y muchos haitianos han obtenido visas bajo este fundamento.</p>
<p><strong>Requisitos:</strong></p>
<ul>
  <li>Pasaporte haitiano vigente (o documento de viaje internacional si no tienes pasaporte)</li>
  <li>Certificado de antecedentes penales en Haití</li>
  <li>Documentación de la situación de vulnerabilidad (reportes de organizaciones, testimonios, etc.)</li>
  <li>Comprobante de estancia en Chile si aplica</li>
</ul>
<p><strong>Plazo de resolución:</strong> 90-180 días (variable según complejidad)</p>
<p><strong>Vigencia:</strong> Generalmente 1 año, renovable</p>

<h3>2. Visa por Contrato de Trabajo</h3>
<p><strong>Descripción:</strong> Para ciudadanos con oferta formal de empleo de un empleador chileno.</p>
<p><strong>¿Cuándo aplica?</strong> Si tienes un contrato de trabajo formal con una empresa chilena (construcción, agrícola, servicios, etc.).</p>
<p><strong>Requisitos:</strong></p>
<ul>
  <li>Contrato de trabajo firmado (debe estar validado ante el SERMIG antes de solicitar visa)</li>
  <li>Pasaporte haitiano vigente</li>
  <li>Certificado de antecedentes penales</li>
  <li>Certificado de antecedentes médicos (vacunaciones actuales)</li>
</ul>
<p><strong>Plazo de resolución:</strong> 60-120 días</p>
<p><strong>Vigencia:</strong> Según duración del contrato (máximo 2 años, renovable)</p>
<p><strong>Nota:</strong> El empleador a veces debe presentar documentación adicional demostrando que no hay candidato chileno disponible (aunque esto es menos estricto que décadas atrás).</p>

<h3>3. Visa por Reagrupación Familiar</h3>
<p><strong>Descripción:</strong> Si tienes familiares con visa chilena, permanencia definitiva o nacionalidad chilena.</p>
<p><strong>Familia elegible:</strong></p>
<ul>
  <li>Cónyuge o pareja civil (con AUC vigente)</li>
  <li>Hijos menores o mayores dependientes</li>
  <li>Padres ancianos dependientes (en casos especiales)</li>
</ul>
<p><strong>Requisitos:</strong></p>
<ul>
  <li>Pasaporte haitiano vigente</li>
  <li>Certificado de antecedentes penales</li>
  <li>Acta de matrimonio, acta de nacimiento o AUC (según vínculo)</li>
  <li>Comprobante que el familiar en Chile puede financiar la manutención</li>
</ul>
<p><strong>Plazo de resolución:</strong> 60-120 días</p>
<p><strong>Vigencia:</strong> 1 año renovable</p>

<h3>4. Visa por Vinculación Laboral / Oferta Laboral</h3>
<p><strong>Descripción:</strong> Alternativa a contrato directo; para trabajadores especializados donde hay oferta laboral pero contrato formal es más flexible.</p>
<p><strong>¿Cuándo aplica?</strong> Cuando hay intención de contratar pero el contrato aún no está definitivo (ej: empresa está en proceso de selección formal).</p>
<p><strong>Requisitos:</strong> Similares a contrato de trabajo, pero con carta de intención de la empresa en lugar de contrato.</p>
<p><strong>Plazo de resolución:</strong> 90-150 días</p>

<h3>5. Visa de Estudiante</h3>
<p><strong>Descripción:</strong> Para estudiantes haitianos admitidos en institución acreditada chilena.</p>
<p><strong>Requisitos:</strong></p>
<ul>
  <li>Carta de admisión de la institución (universidad, instituto técnico, etc.)</li>
  <li>Pasaporte haitiano vigente</li>
  <li>Certificado de antecedentes penales</li>
  <li>Comprobante de financiamiento (propio o beca)</li>
  <li>Comprobante de nivel de español (si aplica)</li>
</ul>
<p><strong>Plazo de resolución:</strong> 60-90 días</p>
<p><strong>Vigencia:</strong> Durante la carrera + 1 año adicional para encontrar trabajo</p>

<h2>Visas NO disponibles para haitianos</h2>

<h3>❌ Visa MERCOSUR</h3>
<p><strong>¿Por qué no?</strong> Haití no es miembro del MERCOSUR ni de ningún acuerdo multilateral similar con Chile. Por lo tanto, los haitianos no califican para Visa MERCOSUR.</p>

<h3>❌ Visa de Responsabilidad Democrática (VRD)</h3>
<p><strong>¿Por qué no?</strong> La VRD es exclusiva para ciudadanos venezolanos.</p>

<h2>Proceso de solicitud para haitianos</h2>
<ol>
  <li><strong>Paso 1:</strong> Define cuál categoría aplica a tu situación (humanitaria, contrato, familia, etc.)</li>
  <li><strong>Paso 2:</strong> Obtén documentos en Haití (acta de nacimiento, antecedentes penales, pasaporte). Ver <a href="/haiti/documentos-haiti">Documentos Haitianos para Chile</a>.</li>
  <li><strong>Paso 3:</strong> Apostilla y traducción (Haití no es signatorio de La Haya; requiere legalización consular más compleja)</li>
  <li><strong>Paso 4:</strong> Presenta solicitud en <a href="https://tramitesmigratorios.interior.gob.cl" target="_blank" rel="noopener noreferrer">tramitesmigratorios.interior.gob.cl</a></li>
  <li><strong>Paso 5:</strong> Espera resolución (2-6 meses según complejidad)</li>
  <li><strong>Paso 6:</strong> Si se aprueba, obtén tu visa en el Consulado de Chile en Haití (si existe) o en el Consulado más cercano</li>
</ol>

<h2>Consulados de Chile en el Caribe / Zona de Haití</h2>
<p>Chile no tiene Consulado en Haití, pero tiene representación en la región:</p>
<ul>
  <li><strong>Consulado de Chile en República Dominicana</strong> (Santo Domingo): atiende también asuntos de Haití. Tel/contacto via <a href="https://www.chileabroad.gov.cl" target="_blank" rel="noopener noreferrer">chileabroad.gov.cl</a></li>
  <li>Para trámites específicos, contacta directamente al SERMIG en Santiago</li>
</ul>

<h2>Desafíos comunes para haitianos solicitando visa</h2>

<h3>Documentos incompletos en Haití</h3>
<p>Como se explicó en <a href="/haiti/documentos-haiti">Documentos Haitianos para Chile</a>, muchas personas en Haití (especialmente de zonas rurales o post-terremoto 2010) pueden carecer de registro de nacimiento. Consulta con ACNUR o el SERMIG sobre alternativas documentales (ej: declaración jurada de identidad con testigos).</p>

<h3>Idioma francés en documentos</h3>
<p>Los documentos haitianos pueden estar en francés o creole haitiano. Necesitarás traducción jurada de todos ellos. Ver <a href="/haiti/documentos-haiti">guía de documentos haitianos</a>.</p>

<h3>Plazo de respuesta del SERMIG</h3>
<p>Para solicitantes de razones humanitarias o de países menos comunes, el SERMIG puede ser lento. Sigue tu caso online en tramitesmigratorios.interior.gob.cl. Si pasan 180 días sin respuesta, puedes presentar recurso administrativo.</p>

<h2>Después de la visa: Permanencia Definitiva</h2>
<p>Si obtienes una visa temporaria, después de 2 años de residencia continuada puedes solicitar la <a href="/permanencia-definitiva">Permanencia Definitiva</a>. Los requisitos son los mismos para todos, independientemente de la categoría de visa.</p>

<h2>Recursos adicionales</h2>
<ul>
  <li><a href="https://tramitesmigratorios.interior.gob.cl" target="_blank" rel="noopener noreferrer">Portal de trámites migratorios (SERMIG)</a></li>
  <li><a href="https://www.acnur.org/haiti" target="_blank" rel="noopener noreferrer">ACNUR Haití (refugio, migrantes forzados)</a></li>
  <li><a href="https://oim.org.ht" target="_blank" rel="noopener noreferrer">OIM Haití (organización internacional para la migración)</a></li>
  <li><a href="/haiti">Hub Haití: Información general para haitianos</a></li>
</ul>
  $x3$,
  '[
    {
      "question": "¿Pueden los haitianos solicitar Visa MERCOSUR?",
      "answer": "No. La Visa MERCOSUR es solo para ciudadanos de países miembros del MERCOSUR. Haití no es miembro. Los haitianos pueden solicitar otras categorías como razones humanitarias, contrato de trabajo, familia o estudiante."
    },
    {
      "question": "¿Cuál es la visa más fácil para un haitiano en Chile?",
      "answer": "Depende de tu situación. Si tienes familia chilena, la visa familiar es accesible. Si tienes oferta laboral formal, contrato de trabajo. Si enfrentas situación de riesgo en Haití, razones humanitarias puede ser una opción. No hay una \"más fácil\" universal — depende de tu contexto."
    },
    {
      "question": "¿Cuánto tarda el SERMIG en responder una solicitud haitiana?",
      "answer": "Los plazos legales son 60-180 días según la categoría. En práctica, haitianos a veces enfrentan plazos más largos (hasta 6 meses) si hay requisitos adicionales de investigación. Puedes hacer seguimiento online en tramitesmigratorios.interior.gob.cl."
    },
    {
      "question": "Si estoy irregular en Chile y soy haitiano, ¿cómo me regularizo?",
      "answer": "Realiza autodenuncia en la PDI (como cualquier otro extranjero). Con el Certificado de Autodenuncia, puedes solicitar una de las categorías de visa disponibles. Ver guía completa en /autodenuncia."
    },
    {
      "question": "¿Puedo traer a mi familia (cónyuge, hijos) bajo visa familiar?",
      "answer": "Sí. Si tienes visa temporaria o permanencia definitiva en Chile, tu cónyuge e hijos menores pueden solicitar visa de reagrupación familiar. Los requisitos incluyen acta de matrimonio y actas de nacimiento apostilladas."
    }
  ]'::jsonb,
  ARRAY[
    'haiti',
    'visa-temporaria',
    'autodenuncia/pdi-paso-a-paso',
    'haiti/documentos-haiti',
    'permanencia-definitiva'
  ]::TEXT[],
  5,
  TRUE,
  NOW()
)
ON CONFLICT (slug) DO NOTHING;

-- ============================================================
-- Verificación
-- ============================================================
SELECT slug, silo, title, created_at
FROM articles
WHERE slug IN (
  'bolivia/documentos-bolivia',
  'republica-dominicana/documentos-republica-dominicana',
  'haiti/visas-haitianas'
)
ORDER BY silo, slug;
