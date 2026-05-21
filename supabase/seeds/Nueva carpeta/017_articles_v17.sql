-- ============================================================
-- MigraciónChile — Seed v17: derechos, impuestos, familia, hijos
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

-- ──────────────────────────────────────────────────────────
-- 1. CLUSTER: problemas/derechos-migrante
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'problemas/derechos-migrante',
  'problemas',
  'problemas',
  'cluster',
  'Derechos de los Migrantes en Chile: Qué Garantiza la Ley 2026',
  'Derechos de los Migrantes en Chile: Lo que Garantiza la Ley 21.325',
  'Guía completa sobre los derechos de los migrantes en Chile según la Ley 21.325. Educación, salud, trabajo, no discriminación, due process y acceso a la justicia.',
  'derechos migrantes chile ley',
  $v1$
<p>La <strong>Ley 21.325 de Migración y Extranjería</strong>, promulgada en 2021, establece un catálogo de derechos para todas las personas migrantes que residen en Chile, independientemente de su situación migratoria regular o irregular. Conocer estos derechos es fundamental para poder ejercerlos.</p>

<h2>Derechos garantizados con independencia del estatus migratorio</h2>
<p>La Ley 21.325 garantiza los siguientes derechos a toda persona migrante en Chile, con o sin documentación:</p>

<h3>Derecho a la educación</h3>
<p>Los niños, niñas y adolescentes migrantes tienen derecho a acceder al sistema educativo chileno, independientemente de la situación migratoria propia o de sus padres. Los establecimientos que reciben financiamiento público no pueden rechazar la matrícula por razones migratorias. Si esto ocurre, puede denunciarse a la <strong>Superintendencia de Educación</strong> (fono: 600 600 2626).</p>

<h3>Derecho a atención de urgencia en salud</h3>
<p>Toda persona en Chile, sin importar su situación migratoria, tiene derecho a recibir atención médica de urgencia en los establecimientos de salud públicos. Ningún hospital o clínica puede negarse a atender una urgencia por falta de documentación migratoria. Este derecho no puede ser condicionado al pago previo en situaciones de urgencia vital.</p>

<h3>Derecho a no ser discriminada</h3>
<p>La Ley 21.325 prohíbe la discriminación arbitraria por razón de origen nacional, étnico o migratorio. Esto aplica en el acceso al trabajo, la vivienda, los servicios y la vida cotidiana. La discriminación puede denunciarse ante el <strong>Instituto Nacional de Derechos Humanos (INDH)</strong> o, en el ámbito laboral, ante la <strong>Dirección del Trabajo</strong>.</p>

<h3>Derecho a la unidad familiar</h3>
<p>La ley reconoce el principio de unidad familiar como criterio orientador de las políticas migratorias. Las decisiones del SERMIG deben considerar el impacto en el núcleo familiar, especialmente cuando hay hijos menores de edad en Chile.</p>

<h2>Derechos en procedimientos migratorios</h2>
<p>Cuando una persona enfrenta un procedimiento migratorio (rechazo de visa, expulsión, control en frontera), la ley garantiza:</p>

<h3>Derecho a ser informada en idioma comprensible</h3>
<p>Toda persona tiene derecho a recibir información sobre su situación migratoria en un idioma que comprenda. Si no habla español, tiene derecho a intérprete en los procedimientos formales.</p>

<h3>Derecho a defensa jurídica</h3>
<p>En procedimientos de expulsión u otras medidas que afecten el derecho a residir en Chile, la persona tiene derecho a ser asistida por un abogado. Si no puede costear uno, puede solicitarlo a través de la <strong>Corporación de Asistencia Judicial (CAJ)</strong>, que presta asistencia gratuita o a bajo costo.</p>

<h3>Derecho a recurrir las resoluciones</h3>
<p>Las resoluciones del SERMIG que denieguen, revoquen o limiten permisos de residencia pueden ser impugnadas mediante recursos administrativos (reposición, jerárquico) y, eventualmente, acciones judiciales. Ver la guía de <a href="/problemas/recurso-administrativo">recursos administrativos</a>.</p>

<h3>Derecho a no ser expulsada arbitrariamente</h3>
<p>La expulsión es una medida grave que debe seguir un procedimiento legal con notificación, plazo para recurrir y, en general, no puede ejecutarse mientras hay recursos pendientes. Las personas con vínculos familiares en Chile (hijos chilenos, cónyuge chileno) tienen protección reforzada contra la expulsión.</p>

<h2>Derechos laborales</h2>
<p>Los extranjeros con permiso de residencia vigente tienen los mismos derechos laborales que los trabajadores chilenos: mismo salario mínimo, mismas condiciones de contrato, mismos derechos a cotizaciones, vacaciones, licencias y protección ante el despido. Ver la guía de <a href="/vivir-en-chile/trabajo-contrato">Trabajo y Derechos Laborales</a>.</p>

<h2>¿Dónde denunciar vulneraciones?</h2>
<ul>
  <li><strong>INDH (Instituto Nacional de Derechos Humanos):</strong> vulneraciones de derechos fundamentales. Web: indh.cl</li>
  <li><strong>Dirección del Trabajo:</strong> discriminación o abusos laborales. Web: dt.gob.cl</li>
  <li><strong>Superintendencia de Educación:</strong> negativa de matrícula. Fono: 600 600 2626</li>
  <li><strong>Defensoría de la Niñez:</strong> vulneraciones que afecten a menores. Web: defensorianinez.cl</li>
  <li><strong>Corporación de Asistencia Judicial (CAJ):</strong> asesoría legal gratuita o a bajo costo. Tiene sedes en todas las regiones.</li>
  <li><strong>Servicio Jesuita a Migrantes:</strong> orientación jurídica y apoyo a migrantes. Web: sjmchile.org</li>
</ul>
  $v1$,
  '[
    {
      "question": "¿Tengo derechos en Chile aunque esté en situación irregular?",
      "answer": "Sí. La Ley 21.325 reconoce derechos fundamentales a todas las personas migrantes, incluyendo a quienes están en situación irregular. Los más importantes son: atención de urgencia en salud, acceso a educación para los hijos, derecho a no ser discriminado, y garantías del debido proceso en procedimientos migratorios."
    },
    {
      "question": "¿Puedo ir a urgencias sin documentos?",
      "answer": "Sí. Los hospitales públicos están obligados a atender urgencias sin exigir documentación migratoria. En la práctica, llevar el pasaporte facilita el proceso administrativo, pero ningún establecimiento puede negarte atención de emergencia por carecer de documentos."
    },
    {
      "question": "¿Qué hago si me discriminan por ser migrante en el trabajo?",
      "answer": "Puedes denunciar ante la Dirección del Trabajo (dt.gob.cl) o el INDH. En el ámbito laboral, la discriminación salarial o de trato por nacionalidad es ilegal y puede generar indemnizaciones. Si necesitas asesoría, la Corporación de Asistencia Judicial tiene sedes en todas las regiones."
    },
    {
      "question": "¿Me pueden expulsar sin darme oportunidad de defenderme?",
      "answer": "No. La expulsión debe seguir un procedimiento legal que incluye notificación formal, plazo para recurrir ante la autoridad competente y, en general, no puede ejecutarse mientras hay recursos pendientes. Si tienes hijos chilenos o cónyuge chileno, la protección contra la expulsión es reforzada."
    }
  ]'::jsonb,
  ARRAY[
    'problemas',
    'problemas/expulsion',
    'problemas/recurso-administrativo',
    'vivir-en-chile/trabajo-contrato',
    'autodenuncia'
  ]::TEXT[],
  6,
  TRUE,
  NOW()
)
ON CONFLICT (slug) DO NOTHING;

-- ──────────────────────────────────────────────────────────
-- 2. CLUSTER: vivir-en-chile/impuestos-extranjero
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'vivir-en-chile/impuestos-extranjero',
  'vivir-en-chile',
  'vivir-en-chile',
  'cluster',
  'Impuestos para Extranjeros en Chile: Renta y Obligaciones Tributarias 2026',
  'Cómo Funcionan los Impuestos para Extranjeros en Chile: Guía Tributaria',
  'Guía sobre las obligaciones tributarias de los extranjeros en Chile. Cuándo eres residente tributario, qué impuestos pagas y cómo hacer la declaración de renta.',
  'impuestos extranjeros chile declaracion renta',
  $v2$
<p>Chile aplica un sistema de tributación basado en la <strong>residencia</strong>, no en la ciudadanía. Esto significa que si vives en Chile, pagas impuestos en Chile sobre tus ingresos — independientemente de tu nacionalidad. Esta guía explica cuándo aplican las obligaciones tributarias y cómo funcionan para los extranjeros.</p>

<h2>¿Cuándo eres residente tributario en Chile?</h2>
<p>Según la Ley sobre Impuesto a la Renta (Artículo 8 del Código Tributario y Artículo 3 de la LIR), una persona se considera residente tributario en Chile cuando tiene <strong>residencia o domicilio en el país</strong>. En la práctica, el SII considera que tienes domicilio en Chile cuando llevas más de <strong>6 meses continuos</strong> en el país, o cuando la Administración Tributaria establece que tu centro de actividades económicas está en Chile.</p>
<p>El criterio no es automático al cruzar los 183 días — el SII evalúa el ánimo de permanencia y el centro de intereses vitales.</p>

<h2>Regla especial: los primeros 3 años</h2>
<p>La legislación tributaria chilena establece una protección para los extranjeros recién llegados: durante los <strong>primeros 3 años de domicilio en Chile</strong>, los extranjeros solo tributan sobre sus <strong>rentas de fuente chilena</strong> (ingresos generados en Chile). Pasado ese período, el residente tributario también debe declarar y tributar por sus rentas de fuente extranjera (ingresos generados fuera de Chile).</p>
<p>Esta regla está en el Artículo 3 de la Ley sobre Impuesto a la Renta. El SII puede prorrogar el período de 3 años en casos justificados.</p>

<h2>¿Qué impuestos aplican?</h2>

<h3>Trabajadores dependientes (con contrato)</h3>
<p>Si trabajas con contrato, tu empleador retiene mensualmente el <strong>Impuesto Único de Segunda Categoría</strong>, que es un impuesto progresivo sobre los sueldos. Las tasas van del 0% (ingresos bajos) hasta el 40% (ingresos muy altos), con tramos definidos por la ley. El empleador lo descuenta directamente y lo paga al SII — tú no necesitas hacer ningún trámite adicional si solo tienes un empleador.</p>
<p>Los tramos y tasas exactas se publican anualmente en el sitio del SII (sii.cl) — verifica siempre los valores vigentes para el año en curso.</p>

<h3>Trabajadores independientes (honorarios)</h3>
<p>Si emites boletas de honorarios, el SII retiene automáticamente un porcentaje de cada boleta emitida (retención provisional). Esta retención va a cuenta del impuesto anual. Al año siguiente (Operación Renta, entre abril y mayo), debes hacer la declaración de renta:</p>
<ul>
  <li>Si la suma de retenciones supera el impuesto calculado: el SII te devuelve la diferencia.</li>
  <li>Si las retenciones son insuficientes: debes pagar la diferencia.</li>
</ul>
<p>La declaración se hace online en el portal del SII (sii.cl). En muchos casos, el SII te propone una declaración precompletada que puedes aceptar o modificar.</p>

<h3>Impuesto Global Complementario</h3>
<p>Si tienes ingresos de múltiples fuentes (sueldo + honorarios, o rentas del extranjero después de 3 años), debes presentar la declaración del <strong>Impuesto Global Complementario</strong> en la Operación Renta anual. La fecha límite habitual es el <strong>30 de abril</strong> de cada año para el año tributario anterior.</p>

<h2>¿Tienes ingresos fuera de Chile?</h2>
<p>Durante los primeros 3 años no tienes obligación de declararlos. A partir del cuarto año de domicilio en Chile, los ingresos de fuente extranjera (rentas de inmuebles en tu país, dividendos, pensiones del exterior, etc.) deben incluirse en la declaración anual.</p>
<p>Chile tiene convenios para evitar la doble tributación con varios países (Perú, Colombia, Argentina, Brasil, Canadá, España, entre otros). Si tu país tiene convenio con Chile, es posible aplicar créditos o exenciones. Consulta un contador o el sitio del SII para tu situación específica.</p>

<h2>El RUT y el SII</h2>
<p>Toda persona con RUT en Chile (ya sea el RUT de la cédula de identidad para extranjeros o el RUT provisorio del SII) puede acceder al portal del SII con clave tributaria para gestionar sus obligaciones. Si tienes contrato de trabajo, es posible que ya estés inscrito automáticamente.</p>
  $v2$,
  '[
    {
      "question": "¿Debo pagar impuestos en Chile si también los pago en mi país?",
      "answer": "Si Chile tiene un convenio para evitar la doble tributación con tu país, puedes aplicar créditos para no pagar dos veces. Si no hay convenio, técnicamente podrías tributar en ambos países, aunque muchos países eximen a sus residentes en el extranjero. Consulta con un contador las implicaciones específicas para tu país de origen."
    },
    {
      "question": "¿Qué pasa si no hago la declaración de renta?",
      "answer": "El SII puede aplicar multas e intereses por declaraciones tardías o no presentadas. Sin embargo, si tu empleador ya retuvo el impuesto completo (Impuesto Único de Segunda Categoría) y no tienes otras rentas, puede que no tengas obligación de presentar una declaración adicional. Verifica tu situación en sii.cl."
    },
    {
      "question": "¿Los ingresos enviados desde mi país de origen como remesas cuentan como renta?",
      "answer": "No. Las remesas son transferencias de dinero que ya fue ingresado y tributado en otro país — no son renta en Chile. Solo son renta los ingresos generados por actividad económica o inversiones. Recibir dinero de tu familia en el exterior no genera obligaciones tributarias en Chile."
    },
    {
      "question": "¿Puedo deducir gastos de mi declaración de renta como trabajador independiente?",
      "answer": "Sí. Los trabajadores a honorarios pueden deducir ciertos gastos necesarios para generar la renta. La ley permite una deducción presunta del 30% de los ingresos (hasta cierto límite) sin necesidad de acreditar gastos, o deducir gastos reales con documentación. El SII publica las reglas vigentes cada año."
    }
  ]'::jsonb,
  ARRAY[
    'vivir-en-chile',
    'vivir-en-chile/trabajo-contrato',
    'vivir-en-chile/rut-extranjero',
    'vivir-en-chile/rut-provisorio-sii',
    'permanencia-definitiva/beneficios'
  ]::TEXT[],
  6,
  TRUE,
  NOW()
)
ON CONFLICT (slug) DO NOTHING;

-- ──────────────────────────────────────────────────────────
-- 3. CLUSTER: nacionalizacion/hijo-nacido-chile
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'nacionalizacion/hijo-nacido-chile',
  'nacionalizacion',
  'nacionalizacion',
  'cluster',
  'Hijo de Extranjeros Nacido en Chile: Ciudadanía y Documentos 2026',
  'Mi Hijo Nació en Chile y Soy Extranjero: Ciudadanía, RUT y Documentos',
  'Todo sobre la ciudadanía chilena de los hijos de extranjeros nacidos en Chile. Cómo registrar el nacimiento, obtener RUT y cédula, y si puede tener doble nacionalidad.',
  'hijo extranjero nacido chile ciudadania',
  $v3$
<p>Si tu hijo o hija nació en territorio chileno, es <strong>ciudadano chileno</strong> por el principio de <em>ius soli</em> (derecho de suelo), reconocido en el artículo 10 N°1 de la Constitución Política de Chile. Esta ciudadanía es automática y plena, independientemente de la nacionalidad, visa o situación migratoria de los padres.</p>

<h2>La excepción al ius soli</h2>
<p>La única excepción constitucional son los hijos de personas que se encuentren en Chile en calidad de <strong>diplomáticos acreditados ante el Estado chileno</strong> o en tránsito. En la práctica:</p>
<ul>
  <li>Los hijos de trabajadores, residentes, turistas, solicitantes de visa o personas en situación irregular son chilenos si nacen en Chile.</li>
  <li>Solo quedan excluidos los hijos de personal diplomático con acreditación formal.</li>
</ul>

<h2>Registro del nacimiento en el Registro Civil</h2>
<p>Inmediatamente después del nacimiento, debes registrar al menor en el <strong>Servicio de Registro Civil e Identificación (SRCeI)</strong>. En la mayoría de los hospitales y clínicas, hay una oficina del Registro Civil o un sistema de registro inmediato. El plazo legal es de <strong>60 días</strong> desde el nacimiento.</p>
<p>Documentos que generalmente se requieren:</p>
<ul>
  <li>Certificado de nacido vivo emitido por el establecimiento de salud.</li>
  <li>Documento de identidad del padre y/o madre que registra (pasaporte o cédula de identidad para extranjeros).</li>
</ul>
<p>El registro se hace ante el oficial del Registro Civil y es gratuito.</p>

<h2>RUT asignado al nacer</h2>
<p>Al inscribir el nacimiento, el Registro Civil asigna automáticamente un <strong>RUT</strong> al recién nacido. Este RUT es el número de identidad chileno del niño para toda su vida. Con el RUT puedes:</p>
<ul>
  <li>Inscribirlo en el sistema de salud (Fonasa, ficha médica).</li>
  <li>Matricularlo en el sistema educativo.</li>
  <li>Acceder al Programa Chile Crece Contigo.</li>
  <li>Tramitar la cédula de identidad chilena cuando tenga edad.</li>
</ul>

<h2>Cédula de identidad chilena para el menor</h2>
<p>Los menores chilenos pueden obtener cédula de identidad desde el nacimiento, aunque no es obligatoria hasta ciertas edades. El pasaporte chileno se puede tramitar en el Registro Civil para viajes internacionales. El pasaporte chileno de un menor de edad requiere autorización de ambos padres.</p>

<h2>¿Puede tener también la nacionalidad de los padres?</h2>
<p>Sí. La doble nacionalidad desde el nacimiento es posible si el país de origen de los padres reconoce la ciudadanía por descendencia (<em>ius sanguinis</em>). Por ejemplo:</p>
<ul>
  <li>Un hijo de padres venezolanos nacido en Chile es tanto chileno (por nacimiento en Chile) como venezolano (por descendencia, registrando el nacimiento en el consulado venezolano en Chile).</li>
  <li>Lo mismo aplica para colombianos, peruanos, bolivianos, argentinos y la mayoría de los países de la región, que reconocen la ciudadanía por descendencia.</li>
</ul>
<p>Para que el menor tenga también la nacionalidad de los padres, generalmente hay que registrar el nacimiento en el <strong>consulado del país de origen</strong> en Chile. Consulta con el consulado los requisitos y plazos.</p>

<h2>¿Cómo afecta la ciudadanía del hijo a los padres?</h2>
<p>Tener un hijo chileno no da automáticamente residencia a los padres, pero sí es un factor de arraigo familiar reconocido por la Ley 21.325. Los padres pueden solicitar:</p>
<ul>
  <li><strong>Visa temporaria por arraigo familiar</strong> (padre o madre de hijo chileno). Ver <a href="/visa-temporaria/hijo-chileno">guía completa</a>.</li>
  <li>Este arraigo también fortalece una eventual solicitud de Permanencia Definitiva.</li>
</ul>

<h2>¿Qué pasa si los padres no están regularizados?</h2>
<p>La situación migratoria de los padres no afecta la ciudadanía chilena del hijo. Incluso si los padres están en situación irregular, el hijo nacido en Chile es chileno y tiene todos los derechos de un ciudadano. El nacimiento sí puede ser un elemento que el SERMIG considera favorablemente al evaluar la regularización de los padres.</p>
  $v3$,
  '[
    {
      "question": "¿Mi hijo es chileno aunque yo esté en situación irregular?",
      "answer": "Sí. La ciudadanía chilena por nacimiento en territorio chileno no depende de la situación migratoria de los padres. Un hijo nacido en Chile de padres extranjeros — incluso sin documentos — es chileno por mandato constitucional, siempre que los padres no sean diplomáticos acreditados."
    },
    {
      "question": "¿Qué pasa si no registro el nacimiento a tiempo?",
      "answer": "El plazo legal es de 60 días, pero el Registro Civil acepta inscripciones fuera de plazo. Si el menor tiene años sin registrar, el trámite es más complejo pero posible — puede requerir declaración ante notario u otros documentos adicionales. Cuanto antes se registre, mejor."
    },
    {
      "question": "¿Mi hijo nacido en Chile puede tener pasaporte venezolano (o de mi país)?",
      "answer": "Sí. Si registras el nacimiento en el consulado de tu país en Chile, el menor puede obtener también la documentación de ese país. La mayoría de los países latinoamericanos reconocen la ciudadanía por descendencia. Consulta los requisitos y plazos en el consulado."
    },
    {
      "question": "¿Un hijo chileno me da derecho a quedarme en Chile?",
      "answer": "No automáticamente, pero sí te da derecho a solicitar visa temporaria por arraigo familiar (padre/madre de hijo chileno). Esta visa te permite residir legalmente mientras acumulas los 2 años para solicitar Permanencia Definitiva. Ver la guía de visa por hijo chileno."
    }
  ]'::jsonb,
  ARRAY[
    'nacionalizacion',
    'visa-temporaria/hijo-chileno',
    'nacionalizacion/doble-ciudadania',
    'vivir-en-chile/educacion-hijos',
    'vivir-en-chile/sistema-salud'
  ]::TEXT[],
  5,
  TRUE,
  NOW()
)
ON CONFLICT (slug) DO NOTHING;

-- ──────────────────────────────────────────────────────────
-- 4. CLUSTER: vivir-en-chile/traer-familia
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, schema_type, howto_steps, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'vivir-en-chile/traer-familia',
  'vivir-en-chile',
  'vivir-en-chile',
  'cluster',
  'Cómo Traer a tu Familia a Chile: Reunificación Familiar 2026',
  'Cómo Traer a tu Familia a Chile: Visas y Reunificación Familiar',
  'Guía completa para traer a tu familia a Chile. Cómo incluir cónyuge, hijos y padres en tu visa, requisitos y proceso de reunificación familiar ante el SERMIG.',
  'traer familia chile reunion familiar visa',
  $v4$
<p>La <strong>reunificación familiar</strong> es uno de los principios de la Ley 21.325. Si ya tienes residencia en Chile, puedes gestionar visas para que tu cónyuge, hijos y en algunos casos tus padres puedan vivir contigo legalmente en el país.</p>

<h2>¿Quiénes pueden ser incluidos como carga familiar?</h2>
<p>La Ley 21.325 define como familiares con derecho a reunificación a:</p>
<ul>
  <li><strong>Cónyuge o conviviente civil</strong> (unión formalizada mediante Acuerdo de Unión Civil en Chile o matrimonio).</li>
  <li><strong>Hijos menores de 18 años</strong> bajo tuición o cuidado personal.</li>
  <li><strong>Hijos mayores de 18 años con discapacidad</strong> que dependan del solicitante.</li>
  <li><strong>Padres del titular</strong> cuando sean personas mayores o dependientes.</li>
</ul>

<h2>Opción 1: Incluir como carga en tu propia solicitud de visa</h2>
<p>Si estás solicitando una visa temporaria o la Permanencia Definitiva, puedes incluir a tus dependientes directamente en la misma solicitud. Al aprobarse, cada dependiente recibe su propio permiso de residencia vinculado al tuyo.</p>
<p>Para esto necesitas:</p>
<ul>
  <li>Certificados de nacimiento apostillados de los hijos (para acreditar filiación).</li>
  <li>Certificado de matrimonio apostillado o acuerdo de unión civil.</li>
  <li>Pasaportes vigentes de cada dependiente.</li>
</ul>

<h2>Opción 2: Solicitud de visa separada por arraigo familiar</h2>
<p>Si tus familiares ya están en Chile (ingresaron como turistas o viven contigo) pueden solicitar visa temporaria por arraigo familiar de forma independiente, acreditando el vínculo contigo y que ya tienes residencia legal en Chile.</p>

<h2>Opción 3: Visa consular desde el exterior</h2>
<p>Si tus familiares aún están en tu país de origen, pueden solicitar una visa de residencia en la <strong>Embajada o Consulado de Chile</strong> en ese país, presentando los documentos que acrediten el vínculo familiar y que el familiar en Chile tiene residencia vigente.</p>
<p>Este proceso puede ser más lento ya que depende de la disponibilidad de la sede consular. Para algunos países con alta demanda, los plazos pueden ser extensos.</p>

<h2>¿Qué pasa con los hijos que ya son adultos?</h2>
<p>Los hijos mayores de 18 años sin discapacidad no califican como dependientes. Deben solicitar visa por sus propios méritos: visa de estudiante si están en una institución académica, visa de trabajo si tienen contrato, etc. Sin embargo, el arraigo familiar (tener padres con residencia en Chile) puede considerarse en la evaluación.</p>

<h2>¿Y los padres del titular?</h2>
<p>Los padres pueden incluirse si son personas mayores dependientes del titular. El SERMIG evalúa la dependencia económica o de cuidado. Si los padres son adultos mayores que necesitan cuidado y el titular es quien los provee, hay fundamento para la visa. Sin embargo, esta categoría tiene requisitos más estrictos y puede requerir documentación adicional.</p>

<h2>Documentos para apostillar</h2>
<p>Todos los documentos emitidos en el extranjero (certificados de nacimiento, matrimonio) deben estar:</p>
<ul>
  <li><strong>Apostillados</strong> si el país de origen es signatario del Convenio de La Haya.</li>
  <li><strong>Legalizados</strong> (consulado del país de origen + Ministerio de RREE de Chile) si el país no es signatario.</li>
  <li>Traducidos al español por traductor oficial del Ministerio de Relaciones Exteriores de Chile si están en otro idioma.</li>
</ul>

<h2>Mientras los familiares esperan resolución</h2>
<p>Los familiares que están en Chile como turistas pueden iniciar el trámite de visa familiar antes de que venza su permiso de turismo. El comprobante de trámite activo los habilita para permanecer mientras se resuelve la solicitud.</p>
  $v4$,
  'HowTo',
  '[
    {"name": "Identificar qué familiares califican como carga", "text": "Determina si tu familiar califica: cónyuge, conviviente civil, hijos menores de 18, hijos mayores con discapacidad, o padres dependientes. Los hijos adultos sin discapacidad deben solicitar visa propia."},
    {"name": "Obtener y apostillar los documentos del familiar", "text": "Reúne certificados de nacimiento o matrimonio del país de origen. Apostíllalos si el país es signatario del Convenio de La Haya, o gestiona la legalización consular si no lo es."},
    {"name": "Decidir la vía: inclusión como carga, solicitud separada o visa consular", "text": "Si el familiar ya está en Chile: solicitud separada de visa por arraigo familiar. Si está en el exterior: visa consular desde el Consulado de Chile en su país. Si aún estás tramitando tu propia visa: inclúyelos como carga en tu solicitud."},
    {"name": "Presentar la solicitud con documentos del vínculo familiar", "text": "Accede al portal tramitesmigratorios.interior.gob.cl. Incluye los documentos del familiar y los que acreditan el vínculo (certificado de nacimiento, matrimonio) más tu propia documentación de residencia."},
    {"name": "Tramitar la cédula para cada familiar una vez aprobada la visa", "text": "Cuando el SERMIG apruebe la visa, cada familiar debe ir al Registro Civil (SRCeI) para obtener su cédula de identidad para extranjeros. Cada persona tiene su propia cédula."}
  ]'::jsonb,
  '[
    {
      "question": "¿Puedo traer a mis padres si tengo Permanencia Definitiva?",
      "answer": "Sí, si tus padres son dependientes de ti (adultos mayores que necesitan cuidado o apoyo económico). El SERMIG evalúa la dependencia. Necesitarás acreditar el vínculo, la dependencia y que tienes medios suficientes para sostenerlos. No existe un derecho automático — es una evaluación caso a caso."
    },
    {
      "question": "¿Mi pareja en convivencia (sin matrimonio ni AUC) puede obtener visa familiar?",
      "answer": "La convivencia informal no formal (sin matrimonio ni Acuerdo de Unión Civil) no está reconocida como vínculo familiar para estos efectos. Para que tu pareja pueda obtener visa por vínculo contigo, necesitan formalizar la unión mediante el AUC ante el Registro Civil de Chile, o bien el matrimonio."
    },
    {
      "question": "¿Mis hijos que vienen desde el exterior necesitan visa para entrar a Chile?",
      "answer": "Depende de la nacionalidad. La mayoría de países latinoamericanos pueden ingresar a Chile como turistas sin visa. Desde Chile pueden solicitar la visa familiar. Si el país de origen requiere visa consular para ingresar a Chile, deberán tramitarla primero en el Consulado chileno del país de origen."
    },
    {
      "question": "¿El tiempo de mi familiar como carga cuenta para que él/ella pida Permanencia Definitiva?",
      "answer": "Sí. El tiempo de residencia legal de tu familiar en Chile, incluso como dependiente de tu visa, cuenta para el cómputo de los 2 años necesarios para solicitar la Permanencia Definitiva en forma individual."
    }
  ]'::jsonb,
  ARRAY[
    'vivir-en-chile',
    'visa-temporaria/hijo-chileno',
    'visa-temporaria/pareja-chilena',
    'permanencia-definitiva',
    'nacionalizacion/hijo-nacido-chile'
  ]::TEXT[],
  6,
  TRUE,
  NOW()
)
ON CONFLICT (slug) DO NOTHING;
