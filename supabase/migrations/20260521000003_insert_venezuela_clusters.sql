BEGIN;

-- venezuela/pasaporte
INSERT INTO articles (
  slug, silo, parent_slug, type,
  title, h1, meta_description, keyword_primary,
  content, faq_items, related_slugs, country_tags, is_published
) VALUES (
  'venezuela/pasaporte',
  'venezuela',
  'venezuela',
  'cluster',
  'Pasaporte Venezolano en Chile 2025: Renovar y Trámites desde Chile',
  'Pasaporte venezolano en Chile: cómo renovarlo o tramitarlo',
  'Cómo renovar o tramitar el pasaporte venezolano estando en Chile: proceso en el Consulado venezolano, documentos alternativos aceptados por el SERMIG y opciones si no tienes pasaporte. 2025.',
  'pasaporte venezolano chile renovar',
  $content$<h2>El pasaporte venezolano: el obstáculo más frecuente</h2>
<p>Para muchos venezolanos en Chile, el pasaporte es el principal obstáculo. El sistema de emisión de pasaportes en Venezuela ha colapsado parcialmente: turnos que tardan años, costos elevados en dólares y oficinas con capacidad limitada. Esta guía explica las opciones disponibles.</p>

<h2>Consulado de Venezuela en Chile</h2>
<p>El <strong>Consulado General de Venezuela en Santiago</strong> puede gestionar algunos trámites de pasaporte:</p>
<ul>
  <li><strong>Dirección:</strong> Buscar dirección actualizada en la web oficial — la ubicación ha cambiado en años recientes.</li>
  <li><strong>Sitio web:</strong> consulado.venezolasenchile.com o a través de la Embajada de Venezuela.</li>
  <li><strong>Reserva de cita:</strong> el sistema de citas ha sido intermitente — revisa los canales oficiales de la embajada venezolana en Chile para el sistema vigente.</li>
</ul>
<p><strong>Importante:</strong> la capacidad del Consulado es limitada y los turnos pueden tardar meses. Inicia el proceso con la mayor anticipación posible.</p>

<h2>Tipos de pasaporte venezolano</h2>
<p>Venezuela emite dos tipos:</p>
<ul>
  <li><strong>Pasaporte ordinario:</strong> vigencia de 10 años. Es el documento estándar para trámites migratorios.</li>
  <li><strong>Pasaporte de emergencia (salvoconducto):</strong> vigencia corta, para situaciones urgentes de viaje. Puede no ser aceptado por el SERMIG para solicitud de residencia.</li>
</ul>

<h2>¿El SERMIG acepta la cédula venezolana en lugar del pasaporte?</h2>
<p>En algunos casos el SERMIG ha aceptado la <strong>cédula de identidad venezolana</strong> como documento de identidad válido para iniciar trámites, especialmente cuando el pasaporte está en proceso de renovación. Sin embargo, esto no es garantía universal:</p>
<ul>
  <li>Solicita al Consulado venezolano una <strong>constancia de que el pasaporte está en trámite</strong>.</li>
  <li>Preséntate al SERMIG explicando la situación — muchos funcionarios tienen instrucciones de flexibilizar para venezolanos.</li>
  <li>Consulta también con organizaciones como INCAMI o Fundación Scalabrini, que conocen el estado actual de la política del SERMIG hacia venezolanos sin pasaporte vigente.</li>
</ul>

<h2>Si tu pasaporte está por vencer</h2>
<p>Si tu pasaporte vence en menos de 6 meses, el SERMIG puede rechazar tu solicitud de residencia temporal. Inicia el trámite de renovación <strong>antes</strong> de presentar tu solicitud de visa. Opciones:</p>
<ol>
  <li>Agenda cita en el Consulado venezolano en Santiago lo antes posible.</li>
  <li>Si tienes familiares en Venezuela, también pueden iniciar el trámite presencialmente en SAIME (Servicio Administrativo de Identificación, Migración y Extranjería).</li>
  <li>Pide al SERMIG una prórroga de turismo mientras el pasaporte está en trámite.</li>
</ol>

<h2>Si nunca has tenido pasaporte</h2>
<p>El trámite de primera vez es más complejo desde el exterior. Opciones:</p>
<ul>
  <li>Contactar al Consulado de Venezuela en Santiago para verificar si pueden tramitarlo localmente.</li>
  <li>Solicitar a un familiar en Venezuela que lo inicie presencialmente en el SAIME.</li>
  <li>Algunas organizaciones venezolanas en Chile tienen información actualizada sobre los procesos vigentes.</li>
</ul>

<h2>Costos del pasaporte venezolano</h2>
<p>El costo oficial del pasaporte venezolano ha variado. Al momento de esta guía:</p>
<ul>
  <li>La tasa gubernamental venezolana se paga en dólares o su equivalente.</li>
  <li>En el Consulado en Chile, consulta directamente el monto vigente ya que cambia con frecuencia.</li>
</ul>

<h2>Siguiente paso</h2>
<p>Con el pasaporte en trámite o renovado, el siguiente paso es revisar tus opciones de visa. Ver: <a href="/paises/venezuela">Opciones de visa para venezolanos en Chile</a>.</p>$content$,
  $faq$[
    {
      "question": "¿Dónde renuevo el pasaporte venezolano estando en Chile?",
      "answer": "En el Consulado General de Venezuela en Santiago. El sistema de citas es limitado — agenda con la mayor anticipación posible. También puedes iniciar el trámite vía SAIME con ayuda de un familiar en Venezuela."
    },
    {
      "question": "¿El SERMIG acepta la cédula venezolana si no tengo pasaporte?",
      "answer": "En muchos casos sí, especialmente si presentas constancia del Consulado venezolano de que el pasaporte está en trámite. No es garantía universal — consulta directamente al SERMIG o a una organización de apoyo como INCAMI antes de presentar tu solicitud."
    },
    {
      "question": "¿Cuánto demora renovar el pasaporte en el Consulado venezolano en Chile?",
      "answer": "Los tiempos han variado mucho según la disponibilidad de citas y materiales. Puede tomar desde semanas hasta meses. Inicia el proceso con mucha anticipación y sigue los canales oficiales del Consulado para las citas."
    },
    {
      "question": "¿Mi pasaporte venezolano vencido aún sirve para algo en Chile?",
      "answer": "Un pasaporte vencido puede servir como evidencia de identidad y nacionalidad en ciertos contextos, pero el SERMIG exige pasaporte vigente para solicitudes de residencia temporal. Inicia la renovación lo antes posible."
    }
  ]$faq$,
  ARRAY[
    'venezuela',
    'venezuela/antecedentes-penales',
    'venezuela/documentos-apostilla',
    'residencia-temporal'
  ],
  ARRAY['venezuela'],
  TRUE
) ON CONFLICT (slug) DO NOTHING;

-- venezuela/antecedentes-penales
INSERT INTO articles (
  slug, silo, parent_slug, type,
  title, h1, meta_description, keyword_primary,
  content, faq_items, related_slugs, country_tags, is_published
) VALUES (
  'venezuela/antecedentes-penales',
  'venezuela',
  'venezuela',
  'cluster',
  'Antecedentes Penales de Venezuela para Chile 2025: Sin Apostilla',
  'Antecedentes penales de Venezuela para Chile: cómo obtenerlos sin apostilla',
  'Cómo obtener y validar el certificado de antecedentes penales venezolano para trámites en Chile, sin apostilla disponible desde 2017. Proceso, alternativas y qué acepta el SERMIG. 2025.',
  'antecedentes penales Venezuela Chile',
  $content$<h2>El desafío: Venezuela sin apostilla desde 2017</h2>
<p>El certificado de antecedentes penales es un documento obligatorio para cualquier trámite de residencia en Chile. Para venezolanos, esto presenta un problema doble: obtener el documento desde Venezuela y validarlo para Chile, dado que <strong>Venezuela suspendió el servicio de apostilla en 2017</strong>.</p>

<h2>¿Dónde se obtiene el certificado de antecedentes penales venezolano?</h2>
<p>En Venezuela, el certificado de antecedentes penales lo emite el <strong>Ministerio del Poder Popular para Relaciones Interiores, Justicia y Paz</strong> (MPPRIJP), también conocido como <strong>Minterior</strong>. Se puede solicitar:</p>
<ul>
  <li><strong>Presencialmente en Venezuela:</strong> en las sedes del MPPRIJP a través del sistema SIIPOL. Puede hacerlo un apoderado con poder notarial.</li>
  <li><strong>Online (cuando el sistema funciona):</strong> el portal del MPPRIJP ha tenido períodos de disponibilidad online. Verifica el estado actual en mpprijp.gob.ve.</li>
</ul>

<h2>El problema de la apostilla suspendida</h2>
<p>Sin apostilla, el certificado venezolano no puede validarse por el mecanismo estándar del Convenio de La Haya. Las alternativas que el SERMIG ha reconocido son:</p>

<h3>Alternativa 1: Legalización vía Consulado chileno en Venezuela</h3>
<p>Cuando el <strong>Consulado de Chile en Caracas</strong> opera normalmente, puede legalizar documentos venezolanos directamente. El proceso:</p>
<ol>
  <li>Obtienes el certificado de antecedentes del MPPRIJP.</li>
  <li>Lo presentas en el Consulado de Chile en Caracas para legalización consular.</li>
  <li>El documento legalizado es válido en Chile.</li>
</ol>
<p><strong>Limitación:</strong> la operación consular chilena en Venezuela ha sido intermitente. Verifica si el Consulado está operativo y con qué capacidad.</p>

<h3>Alternativa 2: Proceso ante la Cancillería venezolana</h3>
<p>En ausencia de apostilla, la Cancillería venezolana (Ministerio de Relaciones Exteriores) puede emitir una constancia de autenticación de documentos. El proceso exacto varía y ha cambiado en el tiempo — consulta directamente al SERMIG cuál es el procedimiento aceptado actualmente.</p>

<h3>Alternativa 3: Consultar directamente al SERMIG</h3>
<p>El SERMIG ha tenido períodos de <strong>flexibilización documental</strong> para venezolanos, reconociendo la crisis institucional del país. En esos períodos puede aceptar:</p>
<ul>
  <li>Certificados sin apostilla pero con legalización consular alternativa.</li>
  <li>Declaraciones juradas complementarias.</li>
  <li>Documentos con QR o código de verificación digital emitido por el MPPRIJP.</li>
</ul>
<p>La política exacta cambia — contacta al SERMIG o a una organización de apoyo como INCAMI antes de presentar tu solicitud para saber qué acepta hoy.</p>

<h2>Organizaciones que pueden orientarte</h2>
<ul>
  <li><strong>R2P (Responsabilidad de Proteger) — Venezuela en Chile:</strong> organizaciones venezolanas activas en Chile tienen información actualizada sobre los procedimientos vigentes.</li>
  <li><strong>INCAMI:</strong> conoce bien las políticas del SERMIG hacia venezolanos.</li>
  <li><strong>Fundación Scalabrini:</strong> asesoría jurídica gratuita.</li>
</ul>

<h2>Vigencia del certificado</h2>
<p>El SERMIG exige que los antecedentes penales tengan menos de 90 días de antigüedad al presentarlos. Dado que el proceso para venezolanos es más complejo, planifica con al menos 2-3 meses de anticipación.</p>

<h2>Siguiente paso</h2>
<p>Con los antecedentes en regla, revisa las opciones de visa disponibles: <a href="/venezuela/visa-vrd">Visa de Responsabilidad Democrática</a> o <a href="/residencia-temporal/contrato-trabajo">Residencia Temporal por Contrato de Trabajo</a>.</p>$content$,
  $faq$[
    {
      "question": "¿Cómo apostillo el certificado de antecedentes venezolano si Venezuela suspendió la apostilla?",
      "answer": "No puedes apostillarlo de la forma estándar. Las alternativas son: legalización vía el Consulado de Chile en Caracas (cuando opera), proceso ante la Cancillería venezolana, o consultar directamente al SERMIG qué acepta actualmente. La política ha cambiado varias veces."
    },
    {
      "question": "¿Dónde obtengo el certificado de antecedentes penales en Venezuela?",
      "answer": "Lo emite el Ministerio del Poder Popular para Relaciones Interiores, Justicia y Paz (MPPRIJP / Minterior) a través del sistema SIIPOL. Puede hacerlo un apoderado con poder notarial. Verifica si el portal online está disponible en mpprijp.gob.ve."
    },
    {
      "question": "¿El SERMIG acepta antecedentes venezolanos sin apostilla?",
      "answer": "En ciertos períodos, sí. El SERMIG ha reconocido la crisis institucional venezolana y ha flexibilizado los requisitos documentales. Consulta directamente al SERMIG o a INCAMI antes de tu trámite para saber el estado actual de la política."
    },
    {
      "question": "¿Puede tramitar los antecedentes un familiar en Venezuela?",
      "answer": "Sí, con poder notarial autenticado. El apoderado puede ir al MPPRIJP en tu nombre. Asegúrate de que el poder especifique el trámite de antecedentes penales."
    }
  ]$faq$,
  ARRAY[
    'venezuela',
    'venezuela/pasaporte',
    'venezuela/documentos-apostilla',
    'residencia-temporal',
    'vivir-en-chile/apostilla-por-pais'
  ],
  ARRAY['venezuela'],
  TRUE
) ON CONFLICT (slug) DO NOTHING;

-- venezuela/visa-vrd
INSERT INTO articles (
  slug, silo, parent_slug, type,
  title, h1, meta_description, keyword_primary,
  content, faq_items, related_slugs, country_tags, is_published
) VALUES (
  'venezuela/visa-vrd',
  'venezuela',
  'venezuela',
  'cluster',
  'Visa de Responsabilidad Democrática para Venezolanos en Chile 2025',
  'Visa de Responsabilidad Democrática (VRD): guía para venezolanos',
  'Qué es la Visa de Responsabilidad Democrática (VRD), quiénes pueden solicitarla, requisitos, proceso y diferencias con otras visas para venezolanos en Chile. 2025.',
  'visa responsabilidad democratica venezolanos Chile',
  $content$<h2>¿Qué es la Visa de Responsabilidad Democrática?</h2>
<p>La <strong>Visa de Responsabilidad Democrática (VRD)</strong> es una categoría de visa creada por Chile en 2018 específicamente para ciudadanos venezolanos. Surge del reconocimiento de Chile de la crisis política, institucional y humanitaria en Venezuela.</p>
<p><strong>Es exclusiva para venezolanos</strong> — no aplica para ninguna otra nacionalidad.</p>

<h2>¿La VRD sigue vigente?</h2>
<p>La VRD fue una medida temporal y su disponibilidad ha cambiado con el tiempo. A la fecha de esta guía:</p>
<ul>
  <li>Las emisiones masivas de VRD (2018-2020) ya cerraron.</li>
  <li>Los venezolanos que obtuvieron VRD pueden renovarla si cumple los requisitos de renovación.</li>
  <li>Para nuevos solicitantes, la VRD no está disponible como categoría general — los venezolanos deben usar otras vías de Residencia Temporal.</li>
</ul>
<p><strong>Si tienes VRD vigente:</strong> sigue leyendo para entender cómo renovarla y cuáles son tus opciones hacia la Residencia Definitiva.</p>
<p><strong>Si buscas una primera visa:</strong> ve directamente a <a href="/paises/venezuela">Opciones de visa para venezolanos</a> para las vías disponibles hoy.</p>

<h2>Renovación de la VRD</h2>
<p>Si ya tienes VRD y quieres renovarla:</p>
<ul>
  <li>La renovación se solicita en el portal del SERMIG: <strong>tramitesmigratorios.interior.gob.cl</strong>.</li>
  <li>Debes presentar el trámite <strong>antes de que venza la visa actual</strong> — no esperes hasta el último momento.</li>
  <li>Los documentos requeridos incluyen pasaporte vigente, antecedentes penales actualizados y los mismos documentos de identidad de la solicitud original.</li>
</ul>

<h2>De VRD a Residencia Definitiva</h2>
<p>Si tienes VRD y llevas <strong>2 años continuos</strong> de residencia legal en Chile, puedes solicitar la <strong>Residencia Definitiva</strong>, que es permanente:</p>
<ul>
  <li>El período con VRD cuenta como tiempo de residencia válido.</li>
  <li>No necesitas tener empleo activo — solo acreditar medios de subsistencia.</li>
  <li>Ver guía: <a href="/residencia-definitiva">Residencia Definitiva en Chile</a>.</li>
</ul>
<p>El plazo se reduce a <strong>1 año</strong> si tienes cónyuge o pareja civil chilena, o hijos chilenos.</p>

<h2>VRD vs. otras vías de residencia para venezolanos</h2>
<p>Si la VRD ya no está disponible para nuevos solicitantes, estas son las vías actuales:</p>
<ul>
  <li><strong>Residencia Temporal por Contrato de Trabajo:</strong> requiere contrato firmado con empleador chileno. Ver: <a href="/residencia-temporal/contrato-trabajo">Residencia por Contrato de Trabajo</a>.</li>
  <li><strong>Residencia Temporal por Hijo Chileno:</strong> si tienes un hijo nacido en Chile. Ver: <a href="/residencia-temporal/hijo-chileno">Residencia por Hijo Chileno</a>.</li>
  <li><strong>Residencia Temporal por Pareja Chilena:</strong> si tienes cónyuge o conviviente civil chileno/a.</li>
  <li><strong>Residencia Temporal por Razones Humanitarias:</strong> para situaciones de vulnerabilidad acreditada.</li>
  <li><strong>Autodenuncia PDI:</strong> si estás en situación irregular, es el primer paso. Ver: <a href="/autodenuncia">Autodenuncia Migratoria</a>.</li>
</ul>
<p><strong>Nota importante:</strong> Venezuela <strong>no es parte del MERCOSUR</strong>, por lo que los venezolanos no pueden acogerse a la categoría MERCOSUR.</p>

<h2>Preguntas sobre la VRD al SERMIG</h2>
<p>Dado que la situación de la VRD ha cambiado varias veces, ante cualquier duda contacta directamente al SERMIG o consulta con organizaciones especializadas en migración venezolana en Chile.</p>$content$,
  $faq$[
    {
      "question": "¿La Visa de Responsabilidad Democrática (VRD) sigue disponible para nuevos solicitantes?",
      "answer": "No como categoría general. Las emisiones masivas de VRD cerraron alrededor de 2020. Los venezolanos que ya la tienen pueden renovarla, pero los nuevos solicitantes deben usar otras vías: contrato de trabajo, hijo chileno, pareja chilena o razones humanitarias."
    },
    {
      "question": "Tengo VRD vigente. ¿Cuándo puedo pedir la Residencia Definitiva?",
      "answer": "Después de 2 años continuos de residencia legal en Chile (el tiempo con VRD cuenta). Si tienes cónyuge o pareja civil chilena, o hijos chilenos, el plazo se reduce a 1 año. Solicita en tramitesmigratorios.interior.gob.cl antes de que venza tu VRD."
    },
    {
      "question": "¿Los venezolanos pueden solicitar visa MERCOSUR?",
      "answer": "No. Venezuela no es parte del Acuerdo de Residencia del MERCOSUR. Los venezolanos deben usar otras categorías: VRD (si la tienen vigente), contrato de trabajo, hijo chileno, pareja chilena o razones humanitarias."
    },
    {
      "question": "¿Qué pasa si mi VRD vence y no la renové a tiempo?",
      "answer": "Si tu VRD venció sin renovar, entras en situación irregular. El primer paso es la autodenuncia ante la PDI. Con el certificado de autodenuncia puedes solicitar una nueva visa en la categoría que corresponda a tu situación actual."
    },
    {
      "question": "¿Puedo trabajar en Chile con la VRD?",
      "answer": "Sí. La VRD otorga permiso de trabajo en Chile. Con ella puedes trabajar formalmente, cotizar AFP y salud, y ejercer todos los derechos laborales de un trabajador en Chile."
    }
  ]$faq$,
  ARRAY[
    'venezuela',
    'venezuela/pasaporte',
    'venezuela/antecedentes-penales',
    'residencia-temporal',
    'residencia-definitiva',
    'autodenuncia'
  ],
  ARRAY['venezuela'],
  TRUE
) ON CONFLICT (slug) DO NOTHING;

COMMIT;
