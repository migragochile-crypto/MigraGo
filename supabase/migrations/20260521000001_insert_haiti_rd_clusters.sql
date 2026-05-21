BEGIN;

-- ──────────────────────────────────────────────────────────
-- HAITÍ: pasaporte
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type,
  title, h1, meta_description, keyword_primary,
  content, faq_items, related_slugs, country_tags, is_published
) VALUES (
  'haiti/pasaporte',
  'haiti',
  'haiti',
  'cluster',
  'Pasaporte Haitiano en Chile 2025: Renovar y Obtener desde Chile',
  'Pasaporte haitiano en Chile: cómo renovarlo o solicitarlo',
  'Cómo obtener o renovar el pasaporte haitiano estando en Chile: proceso en el Consulado de Haití en Santiago, documentos, costos y alternativas si no tienes pasaporte. 2025.',
  'pasaporte haitiano chile renovar',
  $content$<h2>¿Por qué el pasaporte haitiano es un obstáculo frecuente?</h2>
<p>Muchos haitianos en Chile tienen dificultades con el pasaporte: vencimiento, extravío, o nunca haber tramitado uno. El sistema de emisión de pasaportes en Haití ha sido afectado por crisis institucionales y desastres naturales, lo que complica los trámites desde el exterior.</p>

<h2>¿Haití tiene Consulado en Chile?</h2>
<p>Sí. El <strong>Consulado General de Haití en Santiago</strong> puede asistirte con trámites de documentos:</p>
<ul>
  <li>Dirección: Av. Apoquindo 3650, piso 7, Las Condes, Santiago.</li>
  <li>Teléfono: +56 2 2246 3710.</li>
  <li>Horario: Lunes a viernes, 9:00-13:00.</li>
</ul>
<p>Sin embargo, la emisión de pasaportes haitianos desde Chile es un proceso lento y con capacidad limitada. El Consulado puede orientarte pero la mayoría de trámites de pasaporte requieren gestión en Haití.</p>

<h2>Renovar o tramitar pasaporte desde Chile</h2>
<p>El proceso depende de la situación:</p>

<h3>Si tu pasaporte está vencido pero tienes copia</h3>
<ol>
  <li>Contacta al Consulado de Haití en Santiago para verificar si pueden tramitar renovación localmente.</li>
  <li>En paralelo, si tienes familia en Haití, pueden iniciar el trámite presencialmente en la <strong>Dirección de la Immigration et de l'Émigration</strong> en Puerto Príncipe.</li>
  <li>Una vez emitido el nuevo pasaporte en Haití, puede enviarse por correo a Chile (DHL o Fedex, ~7-14 días).</li>
</ol>

<h3>Si nunca has tenido pasaporte</h3>
<ol>
  <li>Necesitas tramitarlo en Haití, ya sea en persona o por apoderado.</li>
  <li>Un familiar puede tramitar con tu poder notarial legalizado.</li>
  <li>El Consulado en Santiago puede orientarte sobre el proceso exacto actualizado.</li>
</ol>

<h3>Si perdiste el pasaporte en Chile</h3>
<ol>
  <li>Denuncia la pérdida ante Carabineros (para efectos de seguro o constancia).</li>
  <li>Contacta el Consulado de Haití en Santiago para solicitar un documento de viaje de emergencia o un nuevo pasaporte.</li>
  <li>El SERMIG puede aceptar otros documentos de identidad mientras tramitas el pasaporte — consulta caso a caso.</li>
</ol>

<h2>¿El SERMIG acepta otros documentos si no tengo pasaporte?</h2>
<p>En casos justificados, el SERMIG puede aceptar documentos alternativos de identidad. Esto se evalúa caso a caso. Si estás en esta situación:</p>
<ul>
  <li>Contacta directamente al SERMIG explicando la situación.</li>
  <li>Presenta constancia del Consulado haitiano indicando que el pasaporte está en trámite.</li>
  <li>Organizaciones como INCAMI, Fundación Scalabrini o ACNUR pueden orientarte y acompañar la gestión.</li>
</ul>

<h2>Costos estimados del pasaporte haitiano</h2>
<ul>
  <li>Trámite en Haití: varía, ~USD 50-100 según urgencia.</li>
  <li>Envío postal Haití → Chile: ~USD 30-60 (DHL o Fedex).</li>
</ul>

<h2>Recomendación</h2>
<p>No esperes a que el pasaporte venza para renovarlo. Inicia el trámite con al menos 6 meses de anticipación, especialmente si tu visa o residencia temporal está próxima a renovarse.</p>$content$,
  $faq$[
    {
      "question": "¿Puedo renovar mi pasaporte haitiano desde Chile?",
      "answer": "Parcialmente. El Consulado General de Haití en Santiago puede orientarte y en algunos casos gestionar renovaciones. Sin embargo, la mayor parte de los trámites de pasaporte requieren gestión en Haití, en persona o por apoderado con poder notarial."
    },
    {
      "question": "¿El SERMIG acepta otro documento si no tengo pasaporte?",
      "answer": "En casos justificados, el SERMIG puede aceptar documentos alternativos mientras el pasaporte está en trámite. Debe evaluarse caso a caso — contacta directamente al SERMIG o a una organización de apoyo como INCAMI o Fundación Scalabrini."
    },
    {
      "question": "¿Dónde está el Consulado de Haití en Chile?",
      "answer": "Consulado General de Haití en Santiago: Av. Apoquindo 3650, piso 7, Las Condes. Tel: +56 2 2246 3710. Horario: lunes a viernes 9:00-13:00."
    },
    {
      "question": "¿Qué hago si perdí mi pasaporte haitiano en Chile?",
      "answer": "Denuncia la pérdida ante Carabineros y contacta inmediatamente el Consulado de Haití en Santiago. Ellos pueden emitir un documento de viaje de emergencia o iniciar trámite de nuevo pasaporte."
    }
  ]$faq$,
  ARRAY[
    'haiti',
    'haiti/documentos-traducidos',
    'haiti/regularizacion',
    'autodenuncia'
  ],
  ARRAY['haiti'],
  TRUE
) ON CONFLICT (slug) DO NOTHING;

-- ──────────────────────────────────────────────────────────
-- HAITÍ: documentos-traducidos
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type,
  title, h1, meta_description, keyword_primary,
  content, faq_items, related_slugs, country_tags, is_published
) VALUES (
  'haiti/documentos-traducidos',
  'haiti',
  'haiti',
  'cluster',
  'Documentos Haitianos Traducidos para Chile 2025: Créole y Francés',
  'Cómo traducir documentos haitianos al español para trámites en Chile',
  'Cómo legalizar y traducir documentos haitianos (créole y francés) para trámites migratorios en Chile: traductor jurado, legalización consular y costos. 2025.',
  'traduccion documentos haitianos chile',
  $content$<h2>¿Por qué los documentos haitianos requieren más trámites?</h2>
<p>Los documentos haitianos presentan dos desafíos que no tienen otros países latinoamericanos:</p>
<ol>
  <li><strong>Idioma:</strong> los documentos oficiales en Haití están en <strong>créole haitiano</strong> y/o <strong>francés</strong> — no en español. El SERMIG exige traducción oficial al español.</li>
  <li><strong>Sin apostilla:</strong> Haití <strong>no es signatario del Convenio de La Haya</strong>, por lo que no puede apostillar documentos. En su lugar se usa el proceso de <strong>legalización consular</strong>.</li>
</ol>

<h2>Proceso de legalización de documentos haitianos</h2>
<p>Como Haití no tiene apostilla, el proceso de validación es más largo:</p>
<ol>
  <li><strong>Obtención del documento original</strong> en Haití (acta de nacimiento, antecedentes penales, etc.).</li>
  <li><strong>Legalización ante el Ministerio de Relaciones Exteriores de Haití</strong> (Ministère des Affaires Étrangères, Puerto Príncipe).</li>
  <li><strong>Legalización ante el Consulado de Chile en Haití</strong> (o el más cercano si no hay en Puerto Príncipe — a veces se usa el de República Dominicana).</li>
  <li><strong>Traducción oficial al español</strong> por traductor jurado en Chile.</li>
</ol>

<h2>Documentos más solicitados</h2>
<ul>
  <li><strong>Acta de nacimiento (Acte de Naissance):</strong> emitida por el Officier de l'État Civil de la zona de nacimiento.</li>
  <li><strong>Certificado de antecedentes penales (Extrait du Casier Judiciaire):</strong> emitido por el Ministerio de Justicia de Haití.</li>
  <li><strong>Acta de matrimonio (Acte de Mariage):</strong> si aplica.</li>
</ul>

<h2>Traducción jurada en Chile</h2>
<p>Una vez legalizados, los documentos deben ser traducidos por un <strong>traductor jurado oficial</strong> reconocido por el Ministerio de Relaciones Exteriores de Chile. Para documentos en francés y créole:</p>
<ul>
  <li>Busca traductores jurados de <strong>francés-español</strong> (el créole generalmente lo traduce un hablante nativo con acreditación o un traductor de francés con conocimiento del créole).</li>
  <li>Puedes encontrar traductores jurados en el registro del <strong>Ministerio de Relaciones Exteriores de Chile</strong> (minrel.gob.cl).</li>
  <li>También existen traductores especializados en documentos haitianos en Santiago, especialmente en comunas como Quilicura y Estación Central donde se concentra la comunidad haitiana.</li>
</ul>

<h2>Costos estimados</h2>
<ul>
  <li>Legalización en Haití (por documento): variable, ~USD 10-30.</li>
  <li>Legalización consular chilena: ~USD 20-50 por documento.</li>
  <li>Traducción jurada en Chile: ~CLP 30.000-80.000 por documento (según extensión).</li>
  <li><strong>Total por documento:</strong> ~USD 50-100 + traducción.</li>
</ul>

<h2>Organizaciones de apoyo en Santiago</h2>
<p>Por la complejidad del proceso, muchos haitianos recurren a organizaciones que conocen el proceso y pueden orientarlos:</p>
<ul>
  <li><strong>INCAMI</strong> (Instituto Católico Chileno de Migración): orientación y acompañamiento.</li>
  <li><strong>Fundación Scalabrini:</strong> apoyo jurídico y documental.</li>
  <li><strong>ACNUR:</strong> para casos con necesidad de protección internacional.</li>
  <li><strong>OIM:</strong> asistencia y derivación.</li>
</ul>

<h2>Si no tienes acta de nacimiento</h2>
<p>Algunos haitianos, especialmente de zonas rurales o afectados por el terremoto de 2010, no tienen acta de nacimiento registrada. En este caso:</p>
<ul>
  <li>Existe un proceso de declaración tardía ante el Officier de l'État Civil en Haití (puede realizarlo un apoderado).</li>
  <li>Consulta con el SERMIG si acepta declaración jurada de identidad con testigos como alternativa temporal.</li>
  <li>ACNUR puede asistir en casos donde la falta de documentos está relacionada con situaciones de desplazamiento o crisis.</li>
</ul>$content$,
  $faq$[
    {
      "question": "¿Los documentos haitianos necesitan apostilla?",
      "answer": "No, porque Haití no es signatario del Convenio de La Haya. En lugar de apostilla, los documentos pasan por legalización consular: primero ante el Ministerio de RREE de Haití, luego ante el Consulado chileno. Es un proceso más largo pero igualmente válido."
    },
    {
      "question": "¿Dónde encuentro un traductor jurado de créole en Chile?",
      "answer": "En el registro de traductores jurados del Ministerio de Relaciones Exteriores de Chile (minrel.gob.cl). También hay traductores especializados en documentos haitianos en comunas como Quilicura y Estación Central donde se concentra la comunidad haitiana."
    },
    {
      "question": "¿Cuánto cuesta traducir un documento haitiano al español?",
      "answer": "Una traducción jurada en Chile cuesta aproximadamente CLP 30.000-80.000 por documento según su extensión. Suma a eso la legalización consular (~USD 20-50 por documento) si los documentos no vinieron ya legalizados."
    },
    {
      "question": "¿Qué hago si no tengo acta de nacimiento de Haití?",
      "answer": "Puedes iniciar un proceso de declaración tardía ante el Officier de l'État Civil en Haití (por apoderado). Mientras tanto, consulta con el SERMIG si acepta declaración jurada de identidad como alternativa. Organizaciones como ACNUR o INCAMI pueden orientarte en casos complejos."
    }
  ]$faq$,
  ARRAY[
    'haiti',
    'haiti/pasaporte',
    'haiti/regularizacion',
    'haiti/visas-haitianas',
    'vivir-en-chile/apostilla-traduccion'
  ],
  ARRAY['haiti'],
  TRUE
) ON CONFLICT (slug) DO NOTHING;

-- ──────────────────────────────────────────────────────────
-- HAITÍ: regularizacion
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type,
  title, h1, meta_description, keyword_primary,
  content, faq_items, related_slugs, country_tags, is_published
) VALUES (
  'haiti/regularizacion',
  'haiti',
  'haiti',
  'cluster',
  'Regularización Migratoria para Haitianos en Chile 2025',
  'Cómo regularizarse en Chile siendo haitiano',
  'Cómo regularizar la situación migratoria en Chile siendo haitiano: autodenuncia PDI, opciones de visa disponibles, documentos necesarios y organizaciones de apoyo. 2025.',
  'regularizacion haitiano chile',
  $content$<h2>¿Estás en situación irregular en Chile?</h2>
<p>Si tu visa venció, ingresaste sin los documentos requeridos o tu solicitud fue rechazada y no saliste del país, estás en situación irregular. Esto tiene consecuencias: multas crecientes, imposibilidad de trabajar formalmente y riesgo de expulsión. La solución es regularizarse.</p>

<h2>Paso 1: Autodenuncia ante la PDI</h2>
<p>El primer paso para regularizarse es presentarse voluntariamente ante la <strong>PDI (Policía de Investigaciones)</strong>. No ante el SERMIG — ante la PDI.</p>
<ul>
  <li>La autodenuncia es voluntaria y permite iniciar el proceso de regularización.</li>
  <li>Al presentarte, la PDI registra tu situación y te entrega un certificado de autodenuncia.</li>
  <li>Con ese certificado puedes solicitar la visa que corresponde a tu situación.</li>
</ul>
<p>Ver guía completa: <a href="/autodenuncia">Autodenuncia Migratoria en Chile</a>.</p>

<h2>Paso 2: Definir qué visa solicitar</h2>
<p>Con el certificado de autodenuncia, el siguiente paso es elegir la categoría de visa según tu situación. Para haitianos las opciones son:</p>
<ul>
  <li><strong>Por contrato de trabajo:</strong> si tienes empleador dispuesto a firmarte contrato.</li>
  <li><strong>Por hijo chileno:</strong> si tienes un hijo nacido en Chile.</li>
  <li><strong>Por pareja chilena:</strong> si tienes cónyuge o conviviente civil chileno/a.</li>
  <li><strong>Por razones humanitarias:</strong> si tienes situación de vulnerabilidad acreditada.</li>
</ul>
<p>Ver opciones detalladas: <a href="/haiti/visas-haitianas">Visas disponibles para haitianos</a>.</p>

<h2>Paso 3: Reunir los documentos</h2>
<p>Los documentos necesarios varían según la categoría de visa, pero siempre incluyen:</p>
<ul>
  <li>Pasaporte haitiano vigente (o en trámite con constancia del Consulado).</li>
  <li>Certificado de antecedentes penales de Haití, legalizado y traducido.</li>
  <li>Acta de nacimiento, legalizada y traducida.</li>
  <li>Documentos de respaldo según la categoría (contrato, acta de nacimiento del hijo, etc.).</li>
</ul>
<p>Ver: <a href="/haiti/documentos-traducidos">Cómo legalizar y traducir documentos haitianos</a>.</p>

<h2>Paso 4: Presentar solicitud al SERMIG</h2>
<p>La solicitud se presenta en el portal online del SERMIG: <strong>tramitesmigratorios.interior.gob.cl</strong>. Debes subir todos los documentos escaneados. El SERMIG notificará la resolución — puede tardar 60-180 días.</p>

<h2>¿Qué pasa con las multas acumuladas?</h2>
<p>Si estuviste en situación irregular, habrás acumulado multas. Estas deben pagarse antes de completar la regularización. El monto depende de los días de irregularidad. Ver: <a href="/problemas-migratorios/multas-migratorias">Multas migratorias: cómo calcularlas y pagarlas</a>.</p>

<h2>Organizaciones que pueden acompañarte</h2>
<p>El proceso puede ser complejo, especialmente con documentos en créole o francés. Estas organizaciones ofrecen orientación gratuita:</p>
<ul>
  <li><strong>INCAMI:</strong> atención a migrantes, asesoría jurídica gratuita.</li>
  <li><strong>Fundación Scalabrini:</strong> apoyo jurídico y documental.</li>
  <li><strong>ACNUR:</strong> para casos con elementos de protección internacional.</li>
  <li><strong>OIM:</strong> información y derivación.</li>
</ul>$content$,
  $faq$[
    {
      "question": "¿Cómo me regularizo si soy haitiano y estoy sin papeles en Chile?",
      "answer": "El proceso comienza con la autodenuncia voluntaria ante la PDI. Con el certificado de autodenuncia, solicitas al SERMIG la visa que corresponde a tu situación (contrato de trabajo, hijo chileno, razones humanitarias, etc.)."
    },
    {
      "question": "¿Me pueden expulsar si me presento a la PDI?",
      "answer": "La autodenuncia está pensada para iniciar la regularización, no para expulsar. Sin embargo, si no cumples ningún requisito de visa disponible, la PDI puede notificar una expulsión. Por eso es recomendable ir acompañado de una organización de apoyo o abogado."
    },
    {
      "question": "¿Puedo regularizarme si no tengo contrato de trabajo?",
      "answer": "Sí, si tienes hijo chileno, pareja chilena o puedes acreditar razones humanitarias. Sin ninguna de estas causales, la regularización es difícil pero no imposible — consulta con INCAMI o una clínica jurídica antes de presentarte."
    },
    {
      "question": "¿Qué pasa con las multas si estuve irregular?",
      "answer": "Las multas se calculan por los días en situación irregular y deben pagarse antes de completar la regularización. El monto puede ser alto si llevas mucho tiempo. El SERMIG puede darte un plazo para pagarlas."
    }
  ]$faq$,
  ARRAY[
    'haiti',
    'autodenuncia',
    'haiti/visas-haitianas',
    'haiti/documentos-traducidos',
    'problemas-migratorios/multas-migratorias'
  ],
  ARRAY['haiti'],
  TRUE
) ON CONFLICT (slug) DO NOTHING;

-- ──────────────────────────────────────────────────────────
-- HAITÍ: reagrupacion-familiar
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type,
  title, h1, meta_description, keyword_primary,
  content, faq_items, related_slugs, country_tags, is_published
) VALUES (
  'haiti/reagrupacion-familiar',
  'haiti',
  'haiti',
  'cluster',
  'Reagrupación Familiar para Haitianos en Chile 2025',
  'Cómo traer a tu familia desde Haití a Chile',
  'Guía para haitianos que quieren traer a su familia a Chile: visa de reagrupación familiar, documentos necesarios, costos y proceso SERMIG. 2025.',
  'reagrupacion familiar haitiano chile',
  $content$<h2>¿Puedo traer a mi familia desde Haití a Chile?</h2>
<p>Sí. Si tienes <strong>Residencia Temporal o Definitiva vigente</strong> en Chile, puedes solicitar visa de reagrupación familiar para tu cónyuge, hijos y en algunos casos otros dependientes.</p>

<h2>¿Quién puede venir bajo reagrupación familiar?</h2>
<ul>
  <li><strong>Cónyuge o pareja:</strong> esposo/a con matrimonio legalmente registrado, o pareja con Acuerdo de Unión Civil (AUC) reconocido.</li>
  <li><strong>Hijos menores de edad:</strong> bajo tu tuición o cuidado personal.</li>
  <li><strong>Hijos mayores dependientes:</strong> en casos especiales (discapacidad, estudios).</li>
  <li><strong>Padres dependientes:</strong> si puedes demostrar que dependen económicamente de ti.</li>
</ul>

<h2>Requisitos para el solicitante en Chile</h2>
<ul>
  <li>Residencia Temporal vigente (mínimo 1 año) o Residencia Definitiva.</li>
  <li>Demostrar capacidad económica para mantener a los familiares (contrato de trabajo o comprobante de ingresos).</li>
  <li>No tener antecedentes penales en Chile.</li>
</ul>

<h2>Documentos que necesita cada familiar</h2>
<p>Todos los documentos de Haití deben estar legalizados y traducidos al español:</p>
<ul>
  <li><strong>Pasaporte haitiano vigente</strong> del familiar.</li>
  <li><strong>Acta de nacimiento</strong> (legalizada ante Ministerio RREE de Haití + Consulado chileno + traducción jurada).</li>
  <li><strong>Certificado de antecedentes penales</strong> del familiar (si es mayor de 18 años), legalizado y traducido.</li>
  <li><strong>Acta de matrimonio</strong> (si aplica), legalizada y traducida.</li>
  <li>Para hijos: acta de nacimiento que acredite el vínculo paterno/materno.</li>
</ul>
<p>Ver proceso de legalización y traducción: <a href="/haiti/documentos-traducidos">Documentos haitianos traducidos para Chile</a>.</p>

<h2>Proceso de solicitud</h2>
<ol>
  <li>El familiar debe solicitar la visa en el <strong>Consulado de Chile más cercano a Haití</strong> (puede ser en República Dominicana, ya que Chile no tiene consulado en Puerto Príncipe de forma permanente).</li>
  <li>También es posible que el familiar ingrese como turista a Chile y solicite la visa de reagrupación directamente al SERMIG desde Chile — pero esto implica el riesgo de que la visa no sea aprobada y deban salir.</li>
  <li>La solicitud online se hace en <strong>tramitesmigratorios.interior.gob.cl</strong>.</li>
  <li>El SERMIG puede tardar 60-180 días en resolver.</li>
</ol>

<h2>Educación para los hijos</h2>
<p>Una vez que tus hijos lleguen a Chile con visa vigente, tienen derecho a educación pública gratuita. Los colegios no pueden rechazar la matrícula por nacionalidad. Ver: <a href="/vivir-en-chile/educacion-hijos">Educación para hijos de extranjeros en Chile</a>.</p>

<h2>Costos estimados</h2>
<ul>
  <li>Legalización de documentos en Haití: ~USD 20-60 por documento.</li>
  <li>Traducción jurada en Chile: ~CLP 30.000-80.000 por documento.</li>
  <li>Arancel SERMIG para visa de reagrupación: ~USD 50-100 por persona.</li>
</ul>$content$,
  $faq$[
    {
      "question": "¿Puedo traer a mi esposo/esposa desde Haití si tengo residencia en Chile?",
      "answer": "Sí. Con Residencia Temporal vigente puedes solicitar visa de reagrupación familiar para tu cónyuge. Necesitas acta de matrimonio legalizada (ante el Ministerio de RREE de Haití y el Consulado chileno) y traducida al español."
    },
    {
      "question": "¿Mis hijos pueden venir a Chile y estudiar?",
      "answer": "Sí. Con visa de reagrupación familiar, tus hijos tienen derecho a estudiar en colegios públicos chilenos de forma gratuita. Los colegios no pueden negar la matrícula por nacionalidad."
    },
    {
      "question": "¿Tiene que haber un consulado chileno en Haití para tramitar la visa?",
      "answer": "No necesariamente. Chile no tiene consulado permanente en Puerto Príncipe, pero la visa puede tramitarse en el Consulado de Chile en República Dominicana o directamente desde Chile si el familiar puede ingresar como turista."
    },
    {
      "question": "¿Cuánto tiempo demora traer a mi familia?",
      "answer": "El proceso completo puede tomar 4-8 meses: legalización de documentos en Haití (1-2 meses), tramitación de visa SERMIG (2-6 meses). Inicia el proceso con anticipación."
    }
  ]$faq$,
  ARRAY[
    'haiti',
    'haiti/documentos-traducidos',
    'haiti/visas-haitianas',
    'vivir-en-chile/traer-familia',
    'vivir-en-chile/educacion-hijos'
  ],
  ARRAY['haiti'],
  TRUE
) ON CONFLICT (slug) DO NOTHING;

-- ──────────────────────────────────────────────────────────
-- REPÚBLICA DOMINICANA: requisitos
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type,
  title, h1, meta_description, keyword_primary,
  content, faq_items, related_slugs, country_tags, is_published
) VALUES (
  'republica-dominicana/requisitos',
  'republica-dominicana',
  'republica-dominicana',
  'cluster',
  'Requisitos para Dominicanos en Chile 2025: Documentos y Proceso',
  'Requisitos para dominicanos que quieren vivir en Chile',
  'Todos los requisitos que necesita un dominicano para obtener residencia en Chile: documentos, apostilla, visa consular y proceso SERMIG. Guía actualizada 2025.',
  'requisitos dominicanos Chile residencia',
  $content$<h2>Visión general: lo que necesita un dominicano para vivir en Chile</h2>
<p>A diferencia de ciudadanos de países MERCOSUR (Argentina, Perú, Colombia, etc.), los dominicanos <strong>no pueden solicitar Residencia Temporal MERCOSUR</strong>. República Dominicana no es parte del Acuerdo de Residencia del MERCOSUR. Esto implica que el proceso es más largo y requiere visa consular antes de viajar.</p>

<h2>Requisito previo: visa consular obligatoria</h2>
<p>Los ciudadanos dominicanos deben <strong>obtener visa antes de viajar a Chile</strong>. Esto se hace en el Consulado General de Chile en Santo Domingo. No pueden ingresar como turistas y luego regularizarse desde Chile (a diferencia de otros países).</p>
<p>Ver guía detallada: <a href="/republica-dominicana/visa-consular">Visa consular para dominicanos</a>.</p>

<h2>Documentos personales requeridos</h2>
<p>Independientemente del tipo de visa, necesitas:</p>
<ul>
  <li><strong>Pasaporte dominicano vigente</strong> con mínimo 6 meses de vigencia al momento de solicitar la visa.</li>
  <li><strong>Cédula de identidad dominicana vigente.</strong></li>
  <li><strong>Acta de nacimiento apostillada</strong> — emitida por la Junta Central Electoral (JCE) y apostillada en el Ministerio de Relaciones Exteriores o la JCE.</li>
  <li><strong>Certificado de antecedentes penales apostillado</strong> — emitido por la Procuraduría General de la República o Policía Nacional, apostillado.</li>
</ul>

<h2>Documentos según categoría de visa</h2>
<p>Además de los documentos personales, según tu situación necesitas:</p>
<ul>
  <li><strong>Por contrato de trabajo:</strong> contrato firmado con empleador chileno, firmado ante notario o con legalización según exija el SERMIG.</li>
  <li><strong>Por pareja chilena:</strong> acta de matrimonio apostillada, o certificado de AUC chileno.</li>
  <li><strong>Por hijo chileno:</strong> acta de nacimiento del hijo emitida por el Registro Civil chileno.</li>
  <li><strong>Por razones humanitarias:</strong> documentación que acredite la situación de vulnerabilidad.</li>
</ul>

<h2>Apostilla de documentos dominicanos</h2>
<p>República Dominicana es parte del Convenio de La Haya desde 2009. Los documentos se apostillan en:</p>
<ul>
  <li><strong>Ministerio de Relaciones Exteriores</strong> (Santo Domingo): para la mayoría de documentos.</li>
  <li><strong>Junta Central Electoral (JCE):</strong> para documentos de identidad y estado civil.</li>
</ul>
<p>Ver guía detallada: <a href="/republica-dominicana/documentos-republica-dominicana">Documentos dominicanos para Chile</a>.</p>

<h2>Proceso completo paso a paso</h2>
<ol>
  <li>Obtén y apostilla todos los documentos en República Dominicana.</li>
  <li>Solicita la visa en el Consulado de Chile en Santo Domingo.</li>
  <li>El Consulado evalúa y, si aprueba, emite la visa.</li>
  <li>Viajes a Chile con la visa ya otorgada.</li>
  <li>En Chile, completa el proceso ante el SERMIG y el Registro Civil para obtener tu cédula de extranjero y RUT.</li>
</ol>

<h2>¿Cuánto demora todo el proceso?</h2>
<ul>
  <li>Obtener y apostillar documentos en RD: 1-2 semanas.</li>
  <li>Evaluación del Consulado chileno en Santo Domingo: 4-8 semanas.</li>
  <li>Trámite en Chile post-llegada (cédula, RUT): 1-4 semanas.</li>
  <li><strong>Total estimado:</strong> 2-4 meses desde que empiezas a juntar documentos.</li>
</ul>$content$,
  $faq$[
    {
      "question": "¿Los dominicanos pueden entrar a Chile sin visa?",
      "answer": "Para turismo (hasta 90 días), sí. Pero para residir y trabajar, necesitan visa consular que debe obtenerse en el Consulado de Chile en Santo Domingo antes de viajar. No se puede regularizar la situación laboral/residencia desde Chile."
    },
    {
      "question": "¿Pueden los dominicanos solicitar visa MERCOSUR en Chile?",
      "answer": "No. República Dominicana no es parte del Acuerdo de Residencia del MERCOSUR. Por lo tanto, los dominicanos no pueden acogerse a esa categoría y deben usar otras vías (contrato de trabajo, pareja o hijo chileno, razones humanitarias)."
    },
    {
      "question": "¿Dónde apostillo mis documentos dominicanos?",
      "answer": "En el Ministerio de Relaciones Exteriores de República Dominicana (Santo Domingo) o en la Junta Central Electoral (JCE) para documentos de identidad y estado civil. República Dominicana es miembro del Convenio de La Haya desde 2009."
    },
    {
      "question": "¿Qué es lo primero que debo hacer para emigrar a Chile desde RD?",
      "answer": "Reunir y apostillar los documentos (acta de nacimiento, antecedentes penales), luego solicitar la visa en el Consulado de Chile en Santo Domingo. Una vez con visa aprobada, puedes viajar y completar el proceso en Chile."
    }
  ]$faq$,
  ARRAY[
    'republica-dominicana',
    'republica-dominicana/visa-consular',
    'republica-dominicana/documentos-republica-dominicana',
    'residencia-temporal'
  ],
  ARRAY['republica-dominicana'],
  TRUE
) ON CONFLICT (slug) DO NOTHING;

-- ──────────────────────────────────────────────────────────
-- REPÚBLICA DOMINICANA: visa-consular
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type,
  title, h1, meta_description, keyword_primary,
  content, faq_items, related_slugs, country_tags, is_published
) VALUES (
  'republica-dominicana/visa-consular',
  'republica-dominicana',
  'republica-dominicana',
  'cluster',
  'Visa Consular para Dominicanos en Chile 2025: Cómo Solicitarla',
  'Visa consular para dominicanos: cómo solicitarla en el Consulado de Chile',
  'Cómo solicitar visa consular en el Consulado de Chile en Santo Domingo: documentos, proceso, costos y tiempos. Obligatorio para dominicanos que quieren residir en Chile. 2025.',
  'visa consular dominicanos chile consulado',
  $content$<h2>¿Por qué los dominicanos necesitan visa consular?</h2>
<p>A diferencia de ciudadanos de muchos países latinoamericanos, los dominicanos <strong>deben obtener visa antes de viajar a Chile</strong> para residir o trabajar. Este trámite se realiza en el <strong>Consulado General de Chile en Santo Domingo</strong> — no puede hacerse desde Chile.</p>
<p>Esto no aplica para turismo (hasta 90 días sin visa), pero sí para cualquier intención de residir, trabajar o estudiar en Chile.</p>

<h2>Consulado General de Chile en Santo Domingo</h2>
<ul>
  <li><strong>Dirección:</strong> Calle Pedro Henríquez Ureña 133, esquina Av. Luperón, Los Prados, Santo Domingo.</li>
  <li><strong>Teléfono:</strong> +1 809 532 5151.</li>
  <li><strong>Web:</strong> chileabroad.gov.cl → República Dominicana.</li>
  <li><strong>Horario de atención consular:</strong> Lunes a viernes, 9:00-13:00 (verifica antes de ir, puede variar).</li>
</ul>

<h2>Tipos de visa consular disponibles</h2>
<p>El Consulado puede otorgar diferentes tipos de visa según tu situación:</p>
<ul>
  <li><strong>Visa Sujeta a Contrato (trabajo):</strong> si tienes contrato firmado con empleador chileno.</li>
  <li><strong>Visa por vínculo familiar:</strong> si tienes cónyuge, pareja civil o hijo chileno.</li>
  <li><strong>Visa de estudiante:</strong> si tienes carta de admisión de institución chilena.</li>
  <li><strong>Visa por razones humanitarias:</strong> para situaciones de vulnerabilidad.</li>
</ul>

<h2>Documentos requeridos (base para todas las categorías)</h2>
<ul>
  <li>Pasaporte dominicano vigente (mínimo 6 meses de vigencia desde la fecha de solicitud).</li>
  <li>Formulario de solicitud de visa (disponible en el Consulado o en chileabroad.gov.cl).</li>
  <li>Acta de nacimiento apostillada (emitida por la JCE).</li>
  <li>Certificado de antecedentes penales apostillado (Procuraduría General o Policía Nacional).</li>
  <li>2 fotografías tamaño pasaporte, fondo blanco.</li>
  <li>Comprobante de pago del arancel consular.</li>
</ul>

<h2>Documentos adicionales por categoría</h2>
<ul>
  <li><strong>Trabajo:</strong> contrato de trabajo original firmado por empleador chileno, con la firma del empleador legalizada.</li>
  <li><strong>Familiar:</strong> acta de matrimonio apostillada o certificado de AUC chileno, o acta de nacimiento del hijo (Registro Civil chileno).</li>
  <li><strong>Estudiante:</strong> carta de admisión de la institución, comprobante de financiamiento.</li>
</ul>

<h2>Proceso paso a paso</h2>
<ol>
  <li><strong>Reúne todos los documentos</strong> apostillados y los específicos de tu categoría.</li>
  <li><strong>Solicita cita</strong> en el Consulado (algunos cónsulados usan sistema online, otros permiten presentación directa — verifica en el sitio).</li>
  <li><strong>Preséntate en el Consulado</strong> con todos los documentos originales y copias.</li>
  <li><strong>El Consulado evalúa</strong> la solicitud y puede pedir documentación adicional.</li>
  <li><strong>Si se aprueba,</strong> el Consulado estampa la visa en el pasaporte o emite un documento de visa.</li>
  <li><strong>Viajes a Chile</strong> con la visa aprobada — al ingresar, debes registrarte en el SERMIG en 30 días.</li>
</ol>

<h2>Plazos estimados</h2>
<ul>
  <li>Evaluación consular: 4-8 semanas desde la presentación de documentos completos.</li>
  <li>Si se piden documentos adicionales, el plazo se reinicia.</li>
</ul>

<h2>Costo</h2>
<ul>
  <li>Arancel consular: varía según categoría de visa, generalmente entre USD 30-100. Verificar en chileabroad.gov.cl antes de la cita.</li>
</ul>

<h2>¿Qué pasa si el Consulado rechaza la visa?</h2>
<p>Si el Consulado rechaza la solicitud, recibirás una resolución con los fundamentos. Puedes:</p>
<ul>
  <li>Subsanar los documentos faltantes y presentar nueva solicitud.</li>
  <li>Recurrir ante la Dirección Consular del Ministerio de Relaciones Exteriores de Chile si consideras que el rechazo fue injustificado.</li>
</ul>

<h2>Después de llegar a Chile con la visa</h2>
<p>Con la visa consular aprobada y el ingreso a Chile, debes:</p>
<ol>
  <li>Registrarte en el SERMIG en los primeros 30 días: <strong>tramitesmigratorios.interior.gob.cl</strong>.</li>
  <li>Obtener tu <strong>cédula de identidad de extranjero</strong> en el Registro Civil (incluye tu RUT).</li>
</ol>$content$,
  $faq$[
    {
      "question": "¿Dónde solicita la visa consular un dominicano para ir a Chile?",
      "answer": "En el Consulado General de Chile en Santo Domingo, ubicado en calle Pedro Henríquez Ureña 133, Los Prados. La solicitud debe hacerse antes de viajar — no se puede regularizar la situación laboral desde Chile."
    },
    {
      "question": "¿Cuánto demora el Consulado en aprobar la visa?",
      "answer": "Entre 4 y 8 semanas desde que presentas los documentos completos. Si el Consulado solicita documentación adicional, el plazo puede extenderse."
    },
    {
      "question": "¿Qué documentos son obligatorios para cualquier visa consular?",
      "answer": "Pasaporte vigente (6+ meses), acta de nacimiento apostillada, certificado de antecedentes penales apostillado, formulario de solicitud, fotos y comprobante de pago del arancel. Según la categoría, se suman documentos adicionales (contrato, acta de matrimonio, etc.)."
    },
    {
      "question": "¿Qué hago cuando llego a Chile con la visa aprobada?",
      "answer": "Tienes 30 días para registrarte en el SERMIG (tramitesmigratorios.interior.gob.cl). Luego ve al Registro Civil para obtener tu cédula de identidad de extranjero y tu RUT definitivo."
    },
    {
      "question": "¿Puedo solicitar la visa directamente en Chile si estoy de turista?",
      "answer": "En la práctica, los dominicanos deben tramitar la visa consular antes de viajar. Hacerlo desde Chile como turista es posible en algunos casos pero genera mayor incertidumbre — es preferible hacer el proceso completo en Santo Domingo."
    }
  ]$faq$,
  ARRAY[
    'republica-dominicana',
    'republica-dominicana/requisitos',
    'republica-dominicana/documentos-republica-dominicana',
    'residencia-temporal',
    'vivir-en-chile/rut-extranjero'
  ],
  ARRAY['republica-dominicana'],
  TRUE
) ON CONFLICT (slug) DO NOTHING;

COMMIT;
