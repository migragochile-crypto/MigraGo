-- Migración: Insertar artículos cluster para el silo autodenuncia (7 clusters)

BEGIN;

INSERT INTO articles (slug, silo, parent_slug, type, title, h1, meta_description, keyword_primary, content, schema_type, faq_items, related_slugs, is_published, published_at)
VALUES (
  'autodenuncia/que-es-autodenuncia',
  'autodenuncia',
  'autodenuncia',
  'cluster',
  'Qué es la autodenuncia migratoria en Chile',
  'Qué es la autodenuncia migratoria en Chile',
  'Explicación clara de qué es la autodenuncia migratoria, quién puede hacerla, qué beneficios tiene y qué no garantiza.',
  'que es autodenuncia migratoria chile como funciona',
  $content$<h2>Definición</h2>
<p>La autodenuncia migratoria es el procedimiento por el cual una persona extranjera en situación irregular en Chile se presenta voluntariamente ante la PDI (Policía de Investigaciones) para informar su situación y solicitar opciones de regularización. Es una alternativa formal a la expulsión y no equivale a entregarse para ser deportado.</p>
<h2>¿Quién puede hacerla?</h2>
<ul>
<li>Personas con visa de turismo vencida.</li>
<li>Personas que ingresaron de forma no habilitada o sin registro.</li>
<li>Personas cuyo permiso de residencia expiró sin ser renovado.</li>
</ul>
<h2>¿Qué beneficios puede tener?</h2>
<ul>
<li>Acceso a un proceso formal de regularización.</li>
<li>Posibilidad de obtener un permiso transitorio mientras se resuelve la solicitud.</li>
<li>Reducción de riesgo de expulsión abrupta en comparación con no actuar.</li>
</ul>
<h2>¿Qué no garantiza?</h2>
<ul>
<li>No garantiza que se conceda la Residencia Temporal ni ningún permiso específico.</li>
<li>No borra automáticamente los días de permanencia irregular ni la multa correspondiente.</li>
<li>No aplica a personas con condenas penales graves o prohibición de ingreso vigente.</li>
</ul>
<h2>¿Cuándo conviene hacerla?</h2>
<p>Conviene cuando llevas tiempo en situación irregular y no tienes otra forma de regularizarte. Si tu permiso venció hace poco, puede ser más ágil solicitar directamente una renovación al SERMIG. Evalúa tu caso antes de actuar.</p>$content$,
  'FAQPage',
  '[{"question":"¿La autodenuncia es lo mismo que entregarse para ser deportado?","answer":"No. La autodenuncia es un trámite voluntario para regularizar tu situación. No implica deportación automática; el resultado depende de tu caso y de la evaluación del SERMIG y la PDI."},{"question":"¿Puedo hacer la autodenuncia si tengo familia en Chile?","answer":"Sí. De hecho, tener vínculos familiares en Chile (hijos, cónyuge) puede ser un argumento relevante en el proceso de regularización."}]'::jsonb,
  ARRAY['autodenuncia/pdi-paso-a-paso', 'autodenuncia/sermig-vs-pdi', 'autodenuncia/errores-comunes'],
  TRUE,
  NOW()
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO articles (slug, silo, parent_slug, type, title, h1, meta_description, keyword_primary, content, schema_type, faq_items, related_slugs, is_published, published_at)
VALUES (
  'autodenuncia/pdi-paso-a-paso',
  'autodenuncia',
  'autodenuncia',
  'cluster',
  'Autodenuncia en la PDI: paso a paso',
  'Autodenuncia en la PDI: guía paso a paso',
  'Cómo realizar la autodenuncia migratoria en la PDI de Chile: dónde ir, qué documentos llevar, qué esperar y qué pasa después.',
  'autodenuncia pdi chile paso a paso documentos proceso',
  $content$<h2>¿A qué oficina de la PDI ir?</h2>
<p>Debes presentarte en la Jefatura de Extranjería y Policía Internacional de la PDI. En Santiago está ubicada en General Borgoño 1052, Independencia. Otras regiones tienen oficinas provinciales de la PDI.</p>
<h2>Documentos que debes llevar</h2>
<ul>
<li>Pasaporte u otro documento de identidad (aunque esté vencido).</li>
<li>Cualquier documento que acredite tu estadía: contratos de arriendo, boletas de servicios, certificados médicos, etc.</li>
<li>Si tienes hijos en Chile o familiares con residencia: actas de nacimiento, cédulas o visas de los familiares.</li>
<li>Si tienes trabajo: contrato laboral o carta del empleador.</li>
</ul>
<h2>Proceso en la PDI</h2>
<ol>
<li>Te presentas en ventanilla y solicitas realizar la autodenuncia.</li>
<li>Un funcionario toma tus datos y registra la presentación voluntaria.</li>
<li>Se realiza el empadronamiento biométrico (huellas y fotografía).</li>
<li>Recibes un documento provisional o una citación para continuar el proceso en el SERMIG.</li>
</ol>
<h2>¿Qué pasa después?</h2>
<p>El caso se deriva al SERMIG para evaluación. Puedes recibir un permiso transitorio mientras se decide tu situación. El SERMIG puede requerir documentación adicional o citarte a entrevista.</p>$content$,
  'FAQPage',
  '[{"question":"¿Puedo ir a cualquier oficina de la PDI?","answer":"Debes ir a la Jefatura de Extranjería y Policía Internacional. En regiones, consulta la oficina provincial correspondiente. No todas las comisarías tienen competencia en materia migratoria."},{"question":"¿Me van a detener al llegar a la PDI?","answer":"No. La autodenuncia es voluntaria y no implica detención. El proceso es administrativo, no penal, salvo que tengas antecedentes que ameriten otra evaluación."}]'::jsonb,
  ARRAY['autodenuncia/que-es-autodenuncia', 'autodenuncia/empadronamiento-biometrico', 'autodenuncia/sermig-vs-pdi'],
  TRUE,
  NOW()
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO articles (slug, silo, parent_slug, type, title, h1, meta_description, keyword_primary, content, schema_type, faq_items, related_slugs, is_published, published_at)
VALUES (
  'autodenuncia/sermig-vs-pdi',
  'autodenuncia',
  'autodenuncia',
  'cluster',
  'SERMIG vs PDI en la autodenuncia: roles y diferencias',
  'SERMIG vs PDI en la autodenuncia: roles y diferencias',
  'Qué hace la PDI y qué hace el SERMIG en el proceso de autodenuncia migratoria. Cómo se coordinan y qué esperar de cada institución.',
  'sermig pdi autodenuncia diferencias roles migracion chile',
  $content$<h2>El rol de la PDI</h2>
<p>La PDI (Policía de Investigaciones) es el organismo de control migratorio en los pasos fronterizos y el encargado de recibir la autodenuncia presencial. Sus funciones en este proceso:</p>
<ul>
<li>Recibe la presentación voluntaria del extranjero en situación irregular.</li>
<li>Realiza el empadronamiento biométrico (huellas dactilares y fotografía).</li>
<li>Verifica si existen antecedentes que impidan la regularización (prohibición de ingreso, condenas).</li>
<li>Deriva el caso al SERMIG para la evaluación de la solicitud de regularización.</li>
</ul>
<h2>El rol del SERMIG</h2>
<p>El SERMIG (Servicio Nacional de Migraciones) es la institución que resuelve las solicitudes de residencia. En el proceso de autodenuncia:</p>
<ul>
<li>Evalúa la documentación aportada y la situación del solicitante.</li>
<li>Puede requerir documentos adicionales.</li>
<li>Emite la resolución: puede conceder un permiso transitorio, derivar a una categoría de Residencia Temporal, o rechazar.</li>
<li>Es el interlocutor para el seguimiento del trámite posterior a la autodenuncia.</li>
</ul>
<h2>¿Adónde acudo primero?</h2>
<p>Primero a la PDI para la autodenuncia presencial y el empadronamiento. Luego el proceso continúa en el SERMIG. En algunos casos, si tu situación es reciente (visa vencida hace poco), puedes ir directamente al SERMIG sin pasar por la PDI.</p>$content$,
  'FAQPage',
  '[{"question":"¿Puedo ir directamente al SERMIG sin pasar por la PDI?","answer":"Depende de tu caso. Si tu permiso venció hace poco y no hay otras irregularidades, el SERMIG puede recibir tu solicitud directamente. Consulta tu situación específica antes de elegir la vía."},{"question":"¿Cuánto demora el SERMIG en resolver tras la autodenuncia?","answer":"Los plazos son variables y dependen de la carga de casos. Puede ir de semanas a varios meses. El SERMIG emite un comprobante o permiso provisional mientras se resuelve."}]'::jsonb,
  ARRAY['autodenuncia/pdi-paso-a-paso', 'autodenuncia/estado-tramite', 'autodenuncia/tiempos-reales'],
  TRUE,
  NOW()
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO articles (slug, silo, parent_slug, type, title, h1, meta_description, keyword_primary, content, schema_type, faq_items, related_slugs, is_published, published_at)
VALUES (
  'autodenuncia/empadronamiento-biometrico',
  'autodenuncia',
  'autodenuncia',
  'cluster',
  'Empadronamiento biométrico en la PDI: qué es y cómo funciona',
  'Empadronamiento biométrico en la PDI: qué es y cómo funciona',
  'Qué es el empadronamiento biométrico migratorio en Chile, en qué consiste el proceso, cuánto demora y qué documentos necesitas.',
  'empadronamiento biometrico pdi chile migracion huella dactilar',
  $content$<h2>¿Qué es el empadronamiento biométrico?</h2>
<p>Es el registro de tus datos biométricos (huellas dactilares y fotografía facial) en el sistema de la PDI. Es un paso obligatorio en el proceso de autodenuncia y también para algunos trámites de Residencia Temporal. Permite identificar a la persona de forma fehaciente en el sistema migratorio chileno.</p>
<h2>¿En qué consiste?</h2>
<ol>
<li>Toma de huellas dactilares (todos los dedos) con escáner digital.</li>
<li>Fotografía facial.</li>
<li>Registro de datos personales: nombre, nacionalidad, fecha de nacimiento, documento de identidad.</li>
</ol>
<h2>¿Cuánto demora?</h2>
<p>El proceso en sí tarda entre 15 y 30 minutos. El tiempo de espera en la oficina puede ser mayor, especialmente en Santiago. Se recomienda llegar temprano.</p>
<h2>Documentos necesarios</h2>
<ul>
<li>Pasaporte u otro documento de identidad (puede estar vencido).</li>
<li>Comprobante de domicilio en Chile (si lo tienes).</li>
</ul>
<h2>¿Es obligatorio para todos los extranjeros?</h2>
<p>Es obligatorio para quienes realizan la autodenuncia y para ciertas categorías de Residencia Temporal. No aplica a turistas con estadía regular.</p>$content$,
  'FAQPage',
  '[{"question":"¿El empadronamiento biométrico implica que quedé en algún registro negativo?","answer":"No. Es un registro de identidad, no un antecedente negativo. Es parte del proceso administrativo de regularización."},{"question":"¿Puedo hacer el empadronamiento con el pasaporte vencido?","answer":"Sí. La PDI acepta documentos de identidad aunque estén vencidos para el empadronamiento biométrico en el contexto de la autodenuncia."}]'::jsonb,
  ARRAY['autodenuncia/pdi-paso-a-paso', 'autodenuncia/que-es-autodenuncia'],
  TRUE,
  NOW()
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO articles (slug, silo, parent_slug, type, title, h1, meta_description, keyword_primary, content, schema_type, faq_items, related_slugs, is_published, published_at)
VALUES (
  'autodenuncia/estado-tramite',
  'autodenuncia',
  'autodenuncia',
  'cluster',
  'Cómo consultar el estado de tu trámite de autodenuncia',
  'Cómo consultar el estado de tu trámite de autodenuncia',
  'Dónde y cómo verificar el estado de tu trámite migratorio tras la autodenuncia: portal SERMIG, qué significa cada estado y qué hacer si está detenido.',
  'consultar estado tramite autodenuncia sermig migracion chile',
  $content$<h2>Portal de trámites del SERMIG</h2>
<p>El SERMIG dispone del portal <strong>tramitesmigratorios.interior.gob.cl</strong> donde puedes consultar el estado de tu solicitud ingresando el número de trámite que te entregaron al presentar la autodenuncia o la solicitud de residencia.</p>
<h2>¿Qué información necesitas para consultar?</h2>
<ul>
<li>Número de trámite o folio (aparece en el comprobante que recibiste).</li>
<li>RUT o número de pasaporte, según lo que registraste.</li>
</ul>
<h2>Estados posibles y qué significan</h2>
<ul>
<li><strong>En proceso / En revisión:</strong> el SERMIG está evaluando tu expediente. No requiere acción inmediata.</li>
<li><strong>Documentación pendiente:</strong> el SERMIG requiere documentos adicionales. Debes aportarlos a la brevedad.</li>
<li><strong>Aprobado:</strong> se concedió el permiso. Sigue las instrucciones para retirar tu cédula en el SRCeI.</li>
<li><strong>Rechazado:</strong> la solicitud fue denegada. Tienes plazo para presentar recurso.</li>
</ul>
<h2>Si el trámite lleva meses sin actualizarse</h2>
<ul>
<li>Acude presencialmente a la oficina del SERMIG con tu comprobante.</li>
<li>Solicita información sobre el estado del expediente.</li>
<li>Si detectas un error en los datos, corrígelo de inmediato.</li>
</ul>$content$,
  'FAQPage',
  '[{"question":"¿Cuánto tarda en actualizarse el estado en el portal?","answer":"El portal no se actualiza en tiempo real. Puede haber demoras de días o semanas entre una acción interna del SERMIG y el cambio visible en el portal."},{"question":"¿Puedo llamar al SERMIG para consultar mi estado?","answer":"Sí, el SERMIG tiene línea de consultas. También puedes acudir presencialmente. El portal es la vía más rápida pero no siempre está actualizado al día."}]'::jsonb,
  ARRAY['autodenuncia/sermig-vs-pdi', 'autodenuncia/tiempos-reales'],
  TRUE,
  NOW()
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO articles (slug, silo, parent_slug, type, title, h1, meta_description, keyword_primary, content, schema_type, faq_items, related_slugs, is_published, published_at)
VALUES (
  'autodenuncia/tiempos-reales',
  'autodenuncia',
  'autodenuncia',
  'cluster',
  'Tiempos reales del proceso de autodenuncia en Chile',
  'Tiempos reales del proceso de autodenuncia en Chile (2026)',
  'Cuánto demora realmente el proceso de autodenuncia migratoria en Chile: desde la presentación en la PDI hasta la resolución del SERMIG.',
  'cuanto demora autodenuncia chile tiempo proceso sermig pdi 2026',
  $content$<h2>Advertencia importante</h2>
<p>Los plazos que se indican aquí son estimaciones basadas en experiencias reportadas. Los tiempos reales varían significativamente según la carga del SERMIG, la complejidad del caso y si la documentación está completa desde el inicio.</p>
<h2>Etapas y tiempos estimados</h2>
<ul>
<li><strong>Presentación en PDI (empadronamiento):</strong> 1 día (tiempo de espera variable, recomendable llegar temprano).</li>
<li><strong>Derivación PDI → SERMIG:</strong> 1–2 semanas.</li>
<li><strong>Evaluación inicial en SERMIG:</strong> 2–6 semanas.</li>
<li><strong>Solicitud de documentos adicionales (si aplica):</strong> +2–4 semanas más.</li>
<li><strong>Resolución final:</strong> desde la autodenuncia hasta resolución, el proceso puede tomar entre <strong>2 y 6 meses</strong> en condiciones normales.</li>
</ul>
<h2>Factores que aceleran el proceso</h2>
<ul>
<li>Expediente completo desde el primer día.</li>
<li>Vínculos documentados en Chile (trabajo, familia, domicilio estable).</li>
<li>Responder rápido a cualquier requerimiento del SERMIG.</li>
</ul>
<h2>Factores que lo demoran</h2>
<ul>
<li>Documentación faltante o con errores.</li>
<li>Alta carga de solicitudes en el SERMIG (frecuente en períodos de regularización masiva).</li>
<li>Necesidad de verificaciones adicionales por parte del organismo.</li>
</ul>$content$,
  'FAQPage',
  '[{"question":"¿Me pueden dar un permiso provisional mientras espero la resolución?","answer":"Sí, en muchos casos el SERMIG emite un permiso provisional o transitorio que te permite permanecer en Chile legalmente mientras se evalúa tu caso."},{"question":"¿Qué pasa si el SERMIG tarda más de 6 meses?","answer":"Puedes acudir presencialmente al SERMIG para solicitar información sobre el estado. Si tienes un permiso provisional, este generalmente se extiende mientras el trámite sigue en proceso."}]'::jsonb,
  ARRAY['autodenuncia/estado-tramite', 'autodenuncia/sermig-vs-pdi', 'autodenuncia/errores-comunes'],
  TRUE,
  NOW()
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO articles (slug, silo, parent_slug, type, title, h1, meta_description, keyword_primary, content, schema_type, faq_items, related_slugs, is_published, published_at)
VALUES (
  'autodenuncia/errores-comunes',
  'autodenuncia',
  'autodenuncia',
  'cluster',
  'Errores comunes en la autodenuncia migratoria',
  'Errores comunes en la autodenuncia migratoria (y cómo evitarlos)',
  'Los errores más frecuentes que cometen los inmigrantes al hacer la autodenuncia en Chile y cómo evitarlos para no retrasar o perder el trámite.',
  'errores autodenuncia migratoria chile como evitar pdi sermig',
  $content$<h2>Error 1: Ir sin documentación</h2>
<p>Presentarse en la PDI sin ningún documento de identidad o comprobante de estadía en Chile debilita el expediente. Lleva todo lo que tengas: pasaporte (aunque esté vencido), contratos de arriendo, boletas, certificados médicos o escolares de hijos.</p>
<h2>Error 2: Esperar demasiado</h2>
<p>Entre más tiempo en situación irregular, mayor la multa acumulada y más difícil puede ser argumentar circunstancias atenuantes. Actúa pronto, no cuando ya haya una notificación o riesgo de expulsión.</p>
<h2>Error 3: No responder a requerimientos del SERMIG</h2>
<p>Si el SERMIG solicita documentación adicional y no respondes dentro del plazo, el trámite puede archivarse o rechazarse. Revisa regularmente el estado en el portal y responde inmediatamente.</p>
<h2>Error 4: Confundir la autodenuncia con una garantía</h2>
<p>La autodenuncia inicia un proceso, no garantiza la residencia. Presentarse voluntariamente es positivo, pero el resultado depende de la evaluación del SERMIG según tu situación específica.</p>
<h2>Error 5: No guardar comprobantes</h2>
<p>Conserva todos los comprobantes: recibo de la PDI, número de trámite del SERMIG, pagos realizados. Son necesarios para hacer seguimiento y para futuras solicitudes.</p>
<h2>Error 6: Ir con información incorrecta en los formularios</h2>
<p>Datos inconsistentes entre formularios y documentos generan retrasos y pueden derivar en rechazo. Revisa fechas, nombres y números con calma antes de presentar.</p>$content$,
  'FAQPage',
  '[{"question":"¿Puedo corregir errores en mi expediente después de presentarlo?","answer":"Sí, pero debes hacerlo cuanto antes. Acude al SERMIG con los documentos correctos y solicita la corrección formal. Errores no corregidos pueden ser causal de rechazo."},{"question":"¿Qué pasa si perdí el comprobante de la PDI?","answer":"Acude directamente a la PDI o al SERMIG con tu número de trámite o datos personales para solicitar una copia. Sin comprobante es más difícil hacer seguimiento, así que guárdalos bien desde el inicio."}]'::jsonb,
  ARRAY['autodenuncia/pdi-paso-a-paso', 'autodenuncia/que-es-autodenuncia', 'autodenuncia/tiempos-reales'],
  TRUE,
  NOW()
) ON CONFLICT (slug) DO NOTHING;

COMMIT;
