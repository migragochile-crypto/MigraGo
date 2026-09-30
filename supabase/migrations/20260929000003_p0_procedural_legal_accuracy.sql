-- Tercera ronda P0: procedimientos sancionatorios, recursos y expulsión.
-- Fuentes oficiales revisadas el 29-09-2026: SERMIG, Ley 21.325 y Ley 19.880.
BEGIN;

UPDATE articles SET
  title = 'Empadronamiento biométrico en Chile: qué fue y qué acredita',
  h1 = 'Empadronamiento biométrico: no es una vía automática de regularización',
  meta_description = 'Diferencia el empadronamiento biométrico extraordinario de 2023, la autodenuncia ante PDI y la declaración de infracción ante SERMIG.',
  content = $content$
<h2>Respuesta breve</h2>
<p>El empadronamiento biométrico extraordinario fue un proceso de identificación dirigido a personas que habían ingresado a Chile eludiendo el control migratorio. Su etapa presencial comenzó en 2023 y <strong>no debe presentarse como un trámite general, permanente ni como una vía automática de residencia</strong>.</p>

<h2>Qué registraba</h2>
<p>La PDI recopiló datos de identidad, fotografía y huellas dactilares para conocer e identificar a la población extranjera que había ingresado de manera irregular. Para participar en ese proceso extraordinario se exigieron condiciones y fechas de inscripción específicas.</p>

<h2>Tres actuaciones que no son equivalentes</h2>
<ul>
  <li><strong>Empadronamiento biométrico:</strong> proceso extraordinario de identificación. No otorgó residencia ni prometió una regularización futura.</li>
  <li><strong>Autodenuncia ante PDI por ingreso clandestino:</strong> informa a la policía que se eludió el control migratorio. Puede originar actuaciones de control o sancionatorias.</li>
  <li><strong>Declaración de infracción ante SERMIG:</strong> trámite digital para ciertas infracciones cometidas después de ingresar por un paso habilitado, como permiso vencido o trabajo sin autorización.</li>
</ul>

<h2>Qué hacer actualmente</h2>
<ol>
  <li>Identifica si ingresaste por un paso habilitado o eludiendo el control.</li>
  <li>Si ingresaste por paso habilitado y tienes una infracción admitida, revisa el trámite digital de SERMIG.</li>
  <li>Si el ingreso fue por paso no habilitado, existe una citación de PDI o una orden de expulsión, busca orientación jurídica individual antes de actuar.</li>
  <li>No pagues a terceros que prometan residencia por estar empadronado.</li>
</ol>

<h2>Fuentes oficiales</h2>
<ul>
  <li><a href="https://serviciomigraciones.cl/declarar-infraccion/" target="_blank" rel="noopener noreferrer">Declaración de infracción — SERMIG</a></li>
  <li><a href="https://serviciomigraciones.cl/sermig-y-pdi-firman-convenio-institucional-para-implementar-empadronamiento-biometrico/" target="_blank" rel="noopener noreferrer">Antecedentes del empadronamiento — SERMIG</a></li>
</ul>
$content$,
  faq_items = '[{"q":"¿Puedo inscribirme ahora en el empadronamiento de 2023?","a":"No debe asumirse que ese proceso extraordinario siga abierto. Revisa únicamente convocatorias oficiales vigentes."},{"q":"¿Estar empadronado concede residencia?","a":"No. El registro biométrico identifica a la persona, pero no otorga un permiso migratorio."},{"q":"¿Empadronamiento y declaración de infracción son lo mismo?","a":"No. Tienen objetivos, autoridades y supuestos diferentes."}]'::jsonb,
  updated_at = NOW()
WHERE slug = 'autodenuncia/empadronamiento-biometrico';

UPDATE articles SET
  title = 'Errores al enfrentar una infracción migratoria en Chile',
  h1 = 'Errores que debes evitar ante una infracción migratoria',
  meta_description = 'Evita confundir PDI con SERMIG, pagar sin finalizar el trámite o creer que una multa concede residencia en Chile.',
  content = $content$
<h2>1. Llamar “autodenuncia” a cualquier situación</h2>
<p>No existe un único procedimiento para toda irregularidad. SERMIG recibe en línea determinadas declaraciones de infracción de quienes ingresaron por un paso habilitado. PDI interviene en situaciones de control migratorio, incluido el ingreso eludiendo el control.</p>

<h2>2. Acudir a PDI por un permiso vencido sin revisar SERMIG</h2>
<p>Si ingresaste por un paso habilitado y tu permiso venció, trabajaste sin autorización o solicitaste tarde la cita para la cédula, revisa primero la causal correspondiente en el trámite oficial de SERMIG.</p>

<h2>3. Creer que pagar una multa concede residencia</h2>
<p>El pago resuelve la sanción declarada, pero no renueva el permiso, no autoriza a trabajar y no crea una subcategoría de residencia. La posibilidad de solicitar un permiso debe analizarse por separado.</p>

<h2>4. Confundir ingreso irregular con permiso vencido</h2>
<p>Eludir el control fronterizo y permanecer después del vencimiento de un permiso son hechos distintos. Usar el trámite equivocado puede retrasar el caso y exponer información sin comprender sus consecuencias.</p>

<h2>5. Ignorar una notificación o su plazo</h2>
<p>Una solicitud de antecedentes, un inicio de procedimiento sancionatorio, un pre rechazo y una expulsión tienen respuestas y plazos diferentes. Descarga la resolución completa, registra la fecha de notificación y actúa según el texto recibido.</p>

<h2>6. Presentar descargos genéricos</h2>
<p>Los descargos deben explicar los hechos y acompañar respaldo pertinente. En la declaración de infracción de SERMIG, la persona dispone de 10 días hábiles si decide presentar descargos.</p>

<h2>7. No finalizar el trámite después de pagar</h2>
<p>SERMIG indica que, después del pago en Tesorería, debes volver al portal y finalizar el trámite para que la sanción quede resuelta.</p>

<p><a href="https://serviciomigraciones.cl/declarar-infraccion/" target="_blank" rel="noopener noreferrer">Revisar procedimiento y causales oficiales en SERMIG</a>.</p>
$content$,
  faq_items = '[{"q":"¿Toda irregularidad se declara ante PDI?","a":"No. SERMIG tramita en línea determinadas infracciones de personas que ingresaron por pasos habilitados."},{"q":"¿Pagar la multa me permite trabajar?","a":"No. Se necesita una autorización migratoria o laboral vigente."},{"q":"¿Los descargos son obligatorios?","a":"No siempre. Si decides presentarlos en el procedimiento de SERMIG, debes hacerlo dentro del plazo informado."}]'::jsonb,
  updated_at = NOW()
WHERE slug = 'autodenuncia/errores-comunes';

UPDATE articles SET
  title = 'Multas migratorias en Chile: declaración, descargos y pago',
  h1 = 'Cómo resolver una multa migratoria ante SERMIG',
  meta_description = 'Causales, rebaja por declaración voluntaria, descargos, pago en Tesorería y límites del trámite de multas migratorias.',
  content = $content$
<h2>Quién puede utilizar el trámite digital</h2>
<p>La declaración de infracción de SERMIG está destinada a personas que ingresaron por un paso habilitado y deben declarar alguna de las causales admitidas: vencimiento del permiso, trabajo sin autorización o retraso en solicitar la cita para obtener cédula.</p>

<h2>Cómo se determina el monto</h2>
<p>El portal calcula la multa en UTM según la causal, la duración y si existe reincidencia. La declaración voluntaria produce la rebaja legal del 50%; la tabla publicada por SERMIG ya muestra esos valores rebajados.</p>

<h2>Decidir si presentar descargos</h2>
<p>Después del cálculo puedes aceptar el procedimiento o presentar descargos. Si eliges defender o explicar la situación, dispones de 10 días hábiles para aportar documentos. SERMIG menciona, entre otros respaldos posibles, finiquito, cotizaciones, informe social e informe médico.</p>

<h2>Pago y cierre</h2>
<ol>
  <li>Declara la causal y revisa cuidadosamente las fechas.</li>
  <li>Presenta descargos si corresponde a tu situación.</li>
  <li>Descarga la resolución que fija el monto definitivo.</li>
  <li>Paga mediante el enlace de Tesorería General de la República.</li>
  <li>Vuelve al portal y finaliza el trámite.</li>
</ol>

<h2>Qué no produce el pago</h2>
<p>Pagar una multa no concede residencia, no reactiva un permiso vencido y no autoriza a trabajar. Tampoco convierte una primera solicitud desde Chile en admisible si la subcategoría exige postular desde el extranjero.</p>

<h2>Casos que requieren otra revisión</h2>
<p>El ingreso por paso no habilitado, una expulsión vigente o una prohibición de ingreso no deben abordarse como si fueran simplemente una multa por permiso vencido. Busca orientación jurídica individual.</p>

<p><a href="https://serviciomigraciones.cl/declarar-infraccion/" target="_blank" rel="noopener noreferrer">Consultar tabla y trámite oficial</a>.</p>
$content$,
  faq_items = '[{"q":"¿La rebaja del 50% se solicita aparte?","a":"SERMIG indica que se aplica a la declaración voluntaria y que su tabla en línea ya publica los valores rebajados."},{"q":"¿Puedo salir de Chile con multas pendientes?","a":"SERMIG indica que deben pagarse las multas asociadas antes de abandonar el país."},{"q":"¿Los menores pagan multa migratoria?","a":"No. SERMIG señala que niños, niñas y adolescentes están exentos de estas sanciones."}]'::jsonb,
  updated_at = NOW()
WHERE slug = 'problemas-migratorios/multas-migratorias';

UPDATE articles SET
  title = 'Recurso administrativo ante SERMIG: plazo y estructura',
  h1 = 'Cómo impugnar una resolución migratoria que no sea de expulsión',
  meta_description = 'Diferencia reposición y jerárquico, revisa el plazo de cinco días y prepara un recurso administrativo ante SERMIG.',
  content = $content$
<h2>Primero identifica la resolución</h2>
<p>La Ley 21.325 permite impugnar mediante los recursos de la Ley 19.880 los actos migratorios que <strong>no sean una medida de expulsión</strong>. Una expulsión tiene una reclamación judicial especial y no debe tratarse con esta guía.</p>

<h2>Plazo y alternativas</h2>
<p>La reposición se presenta ante el mismo órgano dentro de cinco días desde la notificación. La Ley 19.880 permite interponer el recurso jerárquico de forma subsidiaria junto con la reposición o directamente ante el superior, cuando exista superior jerárquico. No conviene esperar el rechazo de la reposición suponiendo que siempre comenzará otro plazo.</p>

<h2>Efecto del recurso</h2>
<p>En materia migratoria, el artículo 140 de la Ley 21.325 dispone que la interposición de los recursos administrativos suspende los efectos del acto o resolución impugnada. Conserva el comprobante y revisa las notificaciones del expediente.</p>

<h2>Contenido mínimo</h2>
<ul>
  <li>Nombre, identificación y medio para recibir notificaciones.</li>
  <li>Resolución impugnada y fecha en que fue notificada.</li>
  <li>Hechos y razones concretas por las que solicitas su modificación.</li>
  <li>Petición clara y documentos que respalden cada argumento.</li>
  <li>Lugar, fecha, firma y órgano al que se dirige.</li>
</ul>

<h2>Antes de enviarlo</h2>
<ol>
  <li>Lee la resolución completa, incluida la sección de recursos.</li>
  <li>Confirma si el plazo está expresado en días hábiles.</li>
  <li>No copies un modelo genérico sin relacionarlo con la causal real.</li>
  <li>Si hay expulsión, prohibición de ingreso o riesgo de perder el plazo, solicita asistencia jurídica de inmediato.</li>
</ol>

<p><a href="https://serviciomigraciones.cl/residencia-definitiva/recurso-administrativo/" target="_blank" rel="noopener noreferrer">Ver orientación oficial de SERMIG</a>.</p>
$content$,
  faq_items = '[{"q":"¿Cuánto plazo tengo para la reposición?","a":"La Ley 19.880 establece cinco días desde la notificación. Revisa además las instrucciones de tu resolución."},{"q":"¿El recurso suspende la resolución?","a":"Sí. El artículo 140 de la Ley 21.325 establece ese efecto para los recursos administrativos migratorios."},{"q":"¿Esta vía sirve contra una expulsión?","a":"No. La expulsión se impugna mediante la reclamación judicial especial del artículo 141."}]'::jsonb,
  updated_at = NOW()
WHERE slug = 'problemas-migratorios/recurso-administrativo';

UPDATE articles SET
  title = 'Solicitud de residencia rechazada: descargos y recursos',
  h1 = 'Qué hacer ante un pre rechazo o rechazo de residencia',
  meta_description = 'Distingue pre rechazo y resolución final, controla los plazos y prepara descargos o un recurso administrativo ante SERMIG.',
  content = $content$
<h2>Pre rechazo y rechazo no son lo mismo</h2>
<p>Antes de rechazar una Residencia Temporal, SERMIG debe comunicar las razones que podrían fundar la decisión. Desde esa notificación existen 10 días hábiles para presentar antecedentes respecto de la causal invocada.</p>

<h2>Si recibiste un pre rechazo</h2>
<ol>
  <li>Descarga la notificación completa y registra la fecha de envío.</li>
  <li>Identifica cada causal, no solo el título del mensaje.</li>
  <li>Responde con documentos verificables y una explicación ordenada.</li>
  <li>Guarda el comprobante de presentación.</li>
</ol>
<p>Esta etapa permite corregir o aclarar el expediente antes de la resolución definitiva. No la confundas con un recurso.</p>

<h2>Si ya existe resolución de rechazo</h2>
<p>La resolución debe estar fundada y, si corresponde abandonar Chile, fijará un plazo que no puede ser inferior a cinco días. También debe indicar las vías de impugnación. Los recursos de la Ley 19.880 pueden suspender los efectos del acto conforme al artículo 140 de la Ley 21.325.</p>

<h2>Recurso o nueva solicitud</h2>
<p>No son opciones intercambiables. Un recurso discute la legalidad o fundamentos de una resolución dentro de un plazo breve. Una nueva solicitud debe ser admisible, cumplir la regla sobre lugar de postulación y acreditar una subcategoría vigente. Presentar otra solicitud no sustituye automáticamente un recurso ni elimina una orden de abandono.</p>

<h2>Cuándo buscar ayuda</h2>
<p>Obtén asesoría jurídica si la resolución menciona expulsión, prohibición de ingreso, documentos falsos, antecedentes penales, pérdida inmediata de un plazo o si existen niños y vínculos familiares que no fueron considerados.</p>

<p><a href="https://serviciomigraciones.cl/residencia-temporal/" target="_blank" rel="noopener noreferrer">Revisar proceso oficial de rechazo de Residencia Temporal</a>.</p>
$content$,
  faq_items = '[{"q":"¿Cuánto tiempo tengo para responder un pre rechazo?","a":"SERMIG informa un plazo de 10 días hábiles para aportar antecedentes sobre la causal comunicada."},{"q":"¿Un rechazo implica expulsión inmediata?","a":"No por sí solo. Lee la resolución: puede fijar una orden y plazo de abandono, además de informar los recursos disponibles."},{"q":"¿Puedo simplemente presentar otra solicitud?","a":"Solo si esa nueva solicitud es admisible y cumple sus requisitos. No reemplaza necesariamente la impugnación de la resolución anterior."}]'::jsonb,
  updated_at = NOW()
WHERE slug = 'problemas-migratorios/rechazo-visa';

UPDATE articles SET
  title = 'Expulsión de Chile: descargos y reclamación judicial',
  h1 = 'Qué hacer si recibes una notificación de expulsión',
  meta_description = 'Plazo para descargos, notificación policial y reclamación judicial de 10 días corridos contra una expulsión de Chile.',
  content = $content$
<h2>Actúa desde la primera notificación</h2>
<p>Una intención de expulsión, una citación policial y una resolución que ordena expulsar no son el mismo documento. Lee el encabezado, la autoridad, los fundamentos y la fecha de notificación. Por la gravedad y brevedad de los plazos, busca asistencia jurídica de inmediato.</p>

<h2>Descargos antes de la decisión</h2>
<p>En los casos en que la ley exige una etapa previa, la persona dispone de 10 días para presentar descargos respecto de la causal invocada. Deben acompañarse antecedentes verificables, por ejemplo sobre identidad, ingreso, arraigo familiar, salud, interés superior de niños y cualquier error de hecho.</p>

<h2>Notificación de la expulsión</h2>
<p>La medida debe notificarse personalmente por la policía, entregando copia íntegra e informando derechos, autoridad competente, plazo y datos de la Corporación de Asistencia Judicial. La ley contempla formas supletorias cuando la persona no es habida bajo las condiciones legales.</p>

<h2>Reclamación judicial especial</h2>
<p>El artículo 141 de la Ley 21.325 permite reclamar ante la Corte de Apelaciones del domicilio del reclamante dentro de <strong>10 días corridos</strong> desde la notificación. Puede presentarla la persona afectada o alguien en su nombre. Su interposición suspende la ejecución de la expulsión.</p>

<h2>No confundas las vías</h2>
<p>Las medidas de expulsión están exceptuadas del régimen general de recursos administrativos migratorios del artículo 139. Tampoco debe describirse el reclamo especial como si fuera indistintamente un recurso de protección o un amparo. La estrategia judicial depende de la resolución y de los hechos concretos.</p>

<h2>Asistencia jurídica</h2>
<p>La ley reconoce acceso a defensa jurídica mediante las Corporaciones de Asistencia Judicial en igualdad de condiciones que las personas chilenas. Lleva la resolución completa, comprobante de notificación y todos los documentos del caso.</p>

<p><a href="https://www.bcn.cl/leychile/navegar?idNorma=1158549" target="_blank" rel="noopener noreferrer">Consultar la Ley 21.325 actualizada</a>.</p>
$content$,
  faq_items = '[{"q":"¿Cuánto plazo hay para reclamar judicialmente?","a":"Diez días corridos desde la notificación de la resolución de expulsión."},{"q":"¿La reclamación suspende la expulsión?","a":"Sí. El artículo 141 dispone que su interposición suspende la ejecución de la orden."},{"q":"¿Necesito actuar antes de la resolución final?","a":"Si recibiste una notificación previa para formular descargos, no debes esperar: esa etapa tiene su propio plazo."}]'::jsonb,
  updated_at = NOW()
WHERE slug = 'problemas-migratorios/expulsion-administrativa';

COMMIT;
