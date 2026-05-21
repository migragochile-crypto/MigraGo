-- Migración: Insertar artículos cluster para el silo problemas-migratorios
-- Los 6 originales nunca tuvieron artículo en DB (solo aparecían en silos.ts como fallback).
-- Se agregan esos 6 más 5 nuevos para llegar a 11 clusters.

BEGIN;

-- 1. Pilar (existe en DB del seed inicial pero fue renombrado de 'problemas' a 'problemas-migratorios')
-- El slug ya fue actualizado por migración 000001; aquí solo se insertan clusters.

-- ============================================================
-- CLUSTERS EXISTENTES (6)
-- ============================================================

INSERT INTO articles (slug, silo, parent_slug, type, title, h1, meta_description, keyword_primary, content, schema_type, faq_items, related_slugs, is_published, published_at)
VALUES (
  'problemas-migratorios/rechazo-visa',
  'problemas-migratorios',
  'problemas-migratorios',
  'cluster',
  'Me rechazaron la visa en Chile: qué hacer',
  'Me rechazaron la visa en Chile: qué hacer',
  'Qué hacer si el SERMIG rechaza tu solicitud de Residencia Temporal o Definitiva: recursos disponibles, plazos y pasos concretos.',
  'rechazo visa chile sermig que hacer recurso',
  $content$<h2>¿Por qué se rechaza una visa?</h2>
<p>El SERMIG puede rechazar una solicitud por documentación incompleta, inconsistencias en el expediente, antecedentes que impiden la residencia, o incumplimiento de requisitos de la categoría solicitada. La resolución de rechazo debe indicar el motivo específico.</p>
<h2>Opciones tras un rechazo</h2>
<ul>
<li><strong>Recurso de reposición:</strong> se presenta ante el mismo organismo que dictó la resolución. Plazo habitual: 5 días hábiles desde la notificación.</li>
<li><strong>Recurso jerárquico:</strong> si el de reposición es rechazado, se puede elevar al nivel superior dentro del SERMIG.</li>
<li><strong>Nueva solicitud:</strong> si el rechazo se debió a documentación faltante, puedes completar el expediente y volver a postular.</li>
</ul>
<h2>Pasos inmediatos</h2>
<ol>
<li>Lee detalladamente la resolución de rechazo: identifica el fundamento legal.</li>
<li>Anota la fecha de notificación: los plazos para recurrir corren desde ese día.</li>
<li>Junta los documentos que faltaban o que corrigen el problema señalado.</li>
<li>Presenta el recurso o nueva solicitud dentro del plazo indicado.</li>
</ol>
<h2>Situación migratoria mientras recurres</h2>
<p>Durante la tramitación de un recurso, tu situación puede quedar en suspenso. Consulta con el SERMIG o una organización de apoyo migrante si tu permiso actual vence mientras esperas resolución.</p>$content$,
  'FAQPage',
  '[{"question":"¿Puedo seguir en Chile tras un rechazo?","answer":"Depende de si tienes otro permiso vigente. El rechazo no implica expulsión inmediata, pero sí debes regularizar tu situación o presentar recurso dentro del plazo establecido."},{"question":"¿Cuánto tiempo tengo para presentar un recurso?","answer":"El recurso de reposición debe presentarse generalmente dentro de 5 días hábiles desde la notificación del rechazo. Lee la resolución para confirmar el plazo exacto."}]'::jsonb,
  ARRAY['problemas-migratorios/recurso-administrativo', 'problemas-migratorios/reposicion', 'problemas-migratorios/visa-vencida'],
  TRUE,
  NOW()
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO articles (slug, silo, parent_slug, type, title, h1, meta_description, keyword_primary, content, schema_type, faq_items, related_slugs, is_published, published_at)
VALUES (
  'problemas-migratorios/recurso-administrativo',
  'problemas-migratorios',
  'problemas-migratorios',
  'cluster',
  'Recurso administrativo migratorio en Chile',
  'Recurso administrativo migratorio: cómo impugnar una resolución del SERMIG',
  'Cómo presentar un recurso administrativo ante el SERMIG tras un rechazo o resolución desfavorable: tipos, plazos y requisitos.',
  'recurso administrativo migratorio chile sermig impugnar',
  $content$<h2>Tipos de recurso</h2>
<ul>
<li><strong>Recurso de reposición:</strong> ante el mismo órgano que dictó la resolución. Es el primer paso y el más común.</li>
<li><strong>Recurso jerárquico:</strong> ante el superior jerárquico dentro del SERMIG si el de reposición es rechazado.</li>
<li><strong>Recurso extraordinario de revisión:</strong> en casos específicos previstos por la ley.</li>
</ul>
<h2>Plazos generales</h2>
<ul>
<li>Reposición: 5 días hábiles desde la notificación.</li>
<li>Jerárquico: 5 días hábiles desde la notificación del rechazo de reposición.</li>
</ul>
<h2>Cómo presentarlo</h2>
<ol>
<li>Redacta el recurso indicando: tus datos, número de solicitud, resolución impugnada y los fundamentos de hecho y derecho.</li>
<li>Adjunta documentación que respalde tus argumentos.</li>
<li>Preséntalo en la oficina del SERMIG o a través del portal de trámites si está habilitado.</li>
<li>Guarda el comprobante de recepción con fecha y hora.</li>
</ol>
<h2>Recomendaciones</h2>
<ul>
<li>No esperes al último día: presenta el recurso con margen suficiente.</li>
<li>Identifica claramente el error o la omisión que motiva el recurso.</li>
<li>Si el caso es complejo, considera asesoría legal de una organización de apoyo migrante.</li>
</ul>$content$,
  'FAQPage',
  '[{"question":"¿El recurso suspende mi obligación de salir del país?","answer":"No necesariamente. Consulta directamente con el SERMIG si la interposición del recurso suspende efectos del acto impugnado en tu caso específico."},{"question":"¿Puedo presentar el recurso sin abogado?","answer":"Sí, no se requiere representación legal obligatoria para los recursos administrativos migratorios, pero contar con asesoría mejora la calidad del escrito."}]'::jsonb,
  ARRAY['problemas-migratorios/rechazo-visa', 'problemas-migratorios/reposicion', 'problemas-migratorios/expulsion-administrativa'],
  TRUE,
  NOW()
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO articles (slug, silo, parent_slug, type, title, h1, meta_description, keyword_primary, content, schema_type, faq_items, related_slugs, is_published, published_at)
VALUES (
  'problemas-migratorios/multas-migratorias',
  'problemas-migratorios',
  'problemas-migratorios',
  'cluster',
  'Multas migratorias en Chile: cómo pagarlas y reducirlas',
  'Multas migratorias en Chile: cómo pagarlas y reducirlas',
  'Qué son las multas por permanencia irregular en Chile, cómo calcularlas, dónde pagarlas y si es posible reducirlas o eximirse.',
  'multas migratorias chile permanencia irregular pagar reducir',
  $content$<h2>¿Cuándo se generan multas?</h2>
<p>Las multas migratorias se generan principalmente por permanecer en Chile más tiempo del autorizado: visa de turismo vencida, permiso de residencia vencido o ingreso sin registro válido.</p>
<h2>¿Cómo se calculan?</h2>
<p>El monto se calcula en Unidades Tributarias Mensuales (UTM) según los días de permanencia irregular. La Ley 21.325 establece los tramos y montos máximos. Usa la <a href="/herramientas/calculadora-multas">Calculadora de Multas</a> para estimar el monto.</p>
<h2>¿Dónde y cómo se pagan?</h2>
<ol>
<li>La multa se notifica generalmente al momento de la autodenuncia o al salir del país.</li>
<li>El pago se realiza en el SERMIG o mediante los canales indicados en la resolución.</li>
<li>Guarda el comprobante de pago: es necesario para continuar trámites.</li>
</ol>
<h2>¿Es posible reducirlas?</h2>
<p>En algunos casos, circunstancias atenuantes (menores de edad, enfermedad, fuerza mayor) pueden considerarse. La Ley 21.325 contempla la posibilidad de reducción a criterio del SERMIG. No hay garantía de reducción automática.</p>$content$,
  'FAQPage',
  '[{"question":"¿Puedo salir de Chile con una multa sin pagar?","answer":"Generalmente no: al salir por un paso habilitado, la multa puede cobrarse o puede impedirse la salida hasta regularizar. Consulta tu situación específica con el SERMIG."},{"question":"¿La multa afecta futuras solicitudes de visa?","answer":"Sí, los antecedentes de permanencia irregular y multas impagadas pueden dificultar solicitudes futuras de Residencia Temporal o Definitiva."}]'::jsonb,
  ARRAY['problemas-migratorios/visa-vencida', 'problemas-migratorios/notificacion-irregular'],
  TRUE,
  NOW()
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO articles (slug, silo, parent_slug, type, title, h1, meta_description, keyword_primary, content, schema_type, faq_items, related_slugs, is_published, published_at)
VALUES (
  'problemas-migratorios/visa-vencida',
  'problemas-migratorios',
  'problemas-migratorios',
  'cluster',
  'Visa o permiso vencido en Chile: qué hacer',
  'Visa o permiso vencido en Chile: qué hacer',
  'Qué hacer si tu visa de turismo, Residencia Temporal o permiso de trabajo está vencido en Chile: opciones de regularización y riesgos.',
  'visa vencida chile que hacer permiso vencido regularizacion',
  $content$<h2>¿Qué implica tener el permiso vencido?</h2>
<p>Estar en Chile con un permiso vencido constituye una situación migratoria irregular. Puede derivar en multas, dificultades para renovar documentos y, en casos extremos, procesos de expulsión.</p>
<h2>Opciones según tu situación</h2>
<ul>
<li><strong>Si vence pronto:</strong> solicita prórroga o renovación antes del vencimiento. No esperes al último día.</li>
<li><strong>Si ya venció (reciente):</strong> presenta la solicitud de regularización inmediatamente. El tiempo adicional en situación irregular acumula multa.</li>
<li><strong>Autodenuncia:</strong> si llevas tiempo en situación irregular, la <a href="/autodenuncia">autodenuncia</a> es la vía formal de regularización. No equivale a expulsión automática.</li>
</ul>
<h2>Documentos que necesitarás</h2>
<ul>
<li>Pasaporte vigente</li>
<li>Comprobante de domicilio en Chile</li>
<li>Certificados vigentes según la categoría que solicites (contrato, acta familiar, etc.)</li>
</ul>
<h2>¿Puedo viajar con el permiso vencido?</h2>
<p>Salir de Chile con permiso vencido puede generar la cobranza de la multa en frontera y una anotación de permanencia irregular que afecte futuros ingresos. Regulariza antes de viajar si es posible.</p>$content$,
  'FAQPage',
  '[{"question":"¿Cuánto tiempo tengo tras el vencimiento antes de que haya consecuencias graves?","answer":"No hay un período de gracia formal. Desde el día siguiente al vencimiento comienzas a acumular días de irregularidad. Regulariza cuanto antes."},{"question":"¿Puedo seguir trabajando con el permiso vencido?","answer":"No, trabajar sin autorización migratoria vigente es una infracción que puede complicar trámites futuros y generar sanciones al empleador."}]'::jsonb,
  ARRAY['problemas-migratorios/multas-migratorias', 'problemas-migratorios/trabajo-sin-visa', 'problemas-migratorios/notificacion-irregular'],
  TRUE,
  NOW()
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO articles (slug, silo, parent_slug, type, title, h1, meta_description, keyword_primary, content, schema_type, faq_items, related_slugs, is_published, published_at)
VALUES (
  'problemas-migratorios/expulsion-administrativa',
  'problemas-migratorios',
  'problemas-migratorios',
  'cluster',
  'Expulsión administrativa en Chile: proceso y opciones',
  'Expulsión administrativa en Chile: proceso y opciones',
  'Qué es la expulsión administrativa migratoria en Chile, cuándo se aplica, cómo se notifica y qué recursos tienes para impugnarla.',
  'expulsion administrativa chile proceso recursos impugnar migracion',
  $content$<h2>¿Qué es la expulsión administrativa?</h2>
<p>Es una medida dictada por el SERMIG que obliga a una persona a abandonar el territorio chileno. Se aplica en casos de infracciones graves a la Ley de Migración (Ley 21.325): ingreso clandestino, reincidencia en irregularidad, condenas penales, entre otros.</p>
<h2>¿Cómo se notifica?</h2>
<p>Mediante resolución fundada del SERMIG. La notificación puede realizarse en el domicilio registrado o en dependencias del organismo. Desde la notificación corren los plazos para recurrir.</p>
<h2>Recursos disponibles</h2>
<ul>
<li><strong>Recurso de reposición:</strong> ante el SERMIG, dentro del plazo indicado en la resolución (generalmente 5 días hábiles).</li>
<li><strong>Recurso jerárquico:</strong> ante el superior del SERMIG.</li>
<li><strong>Acción de amparo (recurso de protección):</strong> ante la Corte de Apelaciones, si hay vulneración de derechos fundamentales.</li>
</ul>
<h2>Efectos de la expulsión</h2>
<ul>
<li>Prohibición de ingreso a Chile por el plazo establecido en la resolución (puede ser indefinida).</li>
<li>Registro en bases de datos de control migratorio.</li>
</ul>
<h2>Recomendaciones urgentes</h2>
<p>Si recibes una notificación de expulsión, busca asesoría legal inmediata. Organizaciones de apoyo migrante en Chile ofrecen orientación gratuita.</p>$content$,
  'FAQPage',
  '[{"question":"¿La expulsión es inmediata tras la notificación?","answer":"No necesariamente: tienes derecho a presentar recursos y la expulsión no se ejecuta mientras los plazos legales estén vigentes o el recurso esté en tramitación."},{"question":"¿Puedo regresar a Chile tras una expulsión?","answer":"Depende del plazo establecido en la resolución. Algunas expulsiones tienen prohibición de ingreso temporal y otras indefinida. Debes solicitar autorización especial para el reingreso si corresponde."}]'::jsonb,
  ARRAY['problemas-migratorios/recurso-administrativo', 'problemas-migratorios/prohibicion-ingreso'],
  TRUE,
  NOW()
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO articles (slug, silo, parent_slug, type, title, h1, meta_description, keyword_primary, content, schema_type, faq_items, related_slugs, is_published, published_at)
VALUES (
  'problemas-migratorios/reposicion',
  'problemas-migratorios',
  'problemas-migratorios',
  'cluster',
  'Recurso de reposición migratorio en Chile',
  'Recurso de reposición migratorio: guía práctica',
  'Cómo presentar un recurso de reposición ante el SERMIG: cuándo usarlo, plazos, estructura del escrito y documentos necesarios.',
  'recurso reposicion migratorio chile sermig plazo escrito',
  $content$<h2>¿Cuándo usar el recurso de reposición?</h2>
<p>El recurso de reposición es el primer mecanismo para impugnar una resolución desfavorable del SERMIG: rechazo de solicitud, multa, o sanción. Es más rápido que otras vías y se tramita ante el mismo órgano que dictó la resolución.</p>
<h2>Plazo</h2>
<p>Generalmente <strong>5 días hábiles</strong> desde la notificación de la resolución. Verifica el plazo exacto en el texto de la resolución que recibiste.</p>
<h2>Estructura del escrito</h2>
<ol>
<li><strong>Encabezado:</strong> tribunal o autoridad a quien se dirige (SERMIG), tus datos y número de expediente.</li>
<li><strong>Resolución impugnada:</strong> identifica la resolución con fecha y número.</li>
<li><strong>Fundamentos:</strong> explica por qué la resolución es incorrecta (errores de hecho o de derecho).</li>
<li><strong>Petición:</strong> lo que solicitas expresamente (dejar sin efecto la resolución, conceder la visa, etc.).</li>
<li><strong>Firma y fecha.</strong></li>
</ol>
<h2>Documentos que debes adjuntar</h2>
<ul>
<li>Copia de la resolución impugnada</li>
<li>Documentos que respalden tus argumentos (certificados, contratos, actas)</li>
<li>Copia de tu pasaporte o cédula de identidad vigente</li>
</ul>$content$,
  'FAQPage',
  '[{"question":"¿Qué pasa si el SERMIG rechaza el recurso de reposición?","answer":"Puedes presentar un recurso jerárquico ante el superior del SERMIG dentro del plazo que indique la resolución de rechazo."},{"question":"¿El recurso de reposición suspende la resolución impugnada?","answer":"No automáticamente. Consulta con el SERMIG si en tu caso específico la interposición del recurso suspende los efectos del acto."}]'::jsonb,
  ARRAY['problemas-migratorios/recurso-administrativo', 'problemas-migratorios/rechazo-visa'],
  TRUE,
  NOW()
) ON CONFLICT (slug) DO NOTHING;

-- ============================================================
-- CLUSTERS NUEVOS (5)
-- ============================================================

INSERT INTO articles (slug, silo, parent_slug, type, title, h1, meta_description, keyword_primary, content, schema_type, faq_items, related_slugs, is_published, published_at)
VALUES (
  'problemas-migratorios/antecedentes-penales-chile',
  'problemas-migratorios',
  'problemas-migratorios',
  'cluster',
  'Antecedentes penales en Chile y trámites migratorios',
  'Antecedentes penales en Chile: cómo afectan tus trámites migratorios',
  'Cómo los antecedentes penales en Chile afectan solicitudes de Residencia Temporal, Definitiva y naturalización. Qué puedes hacer.',
  'antecedentes penales chile migracion residencia visa efecto tramites',
  $content$<h2>¿Qué son los antecedentes penales en Chile?</h2>
<p>Los antecedentes penales reflejan condenas o imputaciones registradas en el sistema del Poder Judicial chileno. El Registro Civil emite el Certificado de Antecedentes para Fines Especiales (hoja de vida).</p>
<h2>¿Cómo afectan los trámites migratorios?</h2>
<ul>
<li><strong>Residencia Temporal:</strong> algunas categorías exigen certificado de antecedentes sin anotaciones. Condenas por ciertos delitos pueden ser causal de rechazo.</li>
<li><strong>Residencia Definitiva:</strong> también se evalúa la hoja de vida. Condenas recientes o graves pueden impedir la aprobación.</li>
<li><strong>Naturalización:</strong> el SERMIG y el Ministerio del Interior evalúan el perfil de conducta; antecedentes penales son un factor determinante.</li>
</ul>
<h2>¿Qué puedes hacer?</h2>
<ul>
<li>Solicita tu certificado en el <a href="https://www.srcei.cl" rel="noopener">SRCeI</a> para conocer tu situación exacta antes de postular.</li>
<li>Si tienes condenas, consulta con un abogado especializado en migración para evaluar opciones según el tiempo transcurrido y el tipo de delito.</li>
<li>En algunos casos, el tiempo transcurrido desde la condena y la reinserción demostrable pueden ser argumentos favorables en el expediente.</li>
</ul>$content$,
  'FAQPage',
  '[{"question":"¿Puedo obtener Residencia Temporal si tengo antecedentes penales en Chile?","answer":"Depende del tipo de delito, la fecha de la condena y la categoría de visa que solicitas. Algunos antecedentes son causal de rechazo; otros no. Consulta con un especialista antes de postular."},{"question":"¿Los antecedentes en mi país de origen también se evalúan?","answer":"Sí. El SERMIG generalmente solicita también el certificado de antecedentes del país de origen apostillado. Ambos registros son relevantes para la evaluación."}]'::jsonb,
  ARRAY['problemas-migratorios/rechazo-visa', 'problemas-migratorios/trabajo-sin-visa'],
  TRUE,
  NOW()
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO articles (slug, silo, parent_slug, type, title, h1, meta_description, keyword_primary, content, schema_type, faq_items, related_slugs, is_published, published_at)
VALUES (
  'problemas-migratorios/trabajo-sin-visa',
  'problemas-migratorios',
  'problemas-migratorios',
  'cluster',
  'Trabajar sin visa en Chile: consecuencias y cómo regularizarse',
  'Trabajar sin visa en Chile: consecuencias y cómo regularizarse',
  'Qué pasa si trabajas sin autorización migratoria en Chile, qué riesgos tiene, cómo afecta al empleador y cómo regularizar la situación.',
  'trabajar sin visa chile consecuencias regularizacion infraccion',
  $content$<h2>¿Qué implica trabajar sin autorización?</h2>
<p>Trabajar en Chile sin un permiso migratorio que lo autorice (Residencia Temporal con permiso de trabajo, Residencia Definitiva o categoría habilitante) constituye una infracción a la Ley 21.325 y puede tener consecuencias para el trabajador y el empleador.</p>
<h2>Consecuencias para el trabajador</h2>
<ul>
<li>Multa por permanencia irregular (si el permiso también está vencido).</li>
<li>Dificultades para obtener Residencia Definitiva o naturalización en el futuro.</li>
<li>Imposibilidad de acreditar cotizaciones previsionales (AFP, salud) del período.</li>
</ul>
<h2>Consecuencias para el empleador</h2>
<ul>
<li>Multa administrativa por contratar a un trabajador sin autorización migratoria.</li>
<li>La Dirección del Trabajo puede fiscalizar y aplicar sanciones.</li>
</ul>
<h2>Cómo regularizarse</h2>
<ol>
<li>Si tu permiso está vencido, inicia la regularización por <a href="/autodenuncia">autodenuncia</a> o solicitud directa al SERMIG según tu situación.</li>
<li>Solicita la categoría de Residencia Temporal que corresponda (por contrato de trabajo, oferta laboral, etc.).</li>
<li>Una vez con permiso vigente, tu empleador puede regularizar el contrato legalmente.</li>
</ol>$content$,
  'FAQPage',
  '[{"question":"¿El empleador tiene responsabilidad si no sabía que mi permiso estaba vencido?","answer":"La legislación chilena establece obligación de verificar la situación migratoria del trabajador. En la práctica, la fiscalización de la Dirección del Trabajo puede incluir al empleador incluso si alega desconocimiento."},{"question":"¿Puedo reclamar mis cotizaciones si trabajé sin permiso?","answer":"La relación laboral puede ser declarada válida para fines previsionales, pero es un proceso complejo. Consulta con la Dirección del Trabajo o un abogado laboral."}]'::jsonb,
  ARRAY['problemas-migratorios/visa-vencida', 'problemas-migratorios/multas-migratorias', 'problemas-migratorios/antecedentes-penales-chile'],
  TRUE,
  NOW()
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO articles (slug, silo, parent_slug, type, title, h1, meta_description, keyword_primary, content, schema_type, faq_items, related_slugs, is_published, published_at)
VALUES (
  'problemas-migratorios/documentos-perdidos',
  'problemas-migratorios',
  'problemas-migratorios',
  'cluster',
  'Pérdida o robo de documentos migratorios en Chile',
  'Pérdida o robo de documentos migratorios en Chile: qué hacer',
  'Qué hacer si pierdes o te roban el pasaporte, cédula de extranjería u otros documentos migratorios en Chile. Pasos urgentes y trámites.',
  'perdida robo pasaporte documentos migratorios chile que hacer',
  $content$<h2>Primeros pasos (urgentes)</h2>
<ol>
<li><strong>Denuncia en Carabineros o PDI:</strong> realiza la denuncia por pérdida o robo. Guarda el comprobante — es necesario para trámites posteriores.</li>
<li><strong>Notifica a tu consulado:</strong> contacta el consulado de tu país en Chile para iniciar la reposición del pasaporte o documento de viaje.</li>
<li><strong>Informa al SERMIG:</strong> si perdiste tu cédula de identidad de extranjería o permiso de residencia, notifica al SERMIG para bloquear el documento y solicitar duplicado.</li>
</ol>
<h2>Reposición según documento</h2>
<ul>
<li><strong>Pasaporte:</strong> debe reponerse en el consulado de tu país. Los plazos varían por país.</li>
<li><strong>Cédula de identidad de extranjería:</strong> solicita duplicado en el SRCeI. Requiere pasaporte vigente y comprobante de residencia.</li>
<li><strong>Visa o permiso impreso:</strong> solicita certificado de vigencia o copia al SERMIG.</li>
</ul>
<h2>¿Puedo quedarme en Chile sin documentos?</h2>
<p>Sí, puedes permanecer mientras tramitas la reposición. Sin embargo, mantén el comprobante de denuncia como respaldo ante cualquier control. No viajar internacionalmente hasta reponer el pasaporte.</p>$content$,
  'FAQPage',
  '[{"question":"¿Cuánto demora reponer la cédula de extranjería?","answer":"El SRCeI puede tardar entre 10 y 30 días hábiles según la carga de solicitudes. Solicita comprobante provisional mientras esperas."},{"question":"¿Mi visa sigue vigente aunque haya perdido el documento físico?","answer":"La vigencia del permiso está en el sistema del SERMIG, no en el documento físico. El documento perdido debe bloquearse y reponerse, pero la vigencia del permiso en sí no se pierde automáticamente."}]'::jsonb,
  ARRAY['problemas-migratorios/notificacion-irregular'],
  TRUE,
  NOW()
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO articles (slug, silo, parent_slug, type, title, h1, meta_description, keyword_primary, content, schema_type, faq_items, related_slugs, is_published, published_at)
VALUES (
  'problemas-migratorios/prohibicion-ingreso',
  'problemas-migratorios',
  'problemas-migratorios',
  'cluster',
  'Prohibición de ingreso a Chile: cómo verificar y recurrir',
  'Prohibición de ingreso a Chile: cómo verificar y recurrir',
  'Cómo saber si tienes una prohibición de ingreso a Chile, qué la origina y qué recursos existen para impugnarla o solicitar autorización especial.',
  'prohibicion ingreso chile como verificar recurrir migracion',
  $content$<h2>¿Qué es la prohibición de ingreso?</h2>
<p>Es una medida administrativa que impide a una persona entrar al territorio chileno. Se registra en los sistemas de control fronterizo de la PDI. Puede ser temporal o indefinida.</p>
<h2>¿Qué la origina?</h2>
<ul>
<li>Expulsión administrativa previa.</li>
<li>Condenas penales en Chile o en el exterior (según convenios).</li>
<li>Declaración como persona no grata por razones de seguridad o interés nacional.</li>
<li>Incumplimiento reiterado de la normativa migratoria.</li>
</ul>
<h2>¿Cómo verificar si tienes una prohibición?</h2>
<p>La PDI es el organismo que gestiona el registro. Puedes consultar en una oficina de la PDI o a través del portal de trámites. Si tienes dudas, una consulta directa antes de intentar ingresar es la opción más segura.</p>
<h2>¿Cómo recurrir?</h2>
<ul>
<li><strong>Si fue consecuencia de una expulsión:</strong> presenta recurso administrativo ante el SERMIG dentro del plazo indicado en la resolución original.</li>
<li><strong>Si el plazo de prohibición venció:</strong> solicita al SERMIG o PDI la verificación y levantamiento formal del registro.</li>
<li><strong>Autorización especial de ingreso:</strong> en casos excepcionales (razones humanitarias, familiares graves), puede solicitarse autorización especial al Ministerio del Interior.</li>
</ul>$content$,
  'FAQPage',
  '[{"question":"¿Puedo saber de antemano si tengo prohibición de ingreso?","answer":"Sí, puedes consultar en la PDI antes de intentar ingresar. Es muy recomendable si fuiste expulsado o tienes dudas sobre tu situación."},{"question":"¿La prohibición de ingreso se aplica en todos los pasos fronterizos?","answer":"Sí, el registro de prohibición es nacional y aplica en todos los pasos habilitados, tanto terrestres como aéreos y marítimos."}]'::jsonb,
  ARRAY['problemas-migratorios/expulsion-administrativa', 'problemas-migratorios/recurso-administrativo'],
  TRUE,
  NOW()
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO articles (slug, silo, parent_slug, type, title, h1, meta_description, keyword_primary, content, schema_type, faq_items, related_slugs, is_published, published_at)
VALUES (
  'problemas-migratorios/notificacion-irregular',
  'problemas-migratorios',
  'problemas-migratorios',
  'cluster',
  'Recibí una notificación por situación migratoria irregular: qué hacer',
  'Notificación por situación migratoria irregular: qué hacer',
  'Qué significa recibir una notificación del SERMIG o PDI por situación irregular y cuáles son los pasos inmediatos para responder correctamente.',
  'notificacion situacion irregular sermig pdi migracion chile que hacer',
  $content$<h2>¿Qué significa recibir esta notificación?</h2>
<p>Una notificación por situación irregular indica que el SERMIG o la PDI ha detectado que tu permanencia en Chile no está en regla: permiso vencido, ingreso sin registro válido, o incumplimiento de condiciones de tu visa. No implica expulsión inmediata, pero sí que debes actuar con rapidez.</p>
<h2>Pasos inmediatos</h2>
<ol>
<li><strong>Lee toda la notificación:</strong> identifica el motivo específico y el plazo para responder o regularizar.</li>
<li><strong>Anota la fecha de recepción:</strong> los plazos corren desde ese momento.</li>
<li><strong>No ignores la notificación:</strong> no responder puede derivar en resolución de expulsión sin más trámite.</li>
<li><strong>Busca asesoría:</strong> organizaciones de apoyo migrante pueden orientarte gratuitamente sobre las opciones según tu caso.</li>
</ol>
<h2>Opciones habituales tras la notificación</h2>
<ul>
<li><strong>Autodenuncia:</strong> si calificas, puede ser la vía para regularizarte formalmente.</li>
<li><strong>Solicitud de regularización:</strong> presenta la categoría de visa que corresponde a tu situación actual.</li>
<li><strong>Recurso administrativo:</strong> si consideras que la notificación es errónea, puedes impugnarla formalmente.</li>
</ul>
<h2>¿Debo salir de Chile inmediatamente?</h2>
<p>No necesariamente. La notificación no equivale a orden de expulsión. Sigue los plazos indicados y actúa dentro de ellos. Si recibes una resolución de expulsión, ahí sí se activan plazos más urgentes.</p>$content$,
  'FAQPage',
  '[{"question":"¿Cuánto tiempo tengo para regularizar tras la notificación?","answer":"El plazo varía según el tipo de notificación y se indica en el propio documento. Puede ir de días a semanas. No esperes al límite."},{"question":"¿Puedo seguir trabajando mientras regularizo?","answer":"Si tu permiso de trabajo está vencido, técnicamente no estás autorizado a trabajar. Regulariza tu situación migratoria lo antes posible."}]'::jsonb,
  ARRAY['problemas-migratorios/visa-vencida', 'problemas-migratorios/multas-migratorias', 'problemas-migratorios/recurso-administrativo'],
  TRUE,
  NOW()
) ON CONFLICT (slug) DO NOTHING;

COMMIT;
