-- ============================================================
-- MigraciónChile — Seed v16: clusters visa-temporaria + vivir-en-chile
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

-- ──────────────────────────────────────────────────────────
-- 1. CLUSTER: visa-temporaria/renovacion
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, schema_type, howto_steps, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'visa-temporaria/renovacion',
  'visa-temporaria',
  'visa-temporaria',
  'cluster',
  'Cómo Renovar la Visa Temporaria en Chile 2026',
  'Renovación de Visa Temporaria en Chile: Cuándo y Cómo Hacerlo',
  'Guía completa para renovar la visa temporaria en Chile antes de que venza. Plazos, documentos, cuánto cuesta y cómo evitar caer en situación irregular.',
  'renovar visa temporaria chile',
  $u1$
<p>La visa temporaria en Chile tiene una vigencia determinada — generalmente 1 o 2 años. Antes de que venza, debes renovarla o solicitar la Permanencia Definitiva si ya cumples los requisitos. Esta guía explica cómo hacerlo sin caer en situación irregular.</p>

<h2>¿Cuándo debo renovar?</h2>
<p>Puedes — y debes — iniciar el trámite de renovación <strong>con suficiente anticipación antes del vencimiento</strong>. Las recomendaciones son:</p>
<ul>
  <li><strong>Iniciar 90 días antes del vencimiento:</strong> esto te da margen si hay demoras o si el SERMIG pide documentación adicional.</li>
  <li><strong>Mínimo 30 días antes:</strong> no esperes más. Si la visa vence mientras el trámite está en proceso, el comprobante activo te protege, pero si vence antes de iniciar el trámite estarás en situación irregular.</li>
</ul>
<p>Si ya cumples 2 años de residencia continua con visa temporaria, considera solicitar la <strong>Permanencia Definitiva</strong> directamente en lugar de renovar la temporaria.</p>

<h2>¿Qué opciones tengo al vencer la visa?</h2>
<ul>
  <li><strong>Renovar la visa temporaria:</strong> para seguir viviendo y trabajando en Chile bajo el mismo esquema mientras acumulas los 2 años para la PD.</li>
  <li><strong>Solicitar Permanencia Definitiva:</strong> si llevas 2 años continuos con residencia legal en Chile. Es la opción preferible si calificas.</li>
  <li><strong>Cambiar de categoría de visa:</strong> si tu situación cambió (de estudiante a trabajador, de soltero a cónyuge de chileno, etc.), puede convenir solicitar una visa de otra categoría.</li>
</ul>

<h2>Documentos para la renovación</h2>
<p>Los documentos varían según la categoría de tu visa, pero generalmente incluyen:</p>
<ul>
  <li><strong>Pasaporte vigente.</strong></li>
  <li><strong>Cédula de identidad para extranjeros vigente.</strong></li>
  <li><strong>Certificado de antecedentes penales de Chile</strong> (SRCeI, vigencia 30 días).</li>
  <li><strong>Comprobante de actividad lícita actualizado:</strong> contrato de trabajo vigente + últimas 3 liquidaciones de sueldo, o certificado de inicio de actividades SII.</li>
  <li>Si tu categoría original era por vínculo familiar: documentos actualizados del vínculo (certificado de matrimonio vigente, etc.).</li>
</ul>

<h2>¿Necesito el certificado de antecedentes del país de origen?</h2>
<p>Para la <strong>renovación</strong> de visa temporaria generalmente <strong>no se exige</strong> el certificado extranjero — ese requisito aplica principalmente para la Permanencia Definitiva. Verifica los requisitos específicos para tu categoría en el portal del SERMIG al momento de iniciar el trámite, ya que pueden variar.</p>

<h2>Proceso de renovación</h2>
<ol>
  <li>Accede a <a href="https://tramitesmigratorios.interior.gob.cl" target="_blank" rel="noopener noreferrer">tramitesmigratorios.interior.gob.cl</a>.</li>
  <li>Inicia sesión y selecciona "Renovar visa temporaria".</li>
  <li>Completa el formulario y sube los documentos requeridos en PDF.</li>
  <li>Envía la solicitud. Recibirás el comprobante de trámite.</li>
</ol>
<p>El comprobante de trámite activo te permite seguir en Chile y trabajando legalmente mientras se resuelve la renovación.</p>

<h2>Costo de la renovación</h2>
<p>La renovación de visa temporaria tiene un arancel que varía según la categoría. Los montos se actualizan periódicamente — verifica el valor vigente en el sitio del SERMIG. Las personas en situación de vulnerabilidad pueden solicitar exención o reducción del arancel.</p>

<h2>¿Qué pasa si no renuevo a tiempo?</h2>
<p>Si tu visa vence y no has iniciado el trámite de renovación, caes en situación irregular. Consulta la guía <a href="/problemas/visa-vencida">¿Qué hacer si tu visa venció?</a> para conocer las opciones de regularización.</p>
  $u1$,
  'HowTo',
  '[
    {"name": "Calcular cuándo iniciar el trámite", "text": "Revisa la fecha de vencimiento de tu visa actual. Inicia el trámite 90 días antes (o mínimo 30). Si ya cumples 2 años continuos, evalúa solicitar Permanencia Definitiva directamente."},
    {"name": "Reunir documentos actualizados", "text": "Prepara pasaporte y cédula vigentes, certificado de antecedentes penales de Chile (máximo 30 días), y comprobante de actividad lícita actualizado (contrato + últimas 3 liquidaciones)."},
    {"name": "Ingresar la solicitud en el portal SERMIG", "text": "Accede a tramitesmigratorios.interior.gob.cl, selecciona renovación de visa temporaria para tu categoría, sube los documentos y envía."},
    {"name": "Guardar el comprobante de trámite", "text": "Una vez enviada la solicitud, guarda el comprobante. Este documento te habilita para permanecer y trabajar en Chile mientras se resuelve la renovación."},
    {"name": "Monitorear el estado en el portal", "text": "Revisa periódicamente el estado de tu solicitud. Si aparece Con observaciones, responde dentro de los 10 días hábiles de plazo para no perder el trámite."},
    {"name": "Recibir la resolución y tramitar la cédula renovada", "text": "Al aprobarse la renovación, la nueva cédula de identidad para extranjeros se tramita en el Registro Civil (SRCeI)."}
  ]'::jsonb,
  '[
    {
      "question": "¿Puedo trabajar mientras espero la resolución de la renovación?",
      "answer": "Sí. El comprobante de trámite activo te habilita para trabajar legalmente en Chile mientras se resuelve la renovación. Si tu empleador pregunta, muéstrale el comprobante de solicitud vigente."
    },
    {
      "question": "¿Puedo salir de Chile con la visa vencida y el comprobante de renovación activo?",
      "answer": "Salir con la visa vencida puede generar inconvenientes al reingresar. Consulta directamente con el SERMIG antes de viajar si tu visa vence durante el proceso de renovación. Si puedes esperar la resolución antes de viajar, es lo más seguro."
    },
    {
      "question": "¿Cuántas veces puedo renovar la visa temporaria?",
      "answer": "No hay un límite explícito de renovaciones, pero el objetivo del sistema es que luego de 2 años continuos solicites la Permanencia Definitiva. Renovar indefinidamente la temporaria sin solicitar la PD puede generar preguntas del SERMIG sobre tus intenciones de residencia."
    },
    {
      "question": "¿La renovación restablece el contador de 2 años para la Permanencia Definitiva?",
      "answer": "No. El tiempo de residencia legal se acumula continuamente desde tu primera visa. Renovar la visa temporaria no reinicia el contador — cada día de residencia legal suma hacia los 2 años necesarios para la Permanencia Definitiva."
    }
  ]'::jsonb,
  ARRAY[
    'visa-temporaria',
    'permanencia-definitiva',
    'permanencia-definitiva/requisitos',
    'problemas/visa-vencida',
    'autodenuncia'
  ]::TEXT[],
  5,
  TRUE,
  NOW()
)
ON CONFLICT (slug) DO NOTHING;

-- ──────────────────────────────────────────────────────────
-- 2. CLUSTER: visa-temporaria/turismo-extension
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, schema_type, howto_steps, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'visa-temporaria/turismo-extension',
  'visa-temporaria',
  'visa-temporaria',
  'cluster',
  'Extender Permiso de Turismo en Chile 2026: Cómo Hacerlo',
  'Cómo Extender el Permiso de Turismo en Chile: De 90 a 180 Días',
  'Guía para extender el permiso de turismo en Chile de 90 a 180 días. Requisitos, proceso ante la PDI, y qué hacer si quieres quedarte más tiempo.',
  'extender permiso turismo chile 90 dias',
  $u2$
<p>Los extranjeros que ingresan a Chile como turistas reciben un permiso de turismo de <strong>90 días</strong>. Este permiso puede extenderse hasta un máximo de <strong>180 días</strong> en el mismo año calendario. Si quieres quedarte más tiempo o trabajar en Chile, necesitarás solicitar una visa de residencia.</p>

<h2>¿Puedo extender el permiso de 90 días?</h2>
<p>Sí. Chile permite extender el permiso de turismo una vez, llegando a un máximo de 180 días en el año. El trámite se realiza ante la <strong>PDI (Policía de Investigaciones)</strong> o el <strong>SERMIG</strong>, antes de que venza el permiso original.</p>
<p>La extensión es discrecional — la autoridad puede aprobarla o negarla según las circunstancias.</p>

<h2>¿Dónde y cómo solicitar la extensión?</h2>
<p>El trámite se realiza en:</p>
<ul>
  <li><strong>Oficinas de la PDI</strong> en la Región Metropolitana y otras regiones.</li>
  <li><strong>Algunas oficinas del SERMIG</strong> según disponibilidad regional.</li>
</ul>
<p>Documentos que generalmente se solicitan:</p>
<ul>
  <li>Pasaporte vigente con el sello de ingreso.</li>
  <li>Comprobante de medios económicos suficientes para el período adicional (extracto bancario, tarjeta de crédito, carta de invitación de familiar residente).</li>
  <li>Pasaje de retorno o comprobante de salida del país (en algunos casos).</li>
</ul>

<h2>¿Puedo trabajar con el permiso de turismo?</h2>
<p><strong>No.</strong> El permiso de turismo no autoriza a trabajar en Chile, ya sea con contrato o a honorarios. Trabajar como turista es una infracción migratoria. Para trabajar legalmente necesitas una visa de residencia temporaria.</p>
<p>Si ya tienes trabajo o una oferta de trabajo en Chile, lo más conveniente es solicitar directamente la visa temporaria por trabajo en lugar de extender el turismo.</p>

<h2>¿Qué opciones tengo si quiero quedarme más de 180 días?</h2>
<p>Si tu intención es residir en Chile por más de 180 días, la extensión de turismo no es la vía correcta. Las opciones son:</p>
<ul>
  <li><strong>Solicitar visa temporaria</strong> — por trabajo, arraigo familiar, estudios u otra categoría. Puedes solicitarla estando en Chile como turista antes de que venza tu permiso.</li>
  <li><strong>Salir y volver:</strong> algunos turistas salen brevemente del país para reiniciar el contador. Sin embargo, la PDI puede denegar el ingreso o limitar el permiso si detecta un patrón de entradas y salidas frecuentes sin visa.</li>
</ul>
<p>El llamado <strong>"visa run"</strong> (salida y reingreso para renovar el turismo) es tolerado ocasionalmente pero no es una solución sostenible ni recomendable a largo plazo.</p>

<h2>Países que requieren visa para ingresar a Chile</h2>
<p>La mayoría de los países latinoamericanos no requieren visa para ingresar a Chile como turista. Sin embargo, desde 2023, <strong>Venezuela</strong> requiere visa consular previa. Otros países con restricciones incluyen a ciudadanos de algunas naciones de África, Asia y Medio Oriente. Verifica el requisito vigente antes de planificar el viaje.</p>

<h2>¿Qué pasa si se me vence el turismo?</h2>
<p>Si el permiso de turismo vence y sigues en Chile, entras en situación irregular. La solución es la autodenuncia ante el SERMIG. Ver <a href="/autodenuncia">guía completa de Autodenuncia</a> y <a href="/problemas/visa-vencida">qué hacer con visa vencida</a>.</p>
  $u2$,
  'HowTo',
  '[
    {"name": "Verificar la fecha de vencimiento del permiso de turismo", "text": "Revisa el sello en tu pasaporte o el documento entregado al ingresar. El permiso vence 90 días desde la entrada. Inicia la extensión antes del vencimiento."},
    {"name": "Decidir: ¿extender turismo o solicitar visa?", "text": "Si quieres trabajar o quedarte más de 180 días, solicita visa temporaria directamente. Si solo necesitas más tiempo como turista, procede con la extensión."},
    {"name": "Reunir documentos para la extensión", "text": "Prepara pasaporte con sello de entrada y comprobante de medios económicos (extracto bancario, tarjeta de crédito con saldo suficiente)."},
    {"name": "Ir a la PDI o SERMIG antes del vencimiento", "text": "Preséntate presencialmente con los documentos. No hay un sistema online para este trámite — debe hacerse en persona."},
    {"name": "Si calificas: solicitar visa temporaria en su lugar", "text": "Si tienes trabajo, familia o arraigo en Chile, solicita la visa temporaria correspondiente en el portal tramitesmigratorios.interior.gob.cl en lugar de extender el turismo."}
  ]'::jsonb,
  '[
    {
      "question": "¿Puedo solicitar la extensión de turismo online?",
      "answer": "No. La extensión de turismo es un trámite presencial ante la PDI o el SERMIG. No existe proceso online para este trámite específico."
    },
    {
      "question": "¿Cuánto cuesta la extensión del permiso de turismo?",
      "answer": "La extensión de turismo es gratuita o tiene un costo mínimo. Verifica el arancel vigente en la PDI o el SERMIG al momento del trámite."
    },
    {
      "question": "¿El visa run es legal en Chile?",
      "answer": "Salir y reingresar es legal en sí mismo, pero si la PDI detecta un patrón de salidas frecuentes para evitar regularizarse, puede limitar el permiso de ingreso o pedirte que demuestres vínculos que justifiquen tu permanencia. No es una estrategia sostenible."
    },
    {
      "question": "¿Puedo solicitar visa temporaria estando en Chile como turista?",
      "answer": "Sí. Puedes iniciar el trámite de visa temporaria desde Chile mientras tu permiso de turismo está vigente. El comprobante de la solicitud te protege cuando venza el turismo, permitiéndote permanecer mientras se resuelve."
    }
  ]'::jsonb,
  ARRAY[
    'visa-temporaria',
    'autodenuncia',
    'problemas/visa-vencida',
    'visa-temporaria/responsabilidad-democratica',
    'permanencia-definitiva'
  ]::TEXT[],
  4,
  TRUE,
  NOW()
)
ON CONFLICT (slug) DO NOTHING;

-- ──────────────────────────────────────────────────────────
-- 3. CLUSTER: vivir-en-chile/rut-provisorio-sii
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, schema_type, howto_steps, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'vivir-en-chile/rut-provisorio-sii',
  'vivir-en-chile',
  'vivir-en-chile',
  'cluster',
  'RUT Provisorio en el SII para Extranjeros: Qué Es y Cómo Obtenerlo 2026',
  'RUT Provisorio SII para Extranjeros: Para Qué Sirve y Cómo Tramitarlo',
  'Guía sobre el RUT provisorio del SII para extranjeros en Chile. Para qué sirve, cómo obtenerlo, diferencias con el RUT definitivo y cuándo usarlo.',
  'rut provisorio sii extranjero chile',
  $u3$
<p>El <strong>RUT provisorio del SII</strong> es un número de identificación tributaria temporal que los extranjeros pueden obtener para realizar actividades económicas en Chile mientras tramitan su cédula de identidad definitiva. No reemplaza al RUT permanente, pero permite trabajar a honorarios y cumplir obligaciones tributarias en el período de espera.</p>

<h2>¿Qué es el RUT provisorio del SII?</h2>
<p>El Servicio de Impuestos Internos (SII) asigna RUT provisorios a extranjeros que necesitan emitir boletas de honorarios electrónicas, inscribir un negocio o realizar gestiones tributarias pero aún no tienen cédula de identidad para extranjeros con RUT definitivo.</p>
<p>Es diferente del RUT que aparece en la cédula de identidad para extranjeros (que emite el Registro Civil). El RUT provisorio del SII es solo para efectos tributarios internos.</p>

<h2>¿Cuándo necesitas el RUT provisorio?</h2>
<ul>
  <li>Cuando tienes una oferta de trabajo a honorarios pero aún no tienes cédula de identidad para extranjeros.</li>
  <li>Cuando quieres iniciar actividades como trabajador independiente antes de tener cédula.</li>
  <li>Cuando necesitas emitir boletas de honorarios electrónicas.</li>
  <li>Cuando tu empleador o cliente necesita tu RUT para pagarte y aún no tienes el definitivo.</li>
</ul>

<h2>¿Cuándo NO necesitas el RUT provisorio?</h2>
<ul>
  <li>Si ya tienes cédula de identidad para extranjeros vigente — ese documento ya incluye tu RUT definitivo.</li>
  <li>Si trabajas con contrato de trabajo (no a honorarios) — el empleador puede inscribirte con pasaporte mientras tramitas la cédula.</li>
</ul>

<h2>Diferencia entre RUT provisorio SII y RUT en la cédula</h2>
<table>
  <thead>
    <tr><th>Característica</th><th>RUT provisorio SII</th><th>RUT en cédula (definitivo)</th></tr>
  </thead>
  <tbody>
    <tr><td>Emite</td><td>SII</td><td>Registro Civil (SRCeI)</td></tr>
    <tr><td>Requisito</td><td>Pasaporte + comprobante de trámite</td><td>Visa aprobada por SERMIG</td></tr>
    <tr><td>Uso</td><td>Actividades tributarias temporales</td><td>Todos los usos (banco, trabajo, etc.)</td></tr>
    <tr><td>Permanencia</td><td>Temporal — se reemplaza con el definitivo</td><td>Permanente</td></tr>
  </tbody>
</table>

<h2>¿Cómo obtener el RUT provisorio del SII?</h2>
<p>El trámite se realiza <strong>presencialmente</strong> en cualquier oficina del SII. Necesitas:</p>
<ul>
  <li>Pasaporte vigente.</li>
  <li>Comprobante de trámite migratorio activo (solicitud de visa o autodenuncia).</li>
  <li>En algunos casos, contrato de trabajo u oferta de servicios que justifique la necesidad del RUT.</li>
</ul>
<p>Una vez obtenido el RUT provisorio, puedes acceder al portal del SII para emitir boletas de honorarios electrónicas.</p>

<h2>¿Qué pasa cuando obtienes la cédula definitiva?</h2>
<p>Cuando el SERMIG aprueba tu visa y obtienes la cédula de identidad para extranjeros en el Registro Civil, ese documento ya incluye tu RUT definitivo. Debes actualizar tus datos en el SII para que el RUT definitivo reemplace al provisorio en tus registros tributarios.</p>
  $u3$,
  'HowTo',
  '[
    {"name": "Verificar si realmente necesitas el RUT provisorio", "text": "Si ya tienes cédula de identidad para extranjeros, no necesitas el RUT provisorio — usa el RUT de tu cédula. Solo necesitas el provisorio si no tienes cédula aún y debes hacer actividad tributaria."},
    {"name": "Reunir documentos para ir al SII", "text": "Prepara tu pasaporte vigente y el comprobante de trámite migratorio activo (solicitud de visa o autodenuncia). Opcionalmente, lleva un contrato u oferta de servicios que justifique la necesidad."},
    {"name": "Ir presencialmente a una oficina del SII", "text": "El RUT provisorio no se tramita online. Ve a la oficina del SII más cercana y solicita la asignación de RUT provisorio para extranjero."},
    {"name": "Activar el portal del SII con tu RUT provisorio", "text": "Una vez asignado el RUT, crea tu clave tributaria en sii.cl para poder emitir boletas de honorarios electrónicas y hacer otras gestiones tributarias."},
    {"name": "Actualizar a RUT definitivo cuando obtengas la cédula", "text": "Al obtener tu cédula de identidad para extranjeros, ve al SII para actualizar tus datos y vincular el RUT definitivo con tu historial tributario."}
  ]'::jsonb,
  '[
    {
      "question": "¿El RUT provisorio del SII es lo mismo que el RUT de la cédula?",
      "answer": "No. Son dos cosas distintas. El RUT provisorio del SII es solo para efectos tributarios temporales. El RUT de la cédula de identidad para extranjeros es tu número de identidad permanente en Chile, emitido por el Registro Civil cuando el SERMIG aprueba tu visa."
    },
    {
      "question": "¿Puedo abrir una cuenta bancaria con el RUT provisorio?",
      "answer": "Generalmente no. Los bancos exigen la cédula de identidad para extranjeros vigente para abrir cuentas. El RUT provisorio del SII no es aceptado por la mayoría de los bancos. La excepción puede ser algunas fintechs o cuentas digitales con criterios más flexibles."
    },
    {
      "question": "¿El RUT provisorio me sirve para todo lo que necesito hacer en Chile?",
      "answer": "No. Sirve principalmente para actividades tributarias: emitir boletas de honorarios, inscribir actividades en el SII, y cumplir obligaciones con el Fisco. Para otros trámites (banco, contratos laborales formales, salud) generalmente se requiere la cédula de identidad para extranjeros."
    },
    {
      "question": "¿Cuánto tiempo demora obtener el RUT provisorio en el SII?",
      "answer": "El trámite es inmediato. En el mismo día de ir a la oficina del SII con los documentos correctos, te asignan el RUT provisorio."
    }
  ]'::jsonb,
  ARRAY[
    'vivir-en-chile',
    'vivir-en-chile/rut-extranjero',
    'vivir-en-chile/trabajo-contrato',
    'vivir-en-chile/cuenta-bancaria',
    'visa-temporaria'
  ]::TEXT[],
  4,
  TRUE,
  NOW()
)
ON CONFLICT (slug) DO NOTHING;

-- ──────────────────────────────────────────────────────────
-- 4. CLUSTER: vivir-en-chile/seguro-cesantia
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'vivir-en-chile/seguro-cesantia',
  'vivir-en-chile',
  'vivir-en-chile',
  'cluster',
  'Seguro de Cesantía en Chile para Extranjeros 2026',
  'Cómo Funciona el Seguro de Cesantía en Chile para Trabajadores Extranjeros',
  'Guía sobre el seguro de cesantía en Chile para trabajadores extranjeros. Cómo cotizar, cuándo puedes cobrar, montos y qué pasa si te despiden o renuncias.',
  'seguro cesantia chile extranjero',
  $u4$
<p>El <strong>seguro de cesantía</strong> es un seguro laboral obligatorio en Chile que protege a los trabajadores dependientes cuando pierden el empleo. Si trabajas con contrato en Chile, cotizas automáticamente — y tienes derecho a cobrar si eres despedido, independientemente de tu nacionalidad.</p>

<h2>¿Quiénes cotizan en el seguro de cesantía?</h2>
<p>Todos los trabajadores con contrato de trabajo indefinido o a plazo fijo celebrado a partir del 2 de octubre de 2002, independientemente de la nacionalidad. El seguro es administrado por la <strong>AFC Chile (Administradora del Fondo de Cesantía)</strong>.</p>

<h2>¿Cuánto se cotiza?</h2>
<p>Las cotizaciones se dividen entre trabajador y empleador:</p>
<ul>
  <li><strong>Trabajador:</strong> 0,6% del sueldo bruto mensual.</li>
  <li><strong>Empleador:</strong> 2,4% del sueldo bruto mensual (1,6% va a tu cuenta individual + 0,8% al Fondo Solidario).</li>
</ul>
<p>El empleador descuenta el 0,6% de tu sueldo y paga el 2,4% por su cuenta — se deposita mensualmente en la AFC.</p>

<h2>¿Cómo funciona el seguro?</h2>
<p>Existen dos componentes:</p>
<ul>
  <li><strong>Cuenta individual:</strong> acumula el 0,6% del trabajador más el 1,6% del empleador. Este dinero es tuyo y lo puedes retirar cuando termines el contrato (sea por despido o renuncia).</li>
  <li><strong>Fondo Solidario:</strong> acumula el 0,8% del empleador. Solo se accede en caso de despido con requisitos mínimos de cotizaciones, para quienes no tienen saldo suficiente en la cuenta individual.</li>
</ul>

<h2>¿Cuándo puedes cobrar el seguro de cesantía?</h2>
<table>
  <thead>
    <tr><th>Situación</th><th>¿Puedes cobrar?</th><th>Fuente del pago</th></tr>
  </thead>
  <tbody>
    <tr>
      <td>Despido (necesidades empresa, desahucio)</td>
      <td>Sí — sin mínimo de cotizaciones para cuenta individual</td>
      <td>Cuenta individual + Fondo Solidario si califica</td>
    </tr>
    <tr>
      <td>Renuncia voluntaria</td>
      <td>Sí — solo el saldo de la cuenta individual</td>
      <td>Solo cuenta individual (no Fondo Solidario)</td>
    </tr>
    <tr>
      <td>Mutuo acuerdo</td>
      <td>Sí — solo cuenta individual</td>
      <td>Solo cuenta individual</td>
    </tr>
    <tr>
      <td>Vencimiento de contrato a plazo</td>
      <td>Sí — solo cuenta individual</td>
      <td>Solo cuenta individual</td>
    </tr>
  </tbody>
</table>

<h2>¿Cuánto puedes cobrar?</h2>
<p>El monto depende de tu saldo acumulado. Con contratos indefinidos y despido, puedes acceder al Fondo Solidario si tienes al menos <strong>12 cotizaciones mensuales continuas</strong> en los últimos 24 meses. Los pagos se hacen en cuotas mensuales por 5 meses (porcentajes decrecientes del promedio de los últimos 3 sueldos).</p>

<h2>¿Qué pasa con el seguro de cesantía si te vas de Chile?</h2>
<p>Si tienes saldo en tu cuenta individual y abandonas definitivamente Chile, puedes solicitar el retiro del saldo acumulado. El trámite se realiza ante la AFC Chile. El Fondo Solidario no es retirable — ese saldo no es personal.</p>

<h2>¿Cómo verificar tu saldo?</h2>
<p>Puedes consultar tu saldo de cesantía en <a href="https://www.afcchile.cl" target="_blank" rel="noopener noreferrer">afcchile.cl</a> con tu RUT y clave. También puedes ver el historial de cotizaciones de tu empleador para verificar que haya depositado correctamente.</p>
  $u4$,
  '[
    {
      "question": "¿Puedo cobrar el seguro de cesantía si renuncio voluntariamente?",
      "answer": "Sí, pero solo el saldo de tu cuenta individual, no el Fondo Solidario. Si renuncias, la AFC te paga lo acumulado en tu cuenta personal en una sola vez o en cuotas, según el monto."
    },
    {
      "question": "¿El seguro de cesantía aplica a trabajadores extranjeros con visa temporaria?",
      "answer": "Sí. El seguro de cesantía aplica a todos los trabajadores con contrato en Chile, sin importar la nacionalidad ni el tipo de visa. Si tu empleador no cotiza, es una infracción laboral que puedes denunciar en la Dirección del Trabajo."
    },
    {
      "question": "¿Qué pasa si mi empleador no ha cotizado el seguro de cesantía?",
      "answer": "Puedes verificar tus cotizaciones en afcchile.cl. Si falta algún mes, puedes denunciarlo ante la Dirección del Trabajo o la AFC. El empleador está obligado a pagar las cotizaciones atrasadas con recargos."
    },
    {
      "question": "¿Puedo cobrar el seguro si me despiden por conducta grave?",
      "answer": "Si el despido es por conducta grave (artículo 160 del Código del Trabajo), generalmente no califica para el Fondo Solidario, pero sí puedes retirar el saldo de tu cuenta individual, ya que ese dinero es tuyo independientemente de la causal de despido."
    }
  ]'::jsonb,
  ARRAY[
    'vivir-en-chile',
    'vivir-en-chile/trabajo-contrato',
    'vivir-en-chile/pension-afp',
    'vivir-en-chile/sistema-salud',
    'permanencia-definitiva/beneficios'
  ]::TEXT[],
  5,
  TRUE,
  NOW()
)
ON CONFLICT (slug) DO NOTHING;
