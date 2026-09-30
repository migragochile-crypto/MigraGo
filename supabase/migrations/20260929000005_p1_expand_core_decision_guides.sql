-- P1 editorial: reforzar hubs y guías de decisión; evitar contenido solapado.
-- Fuentes oficiales revisadas el 29-09-2026.
BEGIN;

UPDATE articles SET
  title = 'Infracciones migratorias en Chile: SERMIG, PDI y multas',
  h1 = 'Qué hacer ante una infracción migratoria en Chile',
  meta_description = 'Identifica si corresponde SERMIG o PDI, qué ocurre con las multas y por qué resolver una infracción no concede residencia.',
  content = $content$
<h2>Empieza por una sola pregunta: ¿cómo ingresaste a Chile?</h2>
<p>La palabra “autodenuncia” suele utilizarse para situaciones distintas. Antes de acudir a una institución o completar un formulario, distingue si ingresaste por un <strong>paso habilitado</strong> o si eludiste el control migratorio. Esa diferencia cambia la autoridad, el procedimiento y sus posibles consecuencias.</p>

<table>
  <thead><tr><th>Situación principal</th><th>Primer canal que debes revisar</th></tr></thead>
  <tbody>
    <tr><td>Ingresaste por paso habilitado y tu permiso venció</td><td>Declaración de infracción en SERMIG.</td></tr>
    <tr><td>Trabajaste sin autorización después de un ingreso habilitado</td><td>Declaración de infracción en SERMIG.</td></tr>
    <tr><td>No solicitaste a tiempo la cita para tu cédula</td><td>Declaración de infracción en SERMIG, si cumples su supuesto.</td></tr>
    <tr><td>Ingresaste eludiendo el control fronterizo</td><td>PDI y orientación jurídica individual; no uses el trámite de permiso vencido como equivalente.</td></tr>
    <tr><td>Recibiste una orden de expulsión o prohibición de ingreso</td><td>Asistencia jurídica urgente y revisión de la resolución.</td></tr>
  </tbody>
</table>

<h2>Declaración de infracción ante SERMIG</h2>
<p>Es un trámite digital para determinadas infracciones cometidas por personas que ingresaron mediante un paso habilitado. El portal calcula una multa según la causal, los días y la reincidencia. Si declaras voluntariamente, la rebaja legal del 50% ya está incorporada en la tabla publicada por SERMIG.</p>
<p>Después del cálculo puedes aceptar o presentar descargos. Si eliges formularlos, dispones de 10 días hábiles para adjuntar documentos. Cuando exista una resolución definitiva, el pago se realiza mediante Tesorería General de la República y luego debes regresar al portal para finalizar el trámite.</p>

<h2>Intervención de PDI</h2>
<p>PDI ejerce control migratorio y policía internacional. Puede intervenir en ingresos y egresos, fiscalizaciones, citaciones, elusión del control fronterizo y ejecución de determinadas medidas. Presentarse ante PDI no equivale a obtener un permiso ni garantiza que SERMIG admita una futura solicitud.</p>

<h2>Lo que una multa no resuelve</h2>
<ul>
  <li>No renueva un permiso vencido.</li>
  <li>No concede Residencia Temporal.</li>
  <li>No autoriza a trabajar.</li>
  <li>No elimina una expulsión o prohibición de ingreso.</li>
  <li>No permite presentar desde Chile una solicitud que debe iniciarse en el extranjero.</li>
</ul>

<h2>Ruta práctica</h2>
<ol>
  <li>Reúne tu Tarjeta Única Migratoria, Estampado Electrónico, pasaporte y todas las notificaciones.</li>
  <li>Determina la forma de ingreso y la infracción exacta.</li>
  <li>Lee el trámite oficial antes de entregar datos o pagar.</li>
  <li>Registra cada fecha de notificación y conserva los comprobantes.</li>
  <li>Analiza por separado si existe una subcategoría de residencia admisible.</li>
</ol>

<h2>Cuándo necesitas ayuda individual</h2>
<p>Busca asistencia jurídica si ingresaste por paso no habilitado, existe expulsión, abandono o prohibición de ingreso, tienes una causa penal, perdiste un plazo o la situación afecta a niños y vínculos familiares. En esos escenarios una guía general no puede determinar la estrategia correcta.</p>

<p><a href="https://serviciomigraciones.cl/declarar-infraccion/" target="_blank" rel="noopener noreferrer">Abrir el procedimiento oficial de SERMIG</a>.</p>
$content$,
  faq_items = '[{"q":"¿Autodenunciarse regulariza automáticamente?","a":"No. Resolver una infracción y obtener residencia son procedimientos distintos."},{"q":"¿Debo ir a PDI si mi permiso venció?","a":"Si ingresaste por un paso habilitado, revisa primero la declaración digital de infracción de SERMIG."},{"q":"¿Pagar una multa permite trabajar?","a":"No. Necesitas un permiso o autorización vigente."},{"q":"¿El ingreso por paso no habilitado se resuelve con la misma declaración?","a":"No. Es una situación distinta que puede involucrar a PDI y requiere revisar el caso individual."}]'::jsonb,
  updated_at = NOW()
WHERE slug = 'autodenuncia';

UPDATE articles SET
  title = 'PDI o SERMIG: qué autoridad corresponde en cada caso',
  h1 = 'PDI versus SERMIG: diferencias y trámites migratorios',
  meta_description = 'Compara las funciones de PDI y SERMIG para permisos, multas, control fronterizo, ingreso irregular y expulsión.',
  content = $content$
<h2>La diferencia esencial</h2>
<p><strong>SERMIG administra permisos y procedimientos migratorios.</strong> <strong>PDI ejerce control migratorio y policía internacional.</strong> Ambas instituciones pueden intervenir en un mismo caso, pero una actuación ante una no reemplaza el trámite que corresponde ante la otra.</p>

<table>
  <thead><tr><th>Necesidad</th><th>Institución principal</th></tr></thead>
  <tbody>
    <tr><td>Solicitar, prorrogar o cambiar una residencia</td><td>SERMIG</td></tr>
    <tr><td>Declarar permiso vencido o trabajo sin autorización tras ingreso habilitado</td><td>SERMIG</td></tr>
    <tr><td>Consultar una solicitud digital de residencia</td><td>SERMIG</td></tr>
    <tr><td>Control de entrada y salida del país</td><td>PDI</td></tr>
    <tr><td>Ingreso eludiendo el control fronterizo</td><td>PDI, sin perjuicio de actuaciones posteriores de SERMIG</td></tr>
    <tr><td>Fiscalización o citación policial migratoria</td><td>PDI</td></tr>
    <tr><td>Resolución de expulsión</td><td>La autoridad indicada en la resolución; notificación y ejecución involucran a la policía</td></tr>
  </tbody>
</table>

<h2>Qué hace SERMIG</h2>
<ul>
  <li>Recibe y resuelve solicitudes de Residencia Temporal y Definitiva.</li>
  <li>Gestiona prórrogas, cambios de subcategoría, rectificaciones y recursos administrativos.</li>
  <li>Recibe la declaración digital de ciertas infracciones y calcula las multas.</li>
  <li>Emite resoluciones administrativas migratorias dentro de sus competencias.</li>
</ul>

<h2>Qué hace PDI</h2>
<ul>
  <li>Controla el ingreso y egreso por pasos fronterizos.</li>
  <li>Registra movimientos migratorios y ejerce funciones de Policía Internacional.</li>
  <li>Realiza fiscalizaciones y puede emitir citaciones dentro de sus competencias.</li>
  <li>Interviene frente a ingresos por pasos no habilitados y en actuaciones vinculadas con expulsiones.</li>
</ul>

<h2>Ejemplos para evitar el trámite equivocado</h2>
<h3>Tu Permanencia Transitoria venció</h3>
<p>Si ingresaste por un paso habilitado, revisa la declaración de infracción de SERMIG. No asumas que debes presentarte primero en una unidad policial.</p>
<h3>Ingresaste por un paso no habilitado</h3>
<p>No selecciones la causal de permiso vencido para describir un ingreso clandestino. Son hechos jurídicamente distintos. Una actuación ante PDI no concede residencia.</p>
<h3>Tu residencia fue rechazada</h3>
<p>La resolución y los recursos se gestionan ante SERMIG o mediante la vía judicial que corresponda. PDI no reconsidera una solicitud de residencia.</p>
<h3>Tienes una orden de expulsión</h3>
<p>No la trates como una multa común. La Ley 21.325 contempla una reclamación judicial especial con un plazo breve; solicita asistencia jurídica inmediata.</p>

<h2>Antes de contactar a una institución</h2>
<ol>
  <li>Descarga la resolución o notificación completa.</li>
  <li>Anota su fecha y la autoridad que la emitió.</li>
  <li>Identifica el nombre exacto del trámite, no solo la palabra “autodenuncia”.</li>
  <li>Lleva o adjunta documentos coherentes con lo declarado.</li>
  <li>Guarda el comprobante de toda presentación.</li>
</ol>

<p><a href="https://serviciomigraciones.cl/declarar-infraccion/" target="_blank" rel="noopener noreferrer">Declaración de infracción — SERMIG</a> · <a href="https://www.pdichile.cl/instituci%C3%B3n/unidades/migraciones-y-polic%C3%ADa-internacional" target="_blank" rel="noopener noreferrer">Migraciones y Policía Internacional — PDI</a></p>
$content$,
  faq_items = '[{"q":"¿PDI otorga residencias?","a":"No. Las solicitudes de residencia son gestionadas por SERMIG."},{"q":"¿SERMIG controla el ingreso en frontera?","a":"El control migratorio de entrada y salida corresponde a PDI."},{"q":"¿Un comprobante de PDI autoriza a trabajar?","a":"No. Se necesita una autorización migratoria o laboral vigente."},{"q":"¿Pagar ante SERMIG elimina una expulsión?","a":"No. Una multa y una medida de expulsión son procedimientos diferentes."}]'::jsonb,
  updated_at = NOW()
WHERE slug = 'autodenuncia/sermig-vs-pdi';

UPDATE articles SET
  title = 'Permiso migratorio vencido en Chile: qué hacer paso a paso',
  h1 = 'Qué hacer si venció tu Permanencia Transitoria o residencia',
  meta_description = 'Identifica la infracción, declara ante SERMIG, evalúa descargos, paga la multa y revisa por separado tus opciones migratorias.',
  content = $content$
<h2>Respuesta rápida</h2>
<p>Si ingresaste por un paso habilitado y permaneciste en Chile después del vencimiento de tu permiso, existe una infracción migratoria. Debes revisar la <strong>Declaración de infracción y cálculo de multa</strong> de SERMIG. Resolver la sanción no renueva el permiso ni concede residencia.</p>

<h2>Antes de declarar: identifica el documento vencido</h2>
<ul>
  <li><strong>Permanencia Transitoria:</strong> revisa la fecha de tu Tarjeta Única Migratoria y cualquier prórroga concedida.</li>
  <li><strong>Residencia Temporal:</strong> comprueba la vigencia del Estampado Electrónico y si presentaste una prórroga dentro de plazo.</li>
  <li><strong>Otro documento:</strong> no confundas el vencimiento de la cédula física con el vencimiento del permiso migratorio.</li>
</ul>

<h2>Procedimiento general ante SERMIG</h2>
<ol>
  <li>Ingresa al Portal de Trámites Digitales con ClaveÚnica o tu cuenta.</li>
  <li>Selecciona la causal exacta y registra las fechas solicitadas.</li>
  <li>Revisa el inicio del procedimiento y el cálculo en UTM.</li>
  <li>Decide si aceptarás o presentarás descargos.</li>
  <li>Si presentas descargos, adjunta los documentos dentro de 10 días hábiles.</li>
  <li>Cuando exista resolución, paga mediante el enlace de Tesorería.</li>
  <li>Regresa al portal y finaliza el trámite.</li>
</ol>

<h2>¿Conviene presentar descargos?</h2>
<p>Depende de los hechos y de si tienes respaldo. SERMIG menciona documentos como informes médicos o sociales, finiquitos y cotizaciones. Los descargos no son un espacio para pedir una residencia: sirven para explicar la infracción y aportar antecedentes que puedan incidir en la sanción.</p>

<h2>Qué ocurre con la residencia</h2>
<p>Después de resolver la infracción debes analizar si existe una vía migratoria admisible. La regla general para una primera Residencia Temporal es solicitar desde el extranjero, con excepciones oficiales limitadas. Haber pagado la multa no crea una excepción ni permite trabajar mientras decides el siguiente paso.</p>

<h2>Situaciones que requieren otra estrategia</h2>
<ul>
  <li>Ingresaste por un paso no habilitado.</li>
  <li>Existe una orden de abandono, expulsión o prohibición de ingreso.</li>
  <li>Recibiste un pre rechazo que exige declarar una infracción concreta.</li>
  <li>Perdiste un plazo de recurso.</li>
  <li>Hay antecedentes penales o documentación cuestionada.</li>
</ul>
<p>En esos casos no completes formularios por analogía. Lee la resolución y busca orientación individual.</p>

<h2>Errores frecuentes</h2>
<ul>
  <li>Ingresar una fecha aproximada sin revisar el documento.</li>
  <li>Confundir ingreso clandestino con permiso vencido.</li>
  <li>Pagar y olvidar finalizar el trámite.</li>
  <li>Creer que el comprobante autoriza a trabajar.</li>
  <li>Presentar una nueva residencia dentro de Chile sin verificar su admisibilidad.</li>
</ul>

<p><a href="https://serviciomigraciones.cl/declarar-infraccion/" target="_blank" rel="noopener noreferrer">Consultar causales, tabla y pasos oficiales en SERMIG</a>.</p>
$content$,
  faq_items = '[{"q":"¿Existe un período de gracia después del vencimiento?","a":"SERMIG calcula la infracción desde la fecha aplicable al permiso. No debes asumir un período de gracia no indicado oficialmente."},{"q":"¿Pagar la multa renueva mi permiso?","a":"No. La sanción y el permiso de residencia son procedimientos distintos."},{"q":"¿Puedo seguir trabajando?","a":"No sin una autorización vigente. Trabajar sin autorización constituye otra infracción."},{"q":"¿Debo ir a PDI?","a":"Para un permiso vencido después de ingreso habilitado, revisa primero el trámite digital de SERMIG."}]'::jsonb,
  updated_at = NOW()
WHERE slug = 'problemas-migratorios/visa-vencida';

UPDATE articles SET
  title = 'Residencia Temporal en Chile: categorías, requisitos y solicitud',
  h1 = 'Residencia Temporal en Chile: encuentra la subcategoría correcta',
  meta_description = 'Comprende quién solicita desde el extranjero, las excepciones dentro de Chile, documentos generales y principales subcategorías.',
  content = $content$
<h2>Qué es la Residencia Temporal</h2>
<p>Es el permiso para establecerse en Chile por un período limitado conforme a una subcategoría específica. Puede concederse hasta por dos años, salvo reglas especiales. No existe una “visa genérica”: cada solicitud debe acreditar el fundamento elegido.</p>

<h2>La decisión más importante: desde dónde postular</h2>
<p>La regla general es presentar la primera solicitud <strong>desde el extranjero</strong>. SERMIG admite solicitudes dentro de Chile únicamente en excepciones definidas, como determinados vínculos familiares y otros supuestos expresamente regulados. Ingresar como turista, conseguir una oferta o permanecer más tiempo no crea por sí solo una excepción.</p>

<table>
  <thead><tr><th>Situación</th><th>Qué debes revisar</th></tr></thead>
  <tbody>
    <tr><td>Estás fuera de Chile</td><td>Subcategoría aplicable, pasaporte, antecedentes y documentos específicos.</td></tr>
    <tr><td>Estás en Chile como turista</td><td>Si existe una excepción oficial para solicitar dentro del país; no la presumas.</td></tr>
    <tr><td>Ya eres residente temporal</td><td>Prórroga, cambio de subcategoría o futura Residencia Definitiva.</td></tr>
    <tr><td>Tu permiso venció</td><td>Primero resuelve la infracción y luego analiza una vía admisible.</td></tr>
  </tbody>
</table>

<h2>Principales fundamentos</h2>
<ul>
  <li><strong>Actividades remuneradas:</strong> contrato, oferta laboral, servicios u otra modalidad admitida.</li>
  <li><strong>Reunificación familiar:</strong> vínculos expresamente reconocidos con personas chilenas o residentes.</li>
  <li><strong>Estudios:</strong> matrícula o aceptación en establecimientos reconocidos.</li>
  <li><strong>Reciprocidad internacional:</strong> para nacionales de Argentina, Bolivia, Brasil, Paraguay y Uruguay.</li>
  <li><strong>Trabajo de temporada:</strong> bajo condiciones y períodos especiales.</li>
  <li><strong>Razones humanitarias:</strong> solo en los supuestos definidos por la normativa.</li>
  <li><strong>Jubilados, rentistas, inversionistas y otros:</strong> con requisitos económicos y documentales propios.</li>
</ul>

<h2>Documentos generales</h2>
<ol>
  <li>Documento de identificación. Para solicitudes desde el extranjero se exige pasaporte vigente, con la excepción publicada para Bolivia en reciprocidad internacional.</li>
  <li>Antecedentes penales o judiciales del país de origen o residencia durante los últimos cinco años, para mayores de 18 años.</li>
  <li>Fotografía reciente con las características exigidas.</li>
  <li>Documentos específicos que demuestren el fundamento de la subcategoría.</li>
</ol>
<p>Los antecedentes deben adjuntarse dentro de 60 días desde su emisión, salvo vigencia diferente indicada en el documento. Los documentos extranjeros requieren apostilla o legalización y traducción oficial cuando no están en español o inglés.</p>

<h2>Proceso de solicitud</h2>
<ol>
  <li>Define la subcategoría antes de reunir documentos.</li>
  <li>Confirma si el portal debe usarse desde Chile o el extranjero.</li>
  <li>Revisa las instrucciones específicas de la ficha oficial.</li>
  <li>Carga archivos completos, vigentes y legibles.</li>
  <li>Guarda el comprobante y responde oportunamente a requerimientos.</li>
</ol>

<h2>Si SERMIG comunica un posible rechazo</h2>
<p>Antes del rechazo de una Residencia Temporal, la persona dispone de 10 días hábiles para presentar antecedentes respecto de la causal informada. Si finalmente existe una resolución de rechazo, revisa los recursos y plazos señalados en ella. La interposición de recursos administrativos migratorios suspende los efectos del acto impugnado conforme a la Ley 21.325.</p>

<h2>Errores frecuentes</h2>
<ul>
  <li>Elegir la categoría por el nombre y no por sus requisitos.</li>
  <li>Postular dentro de Chile sin estar en una excepción.</li>
  <li>Confundir oferta laboral con contrato definitivo.</li>
  <li>Presentar antecedentes vencidos o sin apostilla.</li>
  <li>Usar información de países asociados al MERCOSUR que no coincide con la lista chilena.</li>
</ul>

<p><a href="https://serviciomigraciones.cl/residencia-temporal/" target="_blank" rel="noopener noreferrer">Revisar requisitos generales en SERMIG</a> · <a href="https://serviciomigraciones.cl/residencia-temporal/subcategorias/" target="_blank" rel="noopener noreferrer">Comparar subcategorías oficiales</a></p>
$content$,
  faq_items = '[{"q":"¿Puedo solicitar Residencia Temporal estando como turista?","a":"La regla general es postular desde el extranjero. Solo excepciones oficiales permiten hacerlo dentro de Chile."},{"q":"¿Cuánto puede durar?","a":"Hasta dos años como regla general, salvo regímenes especiales. La resolución fija la vigencia concreta."},{"q":"¿Qué vigencia deben tener los antecedentes penales?","a":"SERMIG indica que deben adjuntarse dentro de 60 días desde su emisión, salvo que el documento señale otra vigencia."},{"q":"¿Un contrato garantiza la aprobación?","a":"No. Debes cumplir todos los requisitos y esperar la decisión de SERMIG."}]'::jsonb,
  updated_at = NOW()
WHERE slug = 'residencia-temporal';

COMMIT;
