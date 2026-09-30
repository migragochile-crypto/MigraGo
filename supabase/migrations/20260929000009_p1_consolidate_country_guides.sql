-- Consolidación editorial de guías por país. Fuentes oficiales consultadas el 29-09-2026.
BEGIN;

UPDATE articles SET
  title='Bolivianos en Chile 2026: Residencia MERCOSUR y documentos',
  h1='Bolivianos en Chile: residencia, documentos y decisiones clave',
  meta_description='Guía para bolivianos: Residencia Temporal MERCOSUR, solicitud desde el extranjero, uso del DNI, antecedentes y trabajo en Chile.',
  keyword_primary='bolivianos en Chile residencia MERCOSUR',
  content=$content$
<h2>La ventaja vigente para personas bolivianas</h2>
<p>Bolivia está incluida en la Residencia Temporal por reciprocidad internacional MERCOSUR publicada por SERMIG. Esta subcategoría se funda en la nacionalidad: no exige contrato de trabajo ni vínculo familiar como fundamento.</p>
<h2>Dónde debes solicitarla</h2>
<p>La primera solicitud MERCOSUR se presenta <strong>desde el extranjero</strong> mediante el Portal de Trámites Digitales. Ingresar como turista no habilita a iniciar esta residencia dentro de Chile.</p>
<h2>DNI o pasaporte</h2>
<p>SERMIG publica una excepción específica para Bolivia: por convenio bilateral, la persona boliviana que postula por reciprocidad internacional puede presentar <strong>DNI vigente</strong>. Para las demás nacionalidades comprendidas, la ficha exige pasaporte vigente.</p>
<h2>Documentos generales</h2>
<ul><li>DNI boliviano vigente o pasaporte, conforme a la excepción publicada.</li><li>Antecedentes penales o documento equivalente del país de origen o de aquel donde hayas residido durante los últimos cinco años, si eres mayor de 18 años.</li><li>Fotografía reciente en el formato exigido.</li><li>Otros antecedentes que muestre el formulario oficial.</li></ul>
<p>Los antecedentes penales deben tener una antigüedad no superior a 60 días. Los documentos extranjeros deben estar apostillados o legalizados y traducidos oficialmente si no están en español o inglés.</p>
<h2>Costo, vigencia y trabajo</h2>
<p>SERMIG informa que el acuerdo entre Bolivia y Chile eliminó el arancel de solicitud para nacionales bolivianos. El permiso puede otorgarse hasta por dos años y permite realizar actividades lícitas remuneradas una vez vigente. La aprobación no concede automáticamente Residencia Definitiva: esa solicitud tiene plazos, ausencias y requisitos propios.</p>
<h2>Elige según tu situación</h2>
<ul><li><strong>Estás fuera de Chile y eres boliviano/a:</strong> revisa primero MERCOSUR.</li><li><strong>Tienes vínculo con persona chilena o residente definitiva:</strong> compara reunificación familiar, que también admite ciertos casos desde Chile.</li><li><strong>Tu permiso venció o ingresaste irregularmente:</strong> no asumas que pagar una multa o autodenunciarte habilita una residencia.</li></ul>
<p><a href="https://serviciomigraciones.cl/residencia-temporal/subcategorias/reciprocidad-internacional/" target="_blank" rel="noopener noreferrer">Revisar la ficha oficial MERCOSUR</a>.</p>
$content$,
  faq_items='[{"q":"¿Bolivia está incluida en la Residencia MERCOSUR chilena?","a":"Sí. Bolivia está entre las cinco nacionalidades publicadas por SERMIG."},{"q":"¿Puedo postular con DNI boliviano?","a":"Sí. SERMIG publica una excepción por convenio bilateral para nacionales de Bolivia que solicitan esta subcategoría."},{"q":"¿Puedo solicitarla desde Chile como turista?","a":"No. La solicitud inicial MERCOSUR se presenta desde el extranjero."},{"q":"¿La residencia MERCOSUR entrega Residencia Definitiva automática?","a":"No. La Residencia Definitiva se solicita por separado y exige cumplir sus condiciones."}]'::jsonb,
  related_slugs=ARRAY['residencia-temporal/mercosur','residencia-temporal','residencia-definitiva/requisitos','vivir-en-chile/apostilla-por-pais'],
  updated_at=NOW()
WHERE slug='bolivia';

UPDATE articles SET
  title='Colombianos en Chile 2026: residencia y documentos',
  h1='Colombianos en Chile: qué residencia revisar y dónde postular',
  meta_description='Guía para colombianos: por qué MERCOSUR no aplica, opciones de Residencia Temporal, documentos apostillados y solicitudes desde Chile.',
  keyword_primary='colombianos en Chile residencia temporal',
  content=$content$
<h2>Primera decisión: MERCOSUR no aplica</h2>
<p>Colombia es Estado Asociado del MERCOSUR, pero <strong>no está incluida</strong> en la subcategoría chilena de Residencia Temporal por reciprocidad internacional. SERMIG la limita a Argentina, Bolivia, Brasil, Paraguay y Uruguay.</p>
<h2>Qué vía debes revisar</h2>
<ul><li><strong>Trabajo:</strong> actividades lícitas remuneradas, con contrato, oferta formal u otra modalidad admitida.</li><li><strong>Familia:</strong> reunificación si tienes uno de los vínculos publicados con persona chilena o residente definitiva.</li><li><strong>Estudios:</strong> si estudiarás en un establecimiento reconocido por el Estado.</li><li><strong>Jubilación o rentas:</strong> si puedes acreditar ingresos regulares dentro de esa subcategoría.</li><li><strong>Razones humanitarias:</strong> únicamente si encajas en uno de los supuestos específicos publicados.</li></ul>
<h2>Desde Chile o desde el extranjero</h2>
<p>La regla general es solicitar Residencia Temporal <strong>desde el extranjero</strong>. Estar en Chile con Permanencia Transitoria no permite cambiar libremente a residencia. Reunificación familiar, dependencia y razones humanitarias contemplan excepciones específicas; tener un contrato no crea por sí solo una excepción.</p>
<h2>Documentos colombianos</h2>
<p>Para una solicitud desde el extranjero se exige pasaporte vigente. Las personas mayores de 18 años deben presentar antecedentes penales o judiciales del país de origen o de residencia durante los últimos cinco años.</p>
<ul><li>El antecedente debe adjuntarse dentro de 60 días desde su emisión.</li><li>Los documentos extranjeros deben estar apostillados o legalizados.</li><li>Los documentos que no estén en español o inglés requieren traducción oficial.</li><li>Los demás respaldos dependen de la subcategoría elegida.</li></ul>
<h2>Si ya estás en Chile</h2>
<p>No presentes una solicitud basándote solo en nacionalidad o turismo. Identifica tu permiso actual, su vencimiento, la forma de ingreso y si existe una excepción aplicable. Una multa o declaración de infracción no concede residencia.</p>
<p><a href="https://serviciomigraciones.cl/residencia-temporal/subcategorias/" target="_blank" rel="noopener noreferrer">Comparar subcategorías oficiales en SERMIG</a>.</p>
$content$,
  faq_items='[{"q":"¿Los colombianos pueden solicitar Residencia Temporal MERCOSUR en Chile?","a":"No. Colombia no integra la nómina vigente de esta subcategoría chilena."},{"q":"¿Un contrato permite postular desde Chile como turista?","a":"No. La residencia para actividades remuneradas se solicita desde el extranjero."},{"q":"¿Qué antigüedad pueden tener los antecedentes penales?","a":"SERMIG fija una antigüedad no superior a 60 días desde la emisión."},{"q":"¿Pagar una multa regulariza mi situación?","a":"No. Resolver una infracción y obtener residencia son procedimientos distintos."}]'::jsonb,
  related_slugs=ARRAY['residencia-temporal','residencia-temporal/contrato-trabajo','residencia-temporal/pareja-chilena','vivir-en-chile/apostilla-por-pais'],
  updated_at=NOW()
WHERE slug='colombia';

UPDATE articles SET
  title='Peruanos en Chile 2026: residencia y documentos',
  h1='Peruanos en Chile: opciones de residencia y documentos',
  meta_description='Guía para peruanos: MERCOSUR no aplica en Chile, opciones de Residencia Temporal, pasaporte, antecedentes y lugar de solicitud.',
  keyword_primary='peruanos en Chile residencia temporal',
  content=$content$
<h2>Perú no está incluido en la subcategoría MERCOSUR chilena</h2>
<p>Aunque Perú es Estado Asociado del MERCOSUR, sus nacionales no aparecen en la nómina de reciprocidad internacional publicada por SERMIG. No selecciones esa opción en el portal ni uses una guía que prometa residencia por nacionalidad peruana.</p>
<h2>Cómo elegir una subcategoría</h2>
<ul><li><strong>Contrato u oferta:</strong> revisa actividades lícitas remuneradas.</li><li><strong>Cónyuge, unión civil, padre, madre o determinados hijos:</strong> revisa reunificación familiar.</li><li><strong>Matrícula en una institución reconocida:</strong> revisa residencia para estudiantes.</li><li><strong>Pensión o rentas constantes:</strong> revisa jubilados y rentistas.</li></ul>
<p>La categoría debe coincidir con tu situación real. Ninguna de estas opciones garantiza aprobación.</p>
<h2>Lugar de postulación</h2>
<p>Trabajo, estudios y jubilados o rentistas se solicitan inicialmente <strong>desde el extranjero</strong>. Ciertas solicitudes familiares, dependientes y humanitarias pueden presentarse desde Chile. Entrar como turista no habilita un cambio general de estatus.</p>
<h2>DNI para viajar y pasaporte para solicitar residencia</h2>
<p>El documento que permite un viaje turístico no necesariamente sirve para una solicitud de residencia. SERMIG exige pasaporte vigente para solicitudes desde el extranjero; la excepción publicada para usar DNI al postular por reciprocidad corresponde a Bolivia.</p>
<h2>Antecedentes y apostilla</h2>
<p>Para mayores de 18 años se exigen antecedentes penales o judiciales del país de origen o de residencia durante los últimos cinco años. Deben adjuntarse dentro de 60 días desde su emisión, apostillados o legalizados. Los documentos en español no necesitan traducción por idioma, pero sí las demás formalidades aplicables.</p>
<h2>Si tu permiso venció</h2>
<p>Declarar la infracción y pagar una eventual multa no renueva el permiso ni habilita automáticamente una primera residencia dentro de Chile. Revisa por separado la vía, el lugar de postulación y cualquier medida pendiente.</p>
<p><a href="https://serviciomigraciones.cl/residencia-temporal/subcategorias/" target="_blank" rel="noopener noreferrer">Revisar subcategorías vigentes en SERMIG</a>.</p>
$content$,
  faq_items='[{"q":"¿Perú tiene Residencia Temporal MERCOSUR en Chile?","a":"No. Perú no está en la nómina vigente de reciprocidad internacional publicada por SERMIG."},{"q":"¿Puedo usar DNI peruano para solicitar residencia desde el extranjero?","a":"No conforme a la regla general publicada. SERMIG exige pasaporte; la excepción de DNI para esta subcategoría corresponde a Bolivia."},{"q":"¿Puedo entrar como turista y solicitar residencia por trabajo?","a":"No. La primera residencia para actividades remuneradas se solicita desde el extranjero."},{"q":"¿La multa por permiso vencido renueva mi residencia?","a":"No. La infracción y la residencia son trámites distintos."}]'::jsonb,
  related_slugs=ARRAY['residencia-temporal','residencia-temporal/contrato-trabajo','residencia-temporal/hijo-chileno','vivir-en-chile/apostilla-por-pais'],
  updated_at=NOW()
WHERE slug='peru';

UPDATE articles SET
  title='Venezolanos en Chile 2026: ingreso, residencia y documentos',
  h1='Venezolanos en Chile: ingreso, residencia y decisiones clave',
  meta_description='Guía para venezolanos: autorización para visitar Chile, opciones vigentes de residencia, pasaporte, apostilla y situaciones irregulares.',
  keyword_primary='venezolanos en Chile residencia temporal',
  content=$content$
<h2>Visitar y residir son procedimientos distintos</h2>
<p>La Permanencia Transitoria sirve para visitas de corta duración y no autoriza a establecerse ni a trabajar habitualmente. Antes de viajar, consulta en la tabla consular vigente si tu nacionalidad y documento requieren una autorización previa o visa. La autorización de visita no equivale a Residencia Temporal.</p>
<h2>No existe una vía especial venezolana vigente</h2>
<p>La antigua Visa de Responsabilidad Democrática no es una subcategoría vigente y Venezuela tampoco está incluida en la Residencia Temporal MERCOSUR chilena. La solicitud debe fundarse en una categoría actual y en hechos que puedas acreditar.</p>
<h2>Opciones que pueden corresponder</h2>
<ul><li><strong>Actividades remuneradas:</strong> contrato, oferta u otra modalidad publicada; se solicita desde el extranjero.</li><li><strong>Reunificación familiar:</strong> para vínculos específicos con persona chilena o residente definitiva; puede solicitarse desde Chile en los casos admitidos.</li><li><strong>Estudios:</strong> con matrícula o calidad de alumno regular y sustento económico; desde el extranjero.</li><li><strong>Razones humanitarias:</strong> solo para los cinco supuestos publicados por SERMIG, no como categoría residual.</li></ul>
<h2>Pasaporte y antecedentes</h2>
<p>Para una solicitud desde el extranjero se exige pasaporte vigente. SERMIG solicita antecedentes penales o judiciales a mayores de 18 años, emitidos por el país de origen o aquel donde se residió durante los últimos cinco años, con antigüedad no superior a 60 días.</p>
<h2>Apostilla venezolana</h2>
<p>Chile reconoce las apostillas venezolanas, incluido su formato digital. La apostilla autentica la firma, pero no extiende la vigencia del documento ni reemplaza los requisitos de la subcategoría.</p>
<h2>Ingreso irregular, vencimiento o autodenuncia</h2>
<p>La declaración de una infracción no concede residencia ni garantiza regularización. Si existe ingreso por paso no habilitado, expulsión, abandono, prohibición de ingreso, antecedentes penales o un plazo de recurso, busca orientación jurídica individual antes de presentar otro trámite.</p>
<p><a href="https://www.consulado.gob.cl/informacion-sobre-visas-para-ingresar-a-chile" target="_blank" rel="noopener noreferrer">Comprobar requisitos de ingreso en Cancillería</a> · <a href="https://serviciomigraciones.cl/residencia-temporal/subcategorias/" target="_blank" rel="noopener noreferrer">Comparar residencias vigentes en SERMIG</a>.</p>
$content$,
  faq_items='[{"q":"¿Sigue vigente la Visa de Responsabilidad Democrática?","a":"No. Debes revisar una subcategoría actual de Residencia Temporal."},{"q":"¿Venezuela está incluida en MERCOSUR para residencia en Chile?","a":"No. Venezuela no aparece en la nómina vigente publicada por SERMIG."},{"q":"¿Chile reconoce la apostilla venezolana?","a":"Sí, incluido el formato digital; el documento debe cumplir además su vigencia y los requisitos del trámite."},{"q":"¿La autodenuncia concede residencia?","a":"No. Informa una infracción y puede iniciar actuaciones administrativas, pero no otorga residencia."}]'::jsonb,
  related_slugs=ARRAY['residencia-temporal','residencia-temporal/contrato-trabajo','residencia-temporal/pareja-chilena','autodenuncia'],
  updated_at=NOW()
WHERE slug='venezuela';

-- Las antiguas subguías mezclaban tiempos, costos y categorías no vigentes.
-- Se retiran hasta contar con revisión individual; las rutas públicas redirigen al hub consolidado.
UPDATE articles
SET is_published=FALSE,
    updated_at=NOW()
WHERE silo IN ('bolivia','colombia','peru','venezuela')
  AND type='cluster';

COMMIT;
