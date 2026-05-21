-- ============================================================
-- MigraciónChile — Seed v10: expansión pillars autodenuncia + visa-temporaria
-- Objetivo: llevar ambos pillars de ~700 a ~2000 palabras
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

-- ──────────────────────────────────────────────────────────
-- 1. PILLAR expandido: autodenuncia
-- ──────────────────────────────────────────────────────────
UPDATE articles SET
  content = $l1$
<p>La <strong>autodenuncia migratoria</strong> es el mecanismo legal que permite a un extranjero en situación irregular en Chile notificar voluntariamente su situación a las autoridades para iniciar el proceso de regularización. No es una denuncia policial ni genera antecedentes penales: es un trámite administrativo diseñado para facilitar la regularización sin expulsión.</p>

<p>Fue establecida por la <strong>Ley 21.325 de Migración y Extranjería</strong>, vigente desde 2021, que reemplazó el antiguo Decreto Ley 1.094 de 1975. La nueva ley adoptó un enfoque más humanitario: en lugar de perseguir y expulsar a quienes estaban en situación irregular, creó un camino ordenado para regularizarse.</p>

<h2>¿Quiénes pueden hacer la autodenuncia?</h2>
<p>Puede autodenuenciarse cualquier extranjero mayor de edad que:</p>
<ul>
  <li>Se encuentre en Chile en situación migratoria irregular por cualquier causa: visa vencida, ingreso por paso no habilitado, overstay de permiso de turismo, etc.</li>
  <li>No tenga una orden de expulsión ya ejecutoriada y firme.</li>
  <li>No tenga condenas vigentes por delitos graves en Chile o en el extranjero.</li>
</ul>
<p>Los menores de 18 años en situación irregular deben hacer el proceso acompañados de un adulto responsable. Los menores de 14 años pueden quedar incluidos en el proceso de sus padres o tutores.</p>
<p>No existe restricción por nacionalidad: el proceso está disponible para ciudadanos de cualquier país del mundo.</p>

<h2>¿Cuándo hacer la autodenuncia?</h2>
<p>La respuesta corta es: <strong>cuanto antes</strong>. Cada día adicional en situación irregular aumenta el monto de la multa. Además, la situación irregular puede complicar el acceso a servicios básicos, el trabajo formal y la apertura de cuentas bancarias.</p>
<p>Hay dos situaciones que hacen urgente la autodenuncia:</p>
<ul>
  <li><strong>Si vence tu visa de turismo:</strong> en Chile, los turistas pueden permanecer hasta 90 días. Al vencer este plazo sin solicitar prórroga o visa, comienzas a acumular irregularidad.</li>
  <li><strong>Si nunca tuviste visa y llevas tiempo en el país:</strong> aunque hayas ingresado hace años, la Ley 21.325 no establece un plazo máximo para autodenuenciarse. Puedes hacerlo en cualquier momento, aunque la multa será mayor.</li>
</ul>

<h2>Las causas más comunes de irregularidad migratoria</h2>
<p>La irregularidad migratoria no siempre es intencional. Las situaciones más frecuentes son:</p>
<ul>
  <li>Visa de turismo (90 días) que venció sin solicitar prórroga.</li>
  <li>Visa temporaria anterior que venció y no fue renovada a tiempo.</li>
  <li>Ingreso por paso no habilitado (especialmente en la frontera norte).</li>
  <li>Cambio de situación familiar o laboral que invalidó la visa vigente.</li>
  <li>Error administrativo o documental en una solicitud de visa anterior.</li>
</ul>

<h2>El proceso en la PDI: qué esperar</h2>
<p>La autodenuncia se realiza <strong>presencialmente en cualquier comisaría de la PDI</strong> (Policía de Investigaciones de Chile) en días hábiles, generalmente de 8:00 a 13:00. No se requiere cita previa, aunque en ciudades de alta demanda como Santiago puede haber espera.</p>
<p>El proceso incluye cinco etapas:</p>
<ol>
  <li><strong>Recepción y formulario:</strong> declara tus datos personales, fecha de ingreso a Chile, domicilio actual y motivo de la solicitud.</li>
  <li><strong>Empadronamiento biométrico:</strong> se registran tus huellas dactilares (diez dedos) y fotografía para el sistema nacional de migraciones. Ver guía detallada en <a href="/autodenuncia/empadronamiento-biometrico">empadronamiento biométrico</a>.</li>
  <li><strong>Verificación de antecedentes:</strong> la PDI verifica que no tengas órdenes de detención, alertas Interpol ni antecedentes que impidan la regularización.</li>
  <li><strong>Pago de la multa:</strong> se te indica el monto correspondiente, que debes pagar en la entidad indicada por el funcionario.</li>
  <li><strong>Emisión del Certificado de Autodenuncia:</strong> con el comprobante de pago, recibes el certificado que formaliza el proceso.</li>
</ol>

<h2>¿Cuánto cuesta la multa?</h2>
<p>La multa se calcula en <strong>UTM</strong> (Unidad Tributaria Mensual) según el tiempo transcurrido en situación irregular:</p>
<table>
  <thead>
    <tr><th>Tiempo en situación irregular</th><th>Multa</th><th>Monto aproximado 2026</th></tr>
  </thead>
  <tbody>
    <tr><td>Hasta 30 días</td><td>1 UTM</td><td>~$68.000 CLP</td></tr>
    <tr><td>31 a 90 días</td><td>2 UTM</td><td>~$136.000 CLP</td></tr>
    <tr><td>91 días a 1 año</td><td>3 UTM</td><td>~$204.000 CLP</td></tr>
    <tr><td>1 año a 2 años</td><td>4 UTM</td><td>~$272.000 CLP</td></tr>
    <tr><td>Más de 2 años</td><td>5 UTM</td><td>~$340.000 CLP</td></tr>
  </tbody>
</table>
<p>Verifica el valor actual de la UTM en el sitio del <a href="https://www.sii.cl" target="_blank" rel="noopener noreferrer">SII</a>. Se recomienda llevar efectivo en pesos chilenos.</p>

<h2>El Certificado de Autodenuncia: qué es y para qué sirve</h2>
<p>El Certificado de Autodenuncia Migratoria es el documento más importante del proceso inicial. Sus efectos son:</p>
<ul>
  <li><strong>Suspende cualquier procedimiento de expulsión</strong> mientras el trámite de visa está activo.</li>
  <li><strong>Habilita para presentar una solicitud de visa</strong> en el portal del SERMIG aunque estés en situación irregular.</li>
  <li><strong>Es un comprobante de buena fe</strong> ante instituciones públicas y privadas: bancos, empleadores, establecimientos de salud, etc.</li>
</ul>
<p>Guarda una copia digital inmediatamente. Si pierdes el certificado, recuperarlo puede ser un proceso lento.</p>

<h2>¿Qué visa puedo solicitar después?</h2>
<p>Con el Certificado de Autodenuncia, el siguiente paso es presentar la solicitud de visa temporaria en el portal del SERMIG. Las categorías más comunes son:</p>
<ul>
  <li><a href="/visa-temporaria/hijo-chileno"><strong>Por hijo/a chileno/a:</strong></a> si tienes un hijo o hija con nacionalidad chilena, sin importar si vives con ellos.</li>
  <li><a href="/visa-temporaria/pareja-chilena"><strong>Por pareja chilena:</strong></a> si estás casado/a o tienes Acuerdo de Unión Civil (AUC) con un/a ciudadano/a chileno/a.</li>
  <li><a href="/visa-temporaria/mercosur"><strong>Visa MERCOSUR:</strong></a> si eres ciudadano de Argentina, Bolivia, Brasil, Colombia, Ecuador, Paraguay, Perú o Uruguay. Es la vía más rápida y con menos requisitos.</li>
  <li><a href="/visa-temporaria/contrato-trabajo"><strong>Por contrato de trabajo:</strong></a> si tienes un empleador dispuesto a firmarte un contrato formal.</li>
  <li><a href="/visa-temporaria/responsabilidad-democratica"><strong>Visa de Responsabilidad Democrática (VRD):</strong></a> exclusiva para ciudadanos venezolanos.</li>
  <li><a href="/visa-temporaria/razones-humanitarias"><strong>Por razones humanitarias:</strong></a> para situaciones de vulnerabilidad especial.</li>
</ul>
<p>Si no estás seguro de qué categoría te corresponde, el SERMIG puede orientarte. Consulta también nuestra guía sobre <a href="/autodenuncia/errores-comunes">errores comunes en la autodenuncia</a>.</p>

<h2>PDI y SERMIG: dos instituciones, dos etapas</h2>
<p>Un error frecuente es confundir a la PDI con el SERMIG, o ir al lugar equivocado. La diferencia es clara:</p>
<ul>
  <li><strong>PDI:</strong> recibe la autodenuncia, hace el empadronamiento biométrico, cobra la multa y emite el Certificado de Autodenuncia. Actúa en la <em>primera etapa</em>.</li>
  <li><strong>SERMIG:</strong> recibe y evalúa la solicitud de visa. Actúa en la <em>segunda etapa</em>, después de que ya tienes el certificado. Opera principalmente online.</li>
</ul>
<p>Ver comparación completa en <a href="/autodenuncia/sermig-vs-pdi">PDI vs SERMIG: ¿a cuál debes ir?</a></p>

<h2>¿Qué pasa si no hago la autodenuncia?</h2>
<p>Permanecer en situación irregular sin iniciar el proceso tiene consecuencias concretas:</p>
<ul>
  <li>La multa aumenta con cada día adicional.</li>
  <li>El acceso al sistema de salud pública se restringe a urgencias.</li>
  <li>Los empleadores no pueden contratarte formalmente (riesgo de multa para ellos).</li>
  <li>No puedes abrir cuenta bancaria ni acceder a créditos.</li>
  <li>Si la PDI o el SERMIG detecta la irregularidad, puede iniciarse un proceso de expulsión que es más difícil de revertir que la autodenuncia voluntaria.</li>
</ul>

<h2>Casos especiales</h2>
<h3>Familias con hijos menores</h3>
<p>Los hijos menores de 14 años suelen quedar incluidos en el proceso de autodenuncia de sus padres. Los hijos entre 14 y 18 años hacen su propio proceso con presencia de un adulto responsable.</p>

<h3>Personas en situación de refugio</h3>
<p>Si planeas solicitar refugio (asilo), este proceso es distinto a la autodenuncia migratoria y se gestiona ante el Departamento de Extranjería con apoyo del ACNUR. Ambos procesos no son excluyentes, pero tienen consecuencias distintas.</p>

<h3>Personas con antecedentes penales</h3>
<p>Tener antecedentes penales en el país de origen no impide hacer la autodenuncia ni obtener el certificado. Lo que sí afecta el proceso posterior es la evaluación que hace el SERMIG al resolver la visa. Delitos graves pueden resultar en rechazo de la visa, pero no impiden el proceso de autodenuncia en sí.</p>
  $l1$,
  faq_items = '[
    {
      "question": "¿Pueden expulsarme si me autodenego?",
      "answer": "No. Al presentar la autodenuncia, se suspende cualquier procedimiento de expulsión mientras tramitas tu visa. El Certificado de Autodenuncia es el documento que acredita esta suspensión ante cualquier autoridad."
    },
    {
      "question": "¿Cuánto tarda el proceso en la PDI?",
      "answer": "El trámite en la PDI suele tomar entre 2 y 6 horas, dependiendo de la afluencia del día. Llegar temprano reduce la espera. Si llevas todos los documentos completos, el proceso es más ágil."
    },
    {
      "question": "¿Puedo trabajar después de la autodenuncia?",
      "answer": "Puedes trabajar con normalidad una vez que tienes la visa temporaria vigente. Durante el período de tramitación, el comprobante de solicitud de visa (no el certificado de autodenuncia en sí) es lo que habilita para trabajar formalmente."
    },
    {
      "question": "¿La autodenuncia me da antecedentes penales en Chile?",
      "answer": "No. La autodenuncia es una infracción administrativa, no un delito penal. No aparece en el registro de antecedentes penales. Solo implica el pago de una multa migratoria."
    },
    {
      "question": "¿Puedo hacer la autodenuncia si mi pasaporte está vencido?",
      "answer": "Idealmente debes presentar pasaporte vigente. Si está vencido, debes renovarlo en el consulado de tu país antes de presentarte a la PDI. Sin pasaporte vigente el proceso no puede completarse en la mayoría de los casos."
    },
    {
      "question": "¿Qué pasa si me rechazan la visa después de la autodenuncia?",
      "answer": "Si la visa es rechazada, tienes 5 días hábiles para interponer un recurso de reposición ante el SERMIG. Si no recurres, puedes presentar una nueva solicitud si las circunstancias cambian, o iniciar el trámite de salida voluntaria del país."
    },
    {
      "question": "¿Puedo ir a cualquier comisaría PDI?",
      "answer": "Sí. Puedes presentarte en cualquier comisaría PDI del país, no tiene que ser la de tu ciudad. En ciudades pequeñas, verifica previamente que la comisaría local tenga habilitado el trámite migratorio."
    },
    {
      "question": "¿Cuánto tiempo tengo para solicitar la visa después de la autodenuncia?",
      "answer": "No hay un plazo legal específico para presentar la solicitud de visa después de obtener el certificado. Sin embargo, los documentos de respaldo (antecedentes penales, certificado de domicilio) tienen vigencia de 90 días, por lo que es conveniente presentar la solicitud lo antes posible."
    }
  ]'::jsonb,
  reading_time_minutes = 8,
  updated_at = NOW()
WHERE slug = 'autodenuncia';

-- ──────────────────────────────────────────────────────────
-- 2. PILLAR expandido: visa-temporaria
-- ──────────────────────────────────────────────────────────
UPDATE articles SET
  content = $l2$
<p>La <strong>visa temporaria</strong> es el permiso de residencia que autoriza a un extranjero a vivir y trabajar legalmente en Chile por un período determinado. Es el paso siguiente después de la <a href="/autodenuncia">autodenuncia migratoria</a> para quienes están en situación irregular, y el trámite principal para quienes aún tienen sus documentos en regla y quieren establecerse en el país.</p>

<p>La visa temporaria está regulada por la <strong>Ley 21.325 de Migración y Extranjería</strong> de 2021 y su reglamento. Reemplazó el antiguo sistema de visas sujetas a contrato, que durante décadas generó dependencia laboral y vulnerabilidad para los migrantes.</p>

<h2>¿Qué diferencia a la visa temporaria del permiso de turismo?</h2>
<p>El permiso de turismo (90 días) solo autoriza a estar en Chile como visitante: no habilita para trabajar, no acumula tiempo para la permanencia definitiva y no da acceso a servicios públicos en las mismas condiciones que un residente.</p>
<p>La visa temporaria, en cambio:</p>
<ul>
  <li>Autoriza a <strong>trabajar</strong> en cualquier empleador sin necesidad de autorización especial.</li>
  <li>Da acceso al sistema de salud pública (<strong>Fonasa</strong>) y a beneficios sociales.</li>
  <li><strong>Acumula tiempo</strong> para solicitar la Permanencia Definitiva.</li>
  <li>Permite obtener la <strong>cédula de identidad para extranjeros y el RUT</strong> definitivo.</li>
</ul>

<h2>Categorías de visa temporaria disponibles</h2>
<p>La Ley 21.325 establece múltiples causales de visa. Estas son las principales:</p>

<h3>Por vínculo con ciudadano chileno</h3>
<ul>
  <li><a href="/visa-temporaria/hijo-chileno"><strong>Por hijo/a chileno/a:</strong></a> para padres y madres de hijos con nacionalidad chilena. Sin importar si conviven o no con el menor. Es una de las causales más sólidas.</li>
  <li><a href="/visa-temporaria/pareja-chilena"><strong>Por pareja chilena:</strong></a> para cónyuge o conviviente civil (AUC) de un/a ciudadano/a chileno/a. Requiere matrimonio o AUC formalmente inscrito.</li>
</ul>

<h3>Por acuerdo regional</h3>
<ul>
  <li><a href="/visa-temporaria/mercosur"><strong>Visa MERCOSUR:</strong></a> para ciudadanos de Argentina, Bolivia, Brasil, Colombia, Ecuador, Paraguay, Perú y Uruguay. Es la categoría con menos requisitos: solo pasaporte y antecedentes penales. Vigencia de 2 años.</li>
</ul>

<h3>Por trabajo</h3>
<ul>
  <li><a href="/visa-temporaria/contrato-trabajo"><strong>Por contrato de trabajo:</strong></a> requiere contrato firmado con empleador en Chile. El empleador no necesita autorización especial del SERMIG.</li>
</ul>

<h3>Por estudio</h3>
<ul>
  <li><a href="/visa-temporaria/estudiante"><strong>Para estudiantes:</strong></a> requiere carta de aceptación en una institución educacional reconocida por el MINEDUC (universidad, instituto, liceo). No habilita para trabajar por defecto.</li>
</ul>

<h3>Categorías especiales</h3>
<ul>
  <li><a href="/visa-temporaria/responsabilidad-democratica"><strong>Visa de Responsabilidad Democrática (VRD):</strong></a> exclusiva para ciudadanos venezolanos. Solo requiere pasaporte venezolano vigente o vencido (menos de 5 años) y antecedentes penales.</li>
  <li><a href="/visa-temporaria/razones-humanitarias"><strong>Por razones humanitarias:</strong></a> para situaciones de vulnerabilidad especial (trata de personas, enfermedad grave, violencia doméstica). Evaluación discrecional del SERMIG.</li>
  <li><a href="/visa-temporaria/jubilado-rentista"><strong>Para jubilados y rentistas:</strong></a> para quienes tienen ingresos regulares del extranjero (pensión, rentas, inversiones) y no necesitan trabajar en Chile.</li>
</ul>

<h2>Documentos comunes a todas las categorías</h2>
<p>Independientemente de la causal, todas las solicitudes de visa temporaria requieren:</p>
<ul>
  <li><strong>Pasaporte vigente</strong> con al menos 6 meses de vigencia.</li>
  <li><strong>Certificado de antecedentes penales del país de origen</strong>, apostillado, no mayor a 90 días.</li>
  <li><strong>Certificado de antecedentes del Registro Civil de Chile</strong> (gratis en registrocivil.cl), no mayor a 90 días.</li>
  <li><strong>Comprobante de domicilio en Chile</strong>: contrato de arriendo, boleta de servicios o declaración jurada notarial.</li>
  <li><strong>Fotografía reciente</strong> con fondo blanco en formato digital.</li>
</ul>
<p>Cada categoría adiciona sus propios documentos específicos (contrato, certificado de matrimonio, etc.).</p>

<h2>¿Estás en situación irregular? Primero la autodenuncia</h2>
<p>Si tu visa venció o nunca tuviste residencia legal, <strong>no puedes presentar la solicitud de visa directamente</strong>. El paso previo obligatorio es la <a href="/autodenuncia">autodenuncia migratoria</a> en la PDI. Con el Certificado de Autodenuncia, sí puedes presentar la solicitud.</p>
<p>Si tu visa está vigente o llegaste con permiso de turismo y aún no venció, puedes ir directamente al portal del SERMIG sin pasar por la PDI.</p>

<h2>El proceso de solicitud paso a paso</h2>
<ol>
  <li>Determina qué categoría de visa aplica a tu situación.</li>
  <li>Reúne todos los documentos requeridos con fechas vigentes.</li>
  <li>Si estás en situación irregular, completa primero la autodenuncia en la PDI.</li>
  <li>Ingresa a <a href="https://tramitesmigratorios.interior.gob.cl" target="_blank" rel="noopener noreferrer">tramitesmigratorios.interior.gob.cl</a>, crea una cuenta o inicia sesión.</li>
  <li>Selecciona la categoría de visa y completa el formulario.</li>
  <li>Sube todos los documentos solicitados en formato PDF o imagen.</li>
  <li>Paga el arancel de solicitud (varía según la categoría y el país de origen).</li>
  <li>Guarda el comprobante de trámite con el número de solicitud.</li>
</ol>

<h2>El comprobante de trámite: tus derechos mientras esperas</h2>
<p>Una vez presentada la solicitud, recibes un comprobante con número de trámite. Este documento es más importante de lo que parece: te habilita legalmente para:</p>
<ul>
  <li>Permanecer en Chile mientras la solicitud está activa.</li>
  <li>Trabajar: la mayoría de los empleadores lo aceptan junto al pasaporte.</li>
  <li>Acceder a atención en salud pública (Fonasa en nivel de urgencia).</li>
  <li>Matricular a tus hijos en establecimientos educacionales.</li>
  <li>Solicitar el RUT provisorio en el SII.</li>
</ul>
<p>Lo que aún no puedes hacer con el comprobante: obtener la cédula de identidad para extranjeros (requiere la visa aprobada).</p>

<h2>¿Cuánto demora la resolución?</h2>
<p>La Ley 21.325 fija un plazo legal de 30 días hábiles. En la práctica, los tiempos reales en 2025-2026 han sido:</p>
<table>
  <thead>
    <tr><th>Categoría</th><th>Tiempo real aproximado</th></tr>
  </thead>
  <tbody>
    <tr><td>Visa MERCOSUR</td><td>60–120 días hábiles</td></tr>
    <tr><td>Visa por vínculo familiar</td><td>60–150 días hábiles</td></tr>
    <tr><td>Visa por contrato de trabajo</td><td>60–150 días hábiles</td></tr>
    <tr><td>Visa VRD (venezolanos)</td><td>90–180 días hábiles</td></tr>
  </tbody>
</table>
<p>Para una guía detallada sobre tiempos y qué hacer durante la espera, consulta <a href="/autodenuncia/tiempos-reales">tiempos reales de tramitación SERMIG</a>.</p>

<h2>Vigencia, renovación y camino a la permanencia definitiva</h2>
<p>La visa temporaria se otorga generalmente por <strong>1 año renovable</strong> (2 años para la visa MERCOSUR). Para renovarla, debes presentar nueva solicitud antes del vencimiento con documentos actualizados.</p>
<p>Después de <strong>1 año continuo</strong> con visa temporaria vigente (o 2 años para algunas categorías), puedes solicitar la <a href="/permanencia-definitiva">Permanencia Definitiva</a>, que no tiene fecha de vencimiento y otorga derechos más amplios.</p>

<h2>¿Qué hacer si te rechazan?</h2>
<p>El SERMIG puede rechazar la solicitud por documentación incompleta, antecedentes o no cumplir los requisitos. Ante un rechazo:</p>
<ul>
  <li>Tienes <strong>5 días hábiles</strong> para presentar un recurso de reposición.</li>
  <li>Puedes presentar una nueva solicitud si corriges los problemas o tu situación cambia.</li>
</ul>
<p>Ver guía completa en <a href="/problemas/rechazo-visa">me rechazaron la visa: qué hacer</a>.</p>
  $l2$,
  faq_items = '[
    {
      "question": "¿Puedo solicitar la visa temporaria estando en Chile?",
      "answer": "Sí. La mayoría de las categorías se pueden solicitar desde dentro del país. Si tu visa de turismo o residencia venció, primero debes hacer la autodenuncia migratoria en la PDI para poder tramitar."
    },
    {
      "question": "¿Cuánto cuesta solicitar una visa temporaria?",
      "answer": "El arancel varía según la categoría y el país de origen (principio de reciprocidad). Generalmente oscila entre $50.000 y $100.000 CLP. Algunas categorías humanitarias pueden estar exentas o reducidas."
    },
    {
      "question": "¿Puedo trabajar mientras tramito la visa?",
      "answer": "Con el comprobante de solicitud activo puedes trabajar: la mayoría de los empleadores lo aceptan como habilitante junto al pasaporte. Sin embargo, algunos empleadores o instituciones pueden ser más estrictos y pedir la visa aprobada."
    },
    {
      "question": "¿Qué pasa si salgo de Chile mientras tramito la visa?",
      "answer": "Puedes salir del país con el comprobante de trámite. Al reingresar como turista, el plazo de 90 días vuelve a correr, pero la solicitud sigue activa. Si la visa se aprueba mientras estás fuera, necesitarás ingresar para iniciar el proceso de cédula."
    },
    {
      "question": "¿La visa temporaria incluye a mi familia?",
      "answer": "Tu cónyuge e hijos menores pueden incluirse como carga familiar en la solicitud, presentando los documentos que acreditan el vínculo. Cada familiar necesita sus propios documentos de identidad y antecedentes."
    },
    {
      "question": "¿Puedo cambiar de categoría de visa una vez aprobada?",
      "answer": "No se cambia la visa existente: si tu situación cambia (por ejemplo, pasas de estudiante a trabajador), presentas una nueva solicitud de visa por la nueva causal. No necesitas salir de Chile para hacer el cambio de categoría."
    }
  ]'::jsonb,
  reading_time_minutes = 9,
  updated_at = NOW()
WHERE slug = 'visa-temporaria';
