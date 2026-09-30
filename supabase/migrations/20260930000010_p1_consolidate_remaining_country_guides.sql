-- Consolidación editorial de Ecuador, Haití, Cuba y República Dominicana.
-- Fuentes oficiales consultadas el 29-09-2026: SERMIG, Consulado de Chile y HCCH.
BEGIN;

UPDATE articles SET
  title='Ecuatorianos en Chile 2026: residencia y documentos',
  h1='Ecuatorianos en Chile: residencia, apostilla y decisiones clave',
  meta_description='Guía para ecuatorianos: opciones vigentes de Residencia Temporal, solicitud desde el extranjero, pasaporte, antecedentes y apostilla.',
  keyword_primary='ecuatorianos en Chile residencia temporal',
  content=$content$
<h2>Primera decisión: MERCOSUR no aplica</h2>
<p>Ecuador es Estado Asociado del MERCOSUR, pero <strong>no está incluido</strong> en la Residencia Temporal por reciprocidad internacional publicada por SERMIG. Esa subcategoría comprende únicamente a Argentina, Bolivia, Brasil, Paraguay y Uruguay.</p>
<h2>Qué residencia debes revisar</h2>
<ul><li><strong>Trabajo:</strong> actividades lícitas remuneradas, con contrato, oferta formal u otra modalidad admitida.</li><li><strong>Familia:</strong> reunificación si acreditas uno de los vínculos publicados con una persona chilena o residente definitiva.</li><li><strong>Estudios:</strong> matrícula o calidad de alumno regular en un establecimiento reconocido.</li><li><strong>Jubilación o rentas:</strong> si puedes acreditar ingresos periódicos dentro de esa subcategoría.</li></ul>
<h2>Dónde se solicita</h2>
<p>La regla general es presentar la primera solicitud de Residencia Temporal <strong>desde el extranjero</strong>. Estar en Chile como turista no habilita un cambio general a residencia. Solo determinadas solicitudes familiares, dependientes, humanitarias y otros casos expresamente calificados pueden iniciarse dentro de Chile.</p>
<h2>Pasaporte y antecedentes</h2>
<p>Para solicitudes desde el extranjero, SERMIG exige pasaporte con vigencia no inferior a un año desde la fecha de solicitud. Las personas mayores de 18 años deben presentar antecedentes penales o judiciales del país de origen o de aquel donde hayan residido durante los últimos cinco años. El certificado debe adjuntarse dentro de 60 días desde su emisión, salvo que indique otra vigencia.</p>
<h2>Apostilla ecuatoriana</h2>
<p>Ecuador y Chile son partes del Convenio de la Apostilla. Los documentos públicos ecuatorianos destinados a un trámite chileno deben obtener la apostilla de la autoridad ecuatoriana competente. La apostilla autentica el origen del documento: no extiende su vigencia ni reemplaza los requisitos de la residencia elegida.</p>
<h2>Ingreso como visitante</h2>
<p>Los requisitos para una visita dependen de la nacionalidad, el documento y la tabla consular vigente. Confírmalos antes de comprar pasajes. La Permanencia Transitoria no autoriza a trabajar habitualmente ni equivale a una residencia.</p>
<p><a href="https://serviciomigraciones.cl/residencia-temporal/subcategorias/" target="_blank" rel="noopener noreferrer">Comparar subcategorías oficiales en SERMIG</a> · <a href="https://www.consulado.gob.cl/informacion-sobre-visas-para-ingresar-a-chile" target="_blank" rel="noopener noreferrer">Comprobar requisitos de ingreso</a>.</p>
$content$,
  faq_items='[{"q":"¿Ecuador tiene Residencia Temporal MERCOSUR en Chile?","a":"No. Ecuador no aparece en la nómina vigente de reciprocidad internacional publicada por SERMIG."},{"q":"¿Puedo entrar como turista y solicitar residencia por trabajo?","a":"No como regla general. La primera residencia para actividades remuneradas se solicita desde el extranjero."},{"q":"¿Los documentos ecuatorianos pueden apostillarse?","a":"Sí. Ecuador y Chile son partes del Convenio de la Apostilla; verifica la autoridad competente y la vigencia exigida para cada documento."},{"q":"¿Qué vigencia debe tener el pasaporte al postular desde el extranjero?","a":"SERMIG exige una vigencia no inferior a un año desde la fecha de solicitud."}]'::jsonb,
  related_slugs=ARRAY['residencia-temporal','residencia-temporal/contrato-trabajo','residencia-temporal/pareja-chilena','vivir-en-chile/apostilla-por-pais'],
  updated_at=NOW()
WHERE slug='ecuador';

UPDATE articles SET
  title='Haitianos en Chile 2026: residencia y documentos',
  h1='Haitianos en Chile: residencia, documentos y traducción',
  meta_description='Guía para haitianos: opciones vigentes de Residencia Temporal, lugar de solicitud, pasaporte, legalización y traducción de documentos.',
  keyword_primary='haitianos en Chile residencia temporal',
  content=$content$
<h2>No existe una residencia automática por nacionalidad haitiana</h2>
<p>Haití no está incluido en la Residencia Temporal MERCOSUR de Chile y no existe una subcategoría general vigente reservada a nacionales haitianos. Debes elegir una vía actual según tu situación y acreditar todos sus requisitos.</p>
<h2>Opciones que pueden corresponder</h2>
<ul><li><strong>Actividades remuneradas:</strong> contrato, oferta formal o modalidad admitida; se solicita desde el extranjero.</li><li><strong>Reunificación familiar:</strong> para los vínculos específicos publicados con una persona chilena o residente definitiva.</li><li><strong>Estudios:</strong> con respaldo de un establecimiento reconocido y medios de subsistencia.</li><li><strong>Razones humanitarias:</strong> solo para los cinco supuestos vigentes publicados por SERMIG; no es una categoría abierta por nacionalidad o dificultad económica.</li></ul>
<h2>Estar en Chile no crea una vía de regularización</h2>
<p>La regla general es solicitar la primera Residencia Temporal desde el extranjero. Una declaración de infracción, una autodenuncia o el pago de una multa no conceden residencia. Si existe ingreso por paso no habilitado, una orden de abandono, expulsión o prohibición de ingreso, busca orientación jurídica individual.</p>
<h2>Documentos emitidos en Haití</h2>
<p>SERMIG exige que los documentos extranjeros estén apostillados o debidamente legalizados. Haití no figura como parte del Convenio de la Apostilla en la tabla vigente de la Conferencia de La Haya; por ello, confirma la cadena de legalización aplicable con la autoridad emisora y la representación chilena antes de pagar a un intermediario.</p>
<p>Los documentos en francés o criollo haitiano deben acompañarse de traducción oficial, porque SERMIG exceptúa de traducción únicamente los documentos en español o inglés. La traducción no reemplaza la legalización ni corrige diferencias de nombres o fechas.</p>
<h2>Pasaporte, antecedentes e ingreso</h2>
<p>En solicitudes desde el extranjero, el pasaporte debe tener una vigencia no inferior a un año. Los antecedentes exigidos a mayores de 18 años deben corresponder al país de origen o de residencia durante los últimos cinco años y adjuntarse dentro de 60 días desde su emisión, salvo vigencia distinta.</p>
<p>Para viajar como visitante, consulta la tabla consular por nacionalidad antes de comprar pasajes. Una visa o autorización de visita, cuando corresponda, no equivale a Residencia Temporal.</p>
<p><a href="https://serviciomigraciones.cl/residencia-temporal/subcategorias/" target="_blank" rel="noopener noreferrer">Comparar residencias vigentes</a> · <a href="https://www.consulado.gob.cl/informacion-sobre-visas-para-ingresar-a-chile" target="_blank" rel="noopener noreferrer">Comprobar requisitos de ingreso</a>.</p>
$content$,
  faq_items='[{"q":"¿Existe una residencia especial vigente para haitianos?","a":"No existe una subcategoría general por nacionalidad. Debes cumplir una residencia vigente según trabajo, familia, estudios u otro fundamento publicado."},{"q":"¿La autodenuncia permite regularizarse?","a":"No. La infracción y la residencia son procedimientos distintos; declarar o pagar una multa no concede un permiso."},{"q":"¿Los documentos en francés o criollo necesitan traducción?","a":"Sí. SERMIG exige traducción oficial para documentos que no estén en español o inglés."},{"q":"¿Los documentos haitianos se apostillan?","a":"Haití no figura como parte del Convenio de la Apostilla en la tabla vigente; confirma la legalización aplicable con la autoridad emisora y la representación chilena."}]'::jsonb,
  related_slugs=ARRAY['residencia-temporal','residencia-temporal/contrato-trabajo','residencia-temporal/pareja-chilena','problemas-migratorios/visa-vencida'],
  updated_at=NOW()
WHERE slug='haiti';

UPDATE articles SET
  title='Cubanos en Chile 2026: residencia y documentos',
  h1='Cubanos en Chile: residencia, ingreso y documentos',
  meta_description='Guía para cubanos: opciones vigentes de Residencia Temporal, solicitud desde el extranjero, pasaporte, legalización y requisitos de ingreso.',
  keyword_primary='cubanos en Chile residencia temporal',
  content=$content$
<h2>No existe una residencia especial para cubanos</h2>
<p>Cuba no está incluida en la Residencia Temporal MERCOSUR publicada por SERMIG. La nacionalidad cubana, por sí sola, no crea una vía de residencia: debes fundar la solicitud en una subcategoría vigente y acreditar sus requisitos.</p>
<h2>Qué opción revisar</h2>
<ul><li><strong>Trabajo:</strong> actividades lícitas remuneradas con contrato, oferta formal u otra modalidad admitida.</li><li><strong>Familia:</strong> reunificación para vínculos determinados con persona chilena o residente definitiva.</li><li><strong>Estudios:</strong> con matrícula o calidad de alumno regular y sustento económico.</li><li><strong>Jubilación o rentas:</strong> cuando se acreditan ingresos periódicos conforme a la ficha oficial.</li><li><strong>Razones humanitarias:</strong> únicamente para los supuestos específicos publicados por SERMIG.</li></ul>
<h2>Dónde se presenta</h2>
<p>Trabajo, estudios y jubilados o rentistas se solicitan inicialmente <strong>desde el extranjero</strong>. Las excepciones para presentar dentro de Chile son limitadas y dependen del vínculo o supuesto legal; ingresar como turista no habilita un cambio general a residencia.</p>
<h2>Documentos cubanos</h2>
<p>Para postular desde el extranjero, SERMIG exige pasaporte con vigencia no inferior a un año y antecedentes penales o judiciales para mayores de 18 años. El certificado debe adjuntarse dentro de 60 días desde su emisión, salvo que el propio documento indique otra vigencia.</p>
<p>Cuba no figura como parte del Convenio de la Apostilla en la tabla vigente de la Conferencia de La Haya. Los documentos deben seguir la legalización que corresponda ante las autoridades competentes. Confirma el circuito oficial antes de pagar a un gestor; una legalización no extiende la vigencia del documento.</p>
<h2>Antes de viajar</h2>
<p>Consulta la tabla consular vigente para saber si necesitas autorización previa de Permanencia Transitoria, sus documentos y arancel. No confundas esa autorización de visita con una Residencia Temporal ni asumas que permite trabajar o cambiar de estatus dentro de Chile.</p>
<p><a href="https://www.consulado.gob.cl/informacion-sobre-visas-para-ingresar-a-chile" target="_blank" rel="noopener noreferrer">Comprobar requisitos de ingreso</a> · <a href="https://serviciomigraciones.cl/residencia-temporal/subcategorias/" target="_blank" rel="noopener noreferrer">Comparar residencias vigentes</a>.</p>
$content$,
  faq_items='[{"q":"¿Cuba tiene una residencia especial o MERCOSUR en Chile?","a":"No. Debes elegir una subcategoría vigente según tu situación personal."},{"q":"¿Puedo entrar como visitante y solicitar residencia por trabajo?","a":"No como regla general. La residencia por actividades remuneradas se solicita desde el extranjero."},{"q":"¿Los documentos cubanos se apostillan?","a":"Cuba no figura como parte del Convenio de la Apostilla en la tabla vigente; confirma la cadena de legalización oficial aplicable."},{"q":"¿Una autorización para visitar Chile permite trabajar?","a":"No. La Permanencia Transitoria no autoriza trabajo habitual ni equivale a residencia."}]'::jsonb,
  related_slugs=ARRAY['residencia-temporal','residencia-temporal/contrato-trabajo','residencia-temporal/pareja-chilena','vivir-en-chile/apostilla-traduccion'],
  updated_at=NOW()
WHERE slug='cuba';

UPDATE articles SET
  title='Dominicanos en Chile 2026: residencia y documentos',
  h1='Dominicanos en Chile: residencia, ingreso y apostilla',
  meta_description='Guía para dominicanos: opciones vigentes de Residencia Temporal, solicitud desde el extranjero, ingreso a Chile, pasaporte y apostilla.',
  keyword_primary='dominicanos en Chile residencia temporal',
  content=$content$
<h2>Residencia e ingreso como visitante son trámites distintos</h2>
<p>Una autorización para visitar Chile, cuando la tabla consular la exija, corresponde a Permanencia Transitoria. No sustituye una Residencia Temporal, no autoriza trabajo habitual y no permite cambiar libremente de estatus dentro del país.</p>
<h2>República Dominicana no está incluida en MERCOSUR</h2>
<p>Las personas dominicanas no pueden solicitar la Residencia Temporal por reciprocidad internacional MERCOSUR. Deben elegir una subcategoría vigente según trabajo, familia, estudios, jubilación o rentas, u otro fundamento publicado.</p>
<h2>Opciones habituales</h2>
<ul><li><strong>Actividades remuneradas:</strong> contrato, oferta formal u otra modalidad admitida; se solicita desde el extranjero.</li><li><strong>Reunificación familiar:</strong> para vínculos específicos con persona chilena o residente definitiva; puede presentarse dentro de Chile en los casos admitidos.</li><li><strong>Estudios:</strong> con respaldo de un establecimiento reconocido y medios de subsistencia; desde el extranjero.</li><li><strong>Razones humanitarias:</strong> solo si corresponde uno de los supuestos concretos publicados por SERMIG.</li></ul>
<h2>Pasaporte y antecedentes</h2>
<p>En solicitudes desde el extranjero, SERMIG exige pasaporte con vigencia no inferior a un año. Las personas mayores de 18 años deben aportar antecedentes penales o judiciales del país de origen o de aquel donde hayan residido durante los últimos cinco años, adjuntados dentro de 60 días desde su emisión salvo vigencia distinta.</p>
<h2>Apostilla dominicana</h2>
<p>República Dominicana y Chile son partes del Convenio de la Apostilla. Los documentos públicos dominicanos deben obtener la apostilla de la autoridad competente antes de presentarse en Chile. La apostilla acredita el origen del documento, pero no reemplaza los requisitos particulares ni prolonga su vigencia.</p>
<h2>Comprueba el requisito de entrada</h2>
<p>La exigencia, documentos, arancel y duración de una autorización para visitar Chile se consultan en la tabla oficial por nacionalidad. Verifícala antes de comprar pasajes y evita basarte en una cifra o plazo publicado por terceros.</p>
<p><a href="https://www.consulado.gob.cl/informacion-sobre-visas-para-ingresar-a-chile" target="_blank" rel="noopener noreferrer">Comprobar requisitos de ingreso</a> · <a href="https://serviciomigraciones.cl/residencia-temporal/subcategorias/" target="_blank" rel="noopener noreferrer">Comparar residencias vigentes</a>.</p>
$content$,
  faq_items='[{"q":"¿República Dominicana tiene Residencia MERCOSUR en Chile?","a":"No. Debes revisar otra subcategoría vigente según tu situación."},{"q":"¿Una autorización de visita sirve para residir o trabajar?","a":"No. La Permanencia Transitoria y la Residencia Temporal son permisos distintos."},{"q":"¿Puedo solicitar residencia por trabajo dentro de Chile como turista?","a":"No como regla general. La residencia para actividades remuneradas se solicita desde el extranjero."},{"q":"¿Los documentos dominicanos pueden apostillarse?","a":"Sí. República Dominicana y Chile son partes del Convenio de la Apostilla; verifica la autoridad competente y la vigencia de cada documento."}]'::jsonb,
  related_slugs=ARRAY['residencia-temporal','residencia-temporal/contrato-trabajo','residencia-temporal/pareja-chilena','vivir-en-chile/apostilla-por-pais'],
  updated_at=NOW()
WHERE slug='republica-dominicana';

-- Las subguías antiguas mezclan categorías derogadas, plazos, costos y vías de
-- regularización no respaldadas. Se retiran hasta una revisión individual.
UPDATE articles
SET is_published=FALSE,
    updated_at=NOW()
WHERE silo IN ('ecuador','haiti','cuba','republica-dominicana')
  AND type='cluster';

COMMIT;
