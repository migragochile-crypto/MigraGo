-- ============================================================
-- MigraciónChile — Seed v6: clusters autodenuncia, problemas, visa-temporaria
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

-- ──────────────────────────────────────────────────────────
-- 1. CLUSTER: autodenuncia/sermig-vs-pdi
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'autodenuncia/sermig-vs-pdi',
  'autodenuncia',
  'autodenuncia',
  'cluster',
  'PDI vs SERMIG: ¿A Cuál Debes Ir para la Autodenuncia?',
  'PDI vs SERMIG: Diferencias, Funciones y A Cuál Debes Ir',
  'Diferencias entre la PDI y el SERMIG en el proceso de autodenuncia y regularización migratoria en Chile. A cuál debes ir en cada etapa.',
  'diferencia pdi sermig autodenuncia',
  $h1$
<p>Uno de los puntos de confusión más frecuentes entre migrantes en Chile es la diferencia entre la <strong>PDI</strong> y el <strong>SERMIG</strong>, y a cuál de los dos organismos deben acudir. La respuesta corta: son dos instituciones distintas que actúan en momentos distintos del proceso migratorio.</p>

<h2>¿Qué es la PDI?</h2>
<p>La <strong>PDI</strong> (Policía de Investigaciones de Chile) es una institución policial dependiente del Ministerio del Interior. Entre sus múltiples funciones, tiene a su cargo el <strong>control migratorio</strong>: verifica el ingreso y egreso de personas al país, registra datos biométricos y gestiona la autodenuncia migratoria.</p>
<p>La PDI actúa en la <strong>primera etapa del proceso de regularización</strong>: cuando un extranjero en situación irregular se presenta voluntariamente para declarar su situación.</p>

<h2>¿Qué es el SERMIG?</h2>
<p>El <strong>SERMIG</strong> (Servicio Nacional de Migraciones) es el organismo civil del Estado chileno encargado de gestionar las visas y permisos de residencia. Depende del Ministerio del Interior y Seguridad Pública.</p>
<p>El SERMIG actúa en la <strong>segunda etapa</strong>: recibe y resuelve las solicitudes de visa una vez que el extranjero ya tiene el Certificado de Autodenuncia emitido por la PDI.</p>

<h2>El proceso en dos etapas</h2>
<table>
  <thead>
    <tr><th>Etapa</th><th>Institución</th><th>Qué hace</th></tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>1. Autodenuncia</strong></td>
      <td>PDI (presencial en comisaría)</td>
      <td>Registra biometría, verifica antecedentes, cobra la multa, emite el Certificado de Autodenuncia</td>
    </tr>
    <tr>
      <td><strong>2. Solicitud de visa</strong></td>
      <td>SERMIG (portal online)</td>
      <td>Recibe la solicitud, evalúa los documentos, emite la resolución de aprobación o rechazo</td>
    </tr>
  </tbody>
</table>

<h2>¿Puedo ir directamente al SERMIG sin pasar por la PDI?</h2>
<p>Si tu visa <strong>aún está vigente</strong>, sí: puedes solicitar una nueva visa directamente en el portal del SERMIG sin necesidad de ir a la PDI.</p>
<p>Si tu visa ya <strong>venció</strong> o estás en situación irregular por cualquier motivo, primero debes hacer la autodenuncia en la PDI. Sin el Certificado de Autodenuncia, el SERMIG no puede recibir tu solicitud de visa estando en situación irregular.</p>

<h2>¿Dónde están ubicados?</h2>
<p><strong>PDI:</strong> tiene comisarías en todo Chile. Puedes presentarte en cualquier comisaría PDI, no solo en la de tu ciudad. Para la autodenuncia, el horario habitual es de lunes a viernes de 8:00 a 13:00, aunque puede variar por sucursal.</p>
<p><strong>SERMIG:</strong> opera principalmente a través del portal online <a href="https://tramitesmigratorios.interior.gob.cl" target="_blank" rel="noopener noreferrer">tramitesmigratorios.interior.gob.cl</a>. Tiene oficinas presenciales en Santiago y regiones para casos que requieren atención directa, pero la mayoría de los trámites son 100% digitales.</p>

<h2>Resumen visual del flujo completo</h2>
<ol>
  <li>Extranjero en situación irregular → <strong>PDI</strong> (autodenuncia + multa + biometría) → Certificado de Autodenuncia</li>
  <li>Con certificado en mano → <strong>SERMIG</strong> (portal online) → Solicitud de visa temporaria</li>
  <li>SERMIG resuelve → Resolución de aprobación → <strong>SRCeI</strong> (Registro Civil) → Cédula de identidad para extranjeros y RUT</li>
</ol>
  $h1$,
  '[
    {
      "question": "¿Puedo quejarme ante el SERMIG si la PDI me trata mal?",
      "answer": "Son organismos distintos. Las quejas contra la PDI se presentan ante la propia institución o ante el Ministerio del Interior. El SERMIG no tiene jurisdicción sobre el comportamiento de la PDI. Si tienes problemas con la PDI, puedes recurrir a la Defensoría de los Derechos Ciudadanos."
    },
    {
      "question": "¿El SERMIG puede rechazarme la visa aunque la PDI me haya dado el certificado?",
      "answer": "Sí. El Certificado de Autodenuncia de la PDI solo acredita que te presentaste voluntariamente y pagaste la multa. El SERMIG evalúa de forma independiente si cumples los requisitos para la visa. No son decisiones vinculadas."
    },
    {
      "question": "¿Puedo ir a la PDI sin cita previa para la autodenuncia?",
      "answer": "Sí, generalmente no se requiere cita previa. La autodenuncia es un trámite presencial espontáneo. En ciudades de alta demanda como Santiago puede haber espera, así que se recomienda llegar temprano."
    },
    {
      "question": "¿La PDI comparte mis datos con el país de origen?",
      "answer": "La PDI puede compartir información con organismos de seguridad internacional bajo tratados específicos. Sin embargo, la autodenuncia es un proceso interno de regularización y no está orientada a informar a autoridades extranjeras sobre la situación de sus ciudadanos."
    }
  ]'::jsonb,
  ARRAY[
    'autodenuncia',
    'autodenuncia/pdi-paso-a-paso',
    'visa-temporaria',
    'problemas/visa-vencida',
    'vivir-en-chile/rut-extranjero'
  ]::TEXT[],
  4,
  TRUE,
  NOW()
);

-- ──────────────────────────────────────────────────────────
-- 2. CLUSTER: autodenuncia/tiempos-reales
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'autodenuncia/tiempos-reales',
  'autodenuncia',
  'autodenuncia',
  'cluster',
  'Tiempos de Tramitación SERMIG 2026: Cuánto Demora la Visa',
  'Tiempos Reales de Tramitación SERMIG: Cuánto Demora tu Visa en Chile',
  'Cuánto demora el SERMIG en resolver visas temporarias en Chile en 2026. Tiempos por categoría, qué hacer mientras esperas y cómo consultar el estado.',
  'cuanto demora visa chile sermig',
  $h2$
<p>La pregunta más frecuente después de presentar una solicitud de visa en Chile es: <strong>¿cuánto tiempo tarda el SERMIG en resolver?</strong> La respuesta honesta es que depende de varios factores, pero aquí están los rangos reales.</p>

<h2>El plazo legal vs. la realidad</h2>
<p>La Ley 21.325 establece que el SERMIG debe resolver las solicitudes de visa en un plazo de <strong>30 días hábiles</strong>. En la práctica, este plazo raramente se cumple cuando hay alta demanda. Los tiempos reales históricos han sido:</p>
<table>
  <thead>
    <tr><th>Categoría de visa</th><th>Plazo legal</th><th>Tiempo real aproximado 2025-2026</th></tr>
  </thead>
  <tbody>
    <tr><td>Visa temporaria (cualquier causal)</td><td>30 días hábiles</td><td>60 a 180 días hábiles</td></tr>
    <tr><td>Visa de Responsabilidad Democrática (VRD)</td><td>30 días hábiles</td><td>90 a 180 días hábiles</td></tr>
    <tr><td>Permanencia definitiva</td><td>30 días hábiles</td><td>60 a 120 días hábiles</td></tr>
    <tr><td>Recursos administrativos (reposición)</td><td>15 días hábiles</td><td>30 a 90 días hábiles</td></tr>
  </tbody>
</table>
<p>Estos rangos son referenciales. Los tiempos varían según la carga del SERMIG, la complejidad del caso y si hay documentación incompleta que requiera subsanación.</p>

<h2>¿Qué se puede hacer mientras se espera?</h2>
<p>El comprobante de solicitud con número de trámite es un <strong>documento habilitante</strong> durante la espera. Con él puedes:</p>
<ul>
  <li>Permanecer legalmente en Chile mientras el trámite esté activo.</li>
  <li>Trabajar (la mayoría de los empleadores lo aceptan).</li>
  <li>Solicitar el RUT provisorio en el SII.</li>
  <li>Acceder a atención en salud pública.</li>
  <li>Matricular a tus hijos en establecimientos educacionales.</li>
</ul>
<p>Lo que <strong>no puedes</strong> hacer con el comprobante de trámite: obtener la cédula de identidad para extranjeros (requiere la visa aprobada).</p>

<h2>Cómo consultar el estado de tu trámite</h2>
<p>Puedes verificar el estado de tu solicitud en cualquier momento en el portal del SERMIG:</p>
<ol>
  <li>Ingresa a <a href="https://tramitesmigratorios.interior.gob.cl" target="_blank" rel="noopener noreferrer">tramitesmigratorios.interior.gob.cl</a>.</li>
  <li>Inicia sesión con tu cuenta.</li>
  <li>Ve a <strong>Mis trámites</strong> y busca el número de solicitud.</li>
  <li>El estado puede aparecer como: En revisión, Con observaciones, Aprobado, Rechazado.</li>
</ol>

<h2>¿Qué significa "Con observaciones"?</h2>
<p>Si tu solicitud aparece <strong>Con observaciones</strong>, el SERMIG detectó un problema con los documentos: falta algún documento, alguno está vencido, o hay inconsistencias en la información declarada. Tienes un plazo para subsanar (normalmente 10 días hábiles desde la notificación). Si no subsanas en plazo, la solicitud puede ser rechazada.</p>

<h2>¿Cuándo es razonable preocuparse?</h2>
<p>Si llevas más de <strong>6 meses</strong> sin resolución y el estado sigue como "En revisión" sin observaciones, puedes presentar una solicitud de información ante el SERMIG invocando la Ley de Transparencia. También puedes acudir personalmente a las oficinas del SERMIG en tu región.</p>
  $h2$,
  '[
    {
      "question": "¿Puedo exigirle al SERMIG que resuelva dentro del plazo legal de 30 días?",
      "answer": "Técnicamente sí: puedes presentar un reclamo por silencio administrativo si se vence el plazo legal sin resolución. En la práctica, esto solo acelera el proceso en casos extremos. Para la mayoría de los trámites, la espera es parte del proceso actual."
    },
    {
      "question": "¿El SERMIG me avisa por correo cuando resuelve?",
      "answer": "Sí. El SERMIG envía una notificación al correo registrado en tu cuenta del portal cuando hay un cambio en el estado del trámite. Asegúrate de que el correo que registraste sea el que usas actualmente y revisa la carpeta de spam."
    },
    {
      "question": "¿Puedo viajar fuera de Chile mientras espero la resolución?",
      "answer": "Sí, puedes salir con el comprobante de trámite. Sin embargo, al reingresar como turista el plazo de 90 días vuelve a correr, y si la visa se resuelve mientras estás fuera, podrías necesitar ingresar nuevamente para retirar la cédula. Consúltalo con el SERMIG antes de viajar."
    },
    {
      "question": "¿Qué pasa si el SERMIG no resuelve antes de que venza mi visa?",
      "answer": "Si presentaste la solicitud antes de que venciera tu visa, el comprobante de trámite actúa como extensión implícita de tu permiso de residencia. No estás en situación irregular mientras el trámite esté activo."
    }
  ]'::jsonb,
  ARRAY[
    'autodenuncia',
    'autodenuncia/pdi-paso-a-paso',
    'visa-temporaria',
    'problemas/visa-vencida',
    'vivir-en-chile/rut-extranjero'
  ]::TEXT[],
  4,
  TRUE,
  NOW()
);

-- ──────────────────────────────────────────────────────────
-- 3. CLUSTER: problemas/recurso-administrativo
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, schema_type, howto_steps, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'problemas/recurso-administrativo',
  'problemas',
  'problemas',
  'cluster',
  'Recurso Administrativo ante el SERMIG: Guía Completa 2026',
  'Cómo Presentar un Recurso Administrativo ante el SERMIG por Rechazo de Visa',
  'Guía completa para interponer recurso de reposición o jerárquico ante el SERMIG cuando te rechazan una visa en Chile. Plazos, fundamentos y proceso.',
  'recurso administrativo sermig rechazo visa',
  $h3$
<p>Si el SERMIG rechazó tu solicitud de visa o permanencia definitiva, tienes derecho a <strong>impugnar esa decisión</strong> mediante un recurso administrativo. No ignorar el rechazo es fundamental: si vence el plazo sin recurrir, la resolución queda firme y las opciones se reducen significativamente.</p>

<h2>Tipos de recursos disponibles</h2>
<p>La Ley 21.325 y la Ley 19.880 (Bases de Procedimientos Administrativos) reconocen dos recursos:</p>
<ul>
  <li><strong>Recurso de reposición:</strong> se presenta ante el mismo SERMIG que dictó el rechazo, solicitando que reconsidere la resolución. Es el primer recurso y el más común.</li>
  <li><strong>Recurso jerárquico:</strong> se presenta ante el superior jerárquico del SERMIG (el Ministerio del Interior) cuando el recurso de reposición fue rechazado o no fue respondido en plazo.</li>
</ul>
<p>Ambos pueden presentarse de forma simultánea o sucesiva.</p>

<h2>Plazos: lo más importante</h2>
<table>
  <thead>
    <tr><th>Recurso</th><th>Plazo para presentar</th><th>Plazo de resolución del SERMIG</th></tr>
  </thead>
  <tbody>
    <tr>
      <td>Reposición</td>
      <td><strong>5 días hábiles</strong> desde la notificación</td>
      <td>5 días hábiles</td>
    </tr>
    <tr>
      <td>Jerárquico</td>
      <td><strong>5 días hábiles</strong> desde la notificación del rechazo de reposición</td>
      <td>30 días hábiles</td>
    </tr>
  </tbody>
</table>
<p><strong>Atención:</strong> el plazo de 5 días hábiles es muy corto. Desde que recibes la notificación de rechazo, debes actuar rápido. La notificación puede llegar por correo electrónico o estar disponible en el portal del SERMIG.</p>

<h2>¿Qué debe contener el recurso?</h2>
<p>No existe un formulario oficial único, pero el recurso debe incluir:</p>
<ul>
  <li>Identificación del recurrente (nombre completo, número de pasaporte o RUT, correo de contacto).</li>
  <li>Número de resolución que se impugna y fecha.</li>
  <li>Fundamentos del recurso: por qué consideras que el rechazo es incorrecto.</li>
  <li>Documentos de respaldo que acrediten los fundamentos.</li>
  <li>Petición concreta: que se revoque el rechazo y se apruebe la visa.</li>
  <li>Firma del recurrente.</li>
</ul>

<h2>Fundamentos frecuentes</h2>
<p>Los rechazos más comunes tienen estas causas — y sus respectivos fundamentos de recurso:</p>
<ul>
  <li><strong>Documentos faltantes o vencidos:</strong> el recurso debe acompañar los documentos que faltaban o los renovados.</li>
  <li><strong>Error en la información declarada:</strong> aportar prueba documental que corrija el error.</li>
  <li><strong>Antecedentes penales:</strong> si el rechazo invoca antecedentes que no corresponden o ya están prescritos, acreditar esa circunstancia.</li>
  <li><strong>Error del SERMIG:</strong> si la resolución tiene errores de hecho o de derecho, señalarlos con precisión citando la norma aplicable.</li>
</ul>

<h2>¿Dónde se presenta?</h2>
<p>El recurso de reposición se presenta en el portal online del SERMIG (<a href="https://tramitesmigratorios.interior.gob.cl" target="_blank" rel="noopener noreferrer">tramitesmigratorios.interior.gob.cl</a>) o presencialmente en las oficinas del SERMIG. El recurso jerárquico se presenta ante el Ministerio del Interior.</p>

<h2>¿Qué pasa mientras el recurso está pendiente?</h2>
<p>Mientras el recurso esté activo, puedes permanecer en Chile. El comprobante de recurso presentado actúa como habilitante de residencia hasta que se resuelva.</p>
  $h3$,
  'HowTo',
  '[
    {"name": "Leer y entender la resolución de rechazo", "text": "Identifica el motivo exacto del rechazo y la fecha de notificación. El plazo de 5 días hábiles corre desde esa fecha."},
    {"name": "Recopilar los documentos de respaldo", "text": "Según el motivo del rechazo, reúne los documentos que subsanan el problema: certificados actualizados, contratos, partidas de nacimiento, etc."},
    {"name": "Redactar el recurso de reposición", "text": "Identifícate, cita la resolución que impugnas, explica por qué el rechazo es incorrecto y solicita expresamente que se revoque y se apruebe la visa."},
    {"name": "Presentar el recurso dentro del plazo", "text": "Sube el recurso y los documentos al portal del SERMIG o preséntalos en las oficinas. Guarda el comprobante de presentación."},
    {"name": "Esperar la resolución del recurso", "text": "El SERMIG tiene 5 días hábiles para resolver el recurso de reposición. Si es rechazado, tienes otros 5 días para presentar el recurso jerárquico ante el Ministerio del Interior."},
    {"name": "Si el recurso es aceptado: obtener la cédula", "text": "Con la resolución favorable, acude al SRCeI para obtener tu cédula de identidad para extranjeros y RUT definitivo."}
  ]'::jsonb,
  '[
    {
      "question": "¿Necesito un abogado para presentar un recurso administrativo?",
      "answer": "No es obligatorio. Cualquier persona puede presentar su propio recurso. Sin embargo, para casos complejos (antecedentes penales, múltiples rechazos anteriores, situaciones migratorias complejas), contratar un abogado migratorio aumenta significativamente las posibilidades de éxito."
    },
    {
      "question": "¿El SERMIG está obligado a resolver el recurso en plazo?",
      "answer": "Legalmente sí, pero en la práctica los plazos suelen excederse. Si el SERMIG no resuelve el recurso de reposición en los 5 días hábiles, se entiende rechazado por silencio administrativo y puedes pasar directamente al recurso jerárquico."
    },
    {
      "question": "¿Puedo presentar nuevos documentos que no incluí en la solicitud original?",
      "answer": "Sí. De hecho, si el rechazo fue por documentos faltantes o vencidos, el recurso debe incluir los documentos que faltaban. Esta es la forma más efectiva de revertir ese tipo de rechazo."
    },
    {
      "question": "¿Si me rechazan el recurso, tengo otras opciones?",
      "answer": "Después del recurso jerárquico, quedan opciones más complejas: recurso contencioso-administrativo ante los tribunales ordinarios, o iniciar un nuevo proceso de solicitud si han cambiado las circunstancias (nuevo contrato de trabajo, nuevo vínculo familiar, etc.)."
    },
    {
      "question": "¿Cuánto tiempo puedo quedarme en Chile mientras tengo recursos pendientes?",
      "answer": "Mientras el recurso esté formalmente presentado y activo, el comprobante de recurso actúa como habilitante de residencia. No estás en situación irregular durante ese período."
    }
  ]'::jsonb,
  ARRAY[
    'problemas',
    'problemas/visa-vencida',
    'autodenuncia',
    'visa-temporaria',
    'permanencia-definitiva'
  ]::TEXT[],
  6,
  TRUE,
  NOW()
);

-- ──────────────────────────────────────────────────────────
-- 4. CLUSTER: visa-temporaria/pareja-chilena
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, schema_type, howto_steps, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'visa-temporaria/pareja-chilena',
  'visa-temporaria',
  'visa-temporaria',
  'cluster',
  'Visa Temporaria por Pareja Chilena: Requisitos 2026',
  'Visa Temporaria por Matrimonio o AUC con Chileno/a: Requisitos y Proceso',
  'Cómo obtener la visa temporaria en Chile si estás casado o tienes Acuerdo de Unión Civil (AUC) con un ciudadano o ciudadana chilena.',
  'visa temporaria pareja chilena matrimonio',
  $h4$
<p>La <strong>visa temporaria por pareja chilena</strong> permite residir legalmente en Chile a los extranjeros que estén casados o tengan un <strong>Acuerdo de Unión Civil (AUC)</strong> con una persona de nacionalidad chilena. Es una de las categorías con mayor tasa de aprobación cuando se acredita correctamente el vínculo.</p>

<h2>¿Quiénes pueden solicitarla?</h2>
<p>Puede solicitar esta visa el extranjero que sea:</p>
<ul>
  <li><strong>Cónyuge</strong> de un ciudadano o ciudadana chilena (matrimonio legal celebrado en Chile o en el extranjero y reconocido en Chile).</li>
  <li><strong>Conviviente civil</strong> de un ciudadano o ciudadana chilena mediante <strong>Acuerdo de Unión Civil (AUC)</strong>, registrado en el SRCeI.</li>
</ul>
<p>Las relaciones de convivencia de hecho (sin matrimonio ni AUC) no son suficientes para esta categoría. El vínculo debe estar formalizado legalmente.</p>

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
      <td>Certificado de matrimonio o AUC</td>
      <td>Emitido por el SRCeI (si el matrimonio/AUC es chileno) o documento extranjero apostillado y traducido. No mayor a 90 días.</td>
    </tr>
    <tr>
      <td>Cédula de identidad o pasaporte de la pareja chilena</td>
      <td>Copia legible del documento que acredita la nacionalidad chilena del/la cónyuge.</td>
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

<h2>¿Qué pasa si me casé en el extranjero?</h2>
<p>Si tu matrimonio fue celebrado fuera de Chile, debes <strong>inscribirlo en el Registro Civil chileno</strong> antes de usarlo como documento habilitante para la visa. El proceso de inscripción se realiza en el SRCeI con el certificado de matrimonio extranjero apostillado y traducido. Una vez inscrito, obtienes un certificado de matrimonio chileno que sirve para el trámite.</p>

<h2>Si estás en situación irregular</h2>
<p>Si tu visa venció, primero realiza la <a href="/autodenuncia/pdi-paso-a-paso">autodenuncia en la PDI</a>. Con el Certificado de Autodenuncia puedes presentar la solicitud de visa por pareja chilena aunque estés en situación irregular.</p>

<h2>Paso a paso</h2>
<ol>
  <li>Formaliza el vínculo (matrimonio o AUC) e inscríbelo en el SRCeI si fue celebrado en el extranjero.</li>
  <li>Si estás en situación irregular, completa la autodenuncia en la PDI.</li>
  <li>Reúne todos los documentos con fechas vigentes.</li>
  <li>Ingresa al portal <a href="https://tramitesmigratorios.interior.gob.cl" target="_blank" rel="noopener noreferrer">tramitesmigratorios.interior.gob.cl</a>.</li>
  <li>Selecciona <strong>Visa Temporaria → Vínculo con ciudadano chileno → Cónyuge / Conviviente civil</strong>.</li>
  <li>Carga los documentos y paga el arancel.</li>
</ol>

<h2>Vigencia y renovación</h2>
<p>La visa se otorga por <strong>1 año renovable</strong>. Después de 1 año con visa vigente puedes solicitar la <a href="/permanencia-definitiva">Permanencia Definitiva</a>.</p>
  $h4$,
  'HowTo',
  '[
    {"name": "Formalizar el vínculo e inscribirlo en el SRCeI", "text": "Si estás casado o tienes AUC, asegúrate de que el vínculo esté inscrito en el Registro Civil chileno. Los matrimonios extranjeros deben inscribirse con el certificado apostillado."},
    {"name": "Autodenuncia si estás en situación irregular", "text": "Si tu visa venció, preséntate a la PDI para obtener el Certificado de Autodenuncia antes de solicitar la visa."},
    {"name": "Obtener los certificados con fecha vigente", "text": "Certificado de matrimonio/AUC del SRCeI (no mayor a 90 días), antecedentes penales de tu país apostillados y certificado de antecedentes de Chile."},
    {"name": "Presentar la solicitud en el portal del SERMIG", "text": "Ingresa a tramitesmigratorios.interior.gob.cl, selecciona Visa Temporaria → Vínculo con ciudadano chileno → Cónyuge/Conviviente civil."},
    {"name": "Pagar el arancel y conservar el comprobante", "text": "El comprobante de trámite te habilita para permanecer y trabajar en Chile durante la espera."},
    {"name": "Con la visa aprobada, obtener la cédula en el SRCeI", "text": "Solicita tu cédula de identidad para extranjeros con el documento de aprobación del SERMIG."}
  ]'::jsonb,
  '[
    {
      "question": "¿La convivencia de hecho es suficiente para esta visa?",
      "answer": "No. La visa por pareja chilena requiere matrimonio formal o Acuerdo de Unión Civil (AUC) registrado en el SRCeI. Una relación de convivencia sin formalizar no es suficiente para esta categoría específica."
    },
    {
      "question": "¿Qué es el AUC y cómo se tramita?",
      "answer": "El Acuerdo de Unión Civil (AUC) es un contrato entre dos personas que establece su vida en común. Se celebra ante el oficial del SRCeI en cualquier oficina del Registro Civil. Tiene los mismos efectos que el matrimonio para efectos migratorios."
    },
    {
      "question": "¿Mi pareja chilena debe estar presente en algún trámite?",
      "answer": "No es obligatorio que la pareja esté presente en el trámite migratorio ante el SERMIG. Sin embargo, algunos trámites relacionados (como la inscripción del matrimonio extranjero en el SRCeI) pueden requerirlo. Consulta caso a caso."
    },
    {
      "question": "¿Qué pasa si me separo mientras tramito la visa?",
      "answer": "Si el vínculo se disuelve antes de que se resuelva la solicitud, debes informarlo al SERMIG. Dependiendo del momento y las circunstancias, la visa puede ser rechazada o revocada. No ocultarlo puede tener consecuencias más graves."
    },
    {
      "question": "¿Puedo incluir a mis hijos en esta visa?",
      "answer": "Los hijos menores de 18 años pueden ser incluidos como carga familiar en la solicitud, siempre que se presenten sus documentos de identidad y certificados de nacimiento."
    }
  ]'::jsonb,
  ARRAY[
    'visa-temporaria',
    'visa-temporaria/hijo-chileno',
    'autodenuncia/pdi-paso-a-paso',
    'permanencia-definitiva',
    'vivir-en-chile/rut-extranjero'
  ]::TEXT[],
  5,
  TRUE,
  NOW()
);
