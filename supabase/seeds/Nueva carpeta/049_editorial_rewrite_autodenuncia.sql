-- ============================================================
-- MigraciónChile — Seed 049: reescritura editorial v1
-- autodenuncia — Fase A: aplicación Constitución Editorial
-- Cambios content: apertura (Tipo A), 4 títulos de sección,
--   frase prohibida, EEAT (error frecuente), nota de tabla
-- Cambios FAQ: fq3 tighten, fq5 tighten, fq6 plazo absoluto,
--   fq8 vigencia absoluta
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

-- ============================================================
-- 1. autodenuncia — content (reescritura estructural)
-- ============================================================

UPDATE articles
SET content = $$
<p>Llevar semanas o meses con la visa vencida en Chile crea una situación que parece bloqueada. La <strong>autodenuncia migratoria</strong> existe precisamente para eso: permite presentarse voluntariamente ante las autoridades, pagar la multa correspondiente e iniciar el proceso de regularización. No es una denuncia policial ni genera antecedentes penales — es un trámite administrativo.</p>

<p>Fue establecida por la <strong>Ley 21.325 de Migración y Extranjería</strong>, vigente desde 2021. La ley modernizó el sistema migratorio e incorporó mecanismos de regularización voluntaria, entre ellos la autodenuncia. También fortaleció los procedimientos de expulsión en otros aspectos — no fue solo una apertura, fue una reforma integral con consecuencias en ambos sentidos.</p>

<h2>¿Quiénes pueden hacer la autodenuncia?</h2>
<p>Puede autodenunciarse cualquier extranjero mayor de edad que:</p>
<ul>
  <li>Se encuentre en Chile en situación migratoria irregular por cualquier causa: visa vencida, ingreso por paso no habilitado, overstay de permiso de turismo, etc.</li>
  <li>No tenga una orden de expulsión ya ejecutoriada y firme.</li>
  <li>La existencia de antecedentes penales no impide la autodenuncia, pero puede afectar las etapas posteriores de residencia o regularización — el SERMIG evaluará el caso concreto.</li>
</ul>
<p>Los menores de 18 años deben hacer el proceso acompañados de un adulto responsable. Los menores de 14 años pueden quedar incluidos en el proceso de sus padres o tutores.</p>
<p>No existe restricción por nacionalidad: el proceso está disponible para ciudadanos de cualquier país.</p>

<h2>Cuanto antes, mejor</h2>
<p>Cada día adicional en situación irregular acumula más multa. Además, la irregularidad complica el trabajo formal, la apertura de cuentas bancarias y el acceso a algunos servicios.</p>
<p>Hay dos situaciones que hacen urgente la autodenuncia:</p>
<ul>
  <li><strong>Si vence tu visa de turismo:</strong> en Chile, los turistas pueden permanecer hasta 90 días. Al vencer este plazo sin solicitar prórroga o visa, comienzas a acumular irregularidad.</li>
  <li><strong>Si nunca tuviste visa y llevas tiempo en el país:</strong> la Ley 21.325 no establece un plazo máximo para autodenunciarse. Puedes hacerlo en cualquier momento, aunque la multa será mayor cuanto más tiempo haya pasado.</li>
</ul>

<h2>Por qué muchos migrantes terminan en situación irregular</h2>
<p>La irregularidad migratoria no siempre es intencional. Las situaciones más frecuentes son:</p>
<ul>
  <li>Visa de turismo (90 días) que venció sin solicitar prórroga.</li>
  <li>Visa temporaria anterior que venció y no fue renovada a tiempo.</li>
  <li>Ingreso por paso no habilitado (especialmente en la frontera norte).</li>
  <li>Cambio de situación familiar o laboral que invalidó la visa vigente.</li>
  <li>Error administrativo o documental en una solicitud de visa anterior.</li>
</ul>

<h2>Cómo es el proceso en la PDI</h2>
<p>La autodenuncia se realiza <strong>presencialmente en unidades de la PDI habilitadas para trámites migratorios</strong> (Policía de Investigaciones de Chile), en días hábiles y generalmente de 8:00 a 13:00. No se requiere cita previa, aunque en ciudades de alta demanda como Santiago puede haber espera.</p>
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
<p><em><strong>Referencia orientativa:</strong> la Ley 21.325 establece un rango de 1 a 5 UTM para infracciones de permanencia irregular, pero el monto exacto lo determina la autoridad migratoria caso a caso, según la duración, las circunstancias y el historial. El valor real puede diferir. Consulta el valor actualizado de la UTM en el <a href="https://www.sii.cl" target="_blank" rel="noopener noreferrer">SII</a>.</em></p>

<h2>El Certificado de Autodenuncia: qué dice y qué no garantiza</h2>
<p>El Certificado de Autodenuncia Migratoria es el documento más importante del proceso inicial. Sus efectos son:</p>
<ul>
  <li><strong>Puede influir favorablemente en procedimientos migratorios activos</strong>, incluyendo la posible suspensión de procesos de expulsión no ejecutoriados mientras el trámite de visa está en curso. <em>No suspende de forma automática toda expulsión en todos los casos: depende de la etapa del procedimiento, si existe resolución firme y la decisión de la autoridad competente.</em></li>
  <li><strong>Habilita para presentar una solicitud de visa</strong> en el portal del SERMIG aunque estés en situación irregular.</li>
  <li><strong>Es un comprobante de buena fe</strong> ante instituciones públicas y privadas: bancos, empleadores, establecimientos de salud, etc.</li>
</ul>
<p>Un error frecuente: guardar solo la copia en papel. Si la pierdes, recuperarla puede ser un proceso lento. Guarda también una copia digital inmediatamente.</p>

<h2>¿Qué visa puedo solicitar después?</h2>
<p>Con el Certificado de Autodenuncia, el siguiente paso es presentar la solicitud de visa temporaria en el portal del SERMIG. Las categorías más comunes son:</p>
<ul>
  <li><a href="/visa-temporaria/hijo-chileno"><strong>Por hijo/a chileno/a:</strong></a> si tienes un hijo o hija con nacionalidad chilena, sin importar si vives con ellos.</li>
  <li><a href="/visa-temporaria/pareja-chilena"><strong>Por pareja chilena:</strong></a> si estás casado/a o tienes Acuerdo de Unión Civil (AUC) con un/a ciudadano/a chileno/a.</li>
  <li><a href="/visa-temporaria/mercosur"><strong>Visa MERCOSUR:</strong></a> si eres ciudadano de Argentina, Bolivia, Brasil, Colombia, Ecuador, Paraguay, Perú o Uruguay. Es la vía con menos requisitos documentales para estos países.</li>
  <li><a href="/visa-temporaria/contrato-trabajo"><strong>Por contrato de trabajo:</strong></a> si tienes un empleador dispuesto a firmarte un contrato formal.</li>
  <li><a href="/visa-temporaria/responsabilidad-democratica"><strong>Visa de Responsabilidad Democrática (VRD):</strong></a> fue diseñada para ciudadanos venezolanos. <em>Sus condiciones de operación han cambiado desde su creación — verifica disponibilidad actual directamente en el SERMIG antes de planificar tu solicitud.</em></li>
  <li><a href="/visa-temporaria/razones-humanitarias"><strong>Por razones humanitarias:</strong></a> para situaciones de vulnerabilidad especial.</li>
</ul>
<p>Si no estás seguro de qué categoría te corresponde, el SERMIG puede orientarte. Consulta también nuestra guía sobre <a href="/autodenuncia/errores-comunes">errores comunes en la autodenuncia</a>.</p>

<h2>PDI y SERMIG: dos instituciones distintas</h2>
<p>Uno de los malentendidos más frecuentes es ir al lugar equivocado. La PDI y el SERMIG tienen roles distintos y no intercambiables:</p>
<ul>
  <li><strong>PDI:</strong> recibe la autodenuncia, hace el empadronamiento biométrico, cobra la multa y emite el Certificado de Autodenuncia. Actúa en la <em>primera etapa</em>.</li>
  <li><strong>SERMIG:</strong> recibe y evalúa la solicitud de visa. Actúa en la <em>segunda etapa</em>, después de que ya tienes el certificado. Opera principalmente online.</li>
</ul>
<p>Ver comparación completa en <a href="/autodenuncia/sermig-vs-pdi">PDI vs SERMIG: ¿a cuál debes ir?</a></p>

<h2>Las consecuencias de no actuar</h2>
<p>Permanecer en situación irregular sin iniciar el proceso tiene consecuencias concretas:</p>
<ul>
  <li>La multa aumenta con cada día adicional.</li>
  <li>La situación irregular puede dificultar el acceso a ciertas prestaciones, aunque existen garantías de atención en salud para grupos prioritarios (menores, embarazadas, urgencias) independientemente de la situación migratoria.</li>
  <li>Los empleadores no pueden contratarte formalmente — y ellos también arriesgan multa.</li>
  <li>Puede dificultar la apertura de cuentas bancarias y el acceso a productos financieros.</li>
  <li>Si la PDI o el SERMIG detecta la irregularidad, puede iniciarse un proceso de expulsión que es más difícil de revertir que la autodenuncia voluntaria.</li>
</ul>

<h2>Casos especiales</h2>
<h3>Familias con hijos menores</h3>
<p>Los hijos menores de 14 años suelen quedar incluidos en el proceso de autodenuncia de sus padres. Los hijos entre 14 y 18 años hacen su propio proceso con presencia de un adulto responsable.</p>

<h3>Personas en situación de refugio</h3>
<p>Si planeas solicitar refugio (asilo), este proceso es distinto a la autodenuncia migratoria y se gestiona ante el Departamento de Extranjería con apoyo del ACNUR. Ambos procesos no son excluyentes, pero tienen consecuencias distintas.</p>

<h3>Personas con antecedentes penales</h3>
<p>Tener antecedentes penales en el país de origen no impide hacer la autodenuncia ni obtener el certificado. Lo que sí puede afectar el proceso posterior es la evaluación que hace el SERMIG al resolver la visa. Delitos graves pueden resultar en rechazo de la visa, pero no impiden la autodenuncia en sí.</p>

<h2>Fuentes oficiales</h2>
<ul>
  <li><a href="https://www.serviciomigraciones.cl" target="_blank" rel="noopener noreferrer"><strong>SERMIG</strong></a> — Servicio Nacional de Migraciones: trámites en línea, formularios y normativa vigente.</li>
  <li><a href="https://www.pdichile.cl" target="_blank" rel="noopener noreferrer"><strong>PDI Chile</strong></a> — Policía de Investigaciones: información sobre el proceso presencial de autodenuncia.</li>
  <li><a href="https://www.bcn.cl/leychile/navegar?idNorma=1169243" target="_blank" rel="noopener noreferrer"><strong>Ley 21.325 — texto completo</strong></a> — Biblioteca del Congreso Nacional.</li>
</ul>
<p><em>Esta guía es orientativa y no constituye asesoría legal. Para situaciones específicas, consulta con un abogado especialista en derecho migratorio.</em></p>
$$
WHERE slug = 'autodenuncia';

-- ============================================================
-- 2. autodenuncia — faq_items (reescritura: fq3, fq5, fq6, fq8)
-- ============================================================

UPDATE articles
SET faq_items = $$
[
  {
    "question": "¿Pueden expulsarme si me autodenuncio?",
    "answer": "No automáticamente. La autodenuncia puede ser considerada como un antecedente favorable de colaboración y voluntad de regularización, y puede influir favorablemente en procedimientos migratorios activos, pero no garantiza la suspensión de toda expulsión en todos los casos. Si existe un proceso de expulsión en curso, el certificado es un elemento importante, pero la suspensión depende de la etapa del proceso, si hay resolución firme, y la decisión de la autoridad competente. Si tienes un proceso de expulsión activo, consulta a un abogado migratorio antes de actuar."
  },
  {
    "question": "¿Cuánto tarda el proceso en la PDI?",
    "answer": "El trámite en la PDI suele tomar entre 2 y 6 horas, dependiendo de la afluencia del día. Llegar temprano reduce la espera. Si llevas todos los documentos completos, el proceso es más ágil."
  },
  {
    "question": "¿Puedo trabajar después de la autodenuncia?",
    "answer": "La autodenuncia por sí sola no otorga autorización para trabajar. El certificado acredita el inicio del proceso, pero no reemplaza un permiso de residencia vigente. La posibilidad de trabajo formal depende de la visa que solicites y de que la resolución del SERMIG incluya la autorización laboral correspondiente."
  },
  {
    "question": "¿La autodenuncia me da antecedentes penales en Chile?",
    "answer": "No. La autodenuncia es una infracción administrativa, no un delito penal. No aparece en el registro de antecedentes penales. Solo implica el pago de una multa migratoria."
  },
  {
    "question": "¿Puedo hacer la autodenuncia si mi pasaporte está vencido?",
    "answer": "Idealmente debes presentar un pasaporte vigente o documento de identidad legible. Si está vencido, consulta previamente con tu consulado sobre documentación alternativa — el funcionario PDI puede solicitar antecedentes adicionales o, en algunos casos, pedir que regularices primero tu documentación de identidad."
  },
  {
    "question": "¿Qué pasa si me rechazan la visa después de la autodenuncia?",
    "answer": "Si la visa es rechazada, generalmente tienes un plazo para interponer un recurso de reposición ante el SERMIG — verifica el plazo exacto en la notificación de rechazo. Si no recurres, puedes presentar una nueva solicitud si las circunstancias cambian, o iniciar el trámite de salida voluntaria del país."
  },
  {
    "question": "¿Puedo ir a cualquier comisaría PDI?",
    "answer": "Sí. Puedes presentarte en cualquier comisaría PDI del país, no tiene que ser la de tu ciudad. En ciudades pequeñas, verifica previamente que la comisaría local tenga habilitado el trámite migratorio."
  },
  {
    "question": "¿Cuánto tiempo tengo para solicitar la visa después de la autodenuncia?",
    "answer": "No hay un plazo legal específico para presentar la solicitud de visa después de obtener el certificado. Sin embargo, los documentos de respaldo tienen vigencia limitada, por lo que es conveniente presentar la solicitud lo antes posible — cuanto más esperes, más probable es que debas renovar algún certificado."
  }
]
$$::jsonb
WHERE slug = 'autodenuncia';

-- ============================================================
-- Verificación
-- ============================================================
SELECT slug, updated_at
FROM articles
WHERE slug = 'autodenuncia';
