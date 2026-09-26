BEGIN;

-- Editorial correction based on SERMIG, Chilean Consular Services and
-- official 2026 government sources. This migration intentionally replaces
-- unsupported processing times and distinguishes tourist entry from a
-- residence application.

UPDATE articles SET
  title = 'Colombianos en Chile 2026: residencia, documentos y trámites',
  h1 = 'Colombianos en Chile: residencia, documentos y vida cotidiana',
  meta_description = 'Guía para colombianos en Chile: opciones vigentes de Residencia Temporal, ingreso como turista, documentos apostillados y trámites cotidianos.',
  keyword_primary = 'colombianos en Chile residencia temporal',
  content = $content$
<h2>Colombianos en Chile: datos oficiales</h2>
<p>El Censo 2024 contabilizó 197.813 personas nacidas en Colombia viviendo en Chile. Esta cifra describe población residente y no debe interpretarse como un conteo de personas con una categoría migratoria determinada.</p>

<h2>¿Existe una Residencia Temporal MERCOSUR para colombianos?</h2>
<p><strong>No en la subcategoría chilena vigente.</strong> El SERMIG limita la Residencia Temporal por reciprocidad internacional MERCOSUR a nacionales de Argentina, Bolivia, Brasil, Paraguay y Uruguay. Colombia es Estado Asociado del bloque, pero esa condición no incorpora a sus nacionales en este permiso chileno.</p>

<h2>Opciones de Residencia Temporal</h2>
<p>La categoría correcta depende del motivo real de la estadía. Entre las alternativas publicadas por SERMIG se encuentran:</p>
<ul>
  <li>actividades lícitas remuneradas, si se cumplen sus requisitos,</li>
  <li>reunificación familiar, para los vínculos admitidos por la normativa,</li>
  <li>estudios en establecimientos reconocidos,</li>
  <li>trabajo de temporada,</li>
  <li>razones humanitarias, cuando corresponda.</li>
</ul>
<p>Las solicitudes de Residencia Temporal se realizan, como regla general, <strong>desde el extranjero</strong>. Estar en Chile como turista no permite cambiar libremente a residencia. Las excepciones están enumeradas por SERMIG.</p>

<h2>Ingreso como turista</h2>
<p>Las personas colombianas no requieren visa de Permanencia Transitoria para una visita de hasta 90 días según el cuadro consular vigente. La autoridad fronteriza puede solicitar pasaporte o documento de viaje habilitante y medios de subsistencia. La Permanencia Transitoria no autoriza a trabajar, salvo permisos excepcionales para actividades específicas.</p>

<h2>Documentos emitidos en Colombia</h2>
<p>Los documentos públicos colombianos destinados a un trámite en Chile deben apostillarse en Colombia cuando corresponda. Para Residencia Temporal, SERMIG exige actualmente que los antecedentes penales o judiciales se presenten dentro de los <strong>60 días desde su emisión</strong>, salvo que el documento indique otra vigencia.</p>
<ul>
  <li>pasaporte vigente para una solicitud realizada desde el extranjero,</li>
  <li>antecedentes penales o judiciales apostillados,</li>
  <li>documentos específicos de la subcategoría elegida.</li>
</ul>

<h2>Trabajo, banco y salud</h2>
<p>El ingreso mínimo mensual vigente desde mayo de 2026 es de $553.553 para trabajadores de 18 a 65 años. Una relación laboral formal contempla cotizaciones previsionales y de salud.</p>
<p>CuentaRUT es un producto de BancoEstado. MACHBANK pertenece al ecosistema Bci y exige cédula de identidad vigente. No debe presentarse como una cuenta de BancoEstado ni como una solución disponible solo con RUT antes de obtener la cédula.</p>

<h2>Fuentes oficiales</h2>
<ul>
  <li><a href="https://serviciomigraciones.cl/residencia-temporal/subcategorias/">Subcategorías de Residencia Temporal — SERMIG</a></li>
  <li><a href="https://serviciomigraciones.cl/residencia-temporal/">Requisitos generales — SERMIG</a></li>
  <li><a href="https://www.consulado.gob.cl/informacion-sobre-visas-para-ingresar-a-chile">Visas para ingresar a Chile — Consulado</a></li>
  <li><a href="https://serviciomigraciones.cl/wp-content/uploads/2026/03/Reporte-5-Estadisticas-SERMIG.pdf">Estadísticas migratorias 2024 — SERMIG</a></li>
</ul>
$content$,
  faq_items = '[
    {"q":"¿Los colombianos tienen Residencia Temporal MERCOSUR en Chile?","a":"No. La subcategoría chilena vigente por reciprocidad internacional se limita a nacionales de Argentina, Bolivia, Brasil, Paraguay y Uruguay."},
    {"q":"¿Puedo entrar como turista y solicitar residencia desde Chile?","a":"Como regla general, la Residencia Temporal se solicita desde el extranjero. SERMIG admite postulaciones dentro de Chile solo en excepciones específicas."},
    {"q":"¿Cuánto pueden durar los antecedentes penales para el trámite?","a":"SERMIG indica actualmente que los antecedentes penales o judiciales deben presentarse dentro de 60 días desde su emisión, salvo que el documento señale otra vigencia."}
  ]'::jsonb,
  updated_at = NOW()
WHERE slug = 'colombia';

UPDATE articles SET
  title = 'Peruanos en Chile 2026: residencia, documentos y trámites',
  h1 = 'Peruanos en Chile: residencia, documentos y vida cotidiana',
  meta_description = 'Guía para peruanos en Chile: opciones vigentes de Residencia Temporal, ingreso con DNI o pasaporte, apostilla y trámites cotidianos.',
  keyword_primary = 'peruanos en Chile residencia temporal',
  content = $content$
<h2>Peruanos en Chile</h2>
<p>La comunidad peruana es una de las más numerosas y antiguas entre la población extranjera de Chile. El Censo 2024 contabilizó 233.432 personas nacidas en Perú viviendo en el país.</p>

<h2>¿Los peruanos califican a la Residencia Temporal MERCOSUR?</h2>
<p><strong>No en la subcategoría chilena vigente.</strong> Aunque Perú es Estado Asociado del MERCOSUR, SERMIG limita el permiso por reciprocidad internacional a nacionales de Argentina, Bolivia, Brasil, Paraguay y Uruguay.</p>

<h2>Opciones de Residencia Temporal</h2>
<p>La persona debe elegir la subcategoría que corresponda al propósito real de su estadía, como actividades lícitas remuneradas, reunificación familiar, estudios, trabajo de temporada o una razón humanitaria debidamente acreditada.</p>
<p>La solicitud se presenta normalmente <strong>desde fuera de Chile</strong>. Ingresar como turista no crea por sí solo el derecho a solicitar residencia dentro del país.</p>

<h2>Ingreso como turista</h2>
<p>Los ciudadanos peruanos pueden ingresar para turismo sin visa consular y utilizar un documento de identidad habilitado por los acuerdos de viaje aplicables, como DNI vigente o pasaporte. La admisión final y el plazo los determina la autoridad fronteriza. La Permanencia Transitoria no autoriza a trabajar.</p>

<h2>Documentos peruanos</h2>
<p>Perú y Chile forman parte del Convenio de la Apostilla. Los documentos públicos peruanos deben apostillarse en el país de origen cuando el trámite chileno lo requiera.</p>
<ul>
  <li>Para solicitudes de residencia desde el extranjero, SERMIG exige pasaporte vigente. La excepción publicada para presentar DNI en esa etapa corresponde a Bolivia.</li>
  <li>Los antecedentes penales o judiciales deben adjuntarse dentro de 60 días desde su emisión, salvo una vigencia distinta indicada en el documento.</li>
  <li>Los requisitos adicionales dependen de la subcategoría seleccionada.</li>
</ul>

<h2>Fuentes oficiales</h2>
<ul>
  <li><a href="https://serviciomigraciones.cl/residencia-temporal/subcategorias/">Subcategorías de Residencia Temporal — SERMIG</a></li>
  <li><a href="https://serviciomigraciones.cl/residencia-temporal/">Requisitos generales — SERMIG</a></li>
  <li><a href="https://www.consulado.gob.cl/informacion-sobre-visas-para-ingresar-a-chile">Visas para ingresar a Chile — Consulado</a></li>
  <li><a href="https://serviciomigraciones.cl/wp-content/uploads/2026/03/Reporte-5-Estadisticas-SERMIG.pdf">Estadísticas migratorias 2024 — SERMIG</a></li>
</ul>
$content$,
  faq_items = '[
    {"q":"¿Los peruanos pueden pedir la Residencia Temporal MERCOSUR en Chile?","a":"No bajo la subcategoría chilena vigente. SERMIG la limita a Argentina, Bolivia, Brasil, Paraguay y Uruguay."},
    {"q":"¿Puedo usar el DNI peruano para solicitar residencia desde el extranjero?","a":"SERMIG exige pasaporte vigente para las solicitudes desde el extranjero. La excepción publicada para usar DNI corresponde a nacionales de Bolivia que postulan por reciprocidad internacional."},
    {"q":"¿Puedo trabajar como turista?","a":"No. La Permanencia Transitoria no permite realizar actividades remuneradas, salvo autorizaciones excepcionales para actividades específicas."}
  ]'::jsonb,
  updated_at = NOW()
WHERE slug = 'peru';

UPDATE articles SET
  title = 'Argentinos en Chile 2026: residencia MERCOSUR y documentos',
  h1 = 'Argentinos en Chile: residencia MERCOSUR y trámites',
  meta_description = 'Guía para argentinos en Chile: ingreso con DNI, solicitud de Residencia Temporal MERCOSUR desde el extranjero, pasaporte y documentos apostillados.',
  keyword_primary = 'argentinos en Chile residencia MERCOSUR',
  content = $content$
<h2>Residencia MERCOSUR para argentinos</h2>
<p>Argentina sí está incluida en la subcategoría de Residencia Temporal por reciprocidad internacional publicada por SERMIG. Este permiso no exige acreditar un contrato de trabajo como fundamento de la solicitud.</p>

<h2>Ingreso turístico y solicitud de residencia son trámites distintos</h2>
<p>Un ciudadano argentino puede ingresar a Chile como turista con DNI vigente conforme a los acuerdos de viaje aplicables. Sin embargo, para solicitar Residencia Temporal <strong>desde el extranjero</strong>, SERMIG exige pasaporte vigente. La excepción publicada para usar DNI en esa solicitud corresponde a nacionales de Bolivia.</p>

<h2>Dónde se solicita</h2>
<p>La solicitud MERCOSUR debe realizarse desde el extranjero en el Portal de Trámites Digitales de SERMIG. No se debe recomendar entrar como turista para iniciar esta residencia dentro de Chile.</p>

<h2>Documentos generales</h2>
<ul>
  <li>pasaporte vigente, con la vigencia mínima indicada por SERMIG,</li>
  <li>certificado de antecedentes penales o judiciales argentino apostillado,</li>
  <li>fotografía reciente,</li>
  <li>documentos adicionales solicitados en la ficha de reciprocidad internacional.</li>
</ul>
<p>Los antecedentes deben adjuntarse dentro de 60 días desde su emisión, salvo que indiquen otra vigencia. No existe un plazo de aprobación garantizado: debe consultarse el estado en el portal oficial.</p>

<h2>Fuentes oficiales</h2>
<ul>
  <li><a href="https://serviciomigraciones.cl/residencia-temporal/subcategorias/">Subcategorías de Residencia Temporal — SERMIG</a></li>
  <li><a href="https://serviciomigraciones.cl/residencia-temporal/">Requisitos generales — SERMIG</a></li>
</ul>
$content$,
  faq_items = '[
    {"q":"¿Argentina está incluida en la Residencia Temporal MERCOSUR?","a":"Sí. Argentina está incluida en la subcategoría chilena por reciprocidad internacional."},
    {"q":"¿Puedo solicitar la residencia solo con DNI argentino?","a":"El DNI puede servir para el ingreso turístico, pero SERMIG exige pasaporte vigente para una solicitud de residencia presentada desde el extranjero."},
    {"q":"¿Dónde se solicita?","a":"Desde el extranjero, mediante el Portal de Trámites Digitales de SERMIG."}
  ]'::jsonb,
  updated_at = NOW()
WHERE slug = 'argentina';

UPDATE articles SET
  title = 'Venezolanos en Chile 2026: ingreso, residencia y documentos',
  h1 = 'Venezolanos en Chile: ingreso, residencia y documentos',
  meta_description = 'Guía para venezolanos en Chile: visa para ingresar, opciones vigentes de Residencia Temporal, pasaporte, apostilla y situación migratoria irregular.',
  keyword_primary = 'venezolanos en Chile residencia temporal',
  content = $content$
<h2>Venezolanos en Chile: datos oficiales</h2>
<p>El Censo 2024 contabilizó 669.408 personas nacidas en Venezuela viviendo en Chile. La cifra no distingue por tipo de permiso migratorio.</p>

<h2>Visa para ingresar como visitante</h2>
<p>Los nacionales de Venezuela requieren una visa o autorización previa de Permanencia Transitoria antes de viajar a Chile, salvo una exención específica aplicable a su situación. La solicitud se tramita mediante los servicios consulares de Chile.</p>

<h2>Opciones de Residencia Temporal</h2>
<p>Venezuela no está incluida en la subcategoría chilena MERCOSUR. Las alternativas dependen de las circunstancias de cada persona y pueden incluir actividades lícitas remuneradas, reunificación familiar, estudios o razones humanitarias.</p>
<p>La regla general es solicitar la Residencia Temporal desde el extranjero. Tener un contrato, un hijo o una pareja no reemplaza la revisión de los requisitos concretos de la subcategoría correspondiente.</p>

<h2>Pasaporte y documentos</h2>
<p>Para una solicitud desde el extranjero, SERMIG exige pasaporte vigente y establece requisitos de vigencia específicos. Si existe una dificultad documental, no debe asumirse que una cédula sustituirá automáticamente al pasaporte: corresponde revisar la ficha oficial y consultar a SERMIG o al consulado.</p>

<h2>Apostilla venezolana</h2>
<p>Venezuela forma parte del Convenio de la Apostilla y Chile reconoce sus apostillas, incluidas las emitidas en formato digital. Es incorrecto afirmar que la apostilla venezolana está suspendida desde 2017.</p>

<h2>Autodenuncia y situación irregular</h2>
<p>La autodenuncia informa una infracción migratoria y puede dar lugar a un procedimiento sancionatorio. <strong>No concede residencia ni garantiza regularización.</strong> Antes de actuar, conviene revisar los canales oficiales y, si el caso es complejo, buscar orientación jurídica individual.</p>

<h2>Fuentes oficiales</h2>
<ul>
  <li><a href="https://www.consulado.gob.cl/informacion-sobre-visas-para-ingresar-a-chile">Visas para ingresar a Chile — Consulado</a></li>
  <li><a href="https://serviciomigraciones.cl/residencia-temporal/">Residencia Temporal — SERMIG</a></li>
  <li><a href="https://www.consulado.gob.cl/apostilla/venezuela-formato-digital">Apostilla venezolana — Consulado de Chile</a></li>
  <li><a href="https://serviciomigraciones.cl/wp-content/uploads/2026/03/Reporte-5-Estadisticas-SERMIG.pdf">Estadísticas migratorias 2024 — SERMIG</a></li>
</ul>
$content$,
  faq_items = '[
    {"q":"¿Los venezolanos necesitan visa para visitar Chile?","a":"Sí, como regla general requieren una visa o autorización previa de Permanencia Transitoria antes de viajar, salvo una exención específica aplicable a su situación."},
    {"q":"¿Venezuela tiene acceso a la Residencia Temporal MERCOSUR en Chile?","a":"No. Venezuela no está incluida en la subcategoría chilena vigente por reciprocidad internacional."},
    {"q":"¿Venezuela puede apostillar documentos para Chile?","a":"Sí. Chile reconoce las apostillas venezolanas, incluido su formato digital."},
    {"q":"¿La autodenuncia regulariza automáticamente?","a":"No. La autodenuncia informa una infracción y no concede por sí sola un permiso de residencia."}
  ]'::jsonb,
  updated_at = NOW()
WHERE slug = 'venezuela';

UPDATE articles SET
  title = 'Residencia Temporal MERCOSUR en Chile 2026: requisitos',
  h1 = 'Residencia Temporal MERCOSUR en Chile: quién califica',
  meta_description = 'Requisitos vigentes de la Residencia Temporal MERCOSUR en Chile para nacionales de Argentina, Bolivia, Brasil, Paraguay y Uruguay.',
  content = $content$
<h2>¿Quiénes califican?</h2>
<p>SERMIG otorga esta subcategoría por reciprocidad internacional a nacionales de <strong>Argentina, Bolivia, Brasil, Paraguay y Uruguay</strong>. No incluye actualmente a Colombia, Ecuador, Perú ni Venezuela.</p>

<h2>Dónde se solicita</h2>
<p>La solicitud se presenta desde el extranjero mediante el Portal de Trámites Digitales de SERMIG. Ingresar a Chile como turista no habilita a iniciar este permiso dentro del país.</p>

<h2>Requisitos generales</h2>
<ul>
  <li>Pasaporte vigente para solicitudes desde el extranjero. SERMIG publica una excepción para nacionales de Bolivia, que pueden presentar DNI vigente al postular por reciprocidad internacional.</li>
  <li>Certificado de antecedentes penales o judiciales del país de origen o de residencia durante los últimos cinco años, para mayores de 18 años.</li>
  <li>Documentos extranjeros apostillados o debidamente legalizados.</li>
  <li>Fotografía reciente y demás antecedentes indicados en la ficha oficial.</li>
</ul>
<p>Los antecedentes penales o judiciales deben adjuntarse dentro de 60 días desde su emisión, salvo que el propio documento señale una vigencia distinta.</p>

<h2>Después de la aprobación</h2>
<p>Si la residencia fue otorgada en el extranjero, se descarga el Estampado Electrónico y se dispone de hasta 90 días corridos para ingresar a Chile. La vigencia comienza desde el ingreso. El permiso puede tener una duración máxima de dos años.</p>

<h2>Fuente oficial</h2>
<p><a href="https://serviciomigraciones.cl/residencia-temporal/subcategorias/">Consulta la ficha y las subcategorías vigentes en SERMIG</a>.</p>
$content$,
  faq_items = '[
    {"q":"¿Qué nacionalidades califican a MERCOSUR en Chile?","a":"Argentina, Bolivia, Brasil, Paraguay y Uruguay, según la subcategoría vigente publicada por SERMIG."},
    {"q":"¿Colombia o Perú califican?","a":"No. Ser Estado Asociado del MERCOSUR no incorpora a esas nacionalidades en la subcategoría chilena vigente."},
    {"q":"¿Puedo solicitarla desde Chile como turista?","a":"No como regla general. Esta solicitud se presenta desde el extranjero."}
  ]'::jsonb,
  updated_at = NOW()
WHERE slug = 'residencia-temporal/mercosur';

UPDATE articles SET
  title = 'Apostilla de documentos para Chile por país 2026',
  h1 = 'Apostilla de documentos extranjeros para trámites en Chile',
  meta_description = 'Cómo presentar documentos extranjeros en Chile: apostilla, legalización, traducción y vigencia, con enlaces a fuentes oficiales.',
  content = $content$
<h2>Qué acredita la apostilla</h2>
<p>La apostilla certifica la autenticidad de la firma de un documento público para utilizarlo en otro país que forme parte del Convenio de La Haya. No valida el contenido del documento ni extiende su vigencia.</p>

<h2>Regla para trámites migratorios en Chile</h2>
<p>SERMIG indica que los documentos emitidos en el extranjero deben estar apostillados o debidamente legalizados. Si están en un idioma distinto del español o del inglés, deben acompañarse de la traducción oficial exigida.</p>

<h2>Países revisados</h2>
<ul>
  <li><strong>Argentina, Colombia, Perú y Venezuela:</strong> forman parte del sistema de apostilla. El trámite se realiza ante la autoridad competente del país que emitió el documento.</li>
  <li><strong>Venezuela:</strong> Chile reconoce sus apostillas y Cancillería chilena mantiene una ficha específica para el formato digital.</li>
  <li><strong>Países que no participan del Convenio:</strong> deben seguir la cadena de legalización indicada por las autoridades consulares.</li>
</ul>

<h2>Vigencia del documento</h2>
<p>La apostilla no evita que el documento venza. Para Residencia Temporal, SERMIG indica que los antecedentes penales o judiciales deben adjuntarse dentro de 60 días desde su emisión, salvo que el documento establezca una vigencia diferente.</p>

<h2>Antes de pagar o enviar documentos</h2>
<ol>
  <li>Revisa la ficha exacta de la subcategoría migratoria.</li>
  <li>Confirma cuál autoridad del país de origen emite la apostilla.</li>
  <li>Verifica la vigencia del documento y si necesita traducción.</li>
  <li>Conserva el documento y la apostilla completos en PDF.</li>
</ol>

<h2>Fuentes oficiales</h2>
<ul>
  <li><a href="https://serviciomigraciones.cl/residencia-temporal/">Requisitos documentales — SERMIG</a></li>
  <li><a href="https://www.consulado.gob.cl/cuales-documentos-se-pueden-apostillar-o-legalizar">Documentos extranjeros apostillados — Consulado</a></li>
  <li><a href="https://www.consulado.gob.cl/apostilla/venezuela-formato-digital">Apostilla de Venezuela — Consulado</a></li>
</ul>
$content$,
  faq_items = '[
    {"q":"¿Venezuela tiene apostilla válida en Chile?","a":"Sí. Chile reconoce las apostillas venezolanas, incluido su formato digital."},
    {"q":"¿Una apostilla vence?","a":"La apostilla certifica una firma, pero el documento asociado puede tener una vigencia limitada."},
    {"q":"¿Todos los documentos extranjeros se apostillan?","a":"Los documentos de países del Convenio usan apostilla cuando corresponde. Los demás siguen el procedimiento de legalización consular."}
  ]'::jsonb,
  updated_at = NOW()
WHERE slug = 'vivir-en-chile/apostilla-por-pais';

UPDATE articles SET
  title = 'Antecedentes penales venezolanos para Chile 2026',
  h1 = 'Antecedentes penales de Venezuela para trámites en Chile',
  meta_description = 'Cómo preparar antecedentes penales venezolanos para Chile: emisión, apostilla digital reconocida y vigencia documental exigida por SERMIG.',
  content = $content$
<h2>Qué documento revisar</h2>
<p>La ficha de la subcategoría migratoria determina qué antecedente penal o judicial debes presentar. Para mayores de 18 años, SERMIG solicita antecedentes del país de origen o de los países donde se haya residido durante los últimos cinco años.</p>

<h2>Apostilla venezolana</h2>
<p>Venezuela forma parte del Convenio de la Apostilla. Chile reconoce sus apostillas, incluido el formato digital. No corresponde afirmar que el servicio está suspendido desde 2017.</p>

<h2>Vigencia para SERMIG</h2>
<p>Los antecedentes penales o judiciales deben adjuntarse dentro de 60 días desde su emisión, salvo que el documento indique otra vigencia. La apostilla no amplía ese plazo.</p>

<h2>Pasos prudentes</h2>
<ol>
  <li>Revisa la ficha oficial de la subcategoría a la que postularás.</li>
  <li>Solicita el antecedente ante la autoridad venezolana competente.</li>
  <li>Obtén la apostilla mediante el canal oficial venezolano.</li>
  <li>Adjunta el documento completo y su apostilla dentro del plazo aplicable.</li>
</ol>
<p><a href="https://www.consulado.gob.cl/apostilla/venezuela-formato-digital">Revisa el reconocimiento oficial de la apostilla venezolana</a>.</p>
$content$,
  faq_items = '[
    {"q":"¿Chile reconoce la apostilla venezolana?","a":"Sí. Cancillería chilena señala que las apostillas venezolanas deben ser reconocidas por Chile, incluido su formato digital."},
    {"q":"¿La apostilla reemplaza la vigencia del antecedente?","a":"No. El antecedente debe cumplir además el plazo de vigencia exigido por SERMIG."}
  ]'::jsonb,
  updated_at = NOW()
WHERE slug = 'venezuela/antecedentes-penales';

UPDATE articles SET
  title = 'Residencia MERCOSUR para argentinos en Chile 2026',
  h1 = 'Residencia Temporal MERCOSUR para argentinos',
  meta_description = 'Cómo solicitar desde el extranjero la Residencia Temporal MERCOSUR para argentinos: pasaporte, antecedentes apostillados y requisitos SERMIG.',
  content = $content$
<h2>Quién puede solicitarla</h2>
<p>Las personas de nacionalidad argentina están incluidas en la subcategoría de reciprocidad internacional MERCOSUR publicada por SERMIG.</p>

<h2>Dónde se solicita</h2>
<p>La postulación se presenta <strong>desde el extranjero</strong> en el Portal de Trámites Digitales. No se debe ingresar como turista con el propósito de iniciar esta solicitud dentro de Chile.</p>

<h2>DNI para viajar y pasaporte para residir</h2>
<p>El DNI argentino vigente puede utilizarse para el ingreso turístico conforme a los acuerdos de viaje. Para una solicitud de Residencia Temporal desde el extranjero, SERMIG exige pasaporte vigente. Son trámites diferentes.</p>

<h2>Documentos generales</h2>
<ul>
  <li>pasaporte vigente,</li>
  <li>antecedentes penales o judiciales apostillados y vigentes,</li>
  <li>fotografía reciente,</li>
  <li>otros documentos indicados en la ficha oficial.</li>
</ul>
<p>Consulta siempre la ficha vigente antes de enviar la solicitud: <a href="https://serviciomigraciones.cl/residencia-temporal/subcategorias/">Subcategorías de Residencia Temporal</a>.</p>
$content$,
  faq_items = '[
    {"q":"¿Puedo solicitar la residencia MERCOSUR solo con DNI?","a":"No si postulas desde el extranjero. SERMIG exige pasaporte vigente. El DNI puede utilizarse para el ingreso turístico."},
    {"q":"¿La solicitud se presenta dentro de Chile?","a":"No. La postulación MERCOSUR se presenta desde el extranjero en el portal de SERMIG."}
  ]'::jsonb,
  updated_at = NOW()
WHERE slug = 'argentina/visa-mercosur';

-- Retire guides built around categories that Chile does not offer to these
-- nationalities. Their public URLs are redirected by next.config.mjs.
UPDATE articles
SET is_published = FALSE,
    updated_at = NOW()
WHERE slug IN ('colombia/visa-mercosur', 'peru/visa-mercosur');

-- Remove retired guides from recommendations and replace them with the
-- reviewed country hubs.
UPDATE articles AS article
SET related_slugs = ARRAY(
      SELECT DISTINCT replacement
      FROM (
        SELECT CASE related_slug
          WHEN 'colombia/visa-mercosur' THEN 'colombia'
          WHEN 'peru/visa-mercosur' THEN 'peru'
          ELSE related_slug
        END AS replacement
        FROM unnest(COALESCE(article.related_slugs, ARRAY[]::TEXT[])) AS u(related_slug)
      ) normalized
      WHERE replacement <> article.slug
      ORDER BY replacement
    ),
    content = REPLACE(
      REPLACE(article.content, '/colombia/visa-mercosur', '/paises/colombia'),
      '/peru/visa-mercosur', '/paises/peru'
    ),
    updated_at = NOW()
WHERE 'colombia/visa-mercosur' = ANY(COALESCE(article.related_slugs, ARRAY[]::TEXT[]))
   OR 'peru/visa-mercosur' = ANY(COALESCE(article.related_slugs, ARRAY[]::TEXT[]))
   OR article.content LIKE '%/colombia/visa-mercosur%'
   OR article.content LIKE '%/peru/visa-mercosur%';

-- The general emigration guide repeated the same nationality and in-country
-- application errors, so replace its workflow rather than leaving a conflict.
UPDATE articles SET
  title = 'Cómo emigrar a Chile 2026: residencia y pasos oficiales',
  h1 = 'Cómo emigrar a Chile: guía para preparar tu residencia',
  meta_description = 'Cómo preparar una mudanza a Chile: elegir la Residencia Temporal correcta, postular desde el extranjero, apostillar documentos e ingresar tras la aprobación.',
  content = $content$
<h2>Primero: visitar Chile no es lo mismo que residir</h2>
<p>La Permanencia Transitoria sirve para turismo, negocios u otras visitas breves. No autoriza a establecerse ni a trabajar de forma habitual. Si el objetivo es vivir en Chile, debes identificar y solicitar una subcategoría de Residencia Temporal.</p>

<h2>1. Elige la subcategoría correcta</h2>
<p>SERMIG publica permisos para actividades lícitas remuneradas, reunificación familiar, estudios, trabajo de temporada, jubilados o rentistas, razones humanitarias y otros supuestos.</p>
<p>La subcategoría MERCOSUR por reciprocidad internacional corresponde actualmente a nacionales de <strong>Argentina, Bolivia, Brasil, Paraguay y Uruguay</strong>. No incluye a Colombia, Ecuador, Perú ni Venezuela.</p>

<h2>2. Confirma dónde debes postular</h2>
<p>Las solicitudes de Residencia Temporal se presentan como regla general <strong>desde el extranjero</strong>. Solo ciertos casos expresamente publicados por SERMIG pueden solicitarse dentro de Chile. No viajes como turista suponiendo que podrás cambiar de categoría después.</p>

<h2>3. Prepara los documentos</h2>
<ul>
  <li>pasaporte vigente para una solicitud desde el extranjero,</li>
  <li>antecedentes penales o judiciales del país de origen o de residencia durante los últimos cinco años, si eres mayor de 18 años,</li>
  <li>fotografía reciente,</li>
  <li>documentos específicos que acrediten el fundamento de la subcategoría.</li>
</ul>
<p>Los documentos extranjeros deben estar apostillados o legalizados. SERMIG indica que los antecedentes penales o judiciales deben adjuntarse dentro de 60 días desde su emisión, salvo que el documento establezca otra vigencia.</p>

<h2>4. Presenta y sigue la solicitud</h2>
<p>La postulación se realiza en el Portal de Trámites Digitales de SERMIG. No hay un plazo único garantizado para todas las categorías. El estado debe revisarse en el portal.</p>

<h2>5. Ingresa después de la aprobación</h2>
<p>Cuando una residencia solicitada en el extranjero es aprobada, debes descargar el Estampado Electrónico. SERMIG informa que existe un plazo de hasta 90 días corridos para ingresar y que la vigencia comienza desde la entrada a Chile.</p>

<h2>6. Cédula, trabajo, salud y banco</h2>
<p>Tras activar la residencia corresponde realizar los trámites de identificación aplicables. Los requisitos de bancos y servicios cambian: confirma siempre que el producto acepte tu documento y tipo de residencia. MACHBANK, por ejemplo, exige cédula de identidad vigente.</p>

<h2>Fuentes oficiales</h2>
<ul>
  <li><a href="https://serviciomigraciones.cl/residencia-temporal/">Residencia Temporal — SERMIG</a></li>
  <li><a href="https://serviciomigraciones.cl/residencia-temporal/subcategorias/">Subcategorías vigentes — SERMIG</a></li>
  <li><a href="https://www.consulado.gob.cl/informacion-sobre-visas-para-ingresar-a-chile">Requisitos de ingreso — Consulado</a></li>
</ul>
$content$,
  faq_items = '[
    {"q":"¿Puedo viajar como turista y pedir residencia dentro de Chile?","a":"No como regla general. La Residencia Temporal se solicita desde el extranjero, salvo excepciones expresamente publicadas por SERMIG."},
    {"q":"¿Qué nacionalidades tienen la subcategoría MERCOSUR?","a":"Argentina, Bolivia, Brasil, Paraguay y Uruguay."},
    {"q":"¿Cuánto tarda una Residencia Temporal?","a":"SERMIG no publica un plazo único garantizado para todas las subcategorías. El avance se consulta en el Portal de Trámites Digitales."}
  ]'::jsonb,
  howto_steps = '[
    {"name":"Identifica la subcategoría","text":"Revisa en SERMIG cuál coincide con el motivo real de tu residencia."},
    {"name":"Prepara documentos vigentes","text":"Reúne pasaporte, antecedentes y documentos específicos apostillados o legalizados."},
    {"name":"Postula desde el extranjero","text":"Presenta la solicitud en el Portal de Trámites Digitales, salvo que estés dentro de una excepción oficial."},
    {"name":"Ingresa tras la aprobación","text":"Descarga el Estampado Electrónico y respeta el plazo oficial de ingreso."}
  ]'::jsonb,
  updated_at = NOW()
WHERE slug = 'vivir-en-chile/como-emigrar-a-chile';

UPDATE articles
SET content = REPLACE(
      content,
      '<li><strong>Venezuela:</strong> suspendió el servicio de apostilla desde 2017. Proceso alternativo: legalización vía consulado chileno o Cancillería venezolana. Consulta caso a caso.</li>',
      '<li><strong>Venezuela:</strong> forma parte del Convenio de la Apostilla y Chile reconoce sus apostillas, incluido el formato digital. Utiliza únicamente los canales oficiales venezolanos.</li>'
    ),
    updated_at = NOW()
WHERE slug = 'vivir-en-chile/apostilla-traduccion';

UPDATE articles
SET faq_items = REPLACE(
      faq_items::TEXT,
      'Venezuela suspendió la apostilla en 2017. Para títulos venezolanos existe un proceso alternativo de autenticación ante el consulado chileno en Venezuela o mediante la Cancillería. Consulta al MINEDUC.',
      'Venezuela forma parte del Convenio de la Apostilla y Chile reconoce su formato digital. Verifica ante la autoridad competente qué documentos exige el procedimiento de reconocimiento de tu título.'
    )::JSONB,
    updated_at = NOW()
WHERE slug = 'vivir-en-chile/convalidacion-titulos';

UPDATE articles
SET content = REPLACE(
      content,
      '(del que también son parte Argentina, Brasil, Paraguay, Uruguay, Ecuador, Colombia y Perú)',
      '(junto con Argentina, Brasil, Paraguay y Uruguay en la subcategoría chilena vigente)'
    ),
    updated_at = NOW()
WHERE slug = 'bolivia';

-- Correct the former 90-day claim only in country antecedent guides. The
-- current general SERMIG rule is 60 days from issuance unless the document
-- itself states a different validity.
UPDATE articles
SET content = REPLACE(
        REPLACE(
          REPLACE(
            REPLACE(content,
              'menos de <strong>90 días</strong>',
              'dentro de <strong>60 días desde su emisión</strong>'),
            '<strong>90 días de antigüedad máxima</strong>',
            '<strong>60 días desde su emisión</strong>'),
          'menos de 90 días de antigüedad',
          'dentro de 60 días desde su emisión'),
        'no tenga más de <strong>90 días de antigüedad</strong>',
        'se presente dentro de <strong>60 días desde su emisión</strong>'),
    faq_items = REPLACE(
        REPLACE(COALESCE(faq_items, '[]'::JSONB)::TEXT,
          'menos de 90 días',
          'dentro de 60 días desde su emisión'),
        'más de 90 días',
        'más de 60 días desde su emisión')::JSONB,
    updated_at = NOW()
WHERE slug IN (
  'bolivia/antecedentes-penales',
  'peru/antecedentes-penales',
  'colombia/antecedentes-penales',
  'argentina/antecedentes-penales',
  'ecuador/antecedentes-penales',
  'cuba/antecedentes-penales'
);

UPDATE glossary_terms
SET definition = 'Documento oficial que informa los antecedentes penales o judiciales de una persona. Para Residencia Temporal, SERMIG indica que debe adjuntarse dentro de 60 días desde su emisión, salvo que el documento señale otra vigencia, y debe estar apostillado o legalizado cuando fue emitido en el extranjero.'
WHERE slug = 'antecedentes-penales';

UPDATE glossary_terms
SET definition = 'Tratado internacional que simplifica la autenticación de documentos públicos entre países participantes mediante la apostilla. Chile reconoce las apostillas venezolanas, incluido su formato digital. Los países no adheridos utilizan legalización consular.'
WHERE slug = 'convenio-la-haya';

COMMIT;
