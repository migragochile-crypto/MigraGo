-- Correcciones P0 verificadas con las fichas oficiales de SERMIG el 29-09-2026.
BEGIN;

UPDATE articles SET
  title = 'Residencia Temporal en Chile: categorías y lugar de solicitud',
  h1 = 'Residencia Temporal en Chile: categorías y lugar de solicitud',
  meta_description = 'Categorías de Residencia Temporal, regla de solicitud desde el extranjero y excepciones para postular dentro de Chile.',
  content = $html$
<h2>Qué es la Residencia Temporal</h2><p>Es el permiso que autoriza a una persona extranjera a establecerse en Chile por un tiempo limitado. La subcategoría depende del fundamento de la solicitud.</p>
<h2>La primera pregunta: ¿dónde estás?</h2><p>La regla general es que las solicitudes de Residencia Temporal se presentan <strong>desde el extranjero</strong>. Ingresar con Permanencia Transitoria no permite cambiar libremente a residencia dentro de Chile.</p><p>SERMIG publica excepciones para ciertos vínculos familiares, dependientes, razones humanitarias y otros casos expresamente calificados. Tener contrato, oferta laboral o una nacionalidad determinada no reemplaza esa revisión.</p>
<h2>Actividades remuneradas</h2><p>La residencia para desarrollar actividades remuneradas se solicita desde el extranjero. Un contrato u oferta puede respaldar la solicitud, pero no autoriza por sí solo a postular desde Chile ni a comenzar a trabajar.</p>
<h2>Antes de iniciar</h2><ol><li>Confirma si estás dentro o fuera de Chile.</li><li>Identifica tu permiso actual y su vigencia.</li><li>Revisa la ficha oficial de la subcategoría.</li><li>Comprueba desde dónde admite la postulación.</li><li>Si existe rechazo, abandono, expulsión o ingreso por paso no habilitado, busca orientación individual.</li></ol>
<p><a href="https://serviciomigraciones.cl/residencia-temporal/subcategorias/" target="_blank" rel="noopener noreferrer">Consultar las subcategorías oficiales en SERMIG</a>.</p>$html$,
  faq_items = '[{"q":"¿Puedo solicitar Residencia Temporal estando como turista en Chile?","a":"No como regla general. Las personas con Permanencia Transitoria dentro de Chile no pueden postular, salvo excepciones expresamente publicadas por SERMIG."},{"q":"¿Un contrato me permite postular desde Chile?","a":"No. La residencia para actividades remuneradas se solicita desde el extranjero."},{"q":"¿Pagar una multa me permite solicitar residencia?","a":"No por sí solo. Resolver una infracción y cumplir los requisitos de una residencia son procesos distintos."}]'::jsonb,
  updated_at = NOW()
WHERE slug = 'residencia-temporal';

UPDATE articles SET
  title = 'Residencia Temporal para trabajar en Chile con contrato',
  h1 = 'Residencia Temporal para trabajar en Chile con contrato',
  meta_description = 'Requisitos generales de la residencia para actividades remuneradas y por qué debe solicitarse desde el extranjero.',
  content = $html$<h2>Dónde se solicita</h2><p>La Residencia Temporal para actividades lícitas remuneradas debe solicitarse <strong>desde el extranjero</strong> en el portal de SERMIG. Estar en Chile como turista y conseguir un contrato no habilita una postulación dentro del país.</p><h2>Qué acredita el contrato</h2><p>El contrato respalda el fundamento laboral, pero no garantiza la aprobación ni autoriza por sí solo a trabajar. Debes cumplir las formalidades y adjuntar los documentos personales, antecedentes y respaldos del empleador exigidos por SERMIG.</p><h2>Antes de postular</h2><ul><li>Comprueba que estás fuera de Chile.</li><li>Revisa la vigencia de pasaporte, antecedentes y documentos privados.</li><li>Confirma las formalidades de firma.</li><li>No trabajes sin un documento que te habilite.</li></ul><p><a href="https://serviciomigraciones.cl/residencia-temporal/subcategorias/actividades-remuneradas/" target="_blank" rel="noopener noreferrer">Revisar requisitos oficiales</a>.</p>$html$,
  faq_items = '[{"q":"¿Puedo solicitarlo desde Chile como turista?","a":"No como regla general. La solicitud se realiza desde el extranjero."},{"q":"¿El contrato me autoriza inmediatamente a trabajar?","a":"No. Necesitas un permiso o autorización vigente."},{"q":"¿El contrato garantiza la residencia?","a":"No. SERMIG evalúa el expediente completo."}]'::jsonb,
  updated_at = NOW()
WHERE slug = 'residencia-temporal/contrato-trabajo';

UPDATE articles SET
  title = 'Residencia Temporal con oferta de trabajo: requisitos y límites',
  h1 = 'Residencia Temporal con oferta de trabajo en Chile',
  meta_description = 'Cómo funciona una oferta laboral para solicitar Residencia Temporal desde el extranjero.',
  content = $html$<h2>Qué función cumple la oferta</h2><p>Una oferta formal aceptada puede respaldar una solicitud para actividades remuneradas. No equivale a permiso de trabajo ni garantiza su aprobación.</p><h2>Dónde se presenta</h2><p>La solicitud se presenta <strong>desde el extranjero</strong>. Conseguir una oferta mientras permaneces como turista en Chile no crea una excepción automática.</p><h2>Si se aprueba</h2><p>SERMIG informa que una solicitud favorable fundada en oferta puede otorgar un permiso inicial sujeto a presentar posteriormente el contrato definitivo en el plazo indicado. Sigue la resolución y las instrucciones del portal.</p><h2>Precauciones</h2><ul><li>Verifica las formalidades vigentes.</li><li>No pagues por ofertas simuladas.</li><li>No viajes como turista suponiendo que podrás cambiar automáticamente a residencia.</li></ul><p><a href="https://serviciomigraciones.cl/residencia-temporal/subcategorias/actividades-remuneradas/" target="_blank" rel="noopener noreferrer">Consultar la ficha oficial</a>.</p>$html$,
  faq_items = '[{"q":"¿Puedo postular desde Chile con una oferta?","a":"No como regla general. Se solicita desde el extranjero."},{"q":"¿La oferta autoriza a trabajar?","a":"No. Necesitas un permiso o autorización vigente."},{"q":"¿La oferta garantiza la residencia?","a":"No. Es un antecedente sujeto a evaluación."}]'::jsonb,
  updated_at = NOW()
WHERE slug = 'residencia-temporal/oferta-laboral';

UPDATE articles SET
  title = 'Declaración de infracción migratoria: efectos y diferencias',
  h1 = 'Cómo declarar una infracción migratoria y qué efectos tiene',
  meta_description = 'Diferencias entre declarar una infracción, pagar una multa y solicitar residencia. Cuándo intervienen SERMIG y PDI.',
  content = $html$<h2>No es un permiso de residencia</h2><p>Declarar voluntariamente una infracción permite tramitar la sanción correspondiente. <strong>No otorga residencia, no autoriza a trabajar y no garantiza una regularización.</strong></p><h2>Trámite ante SERMIG</h2><p>SERMIG gestiona en línea determinadas infracciones, como permanecer con un permiso vencido, trabajar sin autorización o retrasarse en solicitar la cédula. El procedimiento puede calcular una multa y permite presentar descargos.</p><h2>Cuándo puede intervenir la PDI</h2><p>El ingreso por paso no habilitado, la elusión del control, citaciones y procedimientos policiales requieren revisar las instrucciones de la PDI. No deben confundirse con una multa por vencimiento después de un ingreso habilitado.</p><h2>Tres procesos diferentes</h2><ol><li>Declarar la infracción.</li><li>Resolver la sanción o presentar descargos.</li><li>Solicitar residencia solo si existe una categoría y lugar de postulación habilitados.</li></ol><p>Si existe expulsión, abandono, prohibición de ingreso, rechazo, antecedentes penales o ingreso por paso no habilitado, busca orientación individual.</p><p><a href="https://serviciomigraciones.cl/declarar-infraccion/" target="_blank" rel="noopener noreferrer">Consultar el trámite oficial</a>.</p>$html$,
  faq_items = '[{"q":"¿Declarar una infracción regulariza mi situación?","a":"No. Permite tramitar la infracción, pero no concede residencia."},{"q":"¿Todas se declaran ante la PDI?","a":"No. SERMIG gestiona en línea determinadas infracciones; los casos de ingreso clandestino o control policial requieren revisar las instrucciones de PDI."},{"q":"¿Pagar la multa me permite trabajar?","a":"No. El pago no reemplaza una autorización laboral."}]'::jsonb,
  updated_at = NOW()
WHERE slug = 'autodenuncia';

UPDATE articles SET
  title = 'Residencia Definitiva a los 12 meses: reducción del plazo',
  h1 = 'Reducción a 12 meses para solicitar Residencia Definitiva',
  meta_description = 'La regla general es 24 meses. Conoce las circunstancias que SERMIG puede considerar para reducir el plazo a 12 meses.',
  content = $html$<h2>Regla general: 24 meses</h2><p>La regla general exige al menos 24 meses como titular de Residencia Temporal y una subcategoría que habilite para Residencia Definitiva.</p><h2>La reducción no es automática</h2><p>El plazo puede reducirse a 12 meses considerando determinadas circunstancias personales. Cumplir 12 meses, tener empleo o registrar cotizaciones <strong>no garantiza</strong> la reducción.</p><h2>Circunstancias que SERMIG puede considerar</h2><ul><li>Vínculos familiares con personas chilenas o residentes definitivas.</li><li>Misiones oficiales.</li><li>Rentas o pensiones.</li><li>Inversiones o empresas con operación efectiva.</li><li>Aportes sociales, culturales, artísticos, científicos o deportivos.</li><li>Casos previstos en acuerdos internacionales vigentes.</li></ul><p>Comprueba además la vigencia del permiso, las ausencias y la documentación que acredita la circunstancia invocada.</p><p><a href="https://serviciomigraciones.cl/preguntas-frecuentes/" target="_blank" rel="noopener noreferrer">Consultar información oficial</a>.</p>$html$,
  faq_items = '[{"q":"¿Doce meses de cotizaciones garantizan la reducción?","a":"No. Pueden acreditar estabilidad económica, pero la reducción no es automática."},{"q":"¿Cuál es el plazo general?","a":"La referencia general es de 24 meses de Residencia Temporal."},{"q":"¿MigraGo puede confirmar que califico?","a":"No. SERMIG evalúa las circunstancias y el expediente completo."}]'::jsonb,
  updated_at = NOW()
WHERE slug = 'residencia-definitiva/reduccion-plazo-12-meses';

COMMIT;
