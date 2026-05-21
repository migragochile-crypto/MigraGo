-- ============================================================
-- MigraciónChile — Seed v1: primeros artículos reales
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

-- ──────────────────────────────────────────────────────────
-- 1. PILLAR: autodenuncia
-- ──────────────────────────────────────────────────────────
UPDATE articles SET
  content = $c1$
<p>La <strong>autodenuncia migratoria</strong> es el proceso mediante el cual un extranjero en situación irregular en Chile notifica voluntariamente su situación a las autoridades para regularizarse sin ser expulsado. Fue establecida por la <strong>Ley 21.325 de Migración y Extranjería</strong> de 2021 como un mecanismo de regularización humanitaria.</p>

<h2>¿Qué es la autodenuncia y para qué sirve?</h2>
<p>Muchos extranjeros llegan a Chile con visa de turismo y, al vencerse el plazo, quedan en situación irregular sin quererlo. La autodenuncia permite salir de esa situación de forma legal y ordenada.</p>
<p>Al autodenuenciarse, el extranjero obtiene un <strong>Certificado de Autodenuncia</strong> que suspende cualquier procedimiento de expulsión mientras regulariza su situación. Con ese certificado puede solicitar una <a href="/visa-temporaria">visa temporaria</a> que corresponda a su caso.</p>

<h2>¿Quiénes pueden autodenuenciarse?</h2>
<p>Puede autodenuenciarse cualquier extranjero que:</p>
<ul>
  <li>Se encuentre en Chile en situación migratoria irregular (visa vencida, ingreso sin visa, etc.)</li>
  <li>No tenga una orden de expulsión ya ejecutoriada</li>
  <li>No tenga antecedentes penales graves en Chile ni en el extranjero</li>
</ul>
<p>El proceso está disponible para todas las nacionalidades y es especialmente frecuente entre ciudadanos venezolanos, colombianos, peruanos y ecuatorianos.</p>

<h2>¿Cuánto cuesta?</h2>
<p>La autodenuncia implica el pago de una <strong>multa por infracción migratoria</strong>, cuyo monto depende del tiempo en situación irregular:</p>
<table>
  <thead>
    <tr><th>Tiempo en situación irregular</th><th>Multa</th></tr>
  </thead>
  <tbody>
    <tr><td>Hasta 30 días</td><td>1 UTM (~$66.000 CLP)</td></tr>
    <tr><td>31 a 90 días</td><td>2 UTM (~$132.000 CLP)</td></tr>
    <tr><td>91 días a 1 año</td><td>3 UTM (~$198.000 CLP)</td></tr>
    <tr><td>Más de 1 año</td><td>Hasta 5 UTM (~$330.000 CLP)</td></tr>
  </tbody>
</table>
<p>Los valores en pesos son referenciales. Verifica el valor actualizado de la UTM en el <a href="https://www.sii.cl" target="_blank" rel="noopener noreferrer">sitio del SII</a>.</p>

<h2>¿Qué pasa después de la autodenuncia?</h2>
<p>Con el Certificado de Autodenuncia en mano, debes solicitar la visa temporaria que corresponda a tu situación a través del portal de <a href="https://tramitesmigratorios.interior.gob.cl" target="_blank" rel="noopener noreferrer">Trámites Migratorios</a>. Las causales más comunes son:</p>
<ul>
  <li><a href="/visa-temporaria/hijo-chileno">Visa por hijo/a chileno</a>: si tienes un hijo o hija con nacionalidad chilena.</li>
  <li><a href="/visa-temporaria/pareja-chilena">Visa por pareja chilena</a>: si estás casado/a o tienes AUC con un/a ciudadano/a chileno/a.</li>
  <li><a href="/visa-temporaria/contrato-trabajo">Visa por contrato de trabajo</a>: si tienes un empleador dispuesto a contratarte formalmente.</li>
  <li><a href="/visa-temporaria/responsabilidad-democratica">Visa de Responsabilidad Democrática (VRD)</a>: disponible exclusivamente para ciudadanos venezolanos.</li>
</ul>
<p>Si no calificas para ninguna de estas causales, el SERMIG evaluará tu caso y podrá orientarte sobre otras vías disponibles.</p>

<h2>Diferencia entre PDI y SERMIG</h2>
<p>La <strong>PDI</strong> (Policía de Investigaciones) recibe la autodenuncia presencialmente, toma el registro biométrico y emite el certificado. El <strong>SERMIG</strong> (Servicio Nacional de Migraciones) procesa la solicitud de visa posterior. Son dos organismos distintos en dos momentos distintos del proceso. Consulta la comparación completa en <a href="/autodenuncia/sermig-vs-pdi">PDI vs SERMIG: ¿a cuál debes ir?</a></p>
  $c1$,
  faq_items = '[
    {
      "question": "¿Pueden expulsarme si me autodenuncia?",
      "answer": "No. Al presentar la autodenuncia, se suspende cualquier procedimiento de expulsión mientras tramitas tu visa. El Certificado de Autodenuncia es el documento que acredita esta suspensión."
    },
    {
      "question": "¿Cuánto tiempo tarda el proceso de autodenuncia?",
      "answer": "La autodenuncia en la PDI generalmente se resuelve el mismo día o en pocas horas si llevas todos los documentos. Lo que toma más tiempo es la resolución de la visa posterior, que puede demorar entre 60 y 180 días hábiles."
    },
    {
      "question": "¿Puedo trabajar después de la autodenuncia?",
      "answer": "Puedes trabajar una vez que tengas la visa temporaria vigente. Sin embargo, el comprobante de solicitud de visa puede ser usado como documento habilitante en muchos empleadores mientras esperas la resolución."
    },
    {
      "question": "¿Qué pasa si me rechazan la visa después de la autodenuncia?",
      "answer": "Si la visa es rechazada, el SERMIG te notificará y tendrás un plazo para interponer un recurso administrativo o abandonar el país voluntariamente. Consulta nuestra guía sobre rechazos en la sección de Problemas Migratorios."
    },
    {
      "question": "¿La autodenuncia me da antecedentes penales en Chile?",
      "answer": "No. La autodenuncia es una infracción administrativa, no un delito. No genera antecedentes penales. Solo implica el pago de una multa migratoria."
    },
    {
      "question": "¿Puedo hacer la autodenuncia si no tengo pasaporte?",
      "answer": "Idealmente debes presentar tu pasaporte. Si está vencido o no lo tienes, consulta directamente en la PDI, ya que pueden aceptar otros documentos de identidad dependiendo del caso."
    }
  ]'::jsonb,
  related_slugs = ARRAY[
    'autodenuncia/pdi-paso-a-paso',
    'autodenuncia/sermig-vs-pdi',
    'visa-temporaria',
    'problemas/visa-vencida'
  ]::TEXT[],
  reading_time_minutes = 4,
  updated_at = NOW()
WHERE slug = 'autodenuncia';

-- ──────────────────────────────────────────────────────────
-- 2. CLUSTER: autodenuncia/pdi-paso-a-paso
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, schema_type, howto_steps, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'autodenuncia/pdi-paso-a-paso',
  'autodenuncia',
  'autodenuncia',
  'cluster',
  'Autodenuncia en la PDI: Paso a Paso',
  'Cómo Hacer la Autodenuncia Migratoria en la PDI: Guía Paso a Paso',
  'Guía completa para hacer la autodenuncia migratoria en la PDI: documentos necesarios, proceso paso a paso, costos y qué pasa después.',
  'autodenuncia pdi paso a paso',
  $c2$
<p>La <strong>autodenuncia migratoria</strong> en Chile se realiza presencialmente en las comisarías de la Policía de Investigaciones (<strong>PDI</strong>). Es el primer paso para regularizar una situación migratoria irregular y no requiere abogado ni intermediario.</p>

<h2>Antes de ir: documentos que debes llevar</h2>
<p>Reunir la documentación correcta es clave para resolver el trámite en una sola visita:</p>
<ul>
  <li><strong>Pasaporte vigente</strong> (o en su defecto, cédula de identidad de tu país). Si está vencido, consúltalo directamente con la PDI.</li>
  <li><strong>Comprobante de domicilio</strong> en Chile: contrato de arriendo, boleta de agua, luz o gas a tu nombre o al nombre de quien te aloja.</li>
  <li><strong>Fotografía tamaño carné</strong> reciente con fondo blanco (algunos locales PDI la toman en el lugar).</li>
  <li>Si tienes familia en Chile: certificado de nacimiento de hijos chilenos, certificado de matrimonio, AUC o documentos similares. Esto puede incidir en la causal de visa que te corresponderá después.</li>
</ul>

<h2>Paso 1 — Dirígete a cualquier comisaría PDI</h2>
<p>Puedes presentarte en <strong>cualquier comisaría PDI del país</strong>, no solo en la de tu comuna. El horario de atención habitual es de lunes a viernes de 8:00 a 13:00 horas, aunque puede variar según la sucursal.</p>
<p>Al llegar, infórmale al funcionario de guardia que deseas realizar una <em>autodenuncia migratoria</em>. Te derivarán a la sección o funcionario correspondiente.</p>

<h2>Paso 2 — Completar el formulario de autodenuncia</h2>
<p>El funcionario te entregará un formulario oficial que deberás completar con:</p>
<ul>
  <li>Datos de identidad (nombre completo, fecha de nacimiento, nacionalidad)</li>
  <li>Número de pasaporte o documento de identidad</li>
  <li>Fecha de ingreso a Chile</li>
  <li>Domicilio actual en Chile</li>
  <li>Motivo por el cual deseas regularizarte (hijo chileno, trabajo, pareja, etc.)</li>
</ul>
<p>Sé honesto y preciso. La información que declares es verificada con los registros de ingreso del país.</p>

<h2>Paso 3 — Registro biométrico</h2>
<p>Se tomarán tus <strong>huellas digitales y fotografía</strong> para el registro biométrico del SERMIG. Este proceso es obligatorio para todos los trámites migratorios en Chile.</p>
<p>Si ya tienes huellas registradas de una visa anterior, el proceso puede ser más ágil. Lee más sobre el proceso de <a href="/autodenuncia/empadronamiento-biometrico">empadronamiento biométrico</a>.</p>

<h2>Paso 4 — Verificación de antecedentes</h2>
<p>La PDI verifica que no tengas órdenes de expulsión vigentes ni antecedentes que impidan la regularización. Este proceso puede tomar desde unos minutos hasta unas horas, dependiendo de la carga del sistema.</p>

<h2>Paso 5 — Pago de la multa migratoria</h2>
<p>Una vez verificados tus antecedentes, se te indicará el <strong>monto de la multa</strong> correspondiente al tiempo en situación irregular (entre 1 y 5 UTM). El pago se realiza en el banco o entidad que te indique el funcionario. Guarda siempre el comprobante original.</p>

<h2>Paso 6 — Recibir el Certificado de Autodenuncia</h2>
<p>Con el comprobante de pago presentado, recibirás el <strong>Certificado de Autodenuncia Migratoria</strong>. Este documento es fundamental: suspende cualquier procedimiento de expulsión y te habilita para solicitar una visa temporaria en el portal online del SERMIG.</p>

<h2>¿Qué sigue?</h2>
<p>Con el certificado en mano, ingresa al portal <a href="https://tramitesmigratorios.interior.gob.cl" target="_blank" rel="noopener noreferrer">tramitesmigratorios.interior.gob.cl</a> y presenta tu solicitud de visa. Las más comunes son:</p>
<ul>
  <li><a href="/visa-temporaria/hijo-chileno">Visa por hijo/a chileno/a</a></li>
  <li><a href="/visa-temporaria/contrato-trabajo">Visa por contrato de trabajo</a></li>
  <li><a href="/visa-temporaria/responsabilidad-democratica">Visa de Responsabilidad Democrática</a> (solo venezolanos)</li>
</ul>
<p>Para conocer los tiempos de respuesta actuales del SERMIG, revisa nuestra sección de <a href="/autodenuncia/tiempos-reales">tiempos reales de tramitación</a>.</p>
  $c2$,
  'HowTo',
  '[
    {"name": "Reunir los documentos", "text": "Pasaporte o cédula, comprobante de domicilio, fotografía y documentos de vínculos familiares si aplica."},
    {"name": "Presentarte en cualquier comisaría PDI", "text": "Dirígete de lunes a viernes en horario de atención e indica que deseas hacer una autodenuncia migratoria."},
    {"name": "Completar el formulario oficial", "text": "Declara tus datos de identidad, fecha de ingreso a Chile, domicilio y motivo de regularización."},
    {"name": "Registro biométrico", "text": "Se tomarán tus huellas digitales y fotografía para el sistema de migraciones."},
    {"name": "Pagar la multa migratoria", "text": "Paga entre 1 y 5 UTM según el tiempo en situación irregular. Guarda el comprobante."},
    {"name": "Recibir el Certificado de Autodenuncia", "text": "Con el pago procesado, recibes el certificado que suspende la expulsión y te habilita para tramitar visa."}
  ]'::jsonb,
  '[
    {
      "question": "¿Necesito agendar hora previa en la PDI?",
      "answer": "Generalmente no se requiere cita previa para la autodenuncia. Puedes presentarte directamente en la comisaría PDI durante el horario de atención. Sin embargo, en ciudades con alta demanda como Santiago, puede haber espera. Llega temprano."
    },
    {
      "question": "¿Puedo hacer la autodenuncia si mi pasaporte está vencido?",
      "answer": "Depende del caso. Algunos funcionarios aceptan cédula de identidad del país de origen. Si tu pasaporte está vencido, consulta directamente con la PDI antes de ir, ya que la política puede variar."
    },
    {
      "question": "¿La PDI comparte mis datos con otros países?",
      "answer": "La PDI puede compartir información con organismos de seguridad internacional bajo tratados específicos. Sin embargo, la autodenuncia en Chile es un proceso interno orientado a la regularización y no tiene como objetivo perseguir irregularidades en terceros países."
    },
    {
      "question": "¿Cuánto tiempo tarda el trámite en la PDI?",
      "answer": "El trámite en la PDI puede tomar entre 2 y 6 horas dependiendo de la afluencia de personas. Si llevas todos los documentos completos, el proceso es más rápido."
    },
    {
      "question": "¿Puedo llevar a mi familia al mismo tiempo?",
      "answer": "Sí. Cada miembro del grupo familiar mayor de 14 años debe hacer su propio proceso de autodenuncia por separado. Los menores de 14 años generalmente quedan incluidos en el proceso de sus padres."
    }
  ]'::jsonb,
  ARRAY[
    'autodenuncia',
    'autodenuncia/empadronamiento-biometrico',
    'autodenuncia/errores-comunes',
    'autodenuncia/tiempos-reales',
    'visa-temporaria/hijo-chileno'
  ]::TEXT[],
  5,
  TRUE,
  NOW()
);

-- ──────────────────────────────────────────────────────────
-- 3. CLUSTER: visa-temporaria/hijo-chileno
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'visa-temporaria/hijo-chileno',
  'visa-temporaria',
  'visa-temporaria',
  'cluster',
  'Visa Temporaria por Hijo Chileno: Requisitos y Proceso',
  'Visa Temporaria por Hijo/a Chileno: Requisitos, Documentos y Paso a Paso',
  'Cómo solicitar la visa temporaria en Chile si tienes un hijo o hija con nacionalidad chilena. Requisitos, documentos y plazos actualizados.',
  'visa temporaria hijo chileno',
  $c3$
<p>La <strong>visa temporaria por hijo/a chileno</strong> permite a un padre o madre extranjero residir legalmente en Chile cuando tiene un hijo o hija con nacionalidad chilena. Es una de las categorías de visa más solicitadas y, cuando se presentan los documentos correctos, tiene buen índice de aprobación.</p>

<h2>¿Quién puede solicitarla?</h2>
<p>Puede solicitar esta visa cualquier extranjero que sea <strong>padre o madre</strong> de un hijo o hija que:</p>
<ul>
  <li>Tenga <strong>nacionalidad chilena</strong> por nacimiento (haber nacido en Chile) o por gracia.</li>
  <li>Sea menor de 18 años, o mayor si está declarado en dependencia del solicitante.</li>
  <li>Esté <strong>debidamente reconocido/a</strong> en el Registro Civil de Chile. Si el hijo nació en Chile pero no fue inscrito, debes hacerlo antes de solicitar la visa.</li>
</ul>
<p>También aplica para quienes tengan la <strong>tuición legal</strong> de un menor chileno, acreditada con resolución judicial.</p>

<h2>Documentos necesarios</h2>
<table>
  <thead>
    <tr><th>Documento</th><th>Especificaciones</th></tr>
  </thead>
  <tbody>
    <tr>
      <td>Pasaporte vigente</td>
      <td>Con al menos 6 meses de vigencia. Si está por vencer, renuévalo antes de solicitar.</td>
    </tr>
    <tr>
      <td>Certificado de nacimiento del hijo/a chileno</td>
      <td>Emitido por el SRCeI, con no más de 90 días de antigüedad. Solicítalo en <a href="https://www.registrocivil.cl" target="_blank" rel="noopener noreferrer">registrocivil.cl</a> (gratis en línea).</td>
    </tr>
    <tr>
      <td>Certificado de antecedentes penales del país de origen</td>
      <td>Apostillado. Si no está en español, debe ir traducido por traductor oficial. No mayor a 90 días.</td>
    </tr>
    <tr>
      <td>Certificado de antecedentes del Registro Civil de Chile</td>
      <td>Solicítalo gratis en <a href="https://www.registrocivil.cl" target="_blank" rel="noopener noreferrer">registrocivil.cl</a> o en cualquier oficina del SRCeI.</td>
    </tr>
    <tr>
      <td>Fotografía reciente</td>
      <td>Tamaño pasaporte, fondo blanco, en formato digital JPG o PNG.</td>
    </tr>
    <tr>
      <td>Comprobante de domicilio en Chile</td>
      <td>Contrato de arriendo, boleta de servicios básicos, declaración jurada notarial de hospedaje.</td>
    </tr>
  </tbody>
</table>

<h2>Si estás en situación migratoria irregular</h2>
<p>Si tu visa de turismo está vencida o ingresaste sin visa, primero debes completar el proceso de <a href="/autodenuncia">autodenuncia migratoria</a> en la PDI. El Certificado de Autodenuncia te habilita para presentar la solicitud de visa aunque estés en situación irregular.</p>

<h2>Cómo solicitarla paso a paso</h2>
<ol>
  <li>Reúne todos los documentos indicados. Verifica que ningún certificado supere los 90 días de antigüedad al momento de presentar.</li>
  <li>Si estás en situación irregular, completa la <a href="/autodenuncia/pdi-paso-a-paso">autodenuncia en la PDI</a> antes de continuar.</li>
  <li>Ingresa al portal <a href="https://tramitesmigratorios.interior.gob.cl" target="_blank" rel="noopener noreferrer">tramitesmigratorios.interior.gob.cl</a>.</li>
  <li>Crea una cuenta o inicia sesión con tu RUN o pasaporte.</li>
  <li>Selecciona <strong>Solicitud de visa → Visa Temporaria → Vínculo con ciudadano chileno → Hijo/a</strong>.</li>
  <li>Carga los documentos en formato PDF o JPG (máximo 5 MB por archivo).</li>
  <li>Paga el arancel de solicitud. Guarda el comprobante de pago.</li>
  <li>Recibirás un número de trámite. Guárdalo para <a href="/autodenuncia/estado-tramite">consultar el estado</a> de tu solicitud.</li>
</ol>

<h2>Plazos y vigencia</h2>
<p>El tiempo de resolución depende de la carga del SERMIG. Históricamente ha oscilado entre <strong>60 y 180 días hábiles</strong>. Durante ese período, el comprobante de solicitud actúa como documento habilitante para residir en Chile.</p>
<p>Una vez aprobada, la visa se otorga por <strong>1 año calendario</strong> y es renovable. Después de completar 1 año con visa temporaria vigente, puedes solicitar la <a href="/permanencia-definitiva">Permanencia Definitiva</a>, que no tiene límite de tiempo.</p>

<h2>¿Puedo trabajar mientras espero la resolución?</h2>
<p>Sí. El comprobante de solicitud en curso es suficiente para trabajar en la mayoría de los empleadores chilenos. Sin embargo, para obtener tu <a href="/vivir-en-chile/rut-extranjero">RUT definitivo</a> en el SRCeI, deberás esperar a que la visa sea aprobada.</p>
<p>Mientras tanto, el SII puede emitir un <strong>RUT provisorio</strong> para efectos tributarios, previa presentación del comprobante de trámite.</p>

<h2>Requisitos específicos por país</h2>
<p>Los documentos de antecedentes penales del extranjero varían según el país de origen. Si eres venezolano, la apostilla puede obtenerse en el Ministerio del Poder Popular para Relaciones Exteriores. Para más detalles, consulta la guía específica para tu país.</p>
  $c3$,
  '[
    {
      "question": "¿Mi hijo/a debe estar presente durante la solicitud?",
      "answer": "No. La solicitud de visa la presenta el padre o la madre de forma individual. El hijo o hija no necesita estar presente, pero sí debes acreditar la relación con el certificado de nacimiento."
    },
    {
      "question": "¿Qué pasa si no reconocí a mi hijo/a en el Registro Civil?",
      "answer": "Debes hacer el reconocimiento antes de solicitar la visa. Acércate al SRCeI con el certificado de nacimiento del menor y ambos padres. Sin ese reconocimiento, la solicitud de visa será rechazada por falta de vínculo acreditado."
    },
    {
      "question": "¿Esta visa me permite trabajar en Chile?",
      "answer": "Sí. La visa temporaria incluye permiso de trabajo. Una vez aprobada puedes trabajar de forma dependiente o independiente. Durante el trámite, el comprobante de solicitud también sirve como habilitante en muchos empleadores."
    },
    {
      "question": "¿Cuándo puedo solicitar la permanencia definitiva?",
      "answer": "Después de completar 1 año continuo con la visa temporaria vigente puedes solicitar la Permanencia Definitiva. En casos especiales (hijo menor de 18 años), el plazo puede ser inmediato."
    },
    {
      "question": "¿Puedo incluir a mis otros hijos extranjeros en la visa?",
      "answer": "Los hijos menores de 18 años que no tengan nacionalidad chilena pueden ser incluidos como carga familiar en tu solicitud, siempre que los declares en el formulario y presentes sus documentos de identidad."
    },
    {
      "question": "¿Qué pasa si mi hijo nació en Chile pero no fue inscrito?",
      "answer": "Primero debes inscribir el nacimiento en el SRCeI. Necesitas el certificado médico de nacimiento (partograma), el pasaporte de los padres y presentarte en cualquier oficina del Registro Civil. Solo después podrás solicitar la visa."
    }
  ]'::jsonb,
  ARRAY[
    'visa-temporaria',
    'autodenuncia/pdi-paso-a-paso',
    'permanencia-definitiva/requisitos',
    'vivir-en-chile/rut-extranjero',
    'visa-temporaria/pareja-chilena'
  ]::TEXT[],
  6,
  TRUE,
  NOW()
);

-- ──────────────────────────────────────────────────────────
-- 4. PILLAR: visa-temporaria (update con contenido)
-- ──────────────────────────────────────────────────────────
UPDATE articles SET
  content = $c4$
<p>Chile ofrece distintas categorías de <strong>visa temporaria</strong> para extranjeros que deseen residir en el país de forma legal. Cada categoría responde a una situación específica: vínculo familiar con un chileno, contrato de trabajo, estudios, razones humanitarias u otras causales reconocidas por la Ley 21.325.</p>

<h2>¿Qué es la visa temporaria?</h2>
<p>La visa temporaria es un permiso de residencia que autoriza al extranjero a vivir y trabajar en Chile por un período determinado, generalmente <strong>1 año renovable</strong>. Después de 1 año continuo con visa temporaria, es posible solicitar la <a href="/permanencia-definitiva">Permanencia Definitiva</a>, que no tiene plazo de vencimiento.</p>

<h2>Tipos de visa temporaria disponibles</h2>
<p>A continuación se resumen las principales categorías. Cada artículo detalla los requisitos específicos:</p>
<ul>
  <li><a href="/visa-temporaria/hijo-chileno"><strong>Por hijo/a chileno</strong></a>: para padres o madres de un hijo o hija con nacionalidad chilena.</li>
  <li><a href="/visa-temporaria/pareja-chilena"><strong>Por pareja chilena</strong></a>: para cónyuge o conviviente civil de un ciudadano o ciudadana chilena.</li>
  <li><a href="/visa-temporaria/contrato-trabajo"><strong>Por contrato de trabajo</strong></a>: si tienes un empleador en Chile dispuesto a contratarte formalmente.</li>
  <li><a href="/visa-temporaria/oferta-laboral"><strong>Por oferta de trabajo</strong></a>: antes de comenzar a trabajar, basada en una oferta formal de empleo.</li>
  <li><a href="/visa-temporaria/estudiante"><strong>Para estudiantes</strong></a>: si estás inscrito en un programa académico acreditado en Chile.</li>
  <li><a href="/visa-temporaria/razones-humanitarias"><strong>Por razones humanitarias</strong></a>: para situaciones de vulnerabilidad especial evaluadas por el SERMIG.</li>
  <li><a href="/visa-temporaria/jubilado-rentista"><strong>Para jubilados y rentistas</strong></a>: si cuentas con ingresos regulares del extranjero.</li>
  <li><a href="/visa-temporaria/responsabilidad-democratica"><strong>Visa de Responsabilidad Democrática (VRD)</strong></a>: exclusiva para ciudadanos venezolanos.</li>
  <li><a href="/visa-temporaria/mercosur"><strong>Visa Mercosur</strong></a>: para ciudadanos de Argentina, Bolivia, Brasil, Colombia, Ecuador, Paraguay, Perú y Uruguay.</li>
</ul>

<h2>Proceso general de solicitud</h2>
<p>Independientemente de la categoría, todas las visas temporarias se solicitan a través del portal <a href="https://tramitesmigratorios.interior.gob.cl" target="_blank" rel="noopener noreferrer">tramitesmigratorios.interior.gob.cl</a>. El proceso general incluye:</p>
<ol>
  <li>Reunir los documentos requeridos para la categoría específica.</li>
  <li>Si estás en situación irregular, completar primero la <a href="/autodenuncia">autodenuncia migratoria</a>.</li>
  <li>Crear cuenta y presentar la solicitud en el portal del SERMIG.</li>
  <li>Pagar el arancel de solicitud.</li>
  <li>Esperar la resolución (60 a 180 días hábiles en promedio).</li>
</ol>

<h2>¿Qué pasa si me rechazan?</h2>
<p>Si el SERMIG rechaza tu solicitud, tienes derecho a interponer un <a href="/problemas/recurso-administrativo">recurso administrativo</a> dentro del plazo establecido en la resolución de rechazo. Es importante no ignorar la notificación.</p>
  $c4$,
  faq_items = '[
    {
      "question": "¿Puedo solicitar la visa temporaria estando en Chile?",
      "answer": "Sí. La mayoría de las categorías de visa temporaria pueden solicitarse estando dentro del país. Si tu visa de turismo está vencida, debes primero hacer la autodenuncia migratoria para poder tramitar."
    },
    {
      "question": "¿Cuánto cuesta solicitar una visa temporaria?",
      "answer": "El arancel varía según la categoría y la reciprocidad con tu país de origen. Generalmente oscila entre $50.000 y $100.000 CLP. Algunas categorías humanitarias están exentas."
    },
    {
      "question": "¿Puedo trabajar con la visa temporaria?",
      "answer": "Sí. La visa temporaria incluye permiso de trabajo en todas sus categorías. Durante el período de tramitación, el comprobante de solicitud también suele ser aceptado por los empleadores."
    },
    {
      "question": "¿Cuánto tiempo tarda la resolución?",
      "answer": "El SERMIG tiene plazo legal de 30 días hábiles, pero en la práctica el promedio histórico ha sido de 60 a 180 días hábiles según la carga del servicio y la complejidad del caso."
    }
  ]'::jsonb,
  related_slugs = ARRAY[
    'visa-temporaria/hijo-chileno',
    'visa-temporaria/responsabilidad-democratica',
    'visa-temporaria/contrato-trabajo',
    'autodenuncia',
    'permanencia-definitiva'
  ]::TEXT[],
  reading_time_minutes = 5,
  updated_at = NOW()
WHERE slug = 'visa-temporaria';
