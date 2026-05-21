-- ============================================================
-- MigraciónChile — Seed 020: 4 artículos nuevos
--   1. colombia/apostilla-colombia
--   2. visa-temporaria/cambio-categoria
--   3. vivir-en-chile/convenios-seguridad-social
--   4. haiti/documentos-haiti
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

-- ──────────────────────────────────────────────────────────
-- 1. colombia/apostilla-colombia
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'colombia/apostilla-colombia',
  'colombia',
  'colombia',
  'cluster',
  'Apostilla de Documentos Colombianos para Chile: Cancillería 2026',
  'Cómo Apostillar Documentos Colombianos para Trámites en Chile',
  'Guía para apostillar documentos colombianos para visas y trámites migratorios en Chile. Proceso en la Cancillería, plazos, costos y documentos más solicitados en 2026.',
  'apostilla documentos colombianos chile cancillería',
  $x1$
<p>Colombia es parte de la Convención de La Haya sobre apostilla, lo que simplifica la legalización de documentos colombianos para uso en Chile. El proceso es mayoritariamente en línea y más expedito que en países sin este convenio.</p>

<h2>¿Quién emite la apostilla en Colombia?</h2>
<p>La autoridad competente para emitir apostillas en Colombia es el <strong>Ministerio de Relaciones Exteriores (Cancillería)</strong>, a través de su plataforma en línea en <a href="https://www.cancilleria.gov.co" target="_blank" rel="noopener noreferrer">cancilleria.gov.co</a>. Colombia tiene un sistema digitalizado — muchas apostillas se procesan completamente en línea sin necesidad de presentarse físicamente.</p>

<h2>Documentos más solicitados para trámites en Chile</h2>
<ul>
  <li><strong>Registro civil de nacimiento</strong> — emitido por la Registraduría Nacional del Estado Civil.</li>
  <li><strong>Certificado judicial (antecedentes penales)</strong> — emitido por la Policía Nacional (PONAL) a través de policia.gov.co.</li>
  <li><strong>Registro civil de matrimonio</strong> — emitido por la Registraduría.</li>
  <li><strong>Diploma universitario y acta de grado</strong> — emitidos por la institución educativa; puede requerir validación previa del Ministerio de Educación si el título va a usarse profesionalmente en Chile.</li>
</ul>

<h2>Proceso de apostilla en la Cancillería</h2>
<ol>
  <li><strong>Obtén el documento original</strong> con firma y sello oficial de la autoridad emisora (Registraduría, PONAL, universidad, etc.).</li>
  <li><strong>Ingresa al portal de apostilla</strong> de la Cancillería en cancilleria.gov.co y selecciona el trámite de apostilla.</li>
  <li><strong>Sube el documento</strong> en el sistema si el trámite es en línea, o preséntalo en las oficinas de la Cancillería (Bogotá u otras ciudades con presencia).</li>
  <li><strong>Paga los derechos de apostilla</strong> — el valor está publicado en el portal de la Cancillería.</li>
  <li><strong>Recibe la apostilla</strong> — puede ser física (estampada en el documento) o electrónica con código de verificación, dependiendo del tipo de documento.</li>
</ol>
<p>El tiempo de procesamiento varía: los trámites en línea pueden resolverse en días hábiles; los presenciales pueden tomar más tiempo según la demanda. Verifica los plazos actuales en el portal.</p>

<h2>Apostilla del certificado de antecedentes (PONAL)</h2>
<p>El <strong>Certificado de Antecedentes Judiciales</strong> de la Policía Nacional puede obtenerse en línea en <a href="https://antecedentes.policia.gov.co" target="_blank" rel="noopener noreferrer">antecedentes.policia.gov.co</a>. Una vez obtenido con firma digital, se apostilla a través de la Cancillería. Verifica si el SERMIG acepta el formato digital o exige versión física apostillada — las políticas pueden variar.</p>

<h2>Trámite desde Chile</h2>
<p>Si estás en Chile y necesitas apostillar documentos que están en Colombia:</p>
<ul>
  <li><strong>Familiares en Colombia</strong> pueden tramitar con poder notarial otorgado ante notario en Chile (debe ser apostillado o autenticado por el Consulado de Colombia en Chile para ser válido en Colombia).</li>
  <li><strong>Gestorías colombianas en línea</strong> ofrecen este servicio — verifica referencias antes de contratar.</li>
  <li>El <strong>Consulado de Colombia en Santiago</strong> puede orientar sobre el proceso y, en algunos casos, asistir con ciertos documentos.</li>
</ul>

<h2>¿Los documentos colombianos requieren traducción para Chile?</h2>
<p>No. Los documentos colombianos están en español, por lo que <strong>no requieren traducción oficial</strong> para trámites ante el SERMIG en Chile.</p>
  $x1$,
  '[
    {
      "question": "¿Cuánto tiempo tarda la apostilla de la Cancillería colombiana?",
      "answer": "Los trámites en línea suelen procesarse en 1–5 días hábiles, dependiendo del tipo de documento y la carga del sistema. Los trámites presenciales en Bogotá u otras ciudades pueden tardar más. Consulta los plazos actuales directamente en cancilleria.gov.co antes de planificar."
    },
    {
      "question": "¿Puedo usar la apostilla electrónica que entrega la Cancillería?",
      "answer": "En muchos casos sí. El SERMIG en Chile acepta apostillas electrónicas con código de verificación. Sin embargo, algunos documentos específicos pueden requerir versión física. Verifica en el SERMIG si hay alguna exigencia de formato para el documento específico que vas a presentar."
    },
    {
      "question": "¿El certificado judicial de la PONAL tiene que estar apostillado separado?",
      "answer": "Sí. El certificado de antecedentes emitido por la Policía Nacional (PONAL) es un documento oficial que requiere su propia apostilla de la Cancillería para ser válido en el exterior. No confundas la firma digital del PONAL (que autentica el documento para uso dentro de Colombia) con la apostilla (que lo valida para uso internacional)."
    },
    {
      "question": "¿El Consulado de Colombia en Santiago puede apostillar documentos?",
      "answer": "No. La apostilla solo puede emitirla la Cancillería en Colombia, no los consulados en el exterior. El Consulado de Colombia en Santiago puede autenticar firmas consulares y orientar sobre el proceso, pero no emite apostillas de documentos colombianos."
    }
  ]'::jsonb,
  ARRAY[
    'colombia',
    'visa-temporaria',
    'problemas/antecedentes-penales',
    'permanencia-definitiva/documentos'
  ]::TEXT[],
  6,
  TRUE,
  NOW()
)
ON CONFLICT (slug) DO NOTHING;

-- ──────────────────────────────────────────────────────────
-- 2. visa-temporaria/cambio-categoria
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, schema_type, howto_steps, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'visa-temporaria/cambio-categoria',
  'visa-temporaria',
  'visa-temporaria',
  'cluster',
  'Cambio de Categoría de Visa en Chile Sin Salir del País 2026',
  'Cómo Cambiar de Categoría de Visa en Chile: Proceso y Condiciones',
  'Cómo cambiar de categoría de visa en Chile sin salir del país. De turista a visa temporaria, entre visas temporarias, y qué requisitos aplican en 2026.',
  'cambio categoria visa chile sin salir',
  $x2$
<p>La <strong>Ley 21.325</strong> permite a los migrantes en Chile cambiar de categoría migratoria sin necesidad de salir del país, siempre que cumplan los requisitos de la nueva categoría y que su situación migratoria actual esté vigente. Este mecanismo es uno de los más usados por personas que llegaron como turistas y consiguieron trabajo o formaron pareja en Chile.</p>

<h2>¿Quién puede cambiar de categoría?</h2>
<ul>
  <li>Turistas (permiso de turismo vigente) que quieren solicitar una visa temporaria.</li>
  <li>Personas con una visa temporaria que quieren cambiar a otra categoría de visa temporaria.</li>
  <li>Personas con visa temporaria que quieren solicitar Permanencia Definitiva al cumplir los 2 años.</li>
</ul>
<p><strong>Importante:</strong> si tu permiso de turismo o visa ya está vencido, no puedes hacer el cambio directamente — primero debes regularizarte mediante el proceso de <a href="/autodenuncia">autodenuncia</a>.</p>

<h2>Cambios más frecuentes</h2>
<table>
  <thead><tr><th>Desde</th><th>Hacia</th><th>Condición principal</th></tr></thead>
  <tbody>
    <tr><td>Turismo vigente</td><td>Visa temporaria (cualquier categoría)</td><td>Cumplir requisitos de la nueva categoría</td></tr>
    <tr><td>Visa sujeta a contrato</td><td>Visa por pareja o hijo chileno</td><td>Acreditar el vínculo familiar</td></tr>
    <tr><td>Visa de estudiante</td><td>Visa sujeta a contrato</td><td>Tener contrato de trabajo firmado</td></tr>
    <tr><td>Visa humanitaria</td><td>Visa sujeta a contrato o por arraigo</td><td>Cumplir requisitos de la categoría destino</td></tr>
    <tr><td>Cualquier visa temporaria</td><td>Permanencia Definitiva</td><td>2 años de residencia continua</td></tr>
  </tbody>
</table>

<h2>¿Qué pasa con el período de residencia acumulado?</h2>
<p>El cambio de categoría <strong>no reinicia el conteo</strong> de residencia continua. Los años acumulados con la categoría anterior se suman al período necesario para la Permanencia Definitiva. Esta es una de las razones por las que conviene hacer el cambio de categoría en lugar de salir y volver a entrar.</p>

<h2>Proceso en el portal SERMIG</h2>
<ol>
  <li>Accede a <a href="https://tramitesmigratorios.interior.gob.cl" target="_blank" rel="noopener noreferrer">tramitesmigratorios.interior.gob.cl</a>.</li>
  <li>Selecciona "Solicitar visa temporaria" y elige la nueva categoría que quieres solicitar.</li>
  <li>Sube los documentos que acreditan los requisitos de la nueva categoría.</li>
  <li>Envía la solicitud. Recibirás un número y comprobante.</li>
</ol>
<p>El comprobante de solicitud activa te mantiene en situación migratoria regular mientras se resuelve. El plazo legal es 30 días hábiles; el real puede ser 2–5 meses.</p>

<h2>Cambio desde turismo: cuándo actuar</h2>
<p>Si estás como turista y consigues empleo o formalizas una pareja, lo ideal es presentar la solicitud de cambio <strong>antes de que venza el permiso de turismo</strong>. Esperar hasta el último día es arriesgado — si se vence antes de que el comprobante esté generado, quedas en situación irregular.</p>
  $x2$,
  'HowTo',
  '[
    {"name": "Verificar que tu situación migratoria actual está vigente", "text": "Revisa la fecha de vencimiento de tu permiso de turismo o visa. El cambio solo puede hacerse con situación vigente — si ya venció, debes hacer el proceso de autodenuncia primero."},
    {"name": "Identificar la nueva categoría y sus requisitos", "text": "Determina qué categoría de visa temporaria quieres solicitar (por trabajo, pareja, hijo chileno, razones humanitarias, etc.) y reúne los documentos que acreditan los requisitos de esa categoría."},
    {"name": "Preparar los documentos", "text": "Reúne pasaporte vigente, fotografía según especificaciones SERMIG, certificado de antecedentes, y los documentos específicos de la nueva categoría (contrato de trabajo, certificado de matrimonio, etc.)."},
    {"name": "Ingresar la solicitud en el portal SERMIG", "text": "Accede a tramitesmigratorios.interior.gob.cl, selecciona la nueva categoría, sube todos los documentos y envía la solicitud antes de que venza tu permiso actual."},
    {"name": "Guardar el comprobante y continuar en situación regular", "text": "El comprobante de solicitud activa te mantiene en situación migratoria regular. Guárdalo en formato digital e impreso — es tu respaldo mientras el SERMIG resuelve."}
  ]'::jsonb,
  '[
    {
      "question": "¿Puedo cambiar de visa mientras espero la resolución de otra solicitud anterior?",
      "answer": "Generalmente no es recomendable tener dos solicitudes activas simultáneamente. Si tienes una solicitud en curso y quieres cambiar de categoría, consulta directamente con el SERMIG antes de presentar una nueva solicitud para evitar inconsistencias en tu expediente."
    },
    {
      "question": "¿El cambio de categoría afecta mi RUT o cédula de identidad?",
      "answer": "Al cambiar de categoría se emite una nueva cédula de identidad (con la nueva categoría migratoria). Tu RUT (número) no cambia — es permanente. El proceso de obtención de cédula es el mismo: con la resolución favorable del SERMIG, vas al Registro Civil a sacarla."
    },
    {
      "question": "¿Cuánto tiempo tengo para solicitar el cambio una vez que consigo trabajo o pareja?",
      "answer": "No hay un plazo específico para presentar la solicitud, pero debes hacerlo antes de que venza tu permiso de turismo o visa actual. Si ya vencieron, la única opción es la autodenuncia. Por eso conviene actuar apenas tengas los documentos reunidos, sin esperar al límite."
    },
    {
      "question": "¿El cambio de visa sujeta a contrato a una por pareja chilena me desvincula del empleador?",
      "answer": "Sí. Una vez que el SERMIG resuelve favorablemente el cambio a una visa por vínculo familiar, ya no estás ligado al empleador anterior. Puedes trabajar para cualquier empleador con la nueva visa. Durante el período de tramitación, el comprobante activo también te permite trabajar."
    }
  ]'::jsonb,
  ARRAY[
    'visa-temporaria',
    'visa-temporaria/renovacion',
    'permanencia-definitiva',
    'autodenuncia',
    'visa-temporaria/pareja-chilena',
    'visa-temporaria/hijo-chileno'
  ]::TEXT[],
  6,
  TRUE,
  NOW()
)
ON CONFLICT (slug) DO NOTHING;

-- ──────────────────────────────────────────────────────────
-- 3. vivir-en-chile/convenios-seguridad-social
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'vivir-en-chile/convenios-seguridad-social',
  'vivir-en-chile',
  'vivir-en-chile',
  'cluster',
  'Convenios de Seguridad Social entre Chile y Otros Países: AFP y Pensiones 2026',
  'Convenios de Seguridad Social en Chile: Pensiones y AFP para Migrantes',
  'Qué convenios de seguridad social tiene Chile con otros países y cómo afectan las cotizaciones AFP y la pensión futura de los migrantes en 2026.',
  'convenio seguridad social chile pension AFP migrantes',
  $x3$
<p>Chile tiene acuerdos internacionales de seguridad social que permiten a los migrantes <strong>sumar períodos cotizados en varios países</strong> para acceder a pensiones, evitar la doble cotización y coordinar prestaciones. Entender estos convenios puede marcar una diferencia importante en tu pensión futura.</p>

<h2>El Convenio Multilateral Iberoamericano de Seguridad Social (CMISS)</h2>
<p>El principal instrumento es el <strong>Convenio Multilateral Iberoamericano de Seguridad Social</strong>, suscrito en Santiago en 2007 en el marco de la Organización Iberoamericana de Seguridad Social (OISS). Los países miembros que lo han ratificado incluyen:</p>
<ul>
  <li>Argentina, Bolivia, Brasil, Chile, Colombia, Ecuador, El Salvador, España, Paraguay, Perú, Portugal, Uruguay y Venezuela (entre otros).</li>
</ul>
<p>Verifica en la <a href="https://www.spensiones.cl" target="_blank" rel="noopener noreferrer">Superintendencia de Pensiones</a> si el convenio con tu país específico está en vigor, ya que la ratificación varía por país.</p>

<h2>¿Qué permite hacer el convenio?</h2>
<ul>
  <li><strong>Totalización de períodos:</strong> sumar los períodos cotizados en Chile y en el país de origen para cumplir los años mínimos de cotización exigidos por cada sistema (útil para acceder a pensiones de vejez que requieren mínimos de cotización).</li>
  <li><strong>Evitar cotización doble:</strong> si trabajas para una empresa extranjera en Chile, el convenio puede determinar en qué país cotizas para no pagar dos veces.</li>
  <li><strong>Exportar prestaciones:</strong> en algunos casos, cobrar pensiones de un país mientras residís en otro.</li>
</ul>

<h2>¿Cómo funciona con el sistema AFP chileno?</h2>
<p>El sistema AFP de Chile es de <strong>capitalización individual</strong>: tus cotizaciones van a una cuenta de ahorro personal. Esto tiene una consecuencia importante: <strong>los fondos en tu cuenta AFP son tuyos sin importar el convenio</strong> — si te vas de Chile, puedes retirarlos bajo la figura de "retiro por cambio de residencia" (ver <a href="/vivir-en-chile/pension-afp">Pensión AFP</a>).</p>
<p>Donde el convenio es más útil:</p>
<ul>
  <li>Para acceder a la <strong>Pensión Garantizada Universal (PGU)</strong>, que exige 20 años de residencia en Chile. El convenio no reduce este requisito de residencia, pero puede ayudar a acreditar períodos de cotización.</li>
  <li>Para acceder a pensiones del país de origen que exigen un mínimo de cotizaciones — los años cotizados en Chile pueden sumarse para cumplir ese mínimo.</li>
</ul>

<h2>Convenios bilaterales adicionales</h2>
<p>Además del CMISS, Chile tiene convenios bilaterales específicos con algunos países (por ejemplo, Alemania, Austria, Suecia, Dinamarca, Noruega, Canadá, Australia, entre otros). Estos cubren situaciones particulares como trabajadores expatriados. Si tu país de origen no está en el CMISS, verifica si existe un convenio bilateral en el sitio de la Superintendencia de Pensiones.</p>

<h2>¿Cómo acceder a estos beneficios?</h2>
<p>Para utilizar el convenio iberoamericano, debes contactar a la institución de seguridad social de tu país de origen (COLPENSIONES en Colombia, ONP en Perú, ANSES en Argentina, etc.) y solicitar la coordinación con la Superintendencia de Pensiones de Chile. El proceso implica acreditar los períodos cotizados en Chile mediante certificados de las AFP y la Superintendencia.</p>
  $x3$,
  '[
    {
      "question": "¿Puedo cobrar pensión de mi país de origen y también del sistema AFP chileno?",
      "answer": "Sí, es posible recibir pensiones de ambos países. El sistema AFP chileno paga según los fondos acumulados en tu cuenta individual, independientemente de lo que recibas de otro país. Los convenios regulan aspectos como la coordinación de prestaciones y la evitación de doble cotización, pero no prohíben recibir ambas pensiones."
    },
    {
      "question": "¿Los años cotizados en Chile cuentan para la pensión de mi país?",
      "answer": "Si tu país tiene en vigor el Convenio Multilateral Iberoamericano de Seguridad Social con Chile, sí. Los períodos cotizados en Chile pueden sumarse a los de tu país para cumplir los requisitos mínimos de cotización que exige la pensión de vejez de tu país. Debes solicitarlo a la institución de seguridad social de tu país de origen."
    },
    {
      "question": "¿Qué pasa con mis cotizaciones AFP si regreso a mi país de forma permanente?",
      "answer": "Si obtienes residencia permanente en otro país o readquieres la ciudadanía que renunciaste al naturalizarte chileno, puedes retirar todos los fondos acumulados en tu AFP bajo la figura de retiro por cambio de residencia, pagando un impuesto único. Esto es independiente de cualquier convenio de seguridad social."
    },
    {
      "question": "¿Aplica el convenio iberoamericano a los fondos de cesantía?",
      "answer": "El Seguro de Cesantía en Chile es un sistema separado de la pensión. Los convenios de seguridad social generalmente coordinan pensiones de vejez, invalidez y supervivencia. La portabilidad del seguro de cesantía tiene sus propias reglas — consulta con la Superintendencia de Pensiones si tienes una situación específica que involucre este beneficio."
    }
  ]'::jsonb,
  ARRAY[
    'vivir-en-chile',
    'vivir-en-chile/pension-afp',
    'vivir-en-chile/seguro-cesantia',
    'vivir-en-chile/trabajo-contrato',
    'permanencia-definitiva'
  ]::TEXT[],
  7,
  TRUE,
  NOW()
)
ON CONFLICT (slug) DO NOTHING;

-- ──────────────────────────────────────────────────────────
-- 4. haiti/documentos-haiti
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'haiti/documentos-haiti',
  'haiti',
  'haiti',
  'cluster',
  'Documentos Haitianos para Trámites en Chile: Legalización y Traducción 2026',
  'Cómo Legalizar Documentos Haitianos para Visas y Trámites Migratorios en Chile',
  'Proceso para legalizar documentos haitianos para trámites en Chile. Certificados en francés y creole, traducción jurada, vía consular y documentos más solicitados en 2026.',
  'documentos haitianos legalizar chile traduccion apostilla',
  $x4$
<p>Los ciudadanos haitianos enfrentan dos desafíos específicos al legalizar documentos para trámites en Chile: <strong>Haití no es parte de la Convención de La Haya</strong> (no hay apostilla), y los documentos están en <strong>francés o creole haitiano</strong>, lo que requiere traducción oficial. Esta guía explica el proceso paso a paso.</p>

<h2>¿Por qué no hay apostilla para documentos haitianos?</h2>
<p>La apostilla (Convención de La Haya de 1961) solo aplica entre países que la han ratificado. Haití no es miembro de esta convención, por lo que sus documentos deben legalizarse por la vía consular tradicional, que es un proceso más largo.</p>

<h2>Proceso de legalización consular</h2>
<p>El proceso estándar para legalizar documentos haitianos para uso en Chile es:</p>
<ol>
  <li><strong>Autenticación en Haití:</strong> el documento debe ser autenticado por el Ministerio de Relaciones Exteriores de Haití (Ministère des Affaires Étrangères) en Puerto Príncipe, que certifica la firma del funcionario emisor.</li>
  <li><strong>Autenticación consular chilena:</strong> una vez autenticado por el Ministerio haitiano, el documento se presenta al <strong>Consulado de Chile en Haití</strong> para su autenticación. La firma consular chilena es la que reconoce el SERMIG.</li>
  <li><strong>Traducción jurada:</strong> el documento legalizado, si está en francés o creole, debe ser traducido por un <strong>traductor jurado</strong> reconocido por el Ministerio de Relaciones Exteriores de Chile. Ver más abajo.</li>
</ol>
<p>Cada paso tiene sus propios costos y tiempos. El proceso completo desde Haití puede tomar varias semanas.</p>

<h2>Traducción jurada al español</h2>
<p>Los documentos en francés o creole haitiano deben traducirse al español por un <strong>traductor oficial jurado</strong>. En Chile, el Ministerio de Relaciones Exteriores mantiene un registro de traductores habilitados por idioma, disponible en <a href="https://www.minrel.gob.cl" target="_blank" rel="noopener noreferrer">minrel.gob.cl</a>. El traductor firma y sella la traducción, dando fe de su exactitud.</p>
<ul>
  <li>Costo estimado: varía según el largo del documento y el traductor. Pide cotización a varios traductores antes de decidir.</li>
  <li>El creole haitiano (kreyòl ayisyen) tiene traductores jurados habilitados en Chile — verifica en el registro del Minrel.</li>
</ul>

<h2>Documentos más solicitados</h2>
<ul>
  <li><strong>Acta de nacimiento (Extrait d'Acte de Naissance):</strong> emitido por las Oficinas del Estado Civil (Office de l'Etat Civil). Si el nacimiento no fue registrado — situación no infrecuente en zonas rurales o post-terremoto 2010 — se requieren procedimientos alternativos.</li>
  <li><strong>Certificado de antecedentes penales:</strong> emitido por la Dirección Central de la Policía Judicial (DCPJ) del Ministerio de Justicia.</li>
  <li><strong>Acta de matrimonio:</strong> emitida por el Estado Civil o, si fue matrimonio religioso, por la iglesia con posterior registro civil.</li>
  <li><strong>Documentos de estudios:</strong> certificados del Ministerio de Educación Nacional de Haití.</li>
</ul>

<h2>Dificultades documentales específicas</h2>
<p>Algunos ciudadanos haitianos tienen dificultades especiales:</p>
<ul>
  <li><strong>Sin registro de nacimiento:</strong> el terremoto de 2010 destruyó muchos registros civiles. Si no puedes obtener tu acta de nacimiento, consulta con el SERMIG sobre documentos alternativos aceptados o con ACNUR sobre protección internacional.</li>
  <li><strong>Sin pasaporte vigente:</strong> el pasaporte haitiano puede obtenerse o renovarse a través del Consulado de Haití en Santiago. Sin pasaporte, los trámites migratorios son muy difíciles — prioriza renovarlo.</li>
</ul>

<h2>Organizaciones de apoyo en Chile</h2>
<ul>
  <li><strong>Consulado de Haití en Santiago:</strong> para renovar documentos de identidad haitianos.</li>
  <li><strong>ACNUR Chile:</strong> para personas en necesidad de protección internacional.</li>
  <li><strong>OIM Chile (Organización Internacional para las Migraciones):</strong> orientación y apoyo para migrantes.</li>
  <li><strong>Comunidades haitianas en Chile:</strong> pueden recomendar traductores jurados de francés/creole con experiencia en documentos haitianos.</li>
</ul>
  $x4$,
  '[
    {
      "question": "¿Puedo apostillar documentos haitianos como los de Colombia o Venezuela?",
      "answer": "No. Haití no es parte de la Convención de La Haya sobre apostilla, por lo que sus documentos no pueden apostillarse. El único mecanismo válido es la legalización consular: autenticación por el Ministerio de Relaciones Exteriores de Haití y luego autenticación por el Consulado de Chile en Haití."
    },
    {
      "question": "¿Cuánto demora todo el proceso de legalización y traducción?",
      "answer": "El proceso completo puede tomar entre 4 y 12 semanas, dependiendo de la agilidad del Ministerio haitiano, la disponibilidad de citas en el Consulado chileno en Haití, y el tiempo de la traducción jurada en Chile. Planifica con bastante anticipación."
    },
    {
      "question": "¿Qué pasa si no tengo acta de nacimiento porque no fue registrado en el Estado Civil?",
      "answer": "Es una situación que afecta a varias personas haitianas, especialmente nacidas en zonas rurales o tras el terremoto de 2010. El SERMIG puede aceptar declaraciones alternativas o documentos sustitutos en ciertos casos. ACNUR puede orientar sobre solicitud de protección internacional si los problemas documentales te impiden regularizarte por vías normales."
    },
    {
      "question": "¿Mi pasaporte haitiano vencido sirve para trámites migratorios en Chile?",
      "answer": "Un pasaporte vencido tiene valor limitado — puede usarse como documento de identidad en algunos casos, pero no como documento de viaje vigente. Para trámites migratorios importantes, el SERMIG puede aceptarlo dependiendo del tipo de trámite. Lo más recomendable es renovarlo en el Consulado de Haití en Santiago antes de iniciar cualquier solicitud de visa o Permanencia Definitiva."
    }
  ]'::jsonb,
  ARRAY[
    'haiti',
    'visa-temporaria',
    'problemas/antecedentes-penales',
    'autodenuncia',
    'visa-temporaria/razones-humanitarias'
  ]::TEXT[],
  7,
  TRUE,
  NOW()
)
ON CONFLICT (slug) DO NOTHING;

-- ──────────────────────────────────────────────────────────
-- Verificación
-- ──────────────────────────────────────────────────────────
SELECT slug, title, is_published
FROM articles
WHERE slug IN (
  'colombia/apostilla-colombia',
  'visa-temporaria/cambio-categoria',
  'vivir-en-chile/convenios-seguridad-social',
  'haiti/documentos-haiti'
)
ORDER BY slug;
