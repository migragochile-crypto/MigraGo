-- ============================================================
-- MigraciónChile — Seed v4: silo problemas + hub venezuela
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

-- ──────────────────────────────────────────────────────────
-- 1. PILLAR: problemas (update con contenido)
-- ──────────────────────────────────────────────────────────
UPDATE articles SET
  content = $f1$
<p>Tramitar una visa o permiso de residencia en Chile puede presentar obstáculos: rechazos, multas, visas vencidas, errores del SERMIG o situaciones imprevistas. Esta sección reúne las respuestas a los problemas migratorios más frecuentes y cómo resolverlos.</p>

<h2>Los problemas más comunes</h2>
<ul>
  <li><a href="/problemas/visa-vencida"><strong>Visa vencida</strong></a>: qué hacer si tu visa de turismo o temporaria venció y no la renovaste a tiempo.</li>
  <li><a href="/problemas/rechazo-visa"><strong>Rechazo de visa</strong></a>: cómo interponer un recurso administrativo y qué opciones tienes.</li>
  <li><a href="/problemas/recurso-administrativo"><strong>Recurso administrativo</strong></a>: plazos, fundamentos y cómo presentarlo ante el SERMIG.</li>
  <li><a href="/problemas/multa-migratoria"><strong>Multas migratorias</strong></a>: cuánto se paga y cómo regularizarlas.</li>
  <li><a href="/problemas/expulsion"><strong>Orden de expulsión</strong></a>: diferencias entre expulsión y prohibición de ingreso, y qué recursos existen.</li>
</ul>

<h2>Visa de turismo vencida: primera medida</h2>
<p>Si tu visa de turismo (permiso de turista) venció y sigues en Chile, estás en situación migratoria irregular. La primera medida es no ignorar la situación — cada día que pasa aumenta la multa.</p>
<p>La solución más directa es la <a href="/autodenuncia">autodenuncia migratoria</a>: te presentas voluntariamente a la PDI, pagas la multa correspondiente y obtienes el Certificado de Autodenuncia que te habilita para tramitar una visa temporaria.</p>

<h2>Rechazo de visa: tienes derecho a recurrir</h2>
<p>Si el SERMIG rechaza tu solicitud de visa, la resolución incluirá el motivo del rechazo y un plazo para recurrir (generalmente <strong>30 días hábiles</strong>). No ignorar esa notificación es fundamental. Si vences el plazo sin recurrir, el rechazo queda firme.</p>
<p>Puedes interponer:</p>
<ul>
  <li><strong>Recurso de reposición:</strong> ante el propio SERMIG, solicitando que reconsidere la resolución.</li>
  <li><strong>Recurso jerárquico:</strong> ante el superior del SERMIG (Ministerio del Interior) si el de reposición fue rechazado.</li>
</ul>
<p>El detalle del proceso está en <a href="/problemas/recurso-administrativo">Recurso administrativo ante el SERMIG</a>.</p>

<h2>Multas migratorias: ¿cuánto se paga?</h2>
<p>Las multas por infracción migratoria se calculan en <strong>UTM</strong> (Unidad Tributaria Mensual) según el tiempo en situación irregular:</p>
<ul>
  <li>Hasta 30 días: 1 UTM</li>
  <li>31 a 90 días: 2 UTM</li>
  <li>91 días a 1 año: 3 UTM</li>
  <li>Más de 1 año: hasta 5 UTM</li>
</ul>
<p>El valor de la UTM se actualiza mensualmente. Consulta el valor vigente en el <a href="https://www.sii.cl" target="_blank" rel="noopener noreferrer">sitio del SII</a>.</p>

<h2>¿Puedo quedarme en Chile mientras resuelvo un problema?</h2>
<p>Depende del tipo de problema. Si presentaste una solicitud de visa o un recurso administrativo dentro del plazo legal, generalmente puedes permanecer en Chile mientras se resuelve. El comprobante de trámite actúa como documento habilitante.</p>
<p>Si tienes una orden de expulsión <strong>ejecutoriada</strong> (firme), ya no puedes permanecer legalmente — en ese caso debes salir voluntariamente o se aplicará la expulsión forzada.</p>
  $f1$,
  faq_items = '[
    {
      "question": "¿Puedo salir y volver a entrar a Chile para resetear mi visa de turismo?",
      "answer": "Técnicamente sí, pero el SERMIG puede denegar el ingreso si detecta un patrón de ingresos repetidos sin visa de residencia. Esta práctica (''visa run'') está cada vez más restringida y puede resultar en prohibición de ingreso."
    },
    {
      "question": "¿Qué pasa si ignoro una orden de expulsión?",
      "answer": "Si ignoras una orden de expulsión ejecutoriada, la PDI puede ejecutarla de forma forzada. Además, la expulsión deja antecedentes que dificultan o impiden reingresar a Chile en el futuro."
    },
    {
      "question": "¿Puedo trabajar mientras tengo un recurso administrativo pendiente?",
      "answer": "Sí, si el recurso fue presentado dentro del plazo legal. El comprobante de recurso presentado es documento habilitante para permanecer en Chile y en muchos casos para trabajar, hasta que se resuelva."
    },
    {
      "question": "¿Un abogado migratorio es obligatorio para los recursos?",
      "answer": "No es obligatorio, pero es recomendable para recursos complejos o con antecedentes desfavorables. Para recursos simples (como subsanar documentos faltantes), muchas personas los presentan sin abogado."
    }
  ]'::jsonb,
  related_slugs = ARRAY[
    'problemas/visa-vencida',
    'problemas/recurso-administrativo',
    'autodenuncia',
    'autodenuncia/pdi-paso-a-paso',
    'visa-temporaria'
  ]::TEXT[],
  reading_time_minutes = 4,
  updated_at = NOW()
WHERE slug = 'problemas';

-- ──────────────────────────────────────────────────────────
-- 2. CLUSTER: problemas/visa-vencida
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, schema_type, howto_steps, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'problemas/visa-vencida',
  'problemas',
  'problemas',
  'cluster',
  'Qué Hacer si tu Visa Venció en Chile: Guía 2026',
  'Visa Vencida en Chile: Qué Hacer Paso a Paso para Regularizarte',
  'Guía completa para regularizar tu situación si tu visa de turismo o temporaria venció en Chile. Pasos, multas y opciones disponibles.',
  'visa vencida chile que hacer',
  $f2$
<p>Si tu visa de turismo o visa temporaria venció y sigues en Chile, estás en situación migratoria irregular. No entrar en pánico: hay un camino legal para regularizarte y en la mayoría de los casos no implica salir del país.</p>

<h2>¿Qué tipo de visa venció?</h2>
<p>El procedimiento varía según qué tipo de visa está vencida:</p>
<ul>
  <li><strong>Visa de turismo vencida:</strong> si entraste como turista y se venció el plazo de 90 días (o el que te asignaron en frontera), debes hacer la <a href="/autodenuncia">autodenuncia migratoria</a> en la PDI y luego solicitar una visa temporaria.</li>
  <li><strong>Visa temporaria vencida:</strong> si tu visa de residencia temporal venció sin renovarla, también puedes autodenunciarte. La multa puede ser mayor dependiendo del tiempo.</li>
  <li><strong>Permiso de turista prorrogado y vencido:</strong> si pediste prórroga y también venció, mismo procedimiento.</li>
</ul>

<h2>Paso 1 — Evalúa cuánto tiempo llevas en situación irregular</h2>
<p>La multa migratoria depende del tiempo desde que venció tu visa:</p>
<table>
  <thead>
    <tr><th>Tiempo irregular</th><th>Multa aproximada</th></tr>
  </thead>
  <tbody>
    <tr><td>Hasta 30 días</td><td>1 UTM (~$66.000 CLP)</td></tr>
    <tr><td>31 a 90 días</td><td>2 UTM (~$132.000 CLP)</td></tr>
    <tr><td>91 días a 1 año</td><td>3 UTM (~$198.000 CLP)</td></tr>
    <tr><td>Más de 1 año</td><td>Hasta 5 UTM (~$330.000 CLP)</td></tr>
  </tbody>
</table>
<p>Los montos son referenciales. El valor exacto de la UTM lo puedes ver en <a href="https://www.sii.cl" target="_blank" rel="noopener noreferrer">sii.cl</a>.</p>

<h2>Paso 2 — Autodenuncia en la PDI</h2>
<p>La autodenuncia es el mecanismo legal para regularizarse. Consiste en presentarte voluntariamente a la PDI, declarar tu situación irregular y pagar la multa. A cambio, recibes el <strong>Certificado de Autodenuncia</strong> que suspende cualquier procedimiento de expulsión y te habilita para tramitar una visa temporaria.</p>
<p>Necesitarás:</p>
<ul>
  <li>Pasaporte (idealmente vigente)</li>
  <li>Comprobante de domicilio en Chile</li>
  <li>Fotografía tamaño carné</li>
  <li>Documentos que acrediten tus vínculos en Chile (si tienes hijo o pareja chilena, etc.)</li>
</ul>
<p>Consulta la guía detallada en <a href="/autodenuncia/pdi-paso-a-paso">Autodenuncia en la PDI: paso a paso</a>.</p>

<h2>Paso 3 — Solicitar la visa temporaria</h2>
<p>Con el Certificado de Autodenuncia, puedes solicitar la visa que corresponde a tu situación personal. Las más frecuentes cuando se viene de visa vencida son:</p>
<ul>
  <li><a href="/visa-temporaria/hijo-chileno">Visa por hijo/a chileno</a> — si tienes un hijo con nacionalidad chilena.</li>
  <li><a href="/visa-temporaria/responsabilidad-democratica">Visa de Responsabilidad Democrática</a> — si eres venezolano/a.</li>
  <li><a href="/visa-temporaria/contrato-trabajo">Visa por contrato de trabajo</a> — si tienes o puedes conseguir un empleador formal.</li>
  <li><a href="/visa-temporaria/pareja-chilena">Visa por pareja chilena</a> — si estás casado/a o tienes AUC con un/a ciudadano/a chileno/a.</li>
</ul>

<h2>¿Y si no calico para ninguna visa?</h2>
<p>Si no tienes una causal clara para visa temporaria, el SERMIG puede orientarte sobre otras categorías. También puedes optar por salir voluntariamente del país antes de que se inicie un procedimiento de expulsión, lo que es menos gravoso que una expulsión forzada en el historial migratorio.</p>

<h2>¿Puedo seguir trabajando con la visa vencida?</h2>
<p>Técnicamente no. Con visa vencida no tienes permiso de trabajo vigente y el empleador puede enfrentar sanciones. Sin embargo, una vez que presentes la autodenuncia y tengas el comprobante de solicitud de visa, ya puedes retomar la actividad laboral.</p>
  $f2$,
  'HowTo',
  '[
    {"name": "Evaluar el tiempo en situación irregular", "text": "Calcula los días desde que venció tu visa para conocer el monto aproximado de la multa (entre 1 y 5 UTM)."},
    {"name": "Reunir los documentos para la autodenuncia", "text": "Pasaporte, comprobante de domicilio, fotografía y documentos de vínculos familiares si aplica."},
    {"name": "Presentarte en la PDI y pagar la multa", "text": "Dirígete a cualquier comisaría PDI, declara tu situación y paga la multa migratoria. Recibirás el Certificado de Autodenuncia."},
    {"name": "Identificar la causal de visa que te corresponde", "text": "Según tu situación personal (hijo chileno, pareja, trabajo, VRD u otra), determina qué visa solicitar."},
    {"name": "Presentar la solicitud de visa en el portal del SERMIG", "text": "Con el Certificado de Autodenuncia, ingresa a tramitesmigratorios.interior.gob.cl y presenta la solicitud."},
    {"name": "Conservar el comprobante de trámite", "text": "El número de trámite actúa como documento habilitante para permanecer y trabajar en Chile mientras esperas la resolución."}
  ]'::jsonb,
  '[
    {
      "question": "¿Me expulsarán si voy a la PDI con la visa vencida?",
      "answer": "No. Al presentarte a la autodenuncia, se suspende cualquier procedimiento de expulsión. La PDI no te detiene por presentarte voluntariamente — es exactamente el mecanismo diseñado para esto."
    },
    {
      "question": "¿Qué pasa si tengo la visa vencida hace más de 2 años?",
      "answer": "Puedes igualmente autodenunciarte. La multa será más alta (hasta 5 UTM) pero el proceso es el mismo. El SERMIG evalúa cada caso. Llevar muchos años en situación irregular puede complicar la aprobación de la visa, pero no la impide automáticamente."
    },
    {
      "question": "¿Puedo regularizarme si tengo antecedentes penales en Chile?",
      "answer": "Depende de la gravedad y vigencia de los antecedentes. Delitos menores o con condena cumplida pueden no impedir la regularización. El SERMIG evalúa el caso. Antecedentes graves (delitos contra la seguridad del Estado, narcotráfico, etc.) son causales de rechazo."
    },
    {
      "question": "¿Cuánto tiempo tengo para regularizarme antes de que me expulsen?",
      "answer": "No hay un plazo fijo. El SERMIG puede iniciar un procedimiento de expulsión en cualquier momento si detecta la irregularidad. No esperes a recibir una notificación — actúa antes."
    },
    {
      "question": "¿El Certificado de Autodenuncia me permite salir y entrar a Chile?",
      "answer": "No necesariamente. Mientras estés en proceso de regularización, es recomendable no salir de Chile ya que al salir, tu situación irregular queda documentada en frontera. Consulta con el SERMIG antes de hacer cualquier viaje."
    }
  ]'::jsonb,
  ARRAY[
    'problemas',
    'autodenuncia/pdi-paso-a-paso',
    'autodenuncia',
    'visa-temporaria',
    'visa-temporaria/responsabilidad-democratica'
  ]::TEXT[],
  5,
  TRUE,
  NOW()
);

-- ──────────────────────────────────────────────────────────
-- 3. HUB: venezuela (update con contenido editorial)
-- ──────────────────────────────────────────────────────────
UPDATE articles SET
  content = $f3$
<p>Chile es el principal destino migratorio de Venezuela en Sudamérica. Más de 500.000 venezolanos viven en el país, concentrados principalmente en la Región Metropolitana, Antofagasta y Iquique. Esta guía reúne todo lo específico para ciudadanos venezolanos que desean ingresar, regularizarse o establecerse en Chile.</p>

<h2>Opciones de regularización para venezolanos</h2>
<p>Los venezolanos en Chile tienen acceso a mecanismos migratorios específicos que no existen para otras nacionalidades:</p>
<ul>
  <li><a href="/visa-temporaria/responsabilidad-democratica"><strong>Visa de Responsabilidad Democrática (VRD)</strong></a>: la categoría más solicitada por venezolanos. No requiere contrato de trabajo ni vínculo familiar con un chileno. Es de carácter humanitario y está vigente desde 2018.</li>
  <li><a href="/autodenuncia"><strong>Autodenuncia migratoria</strong></a>: si estás en situación irregular (visa vencida o ingresaste sin visa), la autodenuncia es el primer paso para regularizarte.</li>
  <li><a href="/visa-temporaria/hijo-chileno"><strong>Visa por hijo/a chileno</strong></a>: si tienes un hijo o hija nacido en Chile.</li>
  <li><a href="/visa-temporaria/contrato-trabajo"><strong>Visa por contrato de trabajo</strong></a>: si tienes un empleador dispuesto a contratarte formalmente.</li>
</ul>

<h2>El pasaporte venezolano: situación especial</h2>
<p>Obtener o renovar el pasaporte venezolano es difícil y costoso. Por eso, el SERMIG reconoce ciertas condiciones especiales para venezolanos:</p>
<ul>
  <li>La VRD puede tramitarse con pasaporte vencido en muchos casos.</li>
  <li>La cédula de identidad venezolana puede ser aceptada como documento alternativo en algunos trámites.</li>
</ul>
<p>Sin embargo, la política puede cambiar. Verifica siempre el estado actual en el <a href="https://tramitesmigratorios.interior.gob.cl" target="_blank" rel="noopener noreferrer">portal del SERMIG</a> o en el <a href="https://www.consulado.gob.ve/santiago" target="_blank" rel="noopener noreferrer">Consulado de Venezuela en Santiago</a>.</p>

<h2>Ruta migratoria típica para un venezolano en Chile</h2>
<ol>
  <li><strong>Ingreso:</strong> con visa de turismo (válida por 90 días) o sin visa si ingresaste por paso no habilitado.</li>
  <li><strong>Regularización:</strong> si la visa venció, <a href="/autodenuncia/pdi-paso-a-paso">autodenuncia en la PDI</a>. Si aún está vigente, solicita directamente la VRD o la visa que corresponda.</li>
  <li><strong>Visa VRD o temporaria:</strong> presentar solicitud en el portal del SERMIG. Esperar resolución (60-180 días hábiles).</li>
  <li><strong>RUT y cédula:</strong> con la visa aprobada, obtener la <a href="/vivir-en-chile/rut-extranjero">cédula de identidad y RUT</a> en el SRCeI.</li>
  <li><strong>Permanencia definitiva:</strong> después de 1 año con visa vigente, solicitar la <a href="/permanencia-definitiva">permanencia definitiva</a>.</li>
  <li><strong>Nacionalización:</strong> después de 5 años con permanencia definitiva, optar por la <a href="/nacionalizacion">carta de nacionalización chilena</a>.</li>
</ol>

<h2>Comunidades y apoyo</h2>
<p>En Chile hay diversas organizaciones que apoyan a migrantes venezolanos con orientación legal, acceso a salud y empleo:</p>
<ul>
  <li><strong>ACNUR Chile:</strong> ofrece orientación a venezolanos con necesidades de protección internacional.</li>
  <li><strong>OIM Chile:</strong> apoyo en integración laboral y regularización.</li>
  <li><strong>Fundación Scalabrini:</strong> servicios sociales para migrantes en Santiago.</li>
</ul>
  $f3$,
  faq_items = '[
    {
      "question": "¿Los venezolanos necesitan visa para entrar a Chile como turistas?",
      "answer": "Desde 2019, Venezuela está en la lista de países que requieren visa de turismo o visación consular previa para ingresar a Chile por vía aérea. Sin embargo, los acuerdos y excepciones cambian. Verifica el requisito vigente en el consulado chileno de tu país o en el portal del SERMIG antes de viajar."
    },
    {
      "question": "¿La VRD está vigente en 2026?",
      "answer": "Sí, la VRD continúa disponible. Su vigencia ha sido renovada periódicamente desde 2018. Sin embargo, el gobierno puede establecer plazos o condiciones adicionales. Verifica siempre el estado actualizado en tramitesmigratorios.interior.gob.cl antes de presentar."
    },
    {
      "question": "¿Puedo solicitar la VRD si ya tengo otra visa en trámite?",
      "answer": "No puedes tener dos solicitudes de visa activas al mismo tiempo en el portal del SERMIG. Si ya tienes una solicitud en curso, deberías esperar la resolución antes de solicitar otra categoría, o retirar la solicitud anterior."
    },
    {
      "question": "¿Mi título universitario venezolano es válido en Chile?",
      "answer": "Para ejercer profesiones no reguladas, el título extranjero puede ser reconocido por empleadores directamente. Para profesiones reguladas (medicina, derecho, ingeniería civil, etc.) debes homologar o revalidar el título en Chile. El proceso varía según la profesión y la institución emisora del título."
    }
  ]'::jsonb,
  related_slugs = ARRAY[
    'visa-temporaria/responsabilidad-democratica',
    'autodenuncia/pdi-paso-a-paso',
    'permanencia-definitiva',
    'vivir-en-chile/rut-extranjero',
    'problemas/visa-vencida'
  ]::TEXT[],
  reading_time_minutes = 5,
  updated_at = NOW()
WHERE slug = 'venezuela';

-- ──────────────────────────────────────────────────────────
-- 4. HUB: peru (update con contenido editorial)
-- ──────────────────────────────────────────────────────────
UPDATE articles SET
  content = $f4$
<p>Perú y Chile comparten una larga historia migratoria. La comunidad peruana es una de las más numerosas e integradas en Chile, con presencia en todas las regiones. Esta guía resume las opciones de regularización y los recursos específicos para ciudadanos peruanos.</p>

<h2>Ventajas del Acuerdo de Residencia Mercosur</h2>
<p>Perú es miembro asociado del MERCOSUR, lo que otorga a los ciudadanos peruanos acceso a la <a href="/visa-temporaria/mercosur"><strong>Visa Mercosur</strong></a>. Esta visa es una de las más rápidas y sencillas de tramitar porque requiere menos documentación que otras categorías.</p>
<p>Requisitos principales de la Visa Mercosur para peruanos:</p>
<ul>
  <li>Pasaporte o documento de identidad peruano vigente.</li>
  <li>Certificado de antecedentes penales de Perú (apostillado).</li>
  <li>Comprobante de domicilio en Chile.</li>
  <li>No requiere contrato de trabajo ni acreditar vínculo familiar.</li>
</ul>

<h2>Otras opciones de visa disponibles</h2>
<p>Además de la Visa Mercosur, los peruanos pueden acceder a todas las categorías de visa temporaria disponibles para cualquier extranjero:</p>
<ul>
  <li><a href="/visa-temporaria/hijo-chileno"><strong>Por hijo/a chileno</strong></a>: muy frecuente en la comunidad peruana dado el alto número de hijos nacidos en Chile.</li>
  <li><a href="/visa-temporaria/contrato-trabajo"><strong>Por contrato de trabajo</strong></a>: para quienes tienen o consiguen un empleador formal.</li>
  <li><a href="/visa-temporaria/pareja-chilena"><strong>Por pareja chilena</strong></a>: si estás casado/a o tienes AUC con un/a ciudadano/a chileno/a.</li>
</ul>

<h2>Si estás en situación irregular</h2>
<p>Si tu visa venció, el camino es la <a href="/autodenuncia">autodenuncia migratoria</a> en la PDI, seguida de una solicitud de visa (Mercosur u otra categoría). El Certificado de Autodenuncia suspende cualquier procedimiento de expulsión mientras tramitas.</p>

<h2>Apostilla de documentos peruanos</h2>
<p>Perú es signatario del Convenio de La Haya, por lo que sus documentos públicos pueden apostillarse. El certificado de antecedentes penales se obtiene en el Ministerio del Interior de Perú y se apostilla ante el Ministerio de Relaciones Exteriores peruano, o directamente en las notarías habilitadas.</p>

<h2>Comunidades y recursos</h2>
<p>La comunidad peruana en Chile cuenta con redes de apoyo consolidadas:</p>
<ul>
  <li><strong>Consulado del Perú en Santiago</strong> (y en Arica, Iquique, Antofagasta): orienta sobre documentación y situación migratoria.</li>
  <li><strong>Asociaciones de residentes peruanos</strong>: activas en Santiago, Arica e Iquique.</li>
</ul>
  $f4$,
  faq_items = '[
    {
      "question": "¿Los peruanos necesitan visa de turismo para entrar a Chile?",
      "answer": "No. Los ciudadanos peruanos con pasaporte vigente pueden ingresar a Chile como turistas sin visa, con una estadía máxima de 90 días. Para permanecer más tiempo, deben solicitar una visa de residencia."
    },
    {
      "question": "¿La Visa Mercosur es más rápida que otras visas?",
      "answer": "El proceso de solicitud es el mismo portal y los mismos plazos del SERMIG. La ventaja de la Visa Mercosur es que requiere menos documentación (no necesita contrato de trabajo ni vínculo familiar), lo que simplifica la preparación de la solicitud."
    },
    {
      "question": "¿Puedo solicitar la Visa Mercosur aunque haya entrado ilegalmente?",
      "answer": "Si estás en situación irregular, primero debes hacer la autodenuncia en la PDI. Con el Certificado de Autodenuncia puedes luego solicitar la Visa Mercosur u otra categoría de visa temporaria."
    },
    {
      "question": "¿Mi cédula de identidad peruana (DNI) es válida en Chile para trámites?",
      "answer": "El DNI peruano es reconocido para identificación en muchos contextos en Chile (bancos, comercios, etc.). Sin embargo, para trámites migratorios formales, el SERMIG suele preferir el pasaporte. Consulta caso a caso."
    }
  ]'::jsonb,
  related_slugs = ARRAY[
    'visa-temporaria/mercosur',
    'visa-temporaria/hijo-chileno',
    'autodenuncia/pdi-paso-a-paso',
    'permanencia-definitiva',
    'vivir-en-chile/rut-extranjero'
  ]::TEXT[],
  reading_time_minutes = 4,
  updated_at = NOW()
WHERE slug = 'peru';
