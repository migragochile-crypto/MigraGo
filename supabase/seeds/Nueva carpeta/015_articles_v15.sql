-- ============================================================
-- MigraciónChile — Seed v15: clusters problemas + visa-temporaria
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

-- ──────────────────────────────────────────────────────────
-- 1. CLUSTER: problemas/visa-vencida
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
  'Qué Hacer si tu Visa Venció en Chile 2026',
  'Visa Vencida en Chile: Qué Hacer, Multas y Cómo Regularizarse',
  'Guía completa para migrantes con visa vencida en Chile. Cuánto tiempo tienes, multas, cómo autodeclararte y cuál es el proceso para regularizar tu situación.',
  'visa vencida chile que hacer',
  $q1$
<p>Si tu visa venció y sigues en Chile, estás en situación migratoria irregular. No es el fin del mundo — la Ley 21.325 creó mecanismos de regularización — pero actuar rápido reduce las consecuencias. Esta guía explica qué opciones tienes y cuándo usarlas.</p>

<h2>¿Qué tan grave es estar con visa vencida?</h2>
<p>Permanecer en Chile con visa vencida es una infracción migratoria. Las consecuencias dependen del tiempo que llevas en situación irregular y las circunstancias:</p>
<ul>
  <li><strong>Multa:</strong> el SERMIG puede imponer multas según la duración de la irregularidad (ver tabla abajo).</li>
  <li><strong>Dificultad para regularizarse:</strong> cuanto más tiempo en situación irregular, más complicado es regularizarse.</li>
  <li><strong>Riesgo de expulsión:</strong> en casos graves (antecedentes penales, reincidencia) puede iniciarse proceso de expulsión.</li>
  <li><strong>Restricción de acceso a servicios:</strong> sin visa vigente, acceso limitado a servicios bancarios, educación formal, etc.</li>
</ul>
<p>Lo que <strong>no sucede automáticamente</strong>: no te detienen solo por tener la visa vencida mientras transitas por la ciudad. La PDI o Carabineros pueden solicitar tus documentos, pero el control migratorio activo es principalmente en fronteras y operativos específicos.</p>

<h2>Tabla de multas por permanencia irregular</h2>
<table>
  <thead>
    <tr><th>Período de irregularidad</th><th>Multa aproximada (UTM)</th></tr>
  </thead>
  <tbody>
    <tr><td>Hasta 30 días de vencimiento</td><td>1–3 UTM (~$65.000–$195.000 CLP)</td></tr>
    <tr><td>31 a 90 días</td><td>3–5 UTM (~$195.000–$325.000 CLP)</td></tr>
    <tr><td>91 días a 1 año</td><td>5–10 UTM (~$325.000–$650.000 CLP)</td></tr>
    <tr><td>Más de 1 año</td><td>10–20 UTM (~$650.000–$1.300.000 CLP)</td></tr>
  </tbody>
</table>
<p>Los valores en UTM (Unidad Tributaria Mensual) se actualizan mensualmente. El SERMIG tiene cierta discrecionalidad en la aplicación de multas.</p>

<h2>Opción 1: Autodenuncia ante el SERMIG</h2>
<p>La <strong>autodenuncia</strong> es el mecanismo de regularización para personas en situación irregular. Consiste en presentarse voluntariamente ante el SERMIG para declarar la situación, pagar la multa correspondiente y solicitar una visa que permita regularizarse.</p>
<p>La autodenuncia es la opción recomendada para la mayoría de los casos. Presentarse voluntariamente demuestra buena fe y evita consecuencias más graves. Más detalles en nuestra guía completa de <a href="/autodenuncia">Autodenuncia ante el SERMIG</a>.</p>

<h2>Opción 2: Salir del país y reingresar</h2>
<p>Si tu visa venció hace poco tiempo (menos de 30 días idealmente), otra opción es salir de Chile y reingresar como turista o con una nueva visa tramitada desde el exterior. Consideraciones:</p>
<ul>
  <li>Al salir con visa vencida, la PDI en la frontera puede aplicar una multa de salida y registrar la irregularidad.</li>
  <li>Dependiendo del tiempo de irregularidad, puede haber un período de prohibición de reingreso.</li>
  <li>Esta opción no conviene si llevas mucho tiempo en situación irregular — la autodenuncia es mejor.</li>
</ul>

<h2>Opción 3: Solicitar visa regularización directa</h2>
<p>En ciertos casos, el SERMIG puede otorgar una visa de regularización sin necesidad de salir del país. Generalmente aplica para:</p>
<ul>
  <li>Personas con arraigo familiar en Chile (cónyuge chileno, hijos chilenos).</li>
  <li>Personas con situación laboral formal y raíces económicas en Chile.</li>
  <li>Casos humanitarios debidamente acreditados.</li>
</ul>

<h2>¿Qué pasa con el trabajo si estoy irregular?</h2>
<p>Con visa vencida, técnicamente no estás habilitado para trabajar. Sin embargo, el comprobante de trámite de autodenuncia o de solicitud de nueva visa activa sí te habilita laboralmente mientras se resuelve. Por eso es importante iniciar el trámite rápidamente.</p>

<h2>Recomendaciones urgentes</h2>
<ul>
  <li><strong>Actúa pronto:</strong> cada día que pasa en situación irregular aumenta la multa y complica la regularización.</li>
  <li><strong>No esperes a ser detectado:</strong> presentarse voluntariamente siempre tiene mejores condiciones que ser detectado.</li>
  <li><strong>Consulta el silo de autodenuncia:</strong> la guía completa en <a href="/autodenuncia">esta sección</a> tiene todos los pasos detallados.</li>
</ul>
  $q1$,
  'HowTo',
  '[
    {"name": "Determinar cuánto tiempo llevas con visa vencida", "text": "Revisa la fecha de vencimiento de tu visa. Esto determina la multa aplicable y la urgencia. Menos de 30 días: actúa hoy. Más de 6 meses: busca asesoría antes de ir."},
    {"name": "Reunir documentos básicos", "text": "Prepara tu pasaporte vigente, cualquier documento de identidad, y si tienes: contrato de trabajo, certificado de estudios o documentos que acrediten arraigo en Chile."},
    {"name": "Presentarte voluntariamente al SERMIG (autodenuncia)", "text": "Ve a la oficina del SERMIG de tu región. Declara voluntariamente tu situación irregular. La presentación voluntaria demuestra buena fe y puede influir positivamente en la resolución."},
    {"name": "Pagar la multa correspondiente", "text": "El SERMIG determinará el monto de la multa según el período de irregularidad. El pago se hace en el mismo SERMIG o en entidades autorizadas."},
    {"name": "Solicitar la visa que corresponda a tu situación", "text": "Trabaja con el oficial del SERMIG para determinar qué visa puedes solicitar: temporaria por trabajo, vínculo familiar, humanitaria, u otra categoría."},
    {"name": "Obtener el comprobante de trámite y seguir el proceso", "text": "Una vez ingresada la solicitud, recibirás un comprobante que te habilita para permanecer y trabajar en Chile mientras se resuelve."}
  ]'::jsonb,
  '[
    {
      "question": "¿Me van a detener si voy al SERMIG con la visa vencida?",
      "answer": "No. El SERMIG no detiene a las personas que se presentan voluntariamente para regularizar. Al contrario, la presentación voluntaria es valorada positivamente. Solo en casos con antecedentes penales graves podría haber una situación diferente."
    },
    {
      "question": "¿Puedo trabajar mientras espero la nueva visa después de autodenunciarme?",
      "answer": "Sí. Una vez que el SERMIG emite el comprobante de trámite de tu solicitud, estás habilitado para trabajar legalmente en Chile. Este comprobante actúa como extensión implícita de tu permiso mientras se resuelve el trámite."
    },
    {
      "question": "¿Qué pasa si me encuentran con la visa vencida sin haberme autodenunciado?",
      "answer": "Si eres detectado por la PDI o en un control migratorio sin haberte regularizado, las consecuencias son peores que presentarse voluntariamente: multas más altas, posible prohibición de ingreso, y en casos graves proceso de expulsión. Siempre es mejor presentarse antes."
    },
    {
      "question": "¿Puedo salir de Chile y volver después de que me venció la visa?",
      "answer": "Puedes intentarlo, pero al salir con visa vencida se registra la irregularidad en tu historial migratorio. Dependiendo del tiempo de irregularidad, puede haber multa en la salida y un período de prohibición de reingreso. Para irregularidades de más de 90 días, es mejor regularizarse desde Chile antes de salir."
    }
  ]'::jsonb,
  ARRAY[
    'problemas',
    'autodenuncia',
    'autodenuncia/sermig-vs-pdi',
    'visa-temporaria',
    'problemas/recurso-administrativo'
  ]::TEXT[],
  5,
  TRUE,
  NOW()
);

-- ──────────────────────────────────────────────────────────
-- 2. CLUSTER: problemas/sin-respuesta-sermig
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'problemas/sin-respuesta-sermig',
  'problemas',
  'problemas',
  'cluster',
  'SERMIG No Responde: Qué Hacer Cuando Tu Trámite No Avanza 2026',
  'SERMIG Sin Respuesta: Cómo Actuar Cuando Tu Trámite Lleva Meses Sin Resolución',
  'Qué hacer cuando el SERMIG no resuelve tu trámite de visa o permanencia definitiva. Recursos, plazos legales, Ley de Transparencia y cuándo buscar asesoría legal.',
  'sermig no responde tramite sin respuesta',
  $q2$
<p>Una de las quejas más frecuentes entre migrantes en Chile es la demora excesiva del SERMIG para resolver trámites. Si llevas meses sin respuesta y el estado no cambia, no eres el único — y existen mecanismos para presionar la resolución.</p>

<h2>¿Cuándo es razonable preocuparse?</h2>
<p>Los plazos legales del SERMIG son:</p>
<ul>
  <li><strong>Visa temporaria:</strong> 30 días hábiles.</li>
  <li><strong>Permanencia Definitiva:</strong> 30 días hábiles.</li>
  <li><strong>Renovaciones:</strong> 30 días hábiles.</li>
</ul>
<p>En la práctica, estos plazos no se cumplen. Es razonable esperar:</p>
<ul>
  <li><strong>Visa temporaria estándar:</strong> 2–4 meses.</li>
  <li><strong>Permanencia Definitiva:</strong> 3–9 meses.</li>
</ul>
<p>Si llevas <strong>más del doble del plazo real habitual</strong> sin ningún cambio de estado (ni observaciones ni aprobación), es momento de actuar.</p>

<h2>Paso 1: Revisar el estado en el portal</h2>
<p>Antes de cualquier acción, verifica en <a href="https://tramitesmigratorios.interior.gob.cl" target="_blank" rel="noopener noreferrer">tramitesmigratorios.interior.gob.cl</a>:</p>
<ul>
  <li>¿El estado dice "Con observaciones"? — puede haber una notificación que no viste. Revisa el correo (incluyendo spam).</li>
  <li>¿El estado dice "En revisión" desde hace meses? — sigue los pasos abajo.</li>
  <li>¿El estado no ha cambiado desde que ingresaste la solicitud? — posible problema técnico del sistema o carga de trabajo extrema.</li>
</ul>

<h2>Paso 2: Ir presencialmente al SERMIG</h2>
<p>La vía más directa es presentarse en la oficina del SERMIG de tu región y solicitar información sobre el estado de tu trámite. Lleva:</p>
<ul>
  <li>Cédula de identidad o pasaporte.</li>
  <li>Número de solicitud del trámite.</li>
  <li>Comprobante de trámite impreso.</li>
</ul>
<p>En la oficina puedes solicitar al funcionario que consulte el estado interno del expediente, que puede tener más detalle que el portal online.</p>

<h2>Paso 3: Solicitud de información por Ley de Transparencia</h2>
<p>La <strong>Ley 20.285 de Transparencia y Acceso a la Información Pública</strong> permite solicitar información a organismos del Estado. Puedes hacer una solicitud formal al SERMIG pidiendo:</p>
<ul>
  <li>Estado actual de tu expediente.</li>
  <li>Motivo de la demora.</li>
  <li>Fecha estimada de resolución.</li>
</ul>
<p>La solicitud se hace online en el portal <a href="https://www.portaltransparencia.cl" target="_blank" rel="noopener noreferrer">portaltransparencia.cl</a>. El organismo tiene <strong>20 días hábiles</strong> para responder. No garantiza que acelere el trámite, pero crea un registro formal.</p>

<h2>Paso 4: Recurso por silencio administrativo</h2>
<p>Si el SERMIG no resuelve dentro del plazo legal (30 días hábiles), técnicamente opera el <strong>silencio administrativo negativo</strong> — la solicitud se considera denegada por inacción. Esto abre la posibilidad de interponer recursos legales:</p>
<ul>
  <li><strong>Recurso de reposición:</strong> ante el propio SERMIG, solicitando que reconsidere la inacción.</li>
  <li><strong>Recurso jerárquico:</strong> ante el superior del SERMIG (Ministerio del Interior).</li>
  <li><strong>Recurso de protección:</strong> ante la Corte de Apelaciones, si la inacción afecta derechos fundamentales (como el derecho a residir con la familia).</li>
</ul>
<p>Estos recursos son más efectivos con asesoría legal. Ver nuestra guía de <a href="/problemas/recurso-administrativo">recursos administrativos</a>.</p>

<h2>Paso 5: Denuncia ante la Defensoría del Pueblo / INDH</h2>
<p>Si la demora está afectando derechos fundamentales (separación familiar, imposibilidad de trabajar, acceso a salud), puedes denunciar ante:</p>
<ul>
  <li><strong>Instituto Nacional de Derechos Humanos (INDH):</strong> recibe denuncias por vulneración de derechos. No resuelve el trámite directamente pero genera presión institucional.</li>
  <li><strong>Contraloría General de la República:</strong> fiscaliza la actuación de los organismos públicos.</li>
</ul>

<h2>¿Cuándo buscar abogado?</h2>
<p>Busca asesoría legal cuando:</p>
<ul>
  <li>Llevas más de 12 meses sin respuesta.</li>
  <li>La demora te está causando daños graves (no puedes trabajar, problemas familiares, etc.).</li>
  <li>Tienes antecedentes complejos que podrían complicar la resolución.</li>
  <li>El SERMIG emitió una denegación sin explicación suficiente.</li>
</ul>
  $q2$,
  '[
    {
      "question": "¿Puedo exigir que el SERMIG resuelva mi caso en el plazo legal de 30 días?",
      "answer": "Tienes el derecho legal, pero ejercerlo es complejo en la práctica. El mecanismo del silencio administrativo existe, pero activarlo requiere conocimiento del proceso. La mayoría de los migrantes prefieren esperar y presionar por vías administrativas antes de recurrir a acciones legales formales."
    },
    {
      "question": "¿La solicitud de Transparencia acelera mi trámite?",
      "answer": "No directamente, pero crea un registro formal que el SERMIG debe responder. En algunos casos, la solicitud de transparencia llama la atención sobre expedientes estancados. Como mínimo, te da información oficial sobre el estado real de tu solicitud."
    },
    {
      "question": "¿Qué pasa con mi situación legal mientras espero?",
      "answer": "Mientras tengas el comprobante de trámite activo, estás en situación legal en Chile. Puedes trabajar, permanecer en el país y acceder a servicios básicos. La demora del SERMIG no te pone en situación irregular si el trámite sigue activo."
    },
    {
      "question": "¿Puedo contratar un abogado migratorio y cuánto cuesta?",
      "answer": "Sí. Los abogados migratorios cobran desde $50.000 hasta $300.000 CLP por caso según la complejidad. Si no tienes recursos, la Corporación de Asistencia Judicial (CAJ) ofrece asesoría gratuita o a bajo costo. También existen clínicas jurídicas universitarias que atienden casos migratorios."
    }
  ]'::jsonb,
  ARRAY[
    'problemas',
    'problemas/recurso-administrativo',
    'permanencia-definitiva/cuanto-demora',
    'autodenuncia',
    'visa-temporaria'
  ]::TEXT[],
  5,
  TRUE,
  NOW()
);

-- ──────────────────────────────────────────────────────────
-- 3. CLUSTER: visa-temporaria/responsabilidad-democratica
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, schema_type, howto_steps, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'visa-temporaria/responsabilidad-democratica',
  'visa-temporaria',
  'visa-temporaria',
  'cluster',
  'Visa de Responsabilidad Democrática (VRD) para Venezolanos en Chile 2026',
  'Visa de Responsabilidad Democrática (VRD): Requisitos y Proceso para Venezolanos',
  'Guía completa sobre la Visa de Responsabilidad Democrática (VRD) para venezolanos en Chile. Estado actual, alternativas si no calificas y cómo regularizarte.',
  'visa responsabilidad democratica venezolanos chile',
  $q3$
<p>La <strong>Visa de Responsabilidad Democrática (VRD)</strong> fue una visa especial que Chile ofreció a ciudadanos venezolanos a partir de 2018, en reconocimiento de la crisis política y humanitaria en Venezuela. Esta guía explica su estado actual y qué opciones tienen los venezolanos hoy.</p>

<h2>Estado actual de la VRD</h2>
<p>La VRD <strong>ya no está vigente como programa de admisión activo</strong>. El programa fue discontinuado. Los venezolanos que ya tienen una VRD válida pueden continuar usándola mientras esté vigente, pero no se emiten nuevas VRD desde el exterior.</p>
<p>Si eres venezolano y quieres venir a Chile o regularizar tu situación, las opciones actuales son otras visas bajo la Ley 21.325.</p>

<h2>¿Qué pasa con mi VRD vigente?</h2>
<p>Si tienes una VRD todavía válida:</p>
<ul>
  <li>Sigue siendo un permiso de residencia temporaria válido mientras no venza.</li>
  <li>Te habilita para trabajar, estudiar y acceder a servicios en Chile.</li>
  <li>Al vencer, debes solicitar una <strong>visa temporaria regular</strong> bajo las categorías de la Ley 21.325 (por trabajo, por arraigo familiar, u otras).</li>
  <li>El tiempo con VRD cuenta para el cómputo de los 2 años necesarios para solicitar Permanencia Definitiva.</li>
</ul>

<h2>Opciones actuales para venezolanos que quieren venir a Chile</h2>
<p>Sin la VRD activa, los venezolanos pueden ingresar a Chile y regularizarse por las vías generales de la Ley 21.325:</p>

<h3>Ingreso como turista</h3>
<p>Los venezolanos con pasaporte vigente pueden ingresar a Chile como turistas por hasta 90 días (extendible a 180 días máximo). Desde Chile pueden solicitar la residencia temporaria.</p>
<p><strong>Importante:</strong> desde 2023, Chile exige <strong>visa consular previa</strong> a los venezolanos para ingresar al territorio. Verifica el requisito vigente antes de viajar, ya que las condiciones pueden cambiar.</p>

<h3>Visa temporaria por arraigo laboral</h3>
<p>Si ya estás en Chile y tienes un contrato de trabajo o actividad económica demostrable, puedes solicitar una visa temporaria por arraigo laboral. Esta es la vía más directa para venezolanos ya en el país.</p>

<h3>Visa temporaria por arraigo familiar</h3>
<p>Si tienes cónyuge, conviviente civil o hijos en Chile (chilenos o extranjeros con residencia), puedes solicitar visa por arraigo familiar.</p>

<h3>Autodenuncia si estás en situación irregular</h3>
<p>Si entraste como turista y tu permiso venció, o si ingresaste de manera irregular, la <strong>autodenuncia</strong> es el mecanismo de regularización. Permite presentarse ante el SERMIG, pagar la multa correspondiente y solicitar una visa. Ver la guía completa en <a href="/autodenuncia">Autodenuncia ante el SERMIG</a>.</p>

<h2>El cambio de contexto: Chile y la migración venezolana</h2>
<p>Chile fue durante varios años uno de los principales destinos de la migración venezolana en Sudamérica. Las políticas migratorias han fluctuado: de la apertura de la VRD (2018) a políticas más restrictivas desde 2021. El contexto político y migratorio sigue cambiando — es importante verificar las condiciones actuales antes de planificar cualquier trámite.</p>

<h2>Recursos específicos para venezolanos</h2>
<ul>
  <li>La <strong>Organización Internacional para las Migraciones (OIM)</strong> tiene oficinas en Chile y ofrece asesoría a migrantes venezolanos.</li>
  <li>El <strong>Alto Comisionado de las Naciones Unidas para los Refugiados (ACNUR)</strong> trabaja con migrantes venezolanos en situación de vulnerabilidad.</li>
  <li>Organizaciones de la sociedad civil como <strong>CEAR Chile</strong> y <strong>Servicio Jesuita a Migrantes</strong> ofrecen orientación jurídica.</li>
</ul>
  $q3$,
  'HowTo',
  '[
    {"name": "Verificar el estado de tu VRD o permiso actual", "text": "Si tienes VRD vigente, revisa la fecha de vencimiento. Si ya venció, revisa cuánto tiempo llevas en situación irregular. Si aún no estás en Chile, verifica el requisito de visa consular."},
    {"name": "Si tu VRD vence pronto: solicitar visa temporaria regular", "text": "Antes de que venza tu VRD, solicita una visa temporaria por trabajo, arraigo familiar u otra categoría en el portal del SERMIG. No esperes al vencimiento."},
    {"name": "Si estás en situación irregular: autodenuncia", "text": "Si tu permiso venció o ingresaste irregularmente, preséntate al SERMIG para autodenunciarte. La presentación voluntaria tiene mejores condiciones que ser detectado."},
    {"name": "Si quieres venir a Chile desde Venezuela: gestionar visa consular", "text": "Verifica si Chile exige visa consular a venezolanos (situación cambiante). Si es así, tramita la visa en la Embajada o Consulado de Chile en Venezuela o en un tercer país."},
    {"name": "Solicitar la visa temporaria que corresponda a tu situación", "text": "Una vez en Chile con permiso vigente (turismo, comprobante de trámite), solicita la visa temporaria por la categoría que mejor aplique: trabajo, arraigo familiar, humanitaria, etc."},
    {"name": "Iniciar el camino hacia la Permanencia Definitiva", "text": "El tiempo con VRD o visa temporaria cuenta para los 2 años necesarios para solicitar Permanencia Definitiva. Mantén tu residencia continua y tus documentos en regla."}
  ]'::jsonb,
  '[
    {
      "question": "¿Puedo renovar mi VRD cuando venza?",
      "answer": "No. La VRD fue un programa especial que ya no está activo. Al vencer tu VRD, debes solicitar una visa temporaria bajo las categorías regulares de la Ley 21.325 (por trabajo, arraigo familiar, u otras). El tiempo que tuviste VRD sí cuenta para el cómputo de residencia."
    },
    {
      "question": "¿Los venezolanos necesitan visa consular para entrar a Chile?",
      "answer": "A partir de 2023, Chile reinstauró el requisito de visa consular para venezolanos. Sin embargo, esta política puede cambiar. Verifica siempre en el sitio oficial del Departamento de Extranjería o la Embajada de Chile antes de planificar un viaje."
    },
    {
      "question": "¿El tiempo con VRD cuenta para la Permanencia Definitiva?",
      "answer": "Sí. El tiempo de residencia legal con VRD (que es una visa temporaria) cuenta para los 2 años continuos necesarios para solicitar la Permanencia Definitiva, siempre que la residencia haya sido ininterrumpida y legal."
    },
    {
      "question": "¿Qué puedo hacer si ingresé a Chile de forma irregular y soy venezolano?",
      "answer": "La autodenuncia es el camino. Preséntate voluntariamente al SERMIG, declara tu situación, paga la multa correspondiente y solicita la visa que corresponda a tu situación (por trabajo, arraigo, humanitaria). La Ley 21.325 creó este mecanismo específicamente para situaciones de irregularidad."
    }
  ]'::jsonb,
  ARRAY[
    'visa-temporaria',
    'autodenuncia',
    'problemas/visa-vencida',
    'permanencia-definitiva',
    'problemas'
  ]::TEXT[],
  5,
  TRUE,
  NOW()
);

-- ──────────────────────────────────────────────────────────
-- 4. CLUSTER: visa-temporaria/hijo-chileno
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, schema_type, howto_steps, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'visa-temporaria/hijo-chileno',
  'visa-temporaria',
  'visa-temporaria',
  'cluster',
  'Visa Temporaria por Hijo Chileno: Requisitos y Proceso 2026',
  'Cómo Obtener Visa Temporaria en Chile por Ser Padre o Madre de Hijo Chileno',
  'Guía para obtener visa temporaria en Chile por ser padre o madre de un hijo con nacionalidad chilena. Requisitos, documentos y proceso ante el SERMIG en 2026.',
  'visa temporaria hijo chileno padre madre',
  $q4$
<p>Si tienes un hijo o hija con <strong>nacionalidad chilena</strong>, tienes derecho a solicitar una <strong>visa temporaria en Chile por vínculo familiar</strong>. Esta es una de las vías más sólidas para regularizarse y eventualmente obtener la Permanencia Definitiva, porque el vínculo con un hijo chileno es un arraigo familiar reconocido por la ley.</p>

<h2>¿Quién califica?</h2>
<p>Para solicitar esta visa necesitas ser padre o madre (con filiación reconocida) de un hijo o hija que:</p>
<ul>
  <li>Sea <strong>ciudadano chileno</strong> — ya sea por nacimiento en Chile (ius soli), por ser hijo de chileno nacido en el extranjero (ius sanguinis), o por naturalización.</li>
  <li>La mayoría de los casos corresponden a hijos nacidos en Chile de padres extranjeros — estos niños son chilenos por derecho de suelo.</li>
</ul>
<p>La filiación debe estar reconocida legalmente — ya sea por registro del nacimiento con ambos padres, reconocimiento voluntario ante el Registro Civil, o resolución judicial de filiación.</p>

<h2>¿En qué situación puedo solicitarla?</h2>
<p>Puedes solicitar esta visa:</p>
<ul>
  <li>Estando en Chile como turista (dentro del período de turismo).</li>
  <li>Estando en Chile con otra visa temporaria que vence pronto.</li>
  <li>Luego de autodenunciarte si estabas en situación irregular — el arraigo familiar es un factor que el SERMIG valora positivamente.</li>
</ul>

<h2>Documentos requeridos</h2>
<ul>
  <li><strong>Pasaporte vigente.</strong></li>
  <li><strong>Certificado de nacimiento del hijo/a emitido por el Registro Civil de Chile</strong>, con no más de 90 días de antigüedad. Este documento acredita la nacionalidad chilena del menor y el vínculo filial.</li>
  <li><strong>Cédula de identidad del hijo/a</strong> (si ya la tiene) o pasaporte.</li>
  <li><strong>Documentos que acrediten la filiación</strong> — si el padre no está en el certificado de nacimiento, puede requerirse reconocimiento ante el Registro Civil o resolución judicial.</li>
  <li><strong>Comprobante de residencia</strong> en Chile (contrato de arriendo, certificado de residencia).</li>
  <li><strong>Comprobante de actividad lícita o sustento</strong> (trabajo, beca, pensión u otro medio de vida).</li>
</ul>

<h2>Proceso de solicitud</h2>
<p>La solicitud se realiza en el portal <a href="https://tramitesmigratorios.interior.gob.cl" target="_blank" rel="noopener noreferrer">tramitesmigratorios.interior.gob.cl</a>:</p>
<ol>
  <li>Crea o accede a tu cuenta.</li>
  <li>Selecciona "Solicitar visa temporaria" → categoría "Vínculo con ciudadano chileno" o "Arraigo familiar".</li>
  <li>Sube todos los documentos en formato PDF.</li>
  <li>Envía la solicitud y guarda el número y comprobante.</li>
</ol>
<p>El comprobante de trámite activo te habilita para permanecer y trabajar en Chile mientras se resuelve.</p>

<h2>¿Cuánto demora?</h2>
<p>Los plazos son similares a otras visas temporarias:</p>
<ul>
  <li><strong>Plazo legal:</strong> 30 días hábiles.</li>
  <li><strong>Plazo real:</strong> 2–5 meses en promedio.</li>
</ul>
<p>El arraigo familiar (hijo chileno) es generalmente valorado positivamente por el SERMIG, lo que puede facilitar la aprobación.</p>

<h2>Camino hacia la Permanencia Definitiva</h2>
<p>Con la visa temporaria aprobada, el camino habitual es:</p>
<ul>
  <li>Mantener la residencia legal continua durante <strong>2 años</strong>.</li>
  <li>Solicitar la <strong>Permanencia Definitiva</strong> — el vínculo con hijo chileno es un factor de arraigo que fortalece la solicitud.</li>
  <li>Alternativamente, si eres cónyuge del otro padre/madre chileno/a, puede haber una vía directa a PD por vínculo conyugal.</li>
</ul>

<h2>¿Qué pasa si el otro padre/madre es chileno/a?</h2>
<p>Si el otro progenitor de tu hijo es ciudadano/a chileno/a y tienes una relación vigente (matrimonio o AUC), tienes una vía adicional: la visa temporaria por cónyuge de chileno y eventualmente la Permanencia Definitiva directa por ese vínculo. Ver <a href="/visa-temporaria/pareja-chilena">Visa por Pareja Chilena</a>.</p>
  $q4$,
  'HowTo',
  '[
    {"name": "Verificar que el hijo tiene nacionalidad chilena", "text": "Si tu hijo nació en Chile, es chileno por ius soli. Verifica que el nacimiento está registrado en el Registro Civil de Chile. Si hay algún problema con el registro, resuélvelo antes de iniciar el trámite de visa."},
    {"name": "Verificar que la filiación está reconocida", "text": "Tu nombre debe constar en el certificado de nacimiento del hijo. Si no figura (reconocimiento pendiente), trámitalo ante el Registro Civil o vía judicial antes de solicitar la visa."},
    {"name": "Obtener certificado de nacimiento actualizado", "text": "Solicita el certificado de nacimiento del hijo en el Registro Civil, con no más de 90 días de antigüedad. Puede obtenerse en línea en el sitio del SRCeI."},
    {"name": "Preparar documentos de sustento y residencia", "text": "Reúne comprobante de residencia en Chile (contrato arriendo, certificado de la junta de vecinos) y comprobante de actividad lícita o sustento económico."},
    {"name": "Ingresar la solicitud en el portal SERMIG", "text": "Accede a tramitesmigratorios.interior.gob.cl, selecciona visa temporaria por arraigo familiar, sube todos los documentos y envía. Guarda el número de solicitud y el comprobante."},
    {"name": "Usar el comprobante para trabajar y residir mientras esperas", "text": "El comprobante de trámite activo te habilita para trabajar y permanecer en Chile legalmente durante el proceso. Muéstralo a empleadores que pregunten por tu situación migratoria."}
  ]'::jsonb,
  '[
    {
      "question": "¿Mi hijo nacido en Chile es automáticamente chileno aunque yo sea extranjero?",
      "answer": "Sí, en casi todos los casos. Chile aplica el principio de ius soli: los hijos nacidos en territorio chileno son chilenos, independientemente de la nacionalidad de los padres. La excepción son hijos de personas en tránsito o de diplomáticos. Si tu hijo nació en Chile y no era tu caso ninguna de esas excepciones, es ciudadano chileno."
    },
    {
      "question": "¿Puedo solicitar esta visa si mi hijo está fuera de Chile?",
      "answer": "La visa se solicita para residir en Chile junto con tu hijo. Si tu hijo está fuera de Chile y no tiene residencia en Chile, el arraigo es más débil. El SERMIG evalúa el vínculo efectivo. Si el hijo tiene ciudadanía chilena pero vive en el extranjero, la situación es diferente — consulta directamente con el SERMIG."
    },
    {
      "question": "¿Puedo solicitar esta visa si estoy en situación migratoria irregular?",
      "answer": "Sí, pero primero debes autodenunciarte ante el SERMIG. El arraigo familiar (hijo chileno) es un factor positivo que el SERMIG considera en el proceso de regularización. No es garantía de aprobación automática, pero fortalece significativamente la solicitud."
    },
    {
      "question": "¿Cuántos años debo tener esta visa antes de pedir Permanencia Definitiva?",
      "answer": "2 años de residencia legal continua en Chile, contando todo el período desde tu primera visa temporal. Si llevas más de 1 año con una visa anterior, ese tiempo también cuenta. Al cumplir 2 años continuos, puedes solicitar la Permanencia Definitiva."
    }
  ]'::jsonb,
  ARRAY[
    'visa-temporaria',
    'visa-temporaria/pareja-chilena',
    'permanencia-definitiva',
    'permanencia-definitiva/requisitos',
    'autodenuncia'
  ]::TEXT[],
  5,
  TRUE,
  NOW()
);
