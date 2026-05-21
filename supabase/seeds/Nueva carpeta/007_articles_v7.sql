-- ============================================================
-- MigraciónChile — Seed v7: clusters visa-temporaria, vivir-en-chile, problemas
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

-- ──────────────────────────────────────────────────────────
-- 1. CLUSTER: visa-temporaria/mercosur
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'visa-temporaria/mercosur',
  'visa-temporaria',
  'visa-temporaria',
  'cluster',
  'Visa Temporaria MERCOSUR en Chile: Requisitos 2026',
  'Visa Temporaria MERCOSUR: El Camino Más Rápido para Regularizarse en Chile',
  'Cómo obtener la visa temporaria MERCOSUR en Chile para ciudadanos de Argentina, Brasil, Uruguay, Paraguay, Bolivia y más. Requisitos, documentos y proceso 2026.',
  'visa mercosur chile requisitos',
  $i1$
<p>La <strong>visa temporaria MERCOSUR</strong> es la categoría más sencilla y rápida para regularizarse en Chile si eres ciudadano de un país miembro o asociado del bloque. No requiere contrato de trabajo ni vínculo familiar con un chileno: basta con acreditar la nacionalidad y los antecedentes penales.</p>

<h2>¿Qué países aplican?</h2>
<p>Pueden solicitar la visa bajo el Acuerdo de Residencia MERCOSUR los ciudadanos de:</p>
<ul>
  <li><strong>Miembros plenos:</strong> Argentina, Brasil, Uruguay, Paraguay</li>
  <li><strong>Estados asociados:</strong> Bolivia, Colombia, Ecuador, Perú, Guyana, Surinam</li>
</ul>
<p>Chile es Estado asociado del MERCOSUR, por lo que sus ciudadanos también tienen este beneficio recíproco en los demás países signatarios.</p>
<p>Venezuela fue suspendida del MERCOSUR en 2017 y sus ciudadanos <strong>no pueden</strong> acogerse a esta vía. Para venezolanos existe la Visa de Responsabilidad Democrática (VRD).</p>

<h2>Ventajas frente a otras categorías</h2>
<ul>
  <li>No requiere oferta de empleo ni contrato de trabajo.</li>
  <li>No requiere vínculo familiar con un chileno.</li>
  <li>El proceso es más ágil que otras categorías.</li>
  <li>La visa tiene vigencia de 2 años (frente al 1 año de otras categorías temporarias).</li>
  <li>Después de 2 años puedes solicitar la Permanencia Definitiva.</li>
</ul>

<h2>Documentos necesarios</h2>
<table>
  <thead>
    <tr><th>Documento</th><th>Especificaciones</th></tr>
  </thead>
  <tbody>
    <tr>
      <td>Pasaporte vigente</td>
      <td>Con al menos 6 meses de vigencia.</td>
    </tr>
    <tr>
      <td>Certificado de antecedentes penales del país de origen</td>
      <td>Apostillado. No mayor a 90 días. En español o con traducción oficial.</td>
    </tr>
    <tr>
      <td>Certificado de antecedentes del Registro Civil de Chile</td>
      <td>Gratis en registrocivil.cl. No mayor a 90 días.</td>
    </tr>
    <tr>
      <td>Comprobante de domicilio en Chile</td>
      <td>Contrato de arriendo, boleta de servicios o declaración jurada notarial.</td>
    </tr>
    <tr>
      <td>Fotografía reciente</td>
      <td>Fondo blanco, formato digital.</td>
    </tr>
  </tbody>
</table>
<p>Los documentos extranjeros deben estar apostillados según el Convenio de La Haya. Si el país de origen no es signatario del Convenio, se requiere legalización consular y luego Ministerio de Relaciones Exteriores de Chile.</p>

<h2>Si estás en situación irregular</h2>
<p>Si ingresaste regularmente pero tu visa o permiso de turismo venció, primero debes hacer la <a href="/autodenuncia/pdi-paso-a-paso">autodenuncia en la PDI</a>. Con el Certificado de Autodenuncia puedes solicitar la visa MERCOSUR aunque estés en situación irregular.</p>

<h2>Proceso paso a paso</h2>
<ol>
  <li>Verifica que tu país esté incluido en el Acuerdo MERCOSUR.</li>
  <li>Si estás en situación irregular, haz la autodenuncia en la PDI primero.</li>
  <li>Reúne los documentos con fechas vigentes (apostillados).</li>
  <li>Ingresa al portal <a href="https://tramitesmigratorios.interior.gob.cl" target="_blank" rel="noopener noreferrer">tramitesmigratorios.interior.gob.cl</a>.</li>
  <li>Selecciona <strong>Visa Temporaria → MERCOSUR</strong>.</li>
  <li>Carga los documentos y paga el arancel.</li>
  <li>Con el comprobante de trámite puedes permanecer y trabajar en Chile mientras se resuelve.</li>
</ol>

<h2>Vigencia y renovación</h2>
<p>La visa MERCOSUR se otorga por <strong>2 años renovables</strong>. Al vencer, puedes renovarla por otros 2 años o solicitar directamente la <a href="/permanencia-definitiva">Permanencia Definitiva</a> si cumples el tiempo de residencia requerido.</p>
  $i1$,
  '[
    {
      "question": "¿Los venezolanos pueden usar la visa MERCOSUR?",
      "answer": "No. Venezuela fue suspendida del MERCOSUR en 2017 y sus ciudadanos no pueden acogerse a este acuerdo. Los venezolanos tienen disponible la Visa de Responsabilidad Democrática (VRD), que es una categoría especial creada para ellos."
    },
    {
      "question": "¿Necesito apostillar los documentos si soy argentino?",
      "answer": "Sí. Aunque Argentina y Chile son países vecinos y comparten el Convenio de La Haya, los documentos extranjeros deben estar apostillados para ser válidos en Chile. La apostilla la emite el Ministerio de Relaciones Exteriores del país de origen."
    },
    {
      "question": "¿Puedo trabajar con el comprobante de trámite mientras espero la visa?",
      "answer": "Sí. El comprobante de solicitud te habilita legalmente para trabajar en Chile mientras el trámite está activo. La mayoría de los empleadores lo aceptan como documento habilitante junto al pasaporte."
    },
    {
      "question": "¿La visa MERCOSUR me da acceso a prestaciones de salud?",
      "answer": "Sí. Con la visa MERCOSUR aprobada y la cédula de identidad para extranjeros, tienes acceso al sistema de salud público (Fonasa) en el nivel que corresponda según tus ingresos. Con el comprobante de trámite también puedes acceder a atención de urgencias."
    },
    {
      "question": "¿Puedo incluir a mi familia en la visa MERCOSUR?",
      "answer": "Los familiares directos (cónyuge, hijos menores de 18 años) pueden ser incluidos como carga familiar. Necesitan sus propios documentos (pasaporte, antecedentes, partidas de nacimiento o matrimonio) apostillados."
    }
  ]'::jsonb,
  ARRAY[
    'visa-temporaria',
    'autodenuncia/pdi-paso-a-paso',
    'permanencia-definitiva',
    'vivir-en-chile/rut-extranjero',
    'visa-temporaria/contrato-trabajo'
  ]::TEXT[],
  5,
  TRUE,
  NOW()
);

-- ──────────────────────────────────────────────────────────
-- 2. CLUSTER: visa-temporaria/estudiante
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, schema_type, howto_steps, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'visa-temporaria/estudiante',
  'visa-temporaria',
  'visa-temporaria',
  'cluster',
  'Visa de Estudiante en Chile: Requisitos y Proceso 2026',
  'Cómo Obtener la Visa de Estudiante en Chile: Requisitos, Documentos y Proceso',
  'Requisitos y proceso para obtener la visa de estudiante en Chile en 2026. Qué documentos necesitas, cómo solicitarla y qué puedes hacer con ella.',
  'visa estudiante chile requisitos',
  $i2$
<p>La <strong>visa de estudiante</strong> permite a extranjeros residir legalmente en Chile mientras cursan estudios formales en establecimientos reconocidos por el Estado. Es una de las categorías más utilizadas por jóvenes latinoamericanos que vienen a estudiar pregrado, posgrado o programas de intercambio.</p>

<h2>¿Qué estudios habilitan para esta visa?</h2>
<p>La visa de estudiante aplica para:</p>
<ul>
  <li>Educación superior: universidades, institutos profesionales y centros de formación técnica reconocidos por el MINEDUC.</li>
  <li>Educación escolar: enseñanza básica y media en establecimientos reconocidos.</li>
  <li>Programas de intercambio formal con convenio entre instituciones.</li>
</ul>
<p>Los cursos de idiomas, academias privadas sin reconocimiento estatal y estudios no formales en general <strong>no habilitan</strong> para la visa de estudiante.</p>

<h2>Documentos necesarios</h2>
<table>
  <thead>
    <tr><th>Documento</th><th>Especificaciones</th></tr>
  </thead>
  <tbody>
    <tr>
      <td>Pasaporte vigente</td>
      <td>Con al menos 6 meses de vigencia.</td>
    </tr>
    <tr>
      <td>Carta de aceptación o matrícula</td>
      <td>Emitida por la institución educacional chilena, con membrete, firma y sello oficial.</td>
    </tr>
    <tr>
      <td>Certificado de antecedentes penales del país de origen</td>
      <td>Apostillado. No mayor a 90 días. En español o con traducción oficial.</td>
    </tr>
    <tr>
      <td>Certificado de antecedentes del Registro Civil de Chile</td>
      <td>Gratis en registrocivil.cl. No mayor a 90 días.</td>
    </tr>
    <tr>
      <td>Comprobante de solvencia económica</td>
      <td>Extracto bancario, carta de patrocinio familiar o beca. Debe acreditar que puedes sostenerte durante los estudios.</td>
    </tr>
    <tr>
      <td>Comprobante de domicilio en Chile</td>
      <td>Contrato de arriendo, residencia universitaria u hospedaje.</td>
    </tr>
    <tr>
      <td>Fotografía reciente</td>
      <td>Fondo blanco, formato digital.</td>
    </tr>
  </tbody>
</table>

<h2>¿Puedo trabajar con visa de estudiante?</h2>
<p>La visa de estudiante <strong>no autoriza a trabajar</strong> en Chile por defecto. Sin embargo, existen dos excepciones:</p>
<ul>
  <li>Si la institución educacional tiene convenio con el empleador (prácticas profesionales formales).</li>
  <li>Si solicitas una autorización especial de trabajo al SERMIG, que puede otorgarse hasta 20 horas semanales.</li>
</ul>
<p>Trabajar sin autorización con visa de estudiante puede resultar en el rechazo de futuras solicitudes de visa.</p>

<h2>Vigencia y renovación</h2>
<p>La visa se otorga por la duración del programa de estudios, con un máximo de <strong>1 año renovable</strong>. Para renovarla, debes presentar un certificado de alumno regular que acredite que sigues matriculado.</p>

<h2>¿Puedo cambiar a una visa de trabajo después?</h2>
<p>Sí. Si terminas tus estudios y consigues empleo en Chile, puedes solicitar una visa temporaria por contrato de trabajo o por la causal que corresponda. No necesitas salir del país para hacer el cambio de categoría.</p>
  $i2$,
  'HowTo',
  '[
    {"name": "Obtener la carta de aceptación de la institución", "text": "Solicita a la universidad, instituto o establecimiento educacional una carta oficial de aceptación o matrícula que confirme tu inscripción en el programa."},
    {"name": "Apostillar los documentos extranjeros", "text": "El certificado de antecedentes penales de tu país debe estar apostillado. Si tu país no adhiere al Convenio de La Haya, requiere legalización consular."},
    {"name": "Reunir comprobante de solvencia económica", "text": "Extracto bancario de los últimos 3 meses, carta de beca o carta de patrocinio de tus padres o tutor que acredite que puedes sostenerte durante los estudios."},
    {"name": "Presentar la solicitud en el portal del SERMIG", "text": "Ingresa a tramitesmigratorios.interior.gob.cl, selecciona Visa de Estudiante, carga todos los documentos y paga el arancel."},
    {"name": "Conservar el comprobante de trámite", "text": "El comprobante te habilita para permanecer en Chile durante la tramitación. Llévalo siempre junto al pasaporte."},
    {"name": "Con la visa aprobada, obtener la cédula en el SRCeI", "text": "Solicita tu cédula de identidad para extranjeros y RUT en cualquier oficina del Registro Civil."}
  ]'::jsonb,
  '[
    {
      "question": "¿Puedo solicitar la visa de estudiante antes de llegar a Chile?",
      "answer": "Sí. Puedes solicitar la visa de estudiante desde tu país de origen, una vez que tienes la carta de aceptación de la institución chilena. También puedes ingresar como turista y solicitarla dentro de Chile antes de que venza el permiso de turismo."
    },
    {
      "question": "¿Los cursos de español o idiomas cuentan para esta visa?",
      "answer": "No. Los cursos de idiomas en academias privadas sin reconocimiento del MINEDUC no habilitan para la visa de estudiante. Solo los programas en instituciones formalmente reconocidas por el Estado chileno califican."
    },
    {
      "question": "¿Qué pasa si me cambio de carrera o institución?",
      "answer": "Debes notificar el cambio al SERMIG y presentar la nueva carta de aceptación. El cambio de institución en sí no invalida la visa, pero sí debes tener documentación actualizada que acredite tu nueva situación académica."
    },
    {
      "question": "¿Puedo traer a mi familia con la visa de estudiante?",
      "answer": "Sí. Tu cónyuge y tus hijos menores de 18 años pueden ser incluidos como carga familiar. Necesitarán sus propios documentos de identidad y los que acrediten el vínculo (certificado de matrimonio, partidas de nacimiento), apostillados."
    },
    {
      "question": "¿La visa de estudiante cuenta para la permanencia definitiva?",
      "answer": "Sí. El tiempo de residencia con visa de estudiante acumula para los requisitos de la Permanencia Definitiva. Después de 2 años continuos con visa de estudiante vigente, puedes solicitar la permanencia definitiva."
    }
  ]'::jsonb,
  ARRAY[
    'visa-temporaria',
    'vivir-en-chile/rut-extranjero',
    'permanencia-definitiva',
    'vivir-en-chile/homologacion-titulos',
    'autodenuncia/pdi-paso-a-paso'
  ]::TEXT[],
  5,
  TRUE,
  NOW()
);

-- ──────────────────────────────────────────────────────────
-- 3. CLUSTER: visa-temporaria/razones-humanitarias
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'visa-temporaria/razones-humanitarias',
  'visa-temporaria',
  'visa-temporaria',
  'cluster',
  'Visa por Razones Humanitarias en Chile: Quién Aplica 2026',
  'Visa Temporaria por Razones Humanitarias en Chile: Criterios y Proceso',
  'Qué es la visa por razones humanitarias en Chile, quién puede solicitarla, qué documentos se necesitan y cómo funciona el proceso en 2026.',
  'visa razones humanitarias chile',
  $i3$
<p>La <strong>visa temporaria por razones humanitarias</strong> es una categoría de carácter excepcional que el SERMIG puede otorgar a personas que se encuentran en situaciones de especial vulnerabilidad y que no califican para las vías migratorias ordinarias. Es una herramienta de protección, no una visa estándar.</p>

<h2>¿Quién puede solicitarla?</h2>
<p>No existe una lista taxativa, pero el SERMIG ha utilizado esta categoría principalmente para:</p>
<ul>
  <li>Víctimas de trata de personas o tráfico de migrantes.</li>
  <li>Personas con enfermedades graves que requieren tratamiento médico que no tienen acceso en su país de origen.</li>
  <li>Personas en situación de violencia doméstica o familiar documentada.</li>
  <li>Niños, niñas y adolescentes no acompañados.</li>
  <li>Personas que no califican para protección internacional (refugio) pero sí presentan circunstancias humanitarias comprobables.</li>
</ul>
<p>La <strong>necesidad económica</strong> por sí sola, en general, no constituye razón humanitaria en el sentido legal.</p>

<h2>Diferencia con el estatus de refugiado</h2>
<p>El <strong>refugio</strong> es una figura jurídica específica que protege a personas perseguidas por motivos de raza, religión, nacionalidad, opinión política o pertenencia a un grupo social. Lo gestiona el Departamento de Extranjería e Inmigración con apoyo del ACNUR.</p>
<p>La <strong>visa humanitaria</strong>, en cambio, es una categoría más amplia y discrecional para situaciones de vulnerabilidad que no encajan en el concepto de refugio pero sí merecen protección.</p>

<h2>Documentos y evidencia necesaria</h2>
<p>Por la naturaleza excepcional de esta visa, la documentación varía según la situación. En general se requiere:</p>
<ul>
  <li>Pasaporte vigente.</li>
  <li>Antecedentes penales apostillados.</li>
  <li>Documentación que acredite la situación humanitaria: informes médicos, denuncia policial, informe de institución de ayuda humanitaria (OIM, ACNUR, Cruz Roja), declaración jurada notarial, etc.</li>
  <li>Comprobante de domicilio en Chile.</li>
</ul>
<p>El apoyo de una organización de ayuda humanitaria (OIM, ACNUR, Servicio Jesuita a Migrantes, etc.) puede ser determinante para que el SERMIG evalúe positivamente la solicitud.</p>

<h2>Proceso de solicitud</h2>
<p>La solicitud se presenta en el portal del SERMIG (<a href="https://tramitesmigratorios.interior.gob.cl" target="_blank" rel="noopener noreferrer">tramitesmigratorios.interior.gob.cl</a>) bajo la categoría <strong>Visa Temporaria → Razones Humanitarias</strong>. Dado el carácter excepcional, se recomienda acompañar la solicitud con una carta explicativa detallada.</p>

<h2>Vigencia y renovación</h2>
<p>La visa humanitaria se otorga por <strong>1 año renovable</strong> mientras persistan las condiciones que la motivaron. El SERMIG puede revocarla si las circunstancias cambian.</p>

<h2>Organizaciones de apoyo</h2>
<p>Si estás en una situación de vulnerabilidad y no sabes cómo proceder, estas organizaciones pueden orientarte:</p>
<ul>
  <li><strong>OIM</strong> (Organización Internacional para las Migraciones): atención a migrantes en situación vulnerable.</li>
  <li><strong>ACNUR</strong>: Agencia de la ONU para los refugiados.</li>
  <li><strong>Servicio Jesuita a Migrantes (SJM)</strong>: asesoría jurídica gratuita.</li>
  <li><strong>Clínicas jurídicas universitarias</strong>: asesoría legal gratuita en varias ciudades.</li>
</ul>
  $i3$,
  '[
    {
      "question": "¿La pobreza o la falta de trabajo califica para la visa humanitaria?",
      "answer": "En términos generales, no. La necesidad económica por sí sola no constituye razón humanitaria en el sentido legal. La visa humanitaria está diseñada para situaciones de vulnerabilidad específica: violencia, persecución, enfermedad grave, trata de personas, etc."
    },
    {
      "question": "¿Puedo solicitar la visa humanitaria si ya pedí refugio y me lo rechazaron?",
      "answer": "Sí. El rechazo de la solicitud de refugio no impide solicitar la visa humanitaria, ya que son categorías distintas. Sin embargo, si las circunstancias que alegaste para el refugio no constituyeron causal de protección, será difícil que las mismas circunstancias califiquen para la visa humanitaria."
    },
    {
      "question": "¿Cuánto demora el SERMIG en resolver una visa humanitaria?",
      "answer": "No hay plazos diferenciados para esta categoría. Los tiempos son similares a otras visas temporarias: entre 60 y 180 días hábiles en promedio. En casos de urgencia extrema, es posible solicitar una resolución acelerada aportando evidencia de la urgencia."
    },
    {
      "question": "¿Tengo que pagar el arancel de visa si mi situación es de extrema vulnerabilidad?",
      "answer": "El arancel estándar aplica para todas las visas, incluida la humanitaria. Sin embargo, en casos de extrema vulnerabilidad, el SERMIG puede eximir del pago de arancel de forma excepcional, generalmente con el respaldo de una organización humanitaria."
    }
  ]'::jsonb,
  ARRAY[
    'visa-temporaria',
    'autodenuncia/pdi-paso-a-paso',
    'problemas/visa-vencida',
    'problemas/recurso-administrativo',
    'vivir-en-chile/rut-extranjero'
  ]::TEXT[],
  5,
  TRUE,
  NOW()
);

-- ──────────────────────────────────────────────────────────
-- 4. CLUSTER: vivir-en-chile/homologacion-titulos
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, schema_type, howto_steps, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'vivir-en-chile/homologacion-titulos',
  'vivir-en-chile',
  'vivir-en-chile',
  'cluster',
  'Homologación de Títulos en Chile: Guía Completa 2026',
  'Cómo Homologar tu Título Profesional en Chile: Proceso, Plazos y Requisitos',
  'Guía completa para homologar títulos universitarios extranjeros en Chile en 2026. Quién lo exige, cómo se hace, cuánto cuesta y qué alternativas existen.',
  'homologar titulo profesional chile extranjero',
  $i4$
<p>Tener un título universitario de otro país y querer ejercer tu profesión en Chile plantea una pregunta inmediata: <strong>¿necesito homologar mi título?</strong> La respuesta depende de la profesión y del tipo de trabajo que quieras hacer.</p>

<h2>¿Cuándo es obligatoria la homologación?</h2>
<p>La homologación (técnicamente llamada <strong>convalidación o reconocimiento de título</strong> en Chile) es obligatoria para el ejercicio de <strong>profesiones reguladas</strong> que requieren habilitación legal para ejercer. Las principales son:</p>
<ul>
  <li>Médico, dentista, farmacéutico, nutricionista (Ministerio de Salud).</li>
  <li>Abogado (Corte Suprema de Chile).</li>
  <li>Arquitecto, ingeniero civil (colegios profesionales, dependiendo del tipo de trabajo).</li>
  <li>Profesor (Ministerio de Educación, para ejercer en establecimientos del sistema formal).</li>
</ul>
<p>Para la mayoría de las demás profesiones <strong>no es obligatoria</strong> la homologación: puedes trabajar como economista, contador, diseñador, programador, psicólogo, etc., con tu título extranjero. El empleador puede aceptarlo directamente.</p>

<h2>Organismos responsables según profesión</h2>
<table>
  <thead>
    <tr><th>Profesión</th><th>Organismo que homologa</th><th>Vía</th></tr>
  </thead>
  <tbody>
    <tr>
      <td>Medicina, odontología, farmacia, enfermería</td>
      <td>Ministerio de Salud + EUNACOM</td>
      <td>Examen EUNACOM (médicos) o proceso MINSAL</td>
    </tr>
    <tr>
      <td>Derecho / Abogacía</td>
      <td>Corte Suprema de Chile</td>
      <td>Solicitud directa con antecedentes académicos</td>
    </tr>
    <tr>
      <td>Docencia (educación formal)</td>
      <td>Ministerio de Educación</td>
      <td>Proceso de reconocimiento MINEDUC</td>
    </tr>
    <tr>
      <td>Otras profesiones universitarias</td>
      <td>No hay organismo obligatorio</td>
      <td>El empleador evalúa el título directamente</td>
    </tr>
  </tbody>
</table>

<h2>La Universidad de Chile y el reconocimiento de títulos</h2>
<p>La <strong>Universidad de Chile</strong> también puede reconocer títulos universitarios extranjeros para efectos de acreditar que el grado obtenido equivale a un título universitario chileno. Este reconocimiento es útil cuando el empleador o la institución con la que tratas lo requiere, pero no es lo mismo que la habilitación para ejercer profesiones reguladas.</p>
<p>El proceso ante la U. de Chile incluye la revisión del plan de estudios, apostilla de los documentos académicos y el pago de un arancel. Los plazos pueden extenderse de 6 meses a más de un año.</p>

<h2>Documentos generalmente requeridos</h2>
<ul>
  <li>Título universitario original apostillado.</li>
  <li>Certificado de estudios o historial académico apostillado.</li>
  <li>Plan de estudios de la carrera cursada.</li>
  <li>Traducción oficial al español (si los documentos no están en español).</li>
  <li>Pasaporte vigente.</li>
</ul>

<h2>Alternativa: ejercer sin homologar</h2>
<p>Para profesiones no reguladas, muchos extranjeros ejercen exitosamente en Chile sin homologar formalmente el título. Los empleadores en el sector privado pueden contratar a quien deseen y valorar los antecedentes académicos directamente. La homologación solo se vuelve necesaria si el trabajo requiere registro en un colegio profesional o habilitación estatal.</p>
  $i4$,
  'HowTo',
  '[
    {"name": "Verificar si tu profesión requiere habilitación legal en Chile", "text": "Investiga si tu profesión es regulada en Chile (medicina, derecho, arquitectura en proyectos públicos, docencia formal). Si no lo es, puedes ejercer con tu título extranjero directamente."},
    {"name": "Identificar el organismo competente", "text": "Según la tabla anterior, determina si la homologación corresponde al Ministerio de Salud, la Corte Suprema, el Ministerio de Educación o la Universidad de Chile."},
    {"name": "Apostillar los documentos académicos", "text": "Título, certificado de estudios y plan de estudios deben estar apostillados en el país de origen. Si el país no adhiere al Convenio de La Haya, requieren legalización consular."},
    {"name": "Traducir los documentos si no están en español", "text": "Debe ser una traducción oficial realizada por un traductor certificado. En Chile se llama perito traductor."},
    {"name": "Presentar la solicitud ante el organismo competente", "text": "Cada organismo tiene su propio proceso, formularios y aranceles. Consulta el sitio web del organismo correspondiente para las instrucciones actualizadas."},
    {"name": "Esperar la resolución y obtener el certificado de reconocimiento", "text": "Los plazos varían: desde 3 meses (casos simples) hasta más de un año (Universidad de Chile, EUNACOM). Con el certificado puedes ejercer legalmente."}
  ]'::jsonb,
  '[
    {
      "question": "¿Puedo trabajar como médico en Chile sin homologar?",
      "answer": "No. La medicina es una profesión regulada y el ejercicio sin habilitación es ilegal en Chile. Los médicos extranjeros deben pasar por el proceso del Ministerio de Salud y, según su situación, rendir el examen EUNACOM para ejercer de forma autónoma."
    },
    {
      "question": "¿Cuánto cuesta homologar un título en la Universidad de Chile?",
      "answer": "Los aranceles varían según el proceso. El reconocimiento de títulos ante la Universidad de Chile tiene un costo que puede superar las 100.000 pesos chilenos. Para profesiones de salud o derecho, los procesos específicos tienen sus propios aranceles. Consulta directamente con el organismo."
    },
    {
      "question": "¿El título homologado en Chile vale en otros países?",
      "answer": "El reconocimiento chileno de tu título es válido para ejercer en Chile. No implica automáticamente que sea válido en otros países. Cada país tiene su propio proceso de reconocimiento."
    },
    {
      "question": "¿Necesito homologar el título para obtener la visa?",
      "answer": "No. La homologación del título es independiente del trámite migratorio. Puedes obtener una visa temporaria o permanencia definitiva sin haber homologado tu título. Son procesos paralelos e independientes."
    },
    {
      "question": "¿Cuánto tiempo demora el proceso completo?",
      "answer": "Depende del organismo: la Universidad de Chile puede tardar entre 6 meses y más de un año. Los procesos ante el Ministerio de Salud para médicos pueden extenderse aún más. Para profesiones no reguladas, el proceso no aplica."
    }
  ]'::jsonb,
  ARRAY[
    'vivir-en-chile',
    'vivir-en-chile/rut-extranjero',
    'permanencia-definitiva',
    'visa-temporaria',
    'visa-temporaria/estudiante'
  ]::TEXT[],
  6,
  TRUE,
  NOW()
);
