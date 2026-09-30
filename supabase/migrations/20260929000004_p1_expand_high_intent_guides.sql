-- P1 editorial: ampliar guías de alta intención sin reintroducir afirmaciones jurídicas incorrectas.
-- Fuentes SERMIG revisadas el 29-09-2026.
BEGIN;

UPDATE articles SET
  title = 'Residencia Temporal MERCOSUR en Chile: países y requisitos',
  h1 = 'Residencia Temporal por reciprocidad internacional: quién puede solicitarla',
  meta_description = 'Países incluidos, lugar de solicitud, documentos y pasos de la Residencia Temporal MERCOSUR en Chile.',
  content = $content$
<h2>Respuesta rápida</h2>
<p>La Residencia Temporal por reciprocidad internacional está disponible, según la ficha vigente de SERMIG, para nacionales de <strong>Argentina, Bolivia, Brasil, Paraguay y Uruguay</strong>. La solicitud se presenta <strong>desde el extranjero</strong>. Colombia, Ecuador, Perú y Venezuela no aparecen en la nómina chilena vigente, aunque algunos sean Estados Asociados del MERCOSUR.</p>

<h2>Comprueba primero si esta ruta corresponde</h2>
<table>
  <thead><tr><th>Situación</th><th>Resultado orientativo</th></tr></thead>
  <tbody>
    <tr><td>Tienes nacionalidad argentina, boliviana, brasileña, paraguaya o uruguaya y estás fuera de Chile</td><td>Esta subcategoría puede corresponder; revisa la ficha oficial.</td></tr>
    <tr><td>Eres de Colombia, Ecuador, Perú o Venezuela</td><td>Debes identificar otra subcategoría según trabajo, familia, estudios u otra circunstancia.</td></tr>
    <tr><td>Estás en Chile como turista</td><td>No puedes iniciar esta solicitud dentro de Chile por esa sola condición.</td></tr>
    <tr><td>Ya posees Residencia Temporal</td><td>Revisa si corresponde prórroga, cambio de subcategoría o Residencia Definitiva.</td></tr>
  </tbody>
</table>

<h2>Documentos generales que debes preparar</h2>
<ul>
  <li><strong>Identificación:</strong> para solicitudes desde el extranjero, SERMIG exige pasaporte vigente. La excepción publicada permite a nacionales de Bolivia presentar DNI vigente al postular por reciprocidad.</li>
  <li><strong>Antecedentes penales o judiciales:</strong> para mayores de 18 años, emitidos por el país de origen o aquel donde se haya residido durante los últimos cinco años.</li>
  <li><strong>Fotografía reciente:</strong> a color, fondo blanco, rostro completo y sin accesorios.</li>
  <li><strong>Legalización:</strong> los documentos extranjeros deben estar apostillados o debidamente legalizados.</li>
  <li><strong>Traducción:</strong> los documentos en un idioma diferente del español o inglés requieren traducción oficial.</li>
</ul>
<p>Los antecedentes penales deben adjuntarse dentro de 60 días desde su emisión, salvo que el propio documento señale otra vigencia. Revisa nuevamente las fechas antes de enviar: un documento que vence durante el análisis puede ser requerido otra vez.</p>

<h2>Cómo presentar la solicitud</h2>
<ol>
  <li>Crea una cuenta o ingresa con ClaveÚnica en el Portal de Trámites Digitales de SERMIG.</li>
  <li>Selecciona Residencia Temporal y la subcategoría por reciprocidad internacional.</li>
  <li>Carga cada documento en el formato solicitado y comprueba su legibilidad.</li>
  <li>Revisa nombres, número de pasaporte y fechas antes de finalizar.</li>
  <li>Conserva el comprobante y consulta el estado exclusivamente en el portal.</li>
</ol>

<h2>Qué ocurre después de una aprobación</h2>
<p>Para una residencia concedida desde el extranjero, debes descargar el Estampado Electrónico y dispones de 90 días corridos para ingresar a Chile. La vigencia del permiso comienza con el ingreso al país. La Residencia Temporal puede concederse por hasta dos años, pero la duración concreta será la indicada en la resolución.</p>

<h2>Errores frecuentes</h2>
<ul>
  <li>Usar una lista general de miembros o asociados del MERCOSUR en vez de la nómina publicada por Chile.</li>
  <li>Entrar como turista pensando que la solicitud podrá iniciarse dentro del país.</li>
  <li>Confundir el documento aceptado para viajar con el requerido para solicitar residencia.</li>
  <li>Presentar antecedentes vencidos, sin apostilla o ilegibles.</li>
  <li>Comprar pasajes antes de tener una decisión favorable.</li>
</ul>

<p><a href="https://serviciomigraciones.cl/residencia-temporal/subcategorias/" target="_blank" rel="noopener noreferrer">Comprobar la subcategoría vigente en SERMIG</a>.</p>
$content$,
  faq_items = '[{"q":"¿Qué países califican actualmente?","a":"Argentina, Bolivia, Brasil, Paraguay y Uruguay, según la nómina vigente publicada por SERMIG."},{"q":"¿Puedo solicitarla desde Chile como turista?","a":"No. Esta subcategoría se presenta desde el extranjero."},{"q":"¿Necesito un contrato de trabajo?","a":"La nacionalidad comprendida es el fundamento de esta subcategoría; debes cumplir además sus requisitos documentales."},{"q":"¿Cuánto dura el permiso?","a":"La Residencia Temporal puede concederse por hasta dos años. La resolución indicará la vigencia concreta."}]'::jsonb,
  updated_at = NOW()
WHERE slug = 'residencia-temporal/mercosur';

UPDATE articles SET
  title = 'Residencia Temporal para trabajar en Chile: contrato u oferta',
  h1 = 'Residencia Temporal por actividades remuneradas: contrato, oferta y servicios',
  meta_description = 'Compara contrato, oferta laboral y prestación de servicios para solicitar Residencia Temporal desde el extranjero.',
  content = $content$
<h2>Qué permite esta subcategoría</h2>
<p>Está destinada a personas extranjeras que desean establecerse temporalmente en Chile para desarrollar actividades lícitas remuneradas. La solicitud debe iniciarse <strong>desde el extranjero</strong>; tener un contrato u oferta no convierte una estadía turística en residencia ni autoriza por sí solo a trabajar.</p>

<h2>Elige correctamente el respaldo laboral</h2>
<table>
  <thead><tr><th>Modalidad</th><th>Documento principal</th><th>Punto decisivo</th></tr></thead>
  <tbody>
    <tr><td>Trabajo dependiente</td><td>Contrato de trabajo</td><td>Existe subordinación y dependencia con un empleador domiciliado o con sucursal en Chile.</td></tr>
    <tr><td>Oferta laboral</td><td>Oferta formal aceptada</td><td>Puede originar un permiso inicial de 90 días; tras ingresar hay 45 días para presentar el contrato definitivo.</td></tr>
    <tr><td>Prestación de servicios</td><td>Contrato civil o mercantil</td><td>Se deben acreditar los servicios, la contraparte y la capacidad económica correspondiente.</td></tr>
  </tbody>
</table>

<h2>Contrato de trabajo: formalidades</h2>
<p>SERMIG indica que el empleador debe firmar el contrato ante notario chileno y que la persona extranjera debe firmarlo ante el consulado competente. El contrato debe ajustarse al Código del Trabajo. La documentación adicional del empleador cambia según se trate de una persona natural, una empresa con fines de lucro o una organización sin fines de lucro.</p>

<h2>Oferta laboral: no es igual a un contrato</h2>
<p>La oferta debe estar protocolizada ante notario público chileno y la aceptación de la persona solicitante debe firmarse ante el consulado. Si el análisis resulta favorable, SERMIG puede conceder un permiso por 90 días corridos. Desde el ingreso a Chile existen 45 días para presentar una copia autorizada del contrato celebrado con el mismo empleador y la constancia de su registro electrónico.</p>
<p>Si el contrato no se concreta, SERMIG puede dejar sin efecto ese permiso y disponer el abandono del país. No presentes una oferta simulada ni pagues por documentos laborales sin una relación real.</p>

<h2>Documentos personales comunes</h2>
<ul>
  <li>Pasaporte con una vigencia mínima de un año al presentar desde el exterior.</li>
  <li>Antecedentes penales o judiciales para mayores de 18 años, emitidos dentro de los 60 días previos, salvo otra vigencia indicada.</li>
  <li>Fotografía reciente con las características exigidas por el portal.</li>
  <li>Documentos extranjeros apostillados o legalizados y, cuando corresponda, traducidos oficialmente.</li>
</ul>

<h2>Antecedentes del empleador o contratante</h2>
<p>La ficha oficial puede exigir carpeta tributaria, inicio de actividades, acreditación de representación legal, vigencia de la personalidad jurídica, directorio y solvencia o liquidez suficiente. No basta con adjuntar el contrato: selecciona el tipo de empleador correcto y reúne los respaldos que aparecen para ese caso.</p>

<h2>Después de obtener el permiso</h2>
<p>En un permiso concedido desde el extranjero, la vigencia comienza al ingresar a Chile. Si ya eres titular de esta residencia, perder el empleo o cambiar voluntariamente de empleador no es por sí solo causal de revocación. La excepción práctica importante es el permiso inicial de 90 días basado en una oferta laboral, porque está condicionado a concretar el contrato informado.</p>

<h2>Lista de control antes de enviar</h2>
<ol>
  <li>Confirma si tu documento es contrato, oferta o prestación de servicios.</li>
  <li>Verifica firmas notariales o consulares según la modalidad.</li>
  <li>Comprueba vigencia, apostilla, traducción y legibilidad.</li>
  <li>Revisa que el empleador y quien firma tengan representación acreditada.</li>
  <li>No inicies actividades hasta contar con autorización vigente.</li>
</ol>

<p><a href="https://serviciomigraciones.cl/residencia-temporal/subcategorias/actividades-remuneradas/" target="_blank" rel="noopener noreferrer">Consultar requisitos oficiales por modalidad en SERMIG</a>.</p>
$content$,
  faq_items = '[{"q":"¿Puedo solicitar esta residencia desde Chile como turista?","a":"No. La solicitud de actividades remuneradas se presenta desde el extranjero."},{"q":"¿Contrato y oferta laboral producen el mismo permiso?","a":"No. La oferta puede originar un permiso inicial de 90 días condicionado a presentar el contrato definitivo después del ingreso."},{"q":"¿Qué pasa si cambio de empleador?","a":"Si ya eres titular del permiso, el cambio no es por sí solo causal de revocación; el permiso de 90 días basado en una oferta tiene reglas especiales."},{"q":"¿El contrato me autoriza inmediatamente a trabajar?","a":"No. Debes contar con el permiso o autorización migratoria correspondiente."}]'::jsonb,
  updated_at = NOW()
WHERE slug = 'residencia-temporal/contrato-trabajo';

UPDATE articles SET
  title = 'Cambio de subcategoría de Residencia Temporal: requisitos',
  h1 = 'Cómo cambiar de subcategoría o calidad de Residencia Temporal',
  meta_description = 'Quién puede cambiar de subcategoría, cuándo solicitarlo desde Chile y qué documentos exige SERMIG.',
  content = $content$
<h2>Qué trámite es</h2>
<p>Permite a una persona que <strong>ya posee Residencia Temporal</strong> solicitar otra subcategoría o cambiar su calidad entre titular y dependiente. Se presenta dentro de Chile en el Portal de Trámites Digitales de SERMIG.</p>

<h2>Qué trámite no es</h2>
<ul>
  <li>No es una conversión de turista o Permanencia Transitoria a residente.</li>
  <li>No reemplaza una primera solicitud de Residencia Temporal.</li>
  <li>No es lo mismo que prorrogar el permiso actual.</li>
  <li>No sustituye la solicitud de Residencia Definitiva.</li>
</ul>

<h2>Quién puede solicitarlo</h2>
<table>
  <thead><tr><th>Situación actual</th><th>Cambio posible</th></tr></thead>
  <tbody>
    <tr><td>Titular de Residencia Temporal</td><td>Cambiar a otra subcategoría si cumple todos sus requisitos.</td></tr>
    <tr><td>Dependiente de residente temporal</td><td>Cambiar a titular acreditando una subcategoría propia.</td></tr>
    <tr><td>Titular</td><td>Cambiar a dependiente si existe un vínculo admitido y se cumplen sus condiciones.</td></tr>
    <tr><td>Turista</td><td>Este trámite no corresponde.</td></tr>
  </tbody>
</table>

<h2>Cuándo presentarlo</h2>
<p>SERMIG señala que debe solicitarse antes de vencer el plazo para pedir la prórroga, con <strong>no más de 90 días de anticipación</strong> respecto del vencimiento. Esto significa que no conviene iniciarlo en cualquier momento del permiso ni dejarlo para después de su expiración.</p>

<h2>Documentación general</h2>
<ul>
  <li>Hoja de identificación del pasaporte o documento de identidad.</li>
  <li>Estampado Electrónico o visa consular, incluida la hoja con el timbre de ingreso cuando corresponda.</li>
  <li>Cédula de identidad emitida por Registro Civil.</li>
  <li>Antecedentes penales o equivalente del país de origen o residencia durante los últimos cinco años, para mayores de edad.</li>
  <li>Fotografía reciente.</li>
  <li>Todos los documentos específicos de la nueva subcategoría.</li>
</ul>
<p>Los antecedentes penales deben estar emitidos dentro de 60 días, salvo una vigencia distinta en el documento. Los documentos extranjeros requieren apostilla o legalización y, si no están en español o inglés, traducción oficial.</p>

<h2>Cómo decidir entre cambio, prórroga y definitiva</h2>
<ul>
  <li><strong>Cambio:</strong> tu fundamento migratorio o tu calidad de titular/dependiente será diferente.</li>
  <li><strong>Prórroga:</strong> mantienes la misma subcategoría y continúas cumpliéndola.</li>
  <li><strong>Residencia Definitiva:</strong> tu subcategoría la admite y ya reúnes el período y demás requisitos.</li>
</ul>

<h2>Errores que pueden debilitar la solicitud</h2>
<ol>
  <li>Elegir el trámite sin tener Residencia Temporal vigente.</li>
  <li>Presentar solo documentos generales y omitir los de la nueva subcategoría.</li>
  <li>Confundir una oferta laboral con un contrato definitivo.</li>
  <li>Enviar certificados vencidos o sin apostilla.</li>
  <li>Esperar hasta el vencimiento para revisar el expediente.</li>
</ol>

<p><a href="https://serviciomigraciones.cl/residencia-temporal/cambio-de-subcategoria-o-calidad/" target="_blank" rel="noopener noreferrer">Consultar el trámite oficial de cambio en SERMIG</a>.</p>
$content$,
  faq_items = '[{"q":"¿Puedo cambiar de turista a residente con este trámite?","a":"No. Está destinado a personas que ya poseen Residencia Temporal."},{"q":"¿Dónde se presenta?","a":"Dentro de Chile, mediante el Portal de Trámites Digitales de SERMIG."},{"q":"¿Cuándo puedo solicitarlo?","a":"Antes del vencimiento del plazo de prórroga y con no más de 90 días de anticipación al vencimiento."},{"q":"¿Debo cumplir los requisitos de la nueva subcategoría?","a":"Sí. El cambio no exime de acreditar sus condiciones y documentos específicos."}]'::jsonb,
  updated_at = NOW()
WHERE slug = 'residencia-temporal/cambio-categoria';

UPDATE articles SET
  title = 'Residencia Definitiva a los 12 meses: cuándo puede reducirse el plazo',
  h1 = 'Reducción a 12 meses para solicitar Residencia Definitiva',
  meta_description = 'La regla general es 24 meses. Revisa cuándo SERMIG puede reducir el plazo a 12 meses y qué antecedentes sirven.',
  content = $content$
<h2>La diferencia clave</h2>
<p>Para permisos temporales solicitados después del 14 de mayo de 2022, la referencia general es haber residido en Chile como titular durante al menos <strong>24 meses</strong>. La posibilidad de postular a los 12 meses es una reducción basada en circunstancias personales; no es un beneficio automático por tener contrato, cotizaciones o simplemente cumplir un año.</p>

<h2>Circunstancias que SERMIG puede considerar</h2>
<ul>
  <li>Vínculos familiares con personas chilenas o residentes definitivas.</li>
  <li>Misiones oficiales realizadas en Chile.</li>
  <li>Disponibilidad de rentas o pensiones.</li>
  <li>Inversiones realizadas o empresas con operación efectiva en Chile.</li>
  <li>Aportes en los ámbitos social, cultural, artístico, científico o deportivo.</li>
  <li>Casos contemplados en acuerdos internacionales ratificados por Chile y vigentes.</li>
</ul>
<p>La existencia de una circunstancia no garantiza la aprobación. Debes acreditarla y SERMIG evaluará el expediente completo.</p>

<h2>Qué documentos pueden respaldar cada situación</h2>
<table>
  <thead><tr><th>Circunstancia</th><th>Ejemplos de respaldo</th></tr></thead>
  <tbody>
    <tr><td>Vínculo familiar</td><td>Certificados oficiales de nacimiento, matrimonio o unión civil y prueba de nacionalidad o residencia del familiar.</td></tr>
    <tr><td>Rentas o pensiones</td><td>Certificados de pago, movimientos verificables y documentos que acrediten su origen y continuidad.</td></tr>
    <tr><td>Inversión o empresa</td><td>Antecedentes tributarios, societarios, bancarios y prueba de operación efectiva.</td></tr>
    <tr><td>Aporte especializado</td><td>Certificaciones, reconocimientos, contratos, publicaciones o documentos institucionales que demuestren el aporte.</td></tr>
  </tbody>
</table>
<p>Estos son ejemplos orientativos. El portal y cualquier requerimiento posterior determinan el expediente aplicable a tu caso.</p>

<h2>Las cotizaciones no crean por sí solas la reducción</h2>
<p>Las cotizaciones y la estabilidad laboral pueden servir para acreditar actividad e ingresos, pero SERMIG no publica el simple número de cotizaciones como una causal independiente que garantice la reducción a 12 meses.</p>

<h2>Ausencias y otros factores</h2>
<p>Las ausencias pueden aumentar el período exigido. SERMIG publica la siguiente referencia para residencias temporales posteriores al 14 de mayo de 2022:</p>
<table>
  <thead><tr><th>Ausencias continuas o discontinuas</th><th>Período mínimo de referencia</th></tr></thead>
  <tbody>
    <tr><td>Hasta 2 meses</td><td>24 meses</td></tr>
    <tr><td>Más de 2 y hasta 6 meses</td><td>30 meses</td></tr>
    <tr><td>Más de 6 y hasta 12 meses</td><td>36 meses</td></tr>
    <tr><td>Más de 12 meses</td><td>48 meses</td></tr>
  </tbody>
</table>
<p>También pueden influir la suficiencia y estabilidad de los ingresos, infracciones migratorias y otras infracciones relevantes. Por eso no conviene calcular el plazo usando solamente la fecha del Estampado Electrónico.</p>

<h2>Antes de presentar</h2>
<ol>
  <li>Confirma que tu subcategoría permite optar a Residencia Definitiva.</li>
  <li>Calcula residencia y ausencias con fechas documentadas.</li>
  <li>Identifica la circunstancia concreta que fundamentaría la reducción.</li>
  <li>Reúne pruebas verificables, no solo una carta explicativa.</li>
  <li>Si no existe un fundamento sólido para 12 meses, prepara la postulación bajo la regla general.</li>
</ol>

<p><a href="https://serviciomigraciones.cl/residencia-definitiva/" target="_blank" rel="noopener noreferrer">Revisar criterios y requisitos oficiales de Residencia Definitiva</a>.</p>
$content$,
  faq_items = '[{"q":"¿Al cumplir 12 meses ya puedo solicitar la definitiva?","a":"No automáticamente. La regla general es 24 meses y la reducción depende de circunstancias personales acreditadas."},{"q":"¿Doce cotizaciones garantizan la reducción?","a":"No. Pueden respaldar actividad e ingresos, pero no constituyen por sí solas una causal automática."},{"q":"¿Las salidas de Chile afectan el cálculo?","a":"Sí. SERMIG publica períodos de 30, 36 o 48 meses según la duración acumulada de las ausencias."},{"q":"¿Tener cónyuge chileno garantiza la aprobación?","a":"El vínculo puede fundamentar la reducción, pero SERMIG evalúa todos los requisitos del expediente."}]'::jsonb,
  updated_at = NOW()
WHERE slug = 'residencia-definitiva/reduccion-plazo-12-meses';

COMMIT;
