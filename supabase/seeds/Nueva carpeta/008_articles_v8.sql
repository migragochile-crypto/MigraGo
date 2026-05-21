-- ============================================================
-- MigraciónChile — Seed v8: clusters autodenuncia, vivir-en-chile, problemas
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

-- ──────────────────────────────────────────────────────────
-- 1. CLUSTER: autodenuncia/empadronamiento-biometrico
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, schema_type, howto_steps, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'autodenuncia/empadronamiento-biometrico',
  'autodenuncia',
  'autodenuncia',
  'cluster',
  'Empadronamiento Biométrico PDI: Qué Es y Cómo Funciona',
  'Empadronamiento Biométrico en la PDI: Qué Debes Saber Antes de Ir',
  'Qué es el empadronamiento biométrico en la PDI de Chile, qué datos se recopilan, cómo funciona el proceso y qué pasa con tu información después.',
  'empadronamiento biometrico pdi chile',
  $j1$
<p>El <strong>empadronamiento biométrico</strong> es el registro de datos físicos e identitarios que realiza la PDI al momento de la autodenuncia migratoria. Es un paso obligatorio del proceso: sin completarlo, no se emite el Certificado de Autodenuncia.</p>

<h2>¿Qué datos se recopilan?</h2>
<p>Durante el empadronamiento biométrico, la PDI registra:</p>
<ul>
  <li><strong>Huellas dactilares:</strong> los diez dedos.</li>
  <li><strong>Fotografía facial:</strong> para el registro de identidad.</li>
  <li><strong>Datos del documento de identidad:</strong> número de pasaporte, fecha de nacimiento, nacionalidad, nombre completo.</li>
  <li><strong>Historial migratorio en Chile:</strong> fechas de ingreso y egreso registradas en el sistema.</li>
</ul>
<p>Estos datos quedan registrados en el sistema de control migratorio de la PDI.</p>

<h2>¿Por qué la PDI toma huellas?</h2>
<p>El registro biométrico cumple dos funciones:</p>
<ol>
  <li><strong>Identificación:</strong> confirmar que la persona que se presenta es quien dice ser.</li>
  <li><strong>Antecedentes:</strong> verificar si hay órdenes de detención, alerta roja de Interpol u otros registros de seguridad vinculados a esa identidad.</li>
</ol>
<p>Si la verificación arroja alertas de seguridad, la PDI puede retener a la persona o derivarla a otras instancias. La gran mayoría de los migrantes que se presentan voluntariamente no tienen alertas y el proceso es rutinario.</p>

<h2>¿Qué pasa si tengo antecedentes penales en mi país?</h2>
<p>Tener antecedentes penales en el país de origen no impide automáticamente la autodenuncia ni la obtención del Certificado. La PDI evalúa la gravedad y el tipo de antecedente. Delitos menores o condenas cumplidas raramente son un obstáculo para el proceso de autodenuncia.</p>
<p>Lo que sí puede afectar el proceso posterior (solicitud de visa ante el SERMIG) son antecedentes por delitos graves o vigentes. El SERMIG evalúa los antecedentes de forma independiente al emitir la resolución de visa.</p>

<h2>¿Son permanentes los datos biométricos?</h2>
<p>Los datos quedan registrados en el sistema migratorio chileno. No existe un proceso automático de eliminación una vez que se regulariza la situación. Si deseas solicitar la eliminación de datos, puedes hacerlo invocando la Ley de Protección de Datos Personales (Ley 19.628), aunque las excepciones de seguridad pública pueden limitar este derecho.</p>

<h2>¿El empadronamiento es diferente del registro de ingreso?</h2>
<p>Sí. Al ingresar a Chile por un paso habilitado, la PDI ya registra tus datos del pasaporte. El empadronamiento biométrico durante la autodenuncia es un registro más completo que incluye huellas y actualiza tu situación en el sistema como persona en proceso de regularización.</p>
  $j1$,
  'HowTo',
  '[
    {"name": "Presentarse en una comisaría PDI con el pasaporte", "text": "Lleva tu pasaporte vigente o el documento de identidad con el que ingresaste a Chile. El horario habitual de atención para autodenuncia es de lunes a viernes de 8:00 a 13:00."},
    {"name": "Declarar que vienes a realizar la autodenuncia migratoria", "text": "Al llegar, indica al funcionario que vienes a realizar una autodenuncia migratoria (proceso de regularización). Te orientarán al área correspondiente."},
    {"name": "Entregar el pasaporte para verificación de datos", "text": "El funcionario registrará los datos de tu pasaporte en el sistema y verificará tu historial de ingreso/egreso en Chile."},
    {"name": "Registrar huellas dactilares", "text": "Se tomarán las huellas de los diez dedos en el escáner biométrico. Es un proceso rápido y no invasivo."},
    {"name": "Fotografía facial", "text": "Se tomará una fotografía para el registro de identidad. El proceso completo de empadronamiento toma entre 15 y 30 minutos."},
    {"name": "Pagar la multa y recibir el certificado", "text": "Una vez completado el empadronamiento, se calcula la multa por permanencia irregular y se emite el Certificado de Autodenuncia al momento del pago."}
  ]'::jsonb,
  '[
    {
      "question": "¿Puedo negarme a dar las huellas dactilares?",
      "answer": "El empadronamiento biométrico es un requisito del proceso de autodenuncia. Si te niegas a proporcionarlo, la PDI no puede completar el proceso y no emitirá el Certificado de Autodenuncia. No existe alternativa al registro biométrico."
    },
    {
      "question": "¿La PDI comparte mis huellas con otros países?",
      "answer": "Chile comparte información con Interpol y puede tener acuerdos de cooperación migratoria con otros países. Sin embargo, el propósito de la autodenuncia es la regularización, no la denuncia a autoridades extranjeras. Los datos biométricos quedan principalmente en el sistema chileno."
    },
    {
      "question": "¿Cuánto tiempo tarda el proceso en la PDI?",
      "answer": "El empadronamiento biométrico en sí toma entre 15 y 30 minutos. Sin embargo, el tiempo total en la comisaría puede ser mayor si hay fila de espera, especialmente en ciudades de alta demanda como Santiago. Se recomienda llegar temprano."
    },
    {
      "question": "¿Mis hijos menores deben hacer el empadronamiento también?",
      "answer": "Si los menores también están en situación irregular, deben hacer su propio proceso de autodenuncia, que incluye el empadronamiento biométrico (adaptado para menores). Los menores deben ir acompañados de un adulto responsable."
    },
    {
      "question": "¿El certificado de autodenuncia tiene fecha de vencimiento?",
      "answer": "El Certificado de Autodenuncia en sí no vence, pero habilita para presentar la solicitud de visa en el SERMIG. Cuanto antes presentes la solicitud después de obtener el certificado, mejor, ya que los documentos de respaldo (antecedentes, etc.) sí tienen vigencia limitada (90 días)."
    }
  ]'::jsonb,
  ARRAY[
    'autodenuncia',
    'autodenuncia/pdi-paso-a-paso',
    'autodenuncia/sermig-vs-pdi',
    'visa-temporaria',
    'vivir-en-chile/rut-extranjero'
  ]::TEXT[],
  5,
  TRUE,
  NOW()
);

-- ──────────────────────────────────────────────────────────
-- 2. CLUSTER: autodenuncia/errores-comunes
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'autodenuncia/errores-comunes',
  'autodenuncia',
  'autodenuncia',
  'cluster',
  'Errores Comunes en la Autodenuncia Migratoria en Chile',
  '7 Errores Comunes en la Autodenuncia Migratoria y Cómo Evitarlos',
  'Los errores más frecuentes que cometen los migrantes al hacer la autodenuncia en Chile y cómo evitarlos para no retrasar el proceso de regularización.',
  'errores autodenuncia migracion chile',
  $j2$
<p>La autodenuncia migratoria es un proceso relativamente simple, pero hay errores frecuentes que pueden retrasar o complicar el proceso de regularización. Esta guía recoge los más habituales para que puedas evitarlos.</p>

<h2>1. Ir a la PDI con documentos vencidos o incompletos</h2>
<p>El error más común. La PDI necesita tu pasaporte vigente. Si tu pasaporte venció mientras estabas en Chile, primero debes renovarlo en el consulado de tu país antes de presentarte a la autodenuncia. Sin pasaporte vigente, el proceso no puede completarse.</p>
<p><strong>Qué llevar:</strong> pasaporte vigente (o cédula de identidad si eres ciudadano MERCOSUR con acceso sin pasaporte) y cualquier documento de entrada anterior que tengas (tarjeta de turismo, visas anteriores).</p>

<h2>2. Confundir la PDI con el SERMIG</h2>
<p>Muchos migrantes van directamente al SERMIG creyendo que allí se hace todo el trámite. El SERMIG no hace la autodenuncia. La autodenuncia se hace exclusivamente en una comisaría de la PDI.</p>
<p>Solo después de tener el Certificado de Autodenuncia de la PDI puedes ir al SERMIG a solicitar la visa.</p>

<h2>3. No llevar efectivo para la multa</h2>
<p>La multa por permanencia irregular se paga al momento en la PDI. El monto varía según el tiempo de irregularidad. Aunque algunas comisarías pueden aceptar pagos electrónicos, es recomendable llevar efectivo en pesos chilenos para evitar problemas.</p>
<p>En 2025-2026, el monto oscila entre 3 UTM y 10 UTM según el tiempo de irregularidad (una UTM equivale a aproximadamente $68.000 pesos en 2026).</p>

<h2>4. Ir en el horario equivocado</h2>
<p>La atención para trámites migratorios en la PDI tiene horarios acotados, generalmente de <strong>lunes a viernes de 8:00 a 13:00</strong>. No todas las comisarías atienden en el mismo horario y los fines de semana generalmente no se realizan estos trámites. Llegar tarde puede significar que no te atiendan ese día.</p>

<h2>5. No guardar copia del certificado</h2>
<p>El Certificado de Autodenuncia es el documento más importante del proceso inicial. Si lo pierdes, recuperarlo puede ser difícil. Guarda copias digitales (fotografía o PDF) y físicas en cuanto lo recibas.</p>

<h2>6. Esperar demasiado tiempo para solicitar la visa</h2>
<p>Obtener el Certificado de Autodenuncia no regulariza tu situación: solo te habilita para solicitarla. La situación irregular continúa hasta que el SERMIG apruebe la visa. Cuanto antes presentes la solicitud en el SERMIG, antes comienza el trámite.</p>
<p>Además, los documentos de respaldo (antecedentes penales, certificado de domicilio) tienen vigencia de 90 días. Si tardas demasiado en presentar la solicitud, pueden vencerse y tendrás que renovarlos.</p>

<h2>7. No informarse sobre la visa adecuada antes de la autodenuncia</h2>
<p>La autodenuncia es el primer paso, pero antes de ir a la PDI debes saber qué tipo de visa vas a solicitar después. Las categorías más comunes son:</p>
<ul>
  <li>MERCOSUR (si eres de Argentina, Bolivia, Colombia, Ecuador, Perú, Uruguay, Paraguay, Brasil).</li>
  <li>Contrato de trabajo (si tienes empleador dispuesto a firmarte un contrato).</li>
  <li>Vínculo familiar (cónyuge, hijo de chileno, etc.).</li>
  <li>Responsabilidad Democrática (VRD) si eres venezolano.</li>
</ul>
<p>Saber de antemano qué categoría aplica a tu caso te permite reunir los documentos correctos antes de presentarte a la PDI.</p>

<h2>Resumen: checklist antes de ir a la PDI</h2>
<ul>
  <li>Pasaporte vigente.</li>
  <li>Efectivo en pesos chilenos para la multa.</li>
  <li>Ir en horario de atención (lunes a viernes, 8:00–13:00, verificar la comisaría específica).</li>
  <li>Saber qué visa vas a solicitar después.</li>
  <li>Tener o ir gestionando los documentos de respaldo para la visa.</li>
</ul>
  $j2$,
  '[
    {
      "question": "¿Qué pasa si mi pasaporte venció y no puedo renovarlo?",
      "answer": "Sin pasaporte vigente el proceso de autodenuncia no puede completarse. Debes renovar el pasaporte en el consulado de tu país en Chile antes de presentarte a la PDI. Si tienes dificultades con el consulado, organizaciones como el Servicio Jesuita a Migrantes pueden orientarte."
    },
    {
      "question": "¿Puedo ir a cualquier comisaría PDI en Chile?",
      "answer": "Sí. Puedes presentarte en cualquier comisaría PDI del país, no tiene que ser la de la ciudad donde vives. Sin embargo, en ciudades pequeñas no todas las comisarías están habilitadas para trámites migratorios. Verifica previamente."
    },
    {
      "question": "¿La PDI me puede detener al ir a la autodenuncia?",
      "answer": "La autodenuncia es un proceso voluntario pensado para regularizar, no para sancionar con detención. La PDI puede retener a una persona si hay órdenes de detención vigentes, alertas Interpol u otros registros graves de seguridad. Para la inmensa mayoría de los migrantes que se presentan voluntariamente, no hay riesgo de detención."
    },
    {
      "question": "¿Puedo hacer la autodenuncia con un documento de identidad distinto al pasaporte?",
      "answer": "En el caso de ciudadanos de países MERCOSUR que ingresaron con cédula de identidad (sin pasaporte), pueden presentar la cédula. Para los demás casos, el pasaporte es el documento requerido. Consulta en la comisaría PDI si tienes dudas sobre tu situación específica."
    }
  ]'::jsonb,
  ARRAY[
    'autodenuncia',
    'autodenuncia/pdi-paso-a-paso',
    'autodenuncia/sermig-vs-pdi',
    'autodenuncia/empadronamiento-biometrico',
    'visa-temporaria'
  ]::TEXT[],
  5,
  TRUE,
  NOW()
);

-- ──────────────────────────────────────────────────────────
-- 3. CLUSTER: vivir-en-chile/licencia-conducir
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, schema_type, howto_steps, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'vivir-en-chile/licencia-conducir',
  'vivir-en-chile',
  'vivir-en-chile',
  'cluster',
  'Licencia de Conducir Extranjera en Chile: Cómo Canjearla 2026',
  'Cómo Usar y Canjear tu Licencia de Conducir Extranjera en Chile',
  'Qué hacer con tu licencia de conducir extranjera en Chile: cuándo puedes usarla, cómo canjearla por una licencia chilena y qué documentos necesitas.',
  'canjear licencia conducir extranjera chile',
  $j3$
<p>Si tienes licencia de conducir de otro país y vives en Chile, necesitas saber cuándo puedes usarla y cuándo debes canjearla. Las reglas dependen de tu situación migratoria y del tiempo que llevas en el país.</p>

<h2>¿Puedo usar mi licencia extranjera en Chile?</h2>
<p>La respuesta depende de tu situación:</p>
<ul>
  <li><strong>Turista (hasta 90 días):</strong> puedes conducir en Chile con tu licencia extranjera vigente sin necesidad de ningún trámite adicional.</li>
  <li><strong>Residente temporal o permanente:</strong> una vez que tienes residencia en Chile, debes canjear tu licencia extranjera por una chilena. La ley establece que tienes <strong>6 meses desde la obtención de la residencia</strong> para hacer el canje.</li>
</ul>

<h2>¿Dónde se hace el canje?</h2>
<p>El canje de licencia extranjera se realiza en el <strong>municipio (municipalidad)</strong> donde tienes registrado tu domicilio en Chile. Cada municipio tiene su propio Departamento de Tránsito que gestiona las licencias de conducir.</p>

<h2>Documentos necesarios para el canje</h2>
<table>
  <thead>
    <tr><th>Documento</th><th>Especificaciones</th></tr>
  </thead>
  <tbody>
    <tr>
      <td>Licencia de conducir extranjera vigente</td>
      <td>Original y fotocopia. Debe estar vigente.</td>
    </tr>
    <tr>
      <td>Traducción oficial (si no está en español)</td>
      <td>Realizada por un perito traductor. No necesaria si la licencia está en español.</td>
    </tr>
    <tr>
      <td>Apostilla o legalización de la licencia</td>
      <td>Requerida según el municipio. Algunos municipios la piden, otros no. Verificar con el municipio específico.</td>
    </tr>
    <tr>
      <td>Cédula de identidad para extranjeros</td>
      <td>La cédula chilena vigente (no el comprobante de trámite).</td>
    </tr>
    <tr>
      <td>Certificado de domicilio</td>
      <td>Que acredite que vives en el municipio donde haces el trámite.</td>
    </tr>
    <tr>
      <td>Examen médico y psicotécnico</td>
      <td>Se realiza en centros habilitados. Costo aparte del trámite municipal.</td>
    </tr>
  </tbody>
</table>

<h2>¿Debo rendir exámenes teórico y práctico?</h2>
<p>En la mayoría de los municipios, el canje de licencia extranjera <strong>no requiere rendir el examen teórico ni el práctico de conducción</strong> si la licencia del país de origen es válida y equivalente a la clase chilena. Sin embargo, sí se requiere el examen médico-psicotécnico, que evalúa capacidades físicas y cognitivas básicas para conducir.</p>
<p>Algunos municipios aplican sus propios criterios y pueden exigir la prueba teórica. Consulta con tu municipio antes de iniciar el proceso.</p>

<h2>Clases de licencia en Chile</h2>
<p>La clase de licencia que obtendrás en Chile depende de la clase de tu licencia extranjera:</p>
<ul>
  <li><strong>Clase B:</strong> vehículos livianos (autos particulares). La más común.</li>
  <li><strong>Clase A:</strong> motocicletas.</li>
  <li><strong>Clase C/D/F:</strong> vehículos de carga o transporte de pasajeros. Requieren requisitos adicionales.</li>
</ul>

<h2>¿Qué pasa si conduzco con licencia vencida o sin canjear?</h2>
<p>Conducir en Chile sin licencia válida o con la licencia extranjera después de que venció el plazo de 6 meses de residencia puede resultar en multas y la retención del vehículo. No te arriesgues: el canje es un trámite relativamente simple.</p>
  $j3$,
  'HowTo',
  '[
    {"name": "Verificar que tu cédula de identidad para extranjeros esté vigente", "text": "El canje requiere la cédula chilena para extranjeros (no el comprobante de trámite). Si aún no tienes cédula, primero completa ese proceso."},
    {"name": "Consultar los requisitos específicos de tu municipio", "text": "Cada municipio puede tener requisitos adicionales o procedimientos específicos. Llama o visita el Departamento de Tránsito de tu municipio antes de reunir documentos."},
    {"name": "Realizar el examen médico-psicotécnico", "text": "Busca un centro habilitado por el municipio para este examen. Es un requisito universal para obtener licencia en Chile, incluso en el canje."},
    {"name": "Apostillar y/o traducir la licencia si es necesario", "text": "Si tu licencia no está en español, necesitas traducción oficial. Si el municipio exige apostilla, gestiónala con el consulado de tu país en Chile."},
    {"name": "Presentar todos los documentos en el municipio", "text": "Con la cédula chilena, la licencia extranjera (con traducción si aplica), el certificado del examen médico y el comprobante de domicilio, ve al Departamento de Tránsito."},
    {"name": "Pagar el arancel y recibir la licencia chilena", "text": "El costo varía por municipio. Recibirás la licencia chilena en el momento o en un plazo breve según el municipio."}
  ]'::jsonb,
  '[
    {
      "question": "¿Puedo conducir en Chile mientras tramito el canje?",
      "answer": "Si ya tienes residencia y están dentro del plazo de 6 meses, sí puedes usar tu licencia extranjera durante el trámite. Si ya vencieron los 6 meses sin haber canjeado, técnicamente no deberías conducir hasta completar el canje."
    },
    {
      "question": "¿Mi licencia internacional (IDP) sirve en Chile?",
      "answer": "El permiso internacional de conducir (IDP) es válido para turistas. Para residentes, se aplica la misma regla que para la licencia nacional de origen: debes canjearla dentro de los 6 meses de obtener residencia."
    },
    {
      "question": "¿Qué pasa si mi licencia extranjera vence antes de hacer el canje?",
      "answer": "Si tu licencia extranjera vence durante el proceso, ya no puedes usarla en Chile. En ese caso, deberás obtener la licencia chilena desde cero, con todos los exámenes correspondientes. Es importante iniciar el canje antes de que venza."
    },
    {
      "question": "¿El canje es diferente para cada clase de licencia?",
      "answer": "En términos de proceso, es similar para todas las clases. Sin embargo, para licencias de clases comerciales (C, D, F para transporte de carga o pasajeros), pueden requerirse exámenes adicionales o acreditación de experiencia."
    },
    {
      "question": "¿Cuánto cuesta el canje?",
      "answer": "El costo varía por municipio y clase de licencia. Incluye el arancel municipal (generalmente entre $10.000 y $30.000 pesos) más el costo del examen médico-psicotécnico (entre $20.000 y $60.000 pesos en centros habilitados)."
    }
  ]'::jsonb,
  ARRAY[
    'vivir-en-chile',
    'vivir-en-chile/rut-extranjero',
    'permanencia-definitiva',
    'visa-temporaria'
  ]::TEXT[],
  5,
  TRUE,
  NOW()
);

-- ──────────────────────────────────────────────────────────
-- 4. CLUSTER: problemas/rechazo-visa
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'problemas/rechazo-visa',
  'problemas',
  'problemas',
  'cluster',
  'Me Rechazaron la Visa en Chile: Qué Hacer Paso a Paso 2026',
  'Rechazo de Visa en Chile: Causas, Recursos y Qué Hacer',
  'Qué hacer si el SERMIG rechazó tu visa en Chile. Causas comunes de rechazo, plazos para recurrir y opciones disponibles según tu situación.',
  'rechazo visa chile que hacer',
  $j4$
<p>Recibir una resolución de rechazo del SERMIG es frustrante, pero no significa que el proceso terminó. La Ley 21.325 reconoce el derecho a <strong>impugnar la decisión</strong> mediante recursos administrativos, y en muchos casos el rechazo puede revertirse o la solicitud puede presentarse nuevamente con mejores condiciones.</p>

<h2>Causas más comunes de rechazo</h2>
<p>El SERMIG está obligado a fundamentar el rechazo. Las causas más frecuentes son:</p>
<ul>
  <li><strong>Documentación incompleta o vencida:</strong> falta algún documento requerido o alguno expiró antes de la resolución.</li>
  <li><strong>Inconsistencias en la información declarada:</strong> datos que no coinciden entre documentos o con la información del sistema migratorio.</li>
  <li><strong>Antecedentes penales graves:</strong> condenas por delitos graves, especialmente en los últimos 5 años.</li>
  <li><strong>Haber sido objeto de una medida de expulsión anterior no cumplida.</strong></li>
  <li><strong>No cumplir con los requisitos de la categoría solicitada:</strong> por ejemplo, solicitar visa MERCOSUR siendo de un país que no aplica.</li>
  <li><strong>Motivos de orden público o seguridad:</strong> causales amplias y discrecionales.</li>
</ul>

<h2>Lo primero: leer la resolución completa</h2>
<p>La resolución de rechazo debe indicar el motivo específico. Léela con atención. La estrategia a seguir depende directamente de la causa del rechazo:</p>
<ul>
  <li>Si es por <strong>documentación</strong>: el recurso de reposición con los documentos correctos tiene alta probabilidad de éxito.</li>
  <li>Si es por <strong>antecedentes penales</strong>: el recurso es más complejo y puede requerir asesoría legal.</li>
  <li>Si es por <strong>no cumplir los requisitos</strong>: puede ser más eficiente solicitar por otra categoría que sí aplique a tu caso.</li>
</ul>

<h2>Opciones disponibles tras el rechazo</h2>

<h3>Opción 1: Recurso de reposición (plazo: 5 días hábiles)</h3>
<p>Se presenta ante el mismo SERMIG dentro de los 5 días hábiles desde la notificación del rechazo. Es la primera opción y la más ágil. Ver guía completa en <a href="/problemas/recurso-administrativo">recurso administrativo ante el SERMIG</a>.</p>

<h3>Opción 2: Nueva solicitud por la misma o diferente categoría</h3>
<p>Si el rechazo fue por documentación que ya tienes corregida, o si ahora cumples los requisitos que antes no cumplías (por ejemplo, conseguiste empleo formal), puedes presentar una nueva solicitud. No hay impedimento para volver a solicitar si las circunstancias cambiaron.</p>

<h3>Opción 3: Recurso jerárquico ante el Ministerio del Interior</h3>
<p>Si el recurso de reposición fue rechazado o no respondido en plazo, tienes 5 días hábiles adicionales para presentar el recurso jerárquico ante el Ministerio del Interior. Es el segundo nivel de impugnación administrativa.</p>

<h3>Opción 4: Acción judicial</h3>
<p>Si agotaste los recursos administrativos, puedes acudir a los tribunales ordinarios mediante recurso contencioso-administrativo. Este proceso es más largo, costoso y requiere representación de un abogado, pero es una opción disponible en casos graves.</p>

<h2>¿Qué pasa mientras tengo recursos pendientes?</h2>
<p>Mientras un recurso esté formalmente presentado y activo, el comprobante de recurso actúa como habilitante de residencia. No estás en situación irregular durante ese período.</p>

<h2>¿Puedo salir y reingresar a Chile con el rechazo?</h2>
<p>Técnicamente puedes salir del país. Sin embargo, al reingresar como turista, si intentas presentar una nueva solicitud de visa, el historial del rechazo anterior puede influir en la evaluación. No hay prohibición automática, pero el rechazo queda registrado.</p>
  $j4$,
  '[
    {
      "question": "¿Cuánto tiempo tengo para recurrir después del rechazo?",
      "answer": "5 días hábiles desde la notificación del rechazo para el recurso de reposición. La notificación puede llegar por correo electrónico o estar disponible en el portal del SERMIG. Revisa ambos canales inmediatamente al recibir la resolución."
    },
    {
      "question": "¿El rechazo me impide volver a solicitar la visa?",
      "answer": "No. Un rechazo anterior no prohíbe automáticamente presentar nuevas solicitudes. Puedes solicitar nuevamente si corregiste los problemas que causaron el rechazo o si ahora cumples los requisitos que antes no cumplías."
    },
    {
      "question": "¿Necesito un abogado para el recurso de reposición?",
      "answer": "No es obligatorio, pero es recomendable si el rechazo es por causas complejas (antecedentes penales, medidas de expulsión, motivos de seguridad). Para rechazos por documentación faltante, puedes manejarlo tú mismo con el recurso bien fundamentado."
    },
    {
      "question": "¿Qué pasa si venció el plazo de 5 días sin que presentara el recurso?",
      "answer": "Si venció el plazo para el recurso de reposición sin que lo presentaras, la resolución queda firme. Aún puedes presentar una nueva solicitud de visa si las circunstancias lo permiten, pero ya no puedes impugnar esa resolución específica."
    },
    {
      "question": "¿El SERMIG puede rechazarme por ser de cierto país?",
      "answer": "La Ley 21.325 prohíbe la discriminación por nacionalidad en la gestión migratoria. Sin embargo, el SERMIG evalúa la situación individual de cada solicitud. Los motivos de rechazo deben ser específicos y fundamentados, no basados en la nacionalidad del solicitante."
    }
  ]'::jsonb,
  ARRAY[
    'problemas',
    'problemas/recurso-administrativo',
    'problemas/visa-vencida',
    'autodenuncia',
    'visa-temporaria'
  ]::TEXT[],
  5,
  TRUE,
  NOW()
);
