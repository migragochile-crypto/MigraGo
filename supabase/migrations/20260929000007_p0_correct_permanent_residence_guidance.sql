-- Corrección integral de Residencia Definitiva según SERMIG, revisado el 29-09-2026.
BEGIN;

UPDATE articles SET
  title='Residencia Definitiva en Chile: requisitos, plazos y solicitud',
  h1='Residencia Definitiva en Chile: cómo saber cuándo puedes solicitarla',
  meta_description='Regla general de 24 meses, reducción a 12, efecto de las ausencias, documentos y solicitud de Residencia Definitiva.',
  content=$content$
<h2>Qué es</h2><p>La Residencia Definitiva permite radicarse indefinidamente en Chile y desarrollar cualquier actividad lícita. Está dirigida a titulares de Residencia Temporal cuya subcategoría admita postular.</p>
<h2>Cuánto tiempo se exige</h2><p>Para Residencias Temporales solicitadas después del 14 de mayo de 2022, la regla general publicada por SERMIG es <strong>24 meses</strong> como residente temporal. El plazo puede reducirse a 12 meses por circunstancias personales acreditadas o aumentar por ausencias y otros factores. Cumplir un año o tener 12 cotizaciones no crea por sí solo un derecho automático.</p>
<table><thead><tr><th>Ausencias acumuladas</th><th>Período mínimo publicado</th></tr></thead><tbody><tr><td>Hasta 2 meses</td><td>24 meses</td></tr><tr><td>Más de 2 y hasta 6 meses</td><td>30 meses</td></tr><tr><td>Más de 6 y hasta 12 meses</td><td>36 meses</td></tr><tr><td>Más de 12 meses</td><td>48 meses</td></tr></tbody></table>
<h2>Cuándo presentar</h2><p>La solicitud se presenta antes de vencer el plazo para pedir la prórroga de la Residencia Temporal, con no más de 90 días de anticipación al vencimiento. Se realiza en el Portal de Trámites Digitales de SERMIG.</p>
<h2>Documentos generales</h2><ul><li>Antecedentes penales o judiciales del país de origen, vigentes, apostillados o legalizados y traducidos si corresponde, para mayores de 18 años.</li><li>Identificación del país de origen.</li><li>Cédula de identidad chilena para extranjeros, para mayores de 18 años.</li><li>Estampado Electrónico de Residencia Temporal o documento equivalente aplicable.</li><li>Fotografía reciente.</li><li>Antecedentes específicos de vínculo, actividad, ingresos o sustento.</li></ul>
<h2>Factores de evaluación</h2><p>SERMIG puede considerar suficiencia de medios de vida, estabilidad laboral, ausencias, infracciones migratorias y otras infracciones relevantes. La estabilidad laboral se relaciona con acreditar actividades económicas lícitas durante al menos la mitad del período de Residencia Temporal; no exige necesariamente un solo empleador.</p>
<h2>Después de enviar</h2><p>Si faltan antecedentes, SERMIG puede otorgar 60 días corridos para incorporarlos. Debes utilizar la bandeja del portal, adjuntar lo solicitado y finalizar el trámite. Si la Residencia Definitiva es rechazada con otorgamiento de una Temporal, puedes aceptar ese permiso o evaluar un recurso administrativo.</p>
<p><a href="https://serviciomigraciones.cl/residencia-definitiva/" target="_blank" rel="noopener noreferrer">Consultar la ficha oficial de SERMIG</a>.</p>
$content$,
  faq_items='[{"q":"¿La regla general es uno o dos años?","a":"Para solicitudes temporales posteriores al 14 de mayo de 2022, SERMIG publica 24 meses como regla general."},{"q":"¿Puedo solicitar a los 12 meses?","a":"Puede evaluarse una reducción por circunstancias personales acreditadas; no es automática."},{"q":"¿Las ausencias influyen?","a":"Sí. SERMIG publica períodos de 30, 36 o 48 meses según la duración acumulada de las ausencias."},{"q":"¿Cuándo se presenta?","a":"Antes del vencimiento del plazo de prórroga y con no más de 90 días de anticipación al vencimiento."}]'::jsonb,
  updated_at=NOW()
WHERE slug='residencia-definitiva';

UPDATE articles SET
  title='Requisitos para la Residencia Definitiva en Chile',
  h1='Requisitos y documentos para solicitar Residencia Definitiva',
  meta_description='Revisa residencia previa, ausencias, documentos generales, ingresos y requisitos específicos para la Residencia Definitiva.',
  content=$content$
<h2>Condiciones previas</h2><ul><li>Ser titular de una Residencia Temporal cuya subcategoría permita acceder a Residencia Definitiva.</li><li>Mantener el permiso en la condición exigida al momento de solicitar.</li><li>Cumplir el período aplicable: 24 meses como regla general para permisos posteriores al 14 de mayo de 2022, sin perjuicio de reducción o aumento.</li><li>Presentar dentro de la oportunidad indicada por SERMIG.</li></ul>
<h2>Documentación general</h2><ol><li>Certificado de antecedentes penales o judiciales del país de origen, para mayores de 18 años.</li><li>Hoja de identificación del pasaporte o documento de identidad del país de origen.</li><li>Cédula chilena para extranjeros, para mayores de 18 años.</li><li>Estampado Electrónico de la Residencia Temporal o el documento migratorio equivalente aplicable.</li><li>Fotografía reciente en formato JPG o PNG.</li></ol>
<p>Los antecedentes penales extranjeros deben tener una vigencia no superior a 60 días desde su emisión. Los documentos extranjeros deben estar apostillados o legalizados y traducidos oficialmente si no están en español o inglés.</p>
<h2>Actividad e ingresos</h2><p>El respaldo depende de la situación. Un trabajador dependiente puede necesitar contrato registrado o formalizado, certificado de vigencia, remuneraciones y cotizaciones previsionales y de salud. Una persona independiente puede acreditar inicio de actividades, boletas, carpeta tributaria y cotizaciones. Rentistas, jubilados, comerciantes, empresarios y personas sostenidas por terceros tienen listas propias.</p>
<h2>Vínculos familiares</h2><p>Si invocas vínculo con una persona chilena o residente definitiva, adjunta los certificados que lo acrediten —matrimonio, AUC o nacimiento según el caso— y los documentos de ingresos propios o del sostenedor. El vínculo puede influir en una reducción a 12 meses, pero no elimina automáticamente el período ni los demás requisitos.</p>
<h2>Vigencia y formato</h2><ul><li>Documentos privados: deben adjuntarse dentro de 30 días desde su emisión.</li><li>Documentos públicos: dentro de 60 días, salvo que indiquen otra vigencia.</li><li>Archivos: SERMIG indica formato PDF para documentos y el formato específico para la fotografía.</li></ul>
<h2>Antes de enviar</h2><ol><li>Comprueba tu subcategoría y plazo.</li><li>Calcula las ausencias.</li><li>Selecciona tu tipo real de actividad o sustento.</li><li>Verifica fechas, apostillas, traducciones y legibilidad.</li><li>Conserva el comprobante y revisa la bandeja del portal.</li></ol>
<p><a href="https://serviciomigraciones.cl/residencia-definitiva/" target="_blank" rel="noopener noreferrer">Ver lista oficial según cada situación</a>.</p>
$content$,
  faq_items='[{"q":"¿Basta con un año de Residencia Temporal?","a":"No como regla general. SERMIG publica 24 meses, con posibles reducciones o aumentos según el caso."},{"q":"¿Qué vigencia tienen los antecedentes extranjeros?","a":"No superior a 60 días desde su emisión, según la ficha oficial."},{"q":"¿Todos presentan los mismos documentos de ingresos?","a":"No. Cambian según trabajo dependiente, independiente, pensión, rentas, empresa o sostenedor."},{"q":"¿El vínculo chileno elimina el plazo?","a":"No automáticamente. Puede fundamentar una reducción a 12 meses y deben cumplirse los demás requisitos."}]'::jsonb,
  updated_at=NOW()
WHERE slug='residencia-definitiva/requisitos';

UPDATE articles SET
  title='Documentos para Residencia Definitiva: lista por situación',
  h1='Cómo preparar los documentos de Residencia Definitiva',
  meta_description='Documentos generales, vigencias, apostilla y respaldos de ingresos para solicitar Residencia Definitiva en Chile.',
  content=$content$
<h2>La lista no es igual para todas las personas</h2><p>SERMIG combina documentos generales con antecedentes específicos de actividad, sustento y vínculos. Una lista descargada de terceros no reemplaza lo que aparece en tu formulario.</p>
<h2>Documentos generales</h2><ul><li>Antecedentes penales o judiciales del país de origen para mayores de edad.</li><li>Identificación del país de origen.</li><li>Cédula chilena para extranjeros.</li><li>Estampado Electrónico de Residencia Temporal.</li><li>Fotografía reciente.</li></ul>
<h2>Formalidades</h2><ul><li>Antecedentes penales: hasta 60 días desde su emisión.</li><li>Documentos extranjeros: apostillados o legalizados.</li><li>Idiomas distintos del español o inglés: traducción oficial.</li><li>Documentos privados: adjuntar dentro de 30 días desde su emisión.</li><li>Documentos públicos: dentro de 60 días, salvo vigencia diferente.</li><li>Documentos: formato PDF y completamente legibles.</li></ul>
<h2>Según actividad o sustento</h2><table><thead><tr><th>Situación</th><th>Respaldos habituales publicados</th></tr></thead><tbody><tr><td>Dependiente</td><td>Contrato o registro electrónico, vigencia, remuneraciones, AFP y salud.</td></tr><tr><td>Independiente</td><td>Inicio de actividades, boletas, carpeta tributaria y cotizaciones cuando corresponda.</td></tr><tr><td>Rentista o jubilado</td><td>Origen y pagos de rentas o pensiones.</td></tr><tr><td>Comerciante o empresario</td><td>Carpeta tributaria, sociedad, impuestos y vigencia.</td></tr><tr><td>Sostenido por otra persona</td><td>Vínculo, declaración de expensas y documentos de ingresos del sostenedor.</td></tr></tbody></table>
<h2>Evita estos errores</h2><ul><li>Sustituir antecedentes penales con una declaración jurada sin instrucción oficial.</li><li>Usar una vigencia genérica de 90 días para todos los documentos.</li><li>Presentar un simple comprobante de domicilio como si reemplazara ingresos.</li><li>Omitir reverso, apostilla o anexos del contrato.</li><li>No finalizar el envío de documentos adicionales.</li></ul>
<p><a href="https://serviciomigraciones.cl/residencia-definitiva/" target="_blank" rel="noopener noreferrer">Consultar documentos oficiales</a>.</p>
$content$,
  faq_items='[{"q":"¿Puedo reemplazar antecedentes extranjeros por declaración jurada?","a":"No lo asumas. Presenta el documento exigido o sigue una instrucción expresa de SERMIG para tu caso."},{"q":"¿Los documentos duran 90 días?","a":"No como regla general. SERMIG publica 30 días para documentos privados y 60 para públicos, salvo otra vigencia."},{"q":"¿Necesito antecedentes penales de Chile?","a":"La lista general vigente publicada por SERMIG identifica antecedentes del país de origen; sigue además lo que solicite tu formulario individual."}]'::jsonb,
  updated_at=NOW()
WHERE slug='residencia-definitiva/documentos';

UPDATE articles SET
  title='Cómo calcular el plazo para la Residencia Definitiva',
  h1='Calcula residencia y ausencias antes de solicitar la Definitiva',
  meta_description='Regla de 24 meses, tabla de ausencias y reducción excepcional a 12 meses para la Residencia Definitiva.',
  content=$content$
<h2>Regla base</h2><p>Para titulares de Residencia Temporal de solicitudes posteriores al 14 de mayo de 2022, SERMIG publica un mínimo general de 24 meses. El cálculo debe hacerse sobre el período en calidad de residente temporal y contrastarse con el historial migratorio.</p>
<h2>Tabla oficial de ausencias</h2><table><thead><tr><th>Meses fuera de Chile</th><th>Residencia mínima</th></tr></thead><tbody><tr><td>Hasta 2 meses</td><td>24 meses</td></tr><tr><td>Más de 2 y hasta 6</td><td>30 meses</td></tr><tr><td>Más de 6 y hasta 12</td><td>36 meses</td></tr><tr><td>Más de 12</td><td>48 meses</td></tr></tbody></table>
<p>Las ausencias se consideran continuas o discontinuas. No uses reglas informales de 90 o 180 días ni asumas que una salida simplemente “reinicia” el conteo.</p>
<h2>Reducción a 12 meses</h2><p>Puede evaluarse por vínculos familiares con chilenos o residentes definitivos, misiones oficiales, rentas o pensiones, inversiones o empresas operativas, aportes sociales, culturales, artísticos, científicos o deportivos y acuerdos internacionales vigentes. La reducción requiere acreditación y no está garantizada.</p>
<h2>Otros factores</h2><p>SERMIG también puede considerar medios de vida insuficientes, falta de estabilidad laboral, infracciones migratorias y otras infracciones. La estabilidad se relaciona con acreditar actividad económica lícita durante al menos la mitad del período temporal.</p>
<h2>Método práctico</h2><ol><li>Identifica la Residencia Temporal que posees y si admite Definitiva.</li><li>Reúne las fechas oficiales de vigencia.</li><li>Suma todas las ausencias.</li><li>Aplica la tabla correspondiente.</li><li>Comprueba si existe un fundamento documentable para reducción.</li><li>Presenta con no más de 90 días de anticipación al vencimiento.</li></ol>
<p><a href="https://serviciomigraciones.cl/residencia-definitiva/" target="_blank" rel="noopener noreferrer">Ver criterios oficiales</a>.</p>
$content$,
  faq_items='[{"q":"¿Desde cuándo cuento?","a":"Debes revisar el período en calidad de residente temporal que registra SERMIG y las fechas de tu permiso; no uses la entrada como turista."},{"q":"¿Doce cotizaciones reducen el plazo?","a":"No automáticamente. Sirven como respaldo económico, pero no son una causal independiente publicada para garantizar 12 meses."},{"q":"¿Las ausencias se suman?","a":"Sí. La tabla oficial considera ausencias continuas o discontinuas."}]'::jsonb,
  updated_at=NOW()
WHERE slug='residencia-definitiva/como-calcular-plazo';

UPDATE articles SET
  title='Residencia Definitiva con cónyuge o vínculo chileno',
  h1='Cómo influye un vínculo chileno en la Residencia Definitiva',
  meta_description='El vínculo puede fundamentar una reducción a 12 meses, pero no elimina la Residencia Temporal ni garantiza aprobación.',
  content=$content$
<h2>Lo esencial</h2><p>Tener cónyuge, conviviente civil, padre, madre o hijo chileno puede ser relevante para la Residencia Definitiva y sus documentos. Sin embargo, <strong>no permite solicitarla directamente desde turismo ni elimina automáticamente el período de Residencia Temporal</strong>.</p>
<h2>Posible reducción a 12 meses</h2><p>Los vínculos familiares con personas chilenas o residentes definitivas están entre las circunstancias que SERMIG puede considerar para reducir el mínimo general de 24 a 12 meses. La reducción se evalúa junto con los demás requisitos y no es automática.</p>
<h2>Documentos según el vínculo</h2><ul><li>Cónyuge: certificado de matrimonio y nacimiento del cónyuge.</li><li>Conviviente civil: certificado de AUC y nacimiento del conviviente.</li><li>Padre o madre: certificados que construyan la filiación.</li><li>Hijo: certificado de nacimiento que identifique a sus padres.</li></ul><p>Los documentos obligatorios deben ser verificables electrónicamente o cumplir la formalización notarial indicada por SERMIG.</p>
<h2>Ingresos o sustento</h2><p>Si trabajas, debes acompañar los respaldos de tu actividad. Si otra persona te sostiene, se exige declaración de expensas y documentos que prueben sus ingresos. El vínculo familiar no sustituye esta evaluación.</p>
<h2>Ruta correcta</h2><ol><li>Obtén una Residencia Temporal aplicable.</li><li>Mantén el permiso vigente y documenta el vínculo.</li><li>Calcula residencia y ausencias.</li><li>Reúne certificados e ingresos.</li><li>Presenta dentro de la oportunidad oficial.</li></ol>
<p><a href="https://serviciomigraciones.cl/residencia-definitiva/" target="_blank" rel="noopener noreferrer">Revisar requisitos por vínculo</a>.</p>
$content$,
  faq_items='[{"q":"¿Puedo pasar directamente de turista a Residencia Definitiva por matrimonio?","a":"No. La Definitiva está dirigida a titulares de Residencia Temporal cuya subcategoría la admita."},{"q":"¿El vínculo reduce siempre a 12 meses?","a":"No. Puede fundamentar una reducción, pero SERMIG evalúa el expediente completo."},{"q":"¿El AUC sirve como vínculo?","a":"SERMIG publica documentos específicos para convivientes civiles, pero deben cumplirse todos los demás requisitos."}]'::jsonb,
  updated_at=NOW()
WHERE slug='residencia-definitiva/via-conyugue';

UPDATE articles SET
  title='Residencia Definitiva y trabajo: ingresos, cotizaciones y estabilidad',
  h1='Cómo acreditar trabajo para la Residencia Definitiva',
  meta_description='Qué documentos presentan trabajadores dependientes e independientes y por qué las cotizaciones no garantizan la Definitiva.',
  content=$content$
<h2>No existe una aprobación automática “por trabajo”</h2><p>El empleo y las cotizaciones sirven para acreditar actividad, ingresos y estabilidad. El solicitante debe además cumplir el período de residencia, la regla de ausencias, la subcategoría aplicable y los demás requisitos.</p>
<h2>Período de residencia</h2><p>La regla general es 24 meses para Residencias Temporales posteriores al 14 de mayo de 2022. Doce cotizaciones no reducen automáticamente ese plazo. SERMIG puede considerar falta de estabilidad cuando no se acreditan actividades económicas lícitas durante al menos la mitad del período temporal.</p>
<h2>Trabajador dependiente</h2><ul><li>Contrato y anexos formalizados o constancia de registro electrónico.</li><li>Certificado de vigencia del contrato.</li><li>Liquidaciones de remuneraciones.</li><li>Cartola histórica de AFP.</li><li>Cotizaciones de salud pagadas.</li></ul>
<h2>Trabajador independiente</h2><ul><li>Inicio de actividades.</li><li>Informe anual y boletas de honorarios.</li><li>Carpeta tributaria.</li><li>Cotizaciones previsionales y de salud cuando correspondan.</li></ul>
<h2>Cambios de empleador y períodos sin trabajo</h2><p>No inventes una regla de empleo ininterrumpido. Presenta un historial coherente con contratos, finiquitos, cotizaciones y nuevos empleos. SERMIG evalúa la estabilidad y los medios de vida sobre el expediente completo.</p>
<h2>Lista final</h2><ol><li>Calcula el plazo y las ausencias.</li><li>Descarga respaldos oficiales, no capturas informales.</li><li>Explica períodos sin actividad cuando sea necesario.</li><li>Verifica que datos y fechas coincidan.</li><li>Mantén disponibles documentos actualizados por si son requeridos.</li></ol>
<p><a href="https://serviciomigraciones.cl/residencia-definitiva/" target="_blank" rel="noopener noreferrer">Consultar documentos económicos oficiales</a>.</p>
$content$,
  faq_items='[{"q":"¿Necesito trabajar los 24 meses completos?","a":"SERMIG evalúa estabilidad e informa como factor la actividad económica lícita durante al menos la mitad del período temporal."},{"q":"¿Cambiar de empleador impide postular?","a":"No por sí solo. Debes documentar de forma coherente los distintos períodos y mantener los demás requisitos."},{"q":"¿Doce cotizaciones garantizan la Definitiva?","a":"No. Son evidencia económica, no una garantía ni una causal automática de reducción."}]'::jsonb,
  updated_at=NOW()
WHERE slug='residencia-definitiva/via-trabajo';

UPDATE articles SET
  title='Cuánto demora la Residencia Definitiva y cómo seguirla',
  h1='Seguimiento de una solicitud de Residencia Definitiva',
  meta_description='SERMIG no garantiza un rango único. Revisa el estado, responde requerimientos y evita estimaciones sin fuente.',
  content=$content$
<h2>No existe un plazo único garantizado</h2><p>La ficha oficial de SERMIG no publica un rango general de tres, seis o nueve meses que pueda prometerse para todos los expedientes. El tiempo depende del análisis, antecedentes y requerimientos. Los rangos atribuidos a “experiencias reales” no sustituyen una estadística oficial.</p>
<h2>Cómo consultar</h2><ol><li>Ingresa al Portal de Trámites Digitales.</li><li>Abre la consulta de estado con la cuenta utilizada.</li><li>Revisa la bandeja y el correo registrado.</li><li>Descarga cada notificación y guarda el comprobante.</li></ol>
<h2>Si solicitan documentos</h2><p>SERMIG informa 60 días corridos para adjuntar antecedentes requeridos. Debes ingresar desde la notificación, cargar lo solicitado y finalizar el trámite. Una carga incompleta puede no quedar recepcionada.</p>
<h2>Mientras esperas</h2><p>Utiliza únicamente el certificado o comprobante oficial vigente para acreditar tu situación. No asumas autorizaciones laborales o de viaje que el documento no indique expresamente.</p>
<h2>Demora prolongada</h2><p>Comprueba primero que no exista una notificación pendiente. Luego utiliza los canales de ayuda de SERMIG con tu número de solicitud. Si hay perjuicio serio, una orden de abandono o un plazo judicial, busca asesoría jurídica.</p>
<p><a href="https://serviciomigraciones.cl/residencia-definitiva/etapas/" target="_blank" rel="noopener noreferrer">Revisar etapas oficiales</a>.</p>
$content$,
  faq_items='[{"q":"¿Cuánto demora?","a":"SERMIG no publica en su ficha un rango único garantizado para todos los casos."},{"q":"¿Cuánto tengo para aportar documentos?","a":"SERMIG informa 60 días corridos desde la notificación."},{"q":"¿Puedo trabajar con cualquier comprobante?","a":"Debes revisar qué acredita y autoriza expresamente el documento oficial que tienes vigente."}]'::jsonb,
  updated_at=NOW()
WHERE slug='residencia-definitiva/cuanto-demora';

UPDATE articles SET
  title='Rechazo de Residencia Definitiva: resolución y recurso',
  h1='Qué hacer si rechazan tu Residencia Definitiva',
  meta_description='Lee la causal, distingue otorgamiento temporal y presenta un recurso administrativo dentro del plazo aplicable.',
  content=$content$
<h2>Lee primero la decisión completa</h2><p>Un rechazo puede venir acompañado del otorgamiento de una Residencia Temporal. En ese caso puedes aceptar el permiso concedido o evaluar un recurso administrativo para que se reconsidere la Definitiva.</p>
<h2>Identifica la causal real</h2><ul><li>Período de residencia o ausencias.</li><li>Ingresos o estabilidad insuficientemente acreditados.</li><li>Documentos incompletos, vencidos o inconsistentes.</li><li>Infracciones migratorias u otras circunstancias evaluadas.</li><li>Subcategoría que no permite acceder al beneficio.</li></ul><p>No atribuyas el rechazo automáticamente a “lagunas de cotizaciones”: la resolución debe indicar su fundamento.</p>
<h2>Recurso administrativo</h2><p>SERMIG informa que el recurso contra el rechazo de Residencia Definitiva debe interponerse dentro de los cinco días siguientes a la notificación, o utilizar los recursos de la Ley 19.880 según corresponda. Se presenta en el Portal de Trámites Digitales desde Chile y deben acompañarse argumentos y documentos pertinentes.</p>
<h2>Antes de enviar</h2><ol><li>Registra la fecha de notificación.</li><li>Relaciona cada argumento con la causal.</li><li>Adjunta antecedentes nuevos o aclaratorios.</li><li>Formula una petición concreta.</li><li>Conserva el comprobante.</li></ol>
<p>No presentes una nueva solicitud suponiendo que elimina la resolución anterior. Si hay orden de abandono, expulsión o prohibición, solicita orientación jurídica inmediata.</p>
<p><a href="https://serviciomigraciones.cl/residencia-definitiva/recurso-administrativo/" target="_blank" rel="noopener noreferrer">Ver recurso oficial de Residencia Definitiva</a>.</p>
$content$,
  faq_items='[{"q":"¿Cuánto plazo tengo?","a":"SERMIG informa cinco días siguientes a la notificación para el recurso específico de Residencia Definitiva; revisa tu resolución."},{"q":"¿Puedo aceptar la Temporal otorgada?","a":"Sí. Si el rechazo concede una Residencia Temporal, puedes aceptarla o evaluar el recurso."},{"q":"¿Una nueva solicitud sustituye el recurso?","a":"No necesariamente. Son vías distintas y debes considerar la resolución vigente y sus efectos."}]'::jsonb,
  updated_at=NOW()
WHERE slug='residencia-definitiva/rechazo';

COMMIT;
