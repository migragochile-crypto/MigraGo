-- ============================================================
-- MigraciónChile — Seed v13: clusters permanencia-definitiva + vivir-en-chile
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

-- ──────────────────────────────────────────────────────────
-- 1. CLUSTER: permanencia-definitiva/documentos
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, schema_type, howto_steps, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'permanencia-definitiva/documentos',
  'permanencia-definitiva',
  'permanencia-definitiva',
  'cluster',
  'Documentos para Permanencia Definitiva en Chile 2026',
  'Lista Completa de Documentos para la Permanencia Definitiva en Chile',
  'Lista completa y actualizada de documentos para solicitar la Permanencia Definitiva en Chile en 2026. Qué presenta el SERMIG, cómo apostillar y dónde obtener cada certificado.',
  'documentos permanencia definitiva chile',
  $o1$
<p>La Permanencia Definitiva es uno de los trámites más importantes de tu vida en Chile, y la documentación es el factor que más frecuentemente causa demoras o rechazos. Esta guía detalla <strong>cada documento requerido</strong>, cómo obtenerlo y qué hacer si alguno presenta dificultades.</p>

<h2>Lista de documentos según la categoría</h2>
<p>Los documentos varían según la categoría por la que solicitas la Permanencia Definitiva. La más común es la <strong>vía general</strong> (2 años con visa temporaria). Para otras categorías (cónyuge de chileno, hijo de chileno, refugiado) hay documentos adicionales o sustitutos.</p>

<h3>Documentos base (todos los solicitantes)</h3>
<ul>
  <li><strong>Pasaporte vigente</strong> o documento de viaje equivalente. Si tu pasaporte vence pronto, renuévalo antes de iniciar el trámite.</li>
  <li><strong>Cédula de identidad para extranjeros vigente.</strong></li>
  <li><strong>Certificado de antecedentes penales de Chile</strong> — emitido por el Servicio de Registro Civil (SRCeI). Puede obtenerse en línea o presencialmente. Tiene validez de 30 días.</li>
  <li><strong>Certificado de antecedentes penales del país de origen</strong> — apostillado o legalizado según corresponda. Tiene validez de 90 días desde su emisión. Si llevas más de 2 años en Chile, algunos solicitantes han podido reemplazarlo con declaración jurada; verifica con el SERMIG.</li>
  <li><strong>Certificado de situación migratoria</strong> — emitido por el SERMIG, acredita el tiempo de residencia y la regularidad migratoria.</li>
  <li><strong>Comprobante de actividad lícita</strong> — contrato de trabajo, liquidaciones de sueldo, inicio de actividades en el SII (honorarios) u otro documento que acredite actividad económica o forma de sustento.</li>
  <li><strong>Documentos de dependientes</strong> — si incluyes cargas familiares, certificados de nacimiento apostillados e información actualizada de cada dependiente.</li>
</ul>

<h3>Para la vía por cónyuge o conviviente civil de chileno</h3>
<ul>
  <li>Certificado de matrimonio o acuerdo de unión civil (AUC) emitido por el Registro Civil chileno, con no más de 90 días de antigüedad.</li>
  <li>Si el matrimonio fue en el extranjero: certificado apostillado e inscrito en el Registro Civil de Chile.</li>
</ul>

<h3>Para la vía por padre/madre de hijo chileno</h3>
<ul>
  <li>Certificado de nacimiento del hijo emitido por el Registro Civil de Chile.</li>
  <li>Acreditación del vínculo (filiación reconocida).</li>
</ul>

<h2>El certificado de antecedentes del país de origen: el documento más difícil</h2>
<p>Este es el documento que más frecuentemente genera problemas, especialmente para solicitantes venezolanos, haitianos y de otros países con instituciones debilitadas. Consideraciones importantes:</p>
<ul>
  <li><strong>Venezuela:</strong> el proceso de obtención del certificado del CICPC puede ser largo. Existen consulados venezolanos en Santiago. El tiempo de obtención puede tardar semanas o meses.</li>
  <li><strong>Haití:</strong> el Sistema de Certificado de Antecedentes haitiano (Casier Judiciaire) puede gestionarse a través del consulado. Los plazos son variables.</li>
  <li><strong>Apostilla o legalización:</strong> el documento extranjero debe venir apostillado si el país es signatario del Convenio de La Haya, o legalizado (consulado + Ministerio de RREE) si no lo es.</li>
</ul>

<h2>Traducción oficial de documentos</h2>
<p>Todos los documentos en idioma distinto al español deben ser traducidos por un <strong>traductor oficial reconocido por el Ministerio de Relaciones Exteriores de Chile</strong>. La lista de traductores oficiales está disponible en el sitio de Cancillería. Las traducciones informales o de aplicaciones no son válidas.</p>

<h2>Vigencia de los documentos</h2>
<table>
  <thead>
    <tr><th>Documento</th><th>Vigencia máxima al presentar</th></tr>
  </thead>
  <tbody>
    <tr><td>Certificado antecedentes penales Chile</td><td>30 días</td></tr>
    <tr><td>Certificado antecedentes penales extranjero</td><td>90 días</td></tr>
    <tr><td>Certificado de matrimonio / AUC</td><td>90 días</td></tr>
    <tr><td>Liquidaciones de sueldo</td><td>3 meses (las más recientes)</td></tr>
    <tr><td>Pasaporte</td><td>Debe tener vigencia suficiente para el proceso</td></tr>
  </tbody>
</table>

<h2>¿Cómo organizar los documentos para la solicitud online?</h2>
<p>El trámite de Permanencia Definitiva se realiza a través del portal <a href="https://tramitesmigratorios.interior.gob.cl" target="_blank" rel="noopener noreferrer">tramitesmigratorios.interior.gob.cl</a>. Los documentos deben subirse en formato PDF. Recomendaciones:</p>
<ul>
  <li>Escanea cada documento en alta resolución (mínimo 300 DPI).</li>
  <li>Asegúrate de que el texto sea legible en el PDF.</li>
  <li>Si el documento tiene apostilla al dorso, escanea ambas caras.</li>
  <li>Nombra los archivos de forma clara (ej: <code>antecedentes-penales-chile.pdf</code>).</li>
</ul>
  $o1$,
  'HowTo',
  '[
    {"name": "Obtener certificado de antecedentes penales de Chile", "text": "Solicítalo en el Servicio de Registro Civil (SRCeI) en línea o presencialmente. Tiene vigencia de 30 días. Obtenlo pocos días antes de presentar la solicitud."},
    {"name": "Gestionar el certificado de antecedentes del país de origen", "text": "Contacta el consulado de tu país en Chile. Para Venezuela y Haití, inicia el proceso con semanas de anticipación dado los posibles plazos. El documento debe ser apostillado o legalizado."},
    {"name": "Preparar comprobante de actividad lícita", "text": "Reúne contrato de trabajo vigente y las últimas 3 liquidaciones de sueldo, o certificado de inicio de actividades del SII si trabajas a honorarios."},
    {"name": "Traducir documentos en idioma extranjero", "text": "Documentos en idioma distinto al español deben traducirse por traductor oficial del Ministerio de RREE de Chile. Verifica la lista en el sitio de Cancillería."},
    {"name": "Escanear todos los documentos en PDF", "text": "Escanea en alta resolución (300 DPI mínimo). Verifica que el texto sea legible. Si hay apostilla al dorso, escanea ambas caras."},
    {"name": "Ingresar la solicitud en el portal del SERMIG", "text": "Accede a tramitesmigratorios.interior.gob.cl, sube todos los documentos y completa el formulario. Guarda el número de solicitud y el comprobante de trámite."}
  ]'::jsonb,
  '[
    {
      "question": "¿Qué pasa si mi país de origen no puede emitir el certificado de antecedentes?",
      "answer": "Si la institución emisora del país de origen no funciona o el proceso es imposible, puedes presentar una declaración jurada ante notario explicando la situación. El SERMIG evalúa caso a caso. Es recomendable acompañarla con documentación que acredite la imposibilidad (comunicación del consulado, noticias, etc.)."
    },
    {
      "question": "¿Tengo que apostillar el certificado de antecedentes si llevo muchos años en Chile?",
      "answer": "El requisito del certificado extranjero aplica independientemente del tiempo que lleves en Chile. Sin embargo, en la práctica, algunos solicitantes con más de 4 o 5 años sin salir del país han podido justificar la imposibilidad. Consulta directamente con el SERMIG tu situación específica."
    },
    {
      "question": "¿Puedo iniciar la solicitud con documentos que vencen pronto?",
      "answer": "No es recomendable. Si un documento vence antes de que el SERMIG lo revise, puede generar una observación. Obtén los documentos con vigencia reciente, idealmente en la semana previa a ingresar la solicitud."
    },
    {
      "question": "¿Qué pasa si subo un documento ilegible?",
      "answer": "El SERMIG emitirá una observación solicitando el documento en mejor calidad. Tendrás un plazo (generalmente 10 días hábiles) para subsanar. Un escaneo ilegible puede alargar el proceso varios meses."
    }
  ]'::jsonb,
  ARRAY[
    'permanencia-definitiva',
    'permanencia-definitiva/requisitos',
    'permanencia-definitiva/cuanto-demora',
    'visa-temporaria',
    'problemas/recurso-administrativo'
  ]::TEXT[],
  6,
  TRUE,
  NOW()
);

-- ──────────────────────────────────────────────────────────
-- 2. CLUSTER: permanencia-definitiva/via-conyugue
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, schema_type, howto_steps, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'permanencia-definitiva/via-conyugue',
  'permanencia-definitiva',
  'permanencia-definitiva',
  'cluster',
  'Permanencia Definitiva por Cónyuge Chileno 2026',
  'Cómo Obtener Permanencia Definitiva por Matrimonio con Chileno o Chilena',
  'Guía para obtener la Permanencia Definitiva en Chile por ser cónyuge o conviviente civil de chileno. Requisitos, documentos y plazos actualizados 2026.',
  'permanencia definitiva por matrimonio chile',
  $o2$
<p>Si eres cónyuge o conviviente civil de una persona de nacionalidad chilena, puedes solicitar la <strong>Permanencia Definitiva directamente</strong>, sin necesidad de esperar los 2 años de visa temporaria que se exigen por la vía general. Es una de las vías más directas para obtener residencia permanente en Chile.</p>

<h2>¿Quiénes califican para esta vía?</h2>
<ul>
  <li><strong>Cónyuge de chileno/a:</strong> matrimonio civil celebrado en Chile o en el extranjero con la inscripción correspondiente en el Registro Civil chileno.</li>
  <li><strong>Conviviente civil:</strong> unión reconocida mediante Acuerdo de Unión Civil (AUC) celebrado en Chile ante el Registro Civil.</li>
</ul>
<p>No se reconocen las uniones de hecho informales (convivencia sin AUC) para esta vía. Si tu relación no está formalizada, deberás tramitar primero el AUC o acceder por otra vía.</p>

<h2>Requisito de tiempo mínimo en Chile</h2>
<p>No existe un requisito de tiempo mínimo de residencia en Chile para solicitar la Permanencia Definitiva por esta vía. Sin embargo, en la práctica el SERMIG puede requerir:</p>
<ul>
  <li>Que la relación sea genuina y actual (no meramente formal).</li>
  <li>Evidencia de convivencia o vida en común (arriendo compartido, hijos en común, etc.).</li>
</ul>
<p>Esto no significa que el SERMIG investiga sistemáticamente, pero es importante que la documentación refleje una relación real.</p>

<h2>¿Qué tipo de visa necesito antes?</h2>
<p>Para solicitar la Permanencia Definitiva necesitas estar en Chile con algún permiso de residencia vigente. Las opciones más comunes son:</p>
<ul>
  <li><strong>Visa temporaria por vínculo con chileno</strong> — la vía lógica si tu relación es con un/a chileno/a.</li>
  <li><strong>Otra visa temporaria vigente</strong> — cualquier visa de residencia temporaria te habilita para solicitar la Permanencia Definitiva por esta vía.</li>
  <li><strong>Comprobante de trámite activo</strong> — en algunos casos, el SERMIG acepta la solicitud mientras otro trámite está pendiente.</li>
</ul>

<h2>Documentos específicos para esta vía</h2>
<p>Además de los <a href="/permanencia-definitiva/documentos">documentos base</a> requeridos para todos los solicitantes, debes presentar:</p>
<ul>
  <li><strong>Certificado de matrimonio</strong> emitido por el Registro Civil de Chile, con no más de 90 días de antigüedad. Si el matrimonio fue en el extranjero, debe estar inscrito en el Registro Civil chileno y el certificado extranjero debe estar apostillado.</li>
  <li><strong>Acuerdo de Unión Civil</strong> (si aplica) — certificado emitido por el Registro Civil, con no más de 90 días de antigüedad.</li>
  <li><strong>Cédula de identidad o pasaporte del cónyuge chileno/a.</strong></li>
</ul>

<h2>¿Qué pasa si me separo o divorcio durante el trámite?</h2>
<p>Si la relación termina después de presentar la solicitud pero antes de que sea resuelta, el SERMIG puede denegar la solicitud si la separación es evidente. En este caso, deberías notificar al SERMIG y evaluar si califica para la vía general u otra categoría.</p>
<p>Si ya tienes la Permanencia Definitiva aprobada, el divorcio posterior no la afecta — la residencia permanente es independiente del estado civil una vez otorgada.</p>

<h2>¿Qué pasa si el matrimonio fue en el extranjero?</h2>
<p>El matrimonio celebrado en el extranjero es válido en Chile si fue legalmente celebrado en el país de origen. Para usarlo en trámites ante el SERMIG debes:</p>
<ol>
  <li>Apostillar el certificado de matrimonio en el país donde se celebró.</li>
  <li>Inscribirlo en el Registro Civil de Chile (Departamento de Extranjería del SRCeI).</li>
  <li>Obtener el certificado de matrimonio chileno una vez inscrito.</li>
</ol>
<p>La inscripción en el Registro Civil puede hacerse antes o durante el proceso de solicitud de Permanencia Definitiva, pero debe estar completada al momento de presentar la solicitud.</p>

<h2>Hijos en común: consideraciones adicionales</h2>
<p>Si tienes hijos en común con el/la cónyuge chileno/a, puedes incluirlos como cargas familiares en la misma solicitud. Si los hijos nacieron en Chile, también son chilenos y eso fortalece el vínculo familiar acreditado ante el SERMIG.</p>
  $o2$,
  'HowTo',
  '[
    {"name": "Verificar que el vínculo esté formalizado (matrimonio o AUC)", "text": "Confirma que el matrimonio está inscrito en el Registro Civil chileno o que tienes Acuerdo de Unión Civil. Las convivencias informales no califican para esta vía."},
    {"name": "Si el matrimonio fue en el extranjero, inscribirlo en Chile", "text": "Apostilla el certificado de matrimonio extranjero e inscríbelo en el Servicio de Registro Civil (SRCeI). El proceso puede tomar semanas."},
    {"name": "Obtener certificado de matrimonio/AUC actualizado", "text": "Solicita el certificado en el Registro Civil. Debe tener no más de 90 días de vigencia al momento de presentar la solicitud."},
    {"name": "Reunir documentos base y específicos", "text": "Prepara los documentos base (antecedentes penales Chile y extranjero, cédula, pasaporte, actividad lícita) más el certificado de matrimonio/AUC y la cédula del cónyuge chileno."},
    {"name": "Presentar la solicitud en el portal SERMIG", "text": "Ingresa en tramitesmigratorios.interior.gob.cl, selecciona la categoría correcta (vínculo con chileno), sube todos los documentos y envía la solicitud."},
    {"name": "Monitorear el estado en el portal", "text": "Revisa periódicamente el estado de tu solicitud. Si aparece Con observaciones, tienes plazo de 10 días hábiles para responder. Activa notificaciones de correo."}
  ]'::jsonb,
  '[
    {
      "question": "¿Puedo solicitar Permanencia Definitiva si mi pareja es chilena pero no estamos casados ni tenemos AUC?",
      "answer": "No por esta vía. La convivencia informal no es reconocida para la Permanencia Definitiva por vínculo. Puedes formalizar la relación mediante el Acuerdo de Unión Civil (AUC) en el Registro Civil y luego solicitar la permanencia, o acceder por la vía general (2 años con visa temporaria)."
    },
    {
      "question": "¿Cuánto demora la Permanencia Definitiva por esta vía comparado con la vía general?",
      "answer": "El tiempo de resolución del SERMIG es similar: 3–9 meses en la práctica. La diferencia principal es que por vía de cónyuge puedes solicitarla sin necesidad de acumular 2 años de visa temporaria, lo que puede acelerar significativamente el proceso total."
    },
    {
      "question": "¿Necesito tener visa temporaria de vínculo con chileno o puedo solicitarlo con otra visa?",
      "answer": "Puedes solicitarlo con cualquier visa temporaria vigente. No necesitas tener específicamente la visa de vínculo con chileno. Lo importante es tener un permiso de residencia temporaria vigente al momento de la solicitud."
    },
    {
      "question": "¿Si me divorcio después de obtener la Permanencia Definitiva me la quitan?",
      "answer": "No. Una vez otorgada la Permanencia Definitiva, es permanente independientemente de cambios en el estado civil posterior. El divorcio no es causal de revocación de la permanencia definitiva ya aprobada."
    }
  ]'::jsonb,
  ARRAY[
    'permanencia-definitiva',
    'permanencia-definitiva/requisitos',
    'permanencia-definitiva/documentos',
    'visa-temporaria/pareja-chilena',
    'permanencia-definitiva/cuanto-demora'
  ]::TEXT[],
  5,
  TRUE,
  NOW()
);

-- ──────────────────────────────────────────────────────────
-- 3. CLUSTER: vivir-en-chile/educacion-hijos
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'vivir-en-chile/educacion-hijos',
  'vivir-en-chile',
  'vivir-en-chile',
  'cluster',
  'Educación para Hijos de Migrantes en Chile 2026',
  'Cómo Matricular a tus Hijos en el Sistema Educativo Chileno como Extranjero',
  'Guía para matricular a hijos de familias migrantes en colegios chilenos. Requisitos, derechos, convalidación de estudios y acceso a la educación sin importar el estatus migratorio.',
  'educacion hijos migrantes chile colegio',
  $o3$
<p>Chile garantiza el acceso a la educación para todos los niños y niñas que residan en el país, <strong>independientemente de su situación migratoria o la de sus padres</strong>. Esto está establecido en la Ley 21.325 y en la Ley General de Educación. Los establecimientos educacionales no pueden rechazar la matrícula de un menor por razones migratorias.</p>

<h2>Derecho a educación sin importar el estatus migratorio</h2>
<p>El principio es claro: un niño o niña en Chile tiene derecho a asistir a la escuela. Los establecimientos que dependan de financiamiento público (municipales y particulares subvencionados) están legalmente impedidos de rechazar la matrícula por falta de documentación migratoria. En caso de rechazo injustificado, puede denunciarse ante la Superintendencia de Educación.</p>

<h2>Proceso de matrícula en colegios municipales o subvencionados</h2>
<p>El proceso de matrícula varía según el establecimiento, pero en general:</p>
<ul>
  <li>El <strong>período de matrícula</strong> es entre octubre y diciembre para el año escolar siguiente (inicia en marzo).</li>
  <li>Se puede matricular fuera de período si hay cupos disponibles.</li>
  <li>El colegio asigna el <strong>curso según la edad</strong> del menor, no necesariamente el que cursaba en el país de origen.</li>
</ul>

<h2>Documentos para la matrícula</h2>
<table>
  <thead>
    <tr><th>Documento</th><th>Observación</th></tr>
  </thead>
  <tbody>
    <tr>
      <td>Certificado de nacimiento</td>
      <td>Apostillado si es del extranjero. Si el menor nació en Chile, el del Registro Civil basta.</td>
    </tr>
    <tr>
      <td>Pasaporte del menor (o cédula de identidad)</td>
      <td>Si no tiene ninguno, el colegio debe matricular igual y dar plazo para presentar la documentación.</td>
    </tr>
    <tr>
      <td>Certificado de estudios anteriores</td>
      <td>Para acreditar el nivel cursado. Si viene del extranjero, puede necesitar convalidación.</td>
    </tr>
    <tr>
      <td>Cartola de vacunación</td>
      <td>Recomendada pero no obligatoria para la matrícula. Se puede gestionar en CESFAM.</td>
    </tr>
  </tbody>
</table>
<p>Si no tienes alguno de estos documentos, el establecimiento <strong>no puede negar la matrícula</strong>. Debe dar un plazo razonable para regularizar la documentación.</p>

<h2>Convalidación de estudios del extranjero</h2>
<p>Si tu hijo cursó años escolares en otro país, puede ser necesario convalidar esos estudios para que sean reconocidos en Chile:</p>
<ul>
  <li><strong>Para continuar estudiando en Chile:</strong> el colegio puede hacer una <strong>evaluación de conocimientos</strong> para determinar el nivel adecuado. No es necesaria la convalidación oficial para matricularse.</li>
  <li><strong>Para reconocimiento oficial del Ministerio de Educación:</strong> el proceso formal de convalidación se hace ante el MINEDUC. Es más relevante para estudios superiores o cuando el menor termina la enseñanza media.</li>
</ul>
<p>Para la educación básica y media, lo habitual es que el colegio asigne nivel según edad y haga una evaluación diagnóstica al inicio.</p>

<h2>JUNAEB: beneficios para estudiantes vulnerables</h2>
<p>Los estudiantes migrantes con situación socioeconómica vulnerable tienen acceso a los beneficios de la <strong>JUNAEB (Junta Nacional de Auxilio Escolar y Becas)</strong>, incluyendo:</p>
<ul>
  <li><strong>Alimentación escolar:</strong> desayuno y almuerzo en establecimientos con alto índice de vulnerabilidad.</li>
  <li><strong>Útiles escolares:</strong> kit de materiales al inicio del año.</li>
  <li><strong>Lentes y salud:</strong> programa de salud visual escolar.</li>
</ul>
<p>El acceso a estos beneficios no requiere documentación migratoria específica — se asignan según la ficha socioeconómica del establecimiento.</p>

<h2>Chile Crece Contigo: apoyo desde el embarazo</h2>
<p>Si tienes hijos menores de 4 años o estás embarazada, el programa <strong>Chile Crece Contigo</strong> ofrece acompañamiento desde la gestación hasta el ingreso al sistema escolar. Es accesible a familias migrantes desde el primer control prenatal en la red pública, independientemente del estatus migratorio.</p>

<h2>Idioma y adaptación</h2>
<p>Los colegios chilenos no tienen obligación de ofrecer educación bilingüe, pero muchos cuentan con duplas psicosociales o programas de inclusión que apoyan la adaptación de niños migrantes. Puedes solicitar al colegio información sobre estos apoyos al momento de la matrícula.</p>

<h2>Educación universitaria para migrantes</h2>
<p>Para acceder a la educación universitaria en Chile:</p>
<ul>
  <li>La <strong>PSU/PAES</strong> (proceso de admisión universitaria) está disponible para extranjeros con cédula de identidad vigente.</li>
  <li>Para becas y créditos del Estado (gratuidad, CAE, Beca Bicentenario), generalmente se requiere permanencia definitiva o ciudadanía. Verifica los requisitos actualizados en la JUNAEB y el MINEDUC.</li>
  <li>Los estudios previos en el extranjero pueden necesitar convalidación u homologación ante el MINEDUC para acceder a ciertos programas.</li>
</ul>
  $o3$,
  '[
    {
      "question": "¿Pueden rechazarme la matrícula por no tener cédula?",
      "answer": "No. Los establecimientos con financiamiento público (municipales y subvencionados) están prohibidos de rechazar la matrícula por falta de documentación migratoria. Si te rechazan, puedes denunciarlo ante la Superintendencia de Educación. El número es 600 600 2626."
    },
    {
      "question": "¿En qué curso matriculo a mi hijo si venía cursando un nivel diferente en su país?",
      "answer": "El colegio lo asigna según su edad cronológica, no según el nivel que cursaba en el extranjero. Al inicio del año escolar hacen una evaluación diagnóstica. En algunos casos puede haber diferencias de nivel que el colegio aborda con apoyo pedagógico."
    },
    {
      "question": "¿Necesito convalidar los estudios de mi hijo para que entre al colegio?",
      "answer": "No es necesario para la matrícula. Para educación básica y media, el colegio determina el nivel según edad y evaluación interna. La convalidación formal ante el MINEDUC es más relevante para enseñanza superior o reconocimiento oficial de títulos."
    },
    {
      "question": "¿Mi hijo tiene derecho a almuerzo escolar en el colegio?",
      "answer": "Sí, si el establecimiento tiene servicio de alimentación JUNAEB y el menor califica por vulnerabilidad socioeconómica. El acceso no depende del estatus migratorio sino de la ficha de vulnerabilidad. Consulta en la secretaría del colegio."
    }
  ]'::jsonb,
  ARRAY[
    'vivir-en-chile',
    'vivir-en-chile/sistema-salud',
    'vivir-en-chile/rut-extranjero',
    'permanencia-definitiva/beneficios',
    'visa-temporaria'
  ]::TEXT[],
  6,
  TRUE,
  NOW()
);

-- ──────────────────────────────────────────────────────────
-- 4. CLUSTER: vivir-en-chile/trabajo-contrato
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'vivir-en-chile/trabajo-contrato',
  'vivir-en-chile',
  'vivir-en-chile',
  'cluster',
  'Trabajar en Chile como Extranjero: Contrato y Derechos Laborales 2026',
  'Cómo Trabajar Legalmente en Chile como Extranjero: Derechos y Contrato',
  'Guía sobre el trabajo para extranjeros en Chile. Derechos laborales, tipos de contrato, sueldo mínimo, AFP, cotizaciones y qué hacer si un empleador abusa.',
  'trabajar chile extranjero contrato derechos',
  $o4$
<p>Los extranjeros que viven en Chile con permiso vigente tienen los mismos derechos laborales que los trabajadores chilenos. El Código del Trabajo no distingue por nacionalidad: los contratos, sueldos, vacaciones, licencias y protecciones son iguales para todos.</p>

<h2>¿Puedo trabajar con mi tipo de visa?</h2>
<table>
  <thead>
    <tr><th>Permiso de residencia</th><th>¿Puede trabajar?</th></tr>
  </thead>
  <tbody>
    <tr><td>Turista (permiso de turismo)</td><td>No — trabajo sin permiso es infracción migratoria</td></tr>
    <tr><td>Comprobante de trámite de visa activo</td><td>Sí — el comprobante habilita a trabajar mientras se resuelve la visa</td></tr>
    <tr><td>Visa temporaria vigente</td><td>Sí — sin restricción de empleador o actividad (salvo visas con condición específica)</td></tr>
    <tr><td>Permanencia Definitiva</td><td>Sí — mismos derechos que ciudadano chileno</td></tr>
  </tbody>
</table>
<p>Nota: algunas visas temporarias antiguas (antes de la Ley 21.325) tenían restricciones de empleador. Con la ley vigente, las visas temporarias actuales son generalmente libres de empleador.</p>

<h2>El contrato de trabajo en Chile</h2>
<p>El <strong>contrato de trabajo</strong> es obligatorio para toda relación laboral dependiente. Debe firmarse en dos ejemplares (empleador y trabajador) y contener:</p>
<ul>
  <li>Identificación de las partes (incluido RUT del trabajador).</li>
  <li>Descripción de las funciones.</li>
  <li>Lugar y jornada de trabajo.</li>
  <li>Remuneración pactada.</li>
  <li>Fecha de inicio.</li>
</ul>
<p>El empleador tiene plazo de <strong>15 días hábiles</strong> para entregar el contrato firmado desde el inicio de la relación laboral. Si el empleador se niega a entregar contrato, puedes denunciarlo en la Inspección del Trabajo.</p>

<h2>Sueldo mínimo y remuneración</h2>
<p>El sueldo mínimo en Chile se ajusta anualmente. Para 2025-2026, el sueldo mínimo mensual es de <strong>$500.000 CLP aprox.</strong> (verifica el valor actualizado en el sitio de la Dirección del Trabajo). Ningún empleador puede pagarte menos que el sueldo mínimo legal, seas chileno o extranjero.</p>
<p>El sueldo mínimo aplica a trabajadores mayores de 18 años con jornada completa (45 horas semanales). Jornadas parciales se calculan proporcionalmente.</p>

<h2>Cotizaciones previsionales: AFP y salud</h2>
<p>Con contrato de trabajo, el empleador descuenta mensualmente de tu sueldo bruto:</p>
<ul>
  <li><strong>AFP (ahorro para la vejez):</strong> ~10% del sueldo bruto (varía según AFP elegida).</li>
  <li><strong>Salud (Fonasa o Isapre):</strong> 7% del sueldo bruto.</li>
  <li><strong>Seguro de cesantía:</strong> 0,6% (trabajador) + 2,4% (empleador).</li>
</ul>
<p>Estos descuentos son obligatorios por ley y benefician al trabajador. Las cotizaciones de AFP acumulan ahorro para pensión. Las de salud dan acceso a Fonasa o Isapre. El seguro de cesantía da derecho a prestación si pierdes el trabajo.</p>

<h2>Jornada laboral y horas extra</h2>
<p>La jornada máxima ordinaria es de <strong>45 horas semanales</strong> (a reducirse a 40 horas con la reforma gradual 2024-2028). Las horas extra son voluntarias, tienen un límite de 2 por día y se pagan con recargo del 50% sobre el valor de la hora ordinaria.</p>

<h2>Vacaciones y feriados</h2>
<ul>
  <li><strong>Feriado anual (vacaciones):</strong> 15 días hábiles de vacaciones pagadas después de 1 año de trabajo continuo. Con más de 10 años de trabajo total en Chile (con diferentes empleadores): 1 día adicional por cada 3 años trabajados.</li>
  <li><strong>Feriados legales:</strong> 15 días feriados nacionales al año aproximadamente.</li>
  <li><strong>Licencia por enfermedad:</strong> con certificado médico emitido por médico con licencia activa en Chile. El COMPIN la valida para pagos de la ISAPRE/Fonasa.</li>
</ul>

<h2>¿Qué hacer si un empleador no te paga o abusa?</h2>
<p>La <strong>Dirección del Trabajo (DT)</strong> es el organismo que protege los derechos laborales. Puedes:</p>
<ul>
  <li>Presentar una <strong>denuncia en la Dirección del Trabajo</strong> (dirección física o en línea).</li>
  <li>Solicitar una <strong>mediación</strong> para resolver el conflicto sin juicio.</li>
  <li>Interponer una <strong>demanda laboral</strong> en el Juzgado de Letras del Trabajo si la mediación falla.</li>
</ul>
<p>Los extranjeros tienen exactamente los mismos derechos para presentar denuncias y demandas laborales que los chilenos. El estatus migratorio no afecta tu capacidad de reclamar.</p>

<h2>Trabajo a honorarios (independiente)</h2>
<p>Si trabajas a honorarios (servicios profesionales o técnicos sin relación de dependencia), no tienes contrato de trabajo y las reglas son diferentes:</p>
<ul>
  <li>Se emite <strong>boleta de honorarios electrónica</strong> a través del SII.</li>
  <li>No hay obligación del cliente de pagar cotizaciones (tú las pagas voluntariamente o mediante retención).</li>
  <li>Desde 2018 existe <strong>cotización obligatoria gradual para honorarios</strong> — el SII retiene un porcentaje que va a cotizaciones previsionales.</li>
  <li>No tienes derecho a seguro de cesantía, vacaciones pagadas ni licencias médicas pagas (a menos que cotices voluntariamente).</li>
</ul>
  $o4$,
  '[
    {
      "question": "¿Mi empleador me puede pagar menos porque soy extranjero?",
      "answer": "No. El Código del Trabajo no permite diferencias salariales por nacionalidad. Si trabajas las mismas horas en las mismas funciones, tienes derecho al mismo sueldo. Si detectas discriminación salarial, puedes denunciarlo en la Dirección del Trabajo."
    },
    {
      "question": "¿Puedo trabajar mientras espero que el SERMIG resuelva mi visa?",
      "answer": "Sí. El comprobante de solicitud activa del trámite migratorio te habilita para trabajar legalmente. Muchos empleadores no están familiarizados con esto; si es el caso, puedes mostrarles el artículo de la Ley 21.325 que lo establece."
    },
    {
      "question": "¿Qué pasa con mis cotizaciones de AFP si regreso a mi país?",
      "answer": "Si tienes Permanencia Definitiva o ciudadanía chilena, las cotizaciones quedan en tu cuenta AFP hasta la jubilación. Si eres extranjero sin permanencia y te vas definitivamente, puedes solicitar la devolución de tus cotizaciones AFP bajo ciertas condiciones. Consulta directamente con tu AFP."
    },
    {
      "question": "¿Puedo ser despedido por ser extranjero?",
      "answer": "No. La nacionalidad no es una causal legal de despido. Las causales válidas están en el Código del Trabajo (necesidades de la empresa, conducta del trabajador, etc.). Un despido por nacionalidad es discriminatorio y puedes reclamar indemnización."
    },
    {
      "question": "¿Tengo derecho a finiquito si me despiden o renuncio?",
      "answer": "Sí. El finiquito es obligatorio al término de cualquier relación laboral. Debe incluir todos los conceptos pendientes: sueldo del último período, vacaciones proporcionales, indemnización si corresponde. Tienes derecho a que te lo expliquen y a no firmar algo que no entiendas."
    }
  ]'::jsonb,
  ARRAY[
    'vivir-en-chile',
    'vivir-en-chile/rut-extranjero',
    'vivir-en-chile/sistema-salud',
    'vivir-en-chile/cuenta-bancaria',
    'permanencia-definitiva/beneficios'
  ]::TEXT[],
  7,
  TRUE,
  NOW()
);
