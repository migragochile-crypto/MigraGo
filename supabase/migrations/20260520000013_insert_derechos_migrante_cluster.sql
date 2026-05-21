BEGIN;

INSERT INTO articles (
  slug,
  silo,
  parent_slug,
  type,
  title,
  h1,
  meta_description,
  keyword_primary,
  content,
  faq_items,
  related_slugs,
  country_tags,
  is_published
) VALUES (
  'problemas-migratorios/derechos-migrante',
  'problemas-migratorios',
  'problemas-migratorios',
  'cluster',
  'Derechos del Migrante en Chile 2025: Lo que la Ley Garantiza',
  'Derechos del migrante en Chile: lo que la ley te garantiza',
  'Conoce los derechos que la Ley de Migración 21.325 y la Constitución garantizan a los extranjeros en Chile, sin importar su situación migratoria. Guía 2025.',
  'derechos migrante chile',
  $content$<h2>¿Qué derechos tienen los migrantes en Chile?</h2>
<p>En Chile, los extranjeros tienen derechos garantizados por la <strong>Ley de Migración y Extranjería N°21.325</strong> (2021) y por la Constitución. Muchos de estos derechos se aplican independientemente de si la persona tiene visa vigente o se encuentra en situación irregular.</p>

<h2>Derechos que no dependen del estatus migratorio</h2>
<p>Incluso sin visa o en situación irregular, tienes derecho a:</p>
<ul>
  <li><strong>Atención de salud de urgencia:</strong> todos los establecimientos de salud del país están obligados a atender urgencias, independientemente de la situación migratoria o de si la persona tiene RUT.</li>
  <li><strong>Educación para niños y niñas:</strong> todos los menores de edad tienen derecho a educación pública en Chile, sin excepción. Los colegios no pueden negar la matrícula por situación migratoria irregular.</li>
  <li><strong>Acceso a la justicia:</strong> puedes denunciar delitos y acceder a tribunales sin temor a que tu situación migratoria sea revelada como consecuencia directa de la denuncia.</li>
  <li><strong>No ser discriminado:</strong> la ley chilena prohíbe la discriminación arbitraria por nacionalidad, origen étnico o condición migratoria.</li>
  <li><strong>Debido proceso:</strong> si enfrentas una expulsión u otra medida administrativa, tienes derecho a ser notificado, a conocer los fundamentos de la decisión y a recurrir.</li>
</ul>

<h2>Derechos con Residencia Temporal o Definitiva</h2>
<p>Al obtener un permiso de residencia vigente, se suman estos derechos:</p>
<ul>
  <li><strong>Trabajar formalmente:</strong> con contrato, cotizaciones previsionales y todos los derechos laborales chilenos (sueldo mínimo, vacaciones, indemnización, etc.).</li>
  <li><strong>Afiliarse a Fonasa:</strong> acceso completo al sistema público de salud.</li>
  <li><strong>Obtener RUT definitivo:</strong> a través de la cédula de identidad de extranjero emitida por el Registro Civil.</li>
  <li><strong>Reunificación familiar:</strong> posibilidad de solicitar visas para cónyuge e hijos.</li>
  <li><strong>Acceder a beneficios del Estado:</strong> subsidios habitacionales, becas de estudio, bonos y otros programas sociales.</li>
</ul>

<h2>Derechos laborales: igualdad con trabajadores chilenos</h2>
<p>Si trabajas en Chile con visa vigente, tienes exactamente los mismos derechos laborales que un trabajador chileno:</p>
<ul>
  <li>Sueldo mínimo legal.</li>
  <li>Contrato escrito en un plazo máximo de 15 días.</li>
  <li>Descanso dominical y feriados legales.</li>
  <li>Vacaciones anuales (15 días hábiles al año, tras 12 meses de servicio).</li>
  <li>Licencia médica con pago.</li>
  <li>Cotizaciones para salud, AFP y seguro de cesantía.</li>
  <li>Indemnización por años de servicio en caso de despido injustificado.</li>
</ul>
<p>Si tu empleador no te paga lo que corresponde o viola tus derechos, puedes denunciarlo ante la <strong>Inspección del Trabajo</strong> — la denuncia es gratuita y puedes hacerla aunque no tengas visa regular.</p>

<h2>El derecho a la información migratoria</h2>
<p>La Ley 21.325 establece expresamente el derecho a recibir información clara y oportuna sobre los requisitos, procedimientos y derechos migratorios. El SERMIG debe informarte sobre tu situación y las opciones disponibles. Si no recibes respuesta, existen mecanismos formales de reclamo. Ver: <a href="/problemas-migratorios/sin-respuesta-sermig">Qué hacer si el SERMIG no responde</a>.</p>

<h2>Organizaciones que pueden ayudarte</h2>
<p>Si crees que tus derechos han sido vulnerados, estas organizaciones pueden orientarte:</p>
<ul>
  <li><strong>INDH (Instituto Nacional de Derechos Humanos):</strong> recibe denuncias de vulneraciones de derechos humanos, incluyendo situaciones de migrantes.</li>
  <li><strong>Clínicas jurídicas universitarias:</strong> varias universidades chilenas ofrecen asesoría jurídica gratuita en materia migratoria.</li>
  <li><strong>OIM (Organización Internacional para las Migraciones):</strong> orientación y derivación a servicios de apoyo.</li>
  <li><strong>ACNUR:</strong> si tu situación tiene características de refugio o protección internacional.</li>
  <li><strong>Fundación Scalabrini, Movilidad Humana, INCAMI:</strong> organizaciones de la sociedad civil con programas de apoyo a migrantes.</li>
</ul>

<h2>¿Qué hacer ante una vulneración?</h2>
<ol>
  <li>Documenta la situación (fecha, lugar, quién, qué ocurrió).</li>
  <li>Contacta a una organización de apoyo o clínica jurídica.</li>
  <li>Si es una vulneración laboral: denuncia en la Inspección del Trabajo más cercana.</li>
  <li>Si es una vulneración por parte de una institución del Estado: recurre al INDH o presenta un reclamo en la Contraloría General de la República.</li>
  <li>Si hay discriminación en un establecimiento privado: denuncia en el SERNAC o mediante acción judicial de no discriminación arbitraria.</li>
</ol>$content$,
  $faq$[
    {
      "question": "¿Puedo ir al hospital si no tengo visa?",
      "answer": "Sí. Todos los establecimientos de salud están obligados a atender urgencias sin importar la situación migratoria. Para atención de urgencia no se puede exigir RUT ni documentos de residencia."
    },
    {
      "question": "¿Mis hijos pueden estudiar en Chile aunque estén sin papeles?",
      "answer": "Sí. Todos los niños y niñas tienen derecho garantizado a educación pública en Chile. Los colegios no pueden rechazar la matrícula por situación migratoria irregular ni pedir visa como requisito."
    },
    {
      "question": "¿Qué derechos laborales tengo si trabajo con visa?",
      "answer": "Los mismos que cualquier trabajador chileno: sueldo mínimo, contrato escrito, vacaciones, licencia médica, cotizaciones y protección ante despido. Si el empleador no los respeta, puedes denunciar en la Inspección del Trabajo."
    },
    {
      "question": "¿Puedo denunciar un delito si estoy en situación irregular?",
      "answer": "Sí. Puedes denunciar delitos de los que fuiste víctima sin que tu situación migratoria genere consecuencias legales directas por esa denuncia. La PDI y Carabineros están obligados a recibirla."
    },
    {
      "question": "¿Qué hago si siento que el SERMIG violó mis derechos?",
      "answer": "Puedes presentar un reclamo ante la Contraloría General de la República, recurrir al INDH o acudir a una clínica jurídica universitaria para evaluar acciones legales como el recurso de amparo o protección."
    }
  ]$faq$,
  ARRAY[
    'problemas-migratorios/sin-respuesta-sermig',
    'problemas-migratorios/expulsion-administrativa',
    'problemas-migratorios/trabajo-sin-visa',
    'vivir-en-chile/fonasa-isapre',
    'vivir-en-chile/trabajo-contrato'
  ],
  ARRAY['venezuela', 'peru', 'colombia', 'haiti', 'bolivia', 'argentina', 'republica-dominicana'],
  TRUE
) ON CONFLICT (slug) DO NOTHING;

COMMIT;
