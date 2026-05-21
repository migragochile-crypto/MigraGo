-- ============================================================
-- MigraciónChile — Seed v5: hubs colombia, haiti, bolivia, argentina, rep-dominicana
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

-- ──────────────────────────────────────────────────────────
-- 1. HUB: colombia
-- ──────────────────────────────────────────────────────────
UPDATE articles SET
  content = $g1$
<p>Colombia es el segundo país con mayor presencia migratoria en Chile, con una comunidad de más de 200.000 personas. Esta guía detalla las vías de regularización y los recursos disponibles para ciudadanos colombianos.</p>

<h2>Ingreso a Chile desde Colombia</h2>
<p>Los ciudadanos colombianos pueden ingresar a Chile <strong>sin visa de turismo</strong>, con estadía permitida de hasta 90 días. Solo necesitan pasaporte vigente. Al cumplir los 90 días, deben regularizarse o salir del país.</p>

<h2>Opciones de regularización disponibles</h2>
<p>Colombia es miembro asociado del MERCOSUR, lo que otorga a sus ciudadanos acceso a la <a href="/visa-temporaria/mercosur"><strong>Visa Mercosur</strong></a> — una de las categorías más sencillas de tramitar porque no requiere contrato de trabajo ni vínculo familiar.</p>
<p>Además, los colombianos pueden optar por cualquier otra categoría de visa temporaria:</p>
<ul>
  <li><a href="/visa-temporaria/hijo-chileno"><strong>Por hijo/a chileno</strong></a>: si tienes un hijo con nacionalidad chilena.</li>
  <li><a href="/visa-temporaria/contrato-trabajo"><strong>Por contrato de trabajo</strong></a>: con empleador formal en Chile.</li>
  <li><a href="/visa-temporaria/pareja-chilena"><strong>Por pareja chilena</strong></a>: si estás casado/a o tienes AUC con un/a ciudadano/a chileno/a.</li>
</ul>

<h2>Si estás en situación irregular</h2>
<p>Si tu visa de turismo venció, el primer paso es la <a href="/autodenuncia">autodenuncia migratoria</a> en la PDI. Con el Certificado de Autodenuncia puedes solicitar la Visa Mercosur u otra categoría según tu situación.</p>

<h2>Apostilla de documentos colombianos</h2>
<p>Colombia es signataria del Convenio de La Haya. Los certificados de antecedentes penales se obtienen en la Policía Nacional de Colombia y se apostillan ante la Cancillería colombiana o en notarías habilitadas.</p>

<h2>Comunidades y recursos</h2>
<ul>
  <li><strong>Consulado de Colombia en Santiago:</strong> tramita documentos y orienta sobre regularización.</li>
  <li><strong>OIM Chile:</strong> apoyo en integración laboral para migrantes colombianos.</li>
</ul>
  $g1$,
  faq_items = '[
    {
      "question": "¿Los colombianos necesitan visa para entrar a Chile?",
      "answer": "No. Los ciudadanos colombianos con pasaporte vigente pueden ingresar a Chile como turistas sin visa por hasta 90 días. Para quedarse más tiempo deben solicitar una visa de residencia."
    },
    {
      "question": "¿La Visa Mercosur aplica para colombianos?",
      "answer": "Sí. Colombia es miembro asociado del MERCOSUR, por lo que sus ciudadanos tienen acceso a la Visa Mercosur, que requiere menos documentación que otras categorías de visa temporaria."
    },
    {
      "question": "¿Puedo traer a mi familia desde Colombia con la visa Mercosur?",
      "answer": "Una vez que obtienes la Visa Mercosur, puedes incluir a tu cónyuge e hijos menores como cargas familiares. También pueden solicitar la visa de forma independiente."
    },
    {
      "question": "¿Qué pasa con mi título profesional colombiano en Chile?",
      "answer": "Para profesiones no reguladas, los empleadores pueden reconocer el título directamente. Para profesiones reguladas (medicina, derecho, ingeniería civil, etc.) debes revalidar el título en Chile a través del proceso de homologación."
    }
  ]'::jsonb,
  related_slugs = ARRAY[
    'visa-temporaria/mercosur',
    'visa-temporaria/contrato-trabajo',
    'autodenuncia/pdi-paso-a-paso',
    'permanencia-definitiva',
    'vivir-en-chile/rut-extranjero'
  ]::TEXT[],
  reading_time_minutes = 4,
  updated_at = NOW()
WHERE slug = 'colombia';

-- ──────────────────────────────────────────────────────────
-- 2. HUB: haiti
-- ──────────────────────────────────────────────────────────
UPDATE articles SET
  content = $g2$
<p>La comunidad haitiana en Chile superó las 180.000 personas en los años de mayor inmigración, aunque ha disminuido en años recientes. Los ciudadanos haitianos enfrentan desafíos específicos: requieren visa consular para ingresar, el idioma oficial es el francés o el criollo haitiano, y sus documentos requieren traducción al español.</p>

<h2>Requisito de visa para ingresar a Chile</h2>
<p>A diferencia de la mayoría de los países latinoamericanos, Haití <strong>sí requiere visa consular</strong> para ingresar a Chile. Esto significa que los ciudadanos haitianos deben solicitar la visa antes de viajar, en el Consulado o Embajada de Chile en Puerto Príncipe o en el país donde residan.</p>

<h2>Opciones de regularización en Chile</h2>
<p>Para quienes ya están en Chile, las opciones de regularización son las mismas que para cualquier extranjero:</p>
<ul>
  <li><a href="/visa-temporaria/hijo-chileno"><strong>Visa por hijo/a chileno</strong></a>: muy frecuente en la comunidad haitiana dado el alto número de hijos nacidos en Chile.</li>
  <li><a href="/visa-temporaria/contrato-trabajo"><strong>Visa por contrato de trabajo</strong></a>: si tienes o consigues un empleador formal en Chile.</li>
  <li><a href="/visa-temporaria/pareja-chilena"><strong>Por pareja chilena</strong></a>: si estás casado/a o tienes AUC con un/a ciudadano/a chileno/a.</li>
  <li><strong>Visa por razones humanitarias:</strong> para situaciones de vulnerabilidad evaluadas por el SERMIG.</li>
</ul>

<h2>Si estás en situación irregular</h2>
<p>Si tu visa venció o ingresaste sin los requisitos, el camino es la <a href="/autodenuncia">autodenuncia migratoria</a> en la PDI, seguida de la solicitud de visa correspondiente.</p>

<h2>Traducción de documentos</h2>
<p>Los documentos haitianos (certificados de nacimiento, antecedentes penales, etc.) están en francés o criollo haitiano y deben ser <strong>traducidos al español por un traductor oficial</strong> reconocido por el Ministerio de Relaciones Exteriores de Chile, además de ser apostillados.</p>

<h2>Comunidades y recursos</h2>
<ul>
  <li><strong>Embajada de Haití en Santiago:</strong> orienta sobre documentación y apostilla de documentos haitianos.</li>
  <li><strong>Iglesias y organizaciones comunitarias:</strong> la comunidad haitiana en Chile cuenta con redes de apoyo en Santiago, Quilicura y otras comunas.</li>
  <li><strong>ACNUR Chile:</strong> apoya a ciudadanos haitianos con necesidades de protección especial.</li>
</ul>
  $g2$,
  faq_items = '[
    {
      "question": "¿Los haitianos necesitan visa para entrar a Chile?",
      "answer": "Sí. Los ciudadanos haitianos requieren visa consular para ingresar a Chile. Deben solicitarla en el Consulado de Chile en Puerto Príncipe o en el consulado chileno del país donde residan antes de viajar."
    },
    {
      "question": "¿Puedo hacer la autodenuncia si no hablo español?",
      "answer": "La PDI puede asistirte aunque no hables español. En ciudades con alta población haitiana, algunos funcionarios tienen nociones básicas de francés o criollo. También puedes ir acompañado de alguien que traduzca."
    },
    {
      "question": "¿Dónde apostillo mis documentos haitianos?",
      "answer": "Los documentos haitianos deben apostillarse en el Ministerio de Asuntos Exteriores de Haití en Puerto Príncipe. Si ya estás en Chile, puedes coordinar a través de la Embajada de Haití en Santiago o mediante gestores habilitados en Haití."
    },
    {
      "question": "¿Mis hijos nacidos en Chile son chilenos?",
      "answer": "Sí, si al menos uno de los padres tenía residencia legal en Chile al momento del nacimiento. Si ambos padres estaban en situación irregular, el menor puede solicitar la nacionalidad al cumplir 18 años."
    }
  ]'::jsonb,
  related_slugs = ARRAY[
    'visa-temporaria/hijo-chileno',
    'visa-temporaria/contrato-trabajo',
    'autodenuncia/pdi-paso-a-paso',
    'permanencia-definitiva',
    'vivir-en-chile/rut-extranjero'
  ]::TEXT[],
  reading_time_minutes = 4,
  updated_at = NOW()
WHERE slug = 'haiti';

-- ──────────────────────────────────────────────────────────
-- 3. HUB: bolivia
-- ──────────────────────────────────────────────────────────
UPDATE articles SET
  content = $g3$
<p>Bolivia y Chile comparten frontera y una larga historia de intercambio migratorio. La comunidad boliviana en Chile supera las 120.000 personas y está presente en todo el país, con fuerte concentración en las regiones del norte. Esta guía resume las opciones específicas para ciudadanos bolivianos.</p>

<h2>Ingreso a Chile desde Bolivia</h2>
<p>Los ciudadanos bolivianos pueden ingresar a Chile <strong>sin visa de turismo</strong> por hasta 90 días. Pueden usar pasaporte o cédula de identidad boliviana vigente para el ingreso.</p>

<h2>Ventaja MERCOSUR</h2>
<p>Bolivia es miembro pleno del MERCOSUR desde 2015 (aunque la incorporación formal fue gradual), lo que permite a sus ciudadanos acceder a la <a href="/visa-temporaria/mercosur"><strong>Visa Mercosur</strong></a>. Esta visa requiere menos documentación que otras categorías y no exige contrato de trabajo ni vínculo familiar previo.</p>

<h2>Opciones de regularización disponibles</h2>
<ul>
  <li><a href="/visa-temporaria/mercosur"><strong>Visa Mercosur</strong></a>: la opción más accesible para bolivianos.</li>
  <li><a href="/visa-temporaria/hijo-chileno"><strong>Por hijo/a chileno</strong></a>: si tienes un hijo con nacionalidad chilena.</li>
  <li><a href="/visa-temporaria/contrato-trabajo"><strong>Por contrato de trabajo</strong></a>: con empleador formal.</li>
  <li><a href="/visa-temporaria/pareja-chilena"><strong>Por pareja chilena</strong></a>: si estás casado/a o tienes AUC con un/a chileno/a.</li>
</ul>

<h2>Si estás en situación irregular</h2>
<p>Si tu estadía de turismo venció, realiza la <a href="/autodenuncia">autodenuncia migratoria</a> en la PDI y luego solicita la Visa Mercosur u otra categoría según tu situación.</p>

<h2>Apostilla de documentos bolivianos</h2>
<p>Bolivia es signataria del Convenio de La Haya. Los documentos se apostillan ante el Ministerio de Relaciones Exteriores boliviano o en las notarías habilitadas.</p>
  $g3$,
  faq_items = '[
    {
      "question": "¿Los bolivianos necesitan visa para entrar a Chile?",
      "answer": "No. Los ciudadanos bolivianos con pasaporte o cédula de identidad vigentes pueden ingresar a Chile como turistas sin visa por hasta 90 días."
    },
    {
      "question": "¿La cédula de identidad boliviana sirve para trámites en Chile?",
      "answer": "La cédula boliviana es válida para identificación en Chile. Sin embargo, para trámites migratorios formales el SERMIG generalmente requiere pasaporte. Consulta el requisito específico para cada trámite."
    },
    {
      "question": "¿Bolivia aplica para la Visa Mercosur?",
      "answer": "Sí. Bolivia es miembro pleno del MERCOSUR y sus ciudadanos tienen acceso a la Visa Mercosur en Chile, que simplifica los requisitos documentales."
    },
    {
      "question": "¿Hay restricciones especiales para bolivianos por el diferendo marítimo?",
      "answer": "No. El diferendo marítimo es una disputa entre Estados y no afecta los derechos migratorios individuales de los ciudadanos bolivianos en Chile. Pueden regularizarse y residir en Chile con los mismos derechos que cualquier otro extranjero."
    }
  ]'::jsonb,
  related_slugs = ARRAY[
    'visa-temporaria/mercosur',
    'visa-temporaria/hijo-chileno',
    'autodenuncia/pdi-paso-a-paso',
    'permanencia-definitiva',
    'vivir-en-chile'
  ]::TEXT[],
  reading_time_minutes = 3,
  updated_at = NOW()
WHERE slug = 'bolivia';

-- ──────────────────────────────────────────────────────────
-- 4. HUB: argentina
-- ──────────────────────────────────────────────────────────
UPDATE articles SET
  content = $g4$
<p>Argentina y Chile tienen uno de los vínculos migratorios más fluidos de América del Sur. Comparten frontera extensa, idioma y cultura similares. Los argentinos en Chile superan las 60.000 personas y son uno de los grupos con mayor integración laboral y social.</p>

<h2>Ingreso y estadía como turista</h2>
<p>Los ciudadanos argentinos pueden ingresar a Chile <strong>sin visa</strong>, con solo la cédula de identidad argentina vigente. No se requiere pasaporte para el ingreso terrestre. La estadía turística es de hasta 90 días.</p>

<h2>Visa Mercosur: la opción más directa</h2>
<p>Argentina es miembro fundador del MERCOSUR, por lo que sus ciudadanos tienen pleno acceso a la <a href="/visa-temporaria/mercosur"><strong>Visa Mercosur</strong></a>. Es la categoría de residencia más sencilla de tramitar para argentinos porque:</p>
<ul>
  <li>No requiere contrato de trabajo.</li>
  <li>No requiere vínculo familiar con un chileno.</li>
  <li>Requiere menos documentación que otras categorías.</li>
  <li>El certificado de antecedentes penales argentino (Registro Nacional de Reincidencia) es fácil de obtener online.</li>
</ul>

<h2>Otras opciones disponibles</h2>
<ul>
  <li><a href="/visa-temporaria/contrato-trabajo"><strong>Por contrato de trabajo</strong></a>: para quienes tienen una oferta laboral formal.</li>
  <li><a href="/visa-temporaria/hijo-chileno"><strong>Por hijo/a chileno</strong></a>: si tienes un hijo con nacionalidad chilena.</li>
  <li><a href="/visa-temporaria/pareja-chilena"><strong>Por pareja chilena</strong></a>: si estás casado/a o tienes AUC con un/a chileno/a.</li>
</ul>

<h2>Reconocimiento de títulos profesionales</h2>
<p>Existe un convenio de reconocimiento de títulos entre Argentina y Chile para ciertas profesiones. Consulta con la institución reguladora chilena de tu área (Colegio de Médicos, Colegio de Abogados, etc.) para conocer los requisitos específicos.</p>

<h2>Apostilla de documentos argentinos</h2>
<p>Argentina es signataria del Convenio de La Haya. Los documentos se apostillan en el Ministerio de Relaciones Exteriores argentino o en los ministerios provinciales habilitados.</p>
  $g4$,
  faq_items = '[
    {
      "question": "¿Los argentinos necesitan pasaporte para entrar a Chile?",
      "answer": "No. Los ciudadanos argentinos pueden ingresar a Chile solo con su cédula de identidad argentina vigente, tanto por paso terrestre como aéreo. El pasaporte no es obligatorio, aunque sí recomendable para viajes fuera de la región."
    },
    {
      "question": "¿El DNI argentino sirve para trámites en Chile?",
      "answer": "El DNI argentino es ampliamente reconocido en Chile para identificación en comercios, bancos y trámites cotidianos. Para trámites migratorios formales ante el SERMIG, se recomienda tener el pasaporte disponible."
    },
    {
      "question": "¿Puedo ejercer mi profesión en Chile con título argentino?",
      "answer": "Depende de la profesión. Para profesiones no reguladas, los empleadores suelen reconocer el título directamente. Para profesiones reguladas existe un convenio bilateral que facilita el reconocimiento, pero debes consultar con el colegio profesional correspondiente en Chile."
    },
    {
      "question": "¿Los argentinos pagan arancel para la Visa Mercosur?",
      "answer": "El arancel depende del principio de reciprocidad. Chile cobra a los argentinos el mismo arancel que Argentina cobra a los chilenos para un trámite equivalente. Consulta el monto vigente en el portal del SERMIG."
    }
  ]'::jsonb,
  related_slugs = ARRAY[
    'visa-temporaria/mercosur',
    'visa-temporaria/contrato-trabajo',
    'autodenuncia/pdi-paso-a-paso',
    'permanencia-definitiva',
    'vivir-en-chile'
  ]::TEXT[],
  reading_time_minutes = 3,
  updated_at = NOW()
WHERE slug = 'argentina';

-- ──────────────────────────────────────────────────────────
-- 5. HUB: republica-dominicana
-- ──────────────────────────────────────────────────────────
UPDATE articles SET
  content = $g5$
<p>La comunidad dominicana en Chile ha crecido significativamente en los últimos años, superando las 40.000 personas. Los ciudadanos dominicanos enfrentan algunas particularidades migratorias que conviene conocer antes de viajar o iniciar un trámite de regularización.</p>

<h2>Requisito de visa para ingresar a Chile</h2>
<p>Los ciudadanos de República Dominicana <strong>requieren visa consular</strong> para ingresar a Chile. Deben solicitarla antes de viajar en el Consulado de Chile en Santo Domingo u otro consulado chileno en su región. Sin visa previa, el ingreso puede ser denegado en frontera o aeropuerto.</p>

<h2>Opciones de regularización en Chile</h2>
<p>Para quienes ya están en Chile y necesitan regularizarse, las opciones son:</p>
<ul>
  <li><a href="/visa-temporaria/hijo-chileno"><strong>Visa por hijo/a chileno</strong></a>: si tienes un hijo con nacionalidad chilena.</li>
  <li><a href="/visa-temporaria/contrato-trabajo"><strong>Visa por contrato de trabajo</strong></a>: con empleador formal en Chile.</li>
  <li><a href="/visa-temporaria/pareja-chilena"><strong>Por pareja chilena</strong></a>: si estás casado/a o tienes AUC con un/a chileno/a.</li>
  <li><strong>Razones humanitarias:</strong> para situaciones de vulnerabilidad especial evaluadas por el SERMIG.</li>
</ul>
<p>República Dominicana <strong>no es miembro del MERCOSUR</strong>, por lo que sus ciudadanos no tienen acceso a la Visa Mercosur.</p>

<h2>Si estás en situación irregular</h2>
<p>Si tu visa venció, realiza la <a href="/autodenuncia">autodenuncia migratoria</a> en la PDI para obtener el Certificado de Autodenuncia, que te habilita a solicitar una visa temporaria.</p>

<h2>Apostilla de documentos dominicanos</h2>
<p>República Dominicana es signataria del Convenio de La Haya desde 2009. Los documentos se apostillan en la Procuraduría General de la República Dominicana o en las oficinas habilitadas del Ministerio de Relaciones Exteriores.</p>

<h2>Comunidades y recursos</h2>
<ul>
  <li><strong>Consulado de República Dominicana en Santiago:</strong> orienta sobre documentación y regularización.</li>
  <li><strong>OIM Chile:</strong> apoyo en integración laboral y social.</li>
</ul>
  $g5$,
  faq_items = '[
    {
      "question": "¿Los dominicanos necesitan visa para entrar a Chile?",
      "answer": "Sí. Los ciudadanos de República Dominicana requieren visa consular previa para ingresar a Chile. Deben solicitarla en el Consulado de Chile en Santo Domingo antes de viajar."
    },
    {
      "question": "¿Los dominicanos tienen acceso a la Visa Mercosur?",
      "answer": "No. República Dominicana no es miembro ni asociado del MERCOSUR, por lo que sus ciudadanos no tienen acceso a la Visa Mercosur. Deben tramitar otra categoría de visa temporaria según su situación."
    },
    {
      "question": "¿Puedo regularizarme en Chile si entré sin visa o con visa vencida?",
      "answer": "Sí. El mecanismo de autodenuncia migratoria está disponible para todas las nacionalidades. Presentándote a la PDI, pagas la multa correspondiente y obtienes el Certificado de Autodenuncia para tramitar una visa."
    },
    {
      "question": "¿Dónde apostillo mis documentos dominicanos estando en Chile?",
      "answer": "Puedes coordinar la apostilla a través de la Embajada o Consulado de República Dominicana en Chile, o mediante gestores habilitados en República Dominicana. El proceso debe hacerse ante la Procuraduría General de la República Dominicana."
    }
  ]'::jsonb,
  related_slugs = ARRAY[
    'visa-temporaria/hijo-chileno',
    'visa-temporaria/contrato-trabajo',
    'autodenuncia/pdi-paso-a-paso',
    'permanencia-definitiva',
    'vivir-en-chile/rut-extranjero'
  ]::TEXT[],
  reading_time_minutes = 4,
  updated_at = NOW()
WHERE slug = 'republica-dominicana';
