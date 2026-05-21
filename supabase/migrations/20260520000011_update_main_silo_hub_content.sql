BEGIN;

-- residencia-temporal hub
UPDATE articles SET
  content = $content$<h2>¿Qué es la Residencia Temporal?</h2>
<p>La <strong>Residencia Temporal</strong> es el permiso de residencia principal en Chile para extranjeros que desean vivir y trabajar en el país por un período determinado. Antes se llamaba "visa temporaria" — el nombre cambió con la Ley de Migración N°21.325 de 2021, pero el trámite es esencialmente el mismo.</p>

<h2>Cuánto dura y qué permite</h2>
<ul>
  <li>Vigencia: entre <strong>1 y 2 años</strong>, según la categoría.</li>
  <li>Permite vivir y trabajar legalmente en Chile.</li>
  <li>Es renovable antes de su vencimiento.</li>
  <li>Después de 2 años continuos, puedes pedir la <a href="/residencia-definitiva">Residencia Definitiva</a>.</li>
</ul>

<h2>Categorías disponibles</h2>
<p>Puedes solicitar la Residencia Temporal por distintas razones. Las más comunes son:</p>
<ul>
  <li><strong>Hijo chileno:</strong> si tienes un hijo/a nacido en Chile.</li>
  <li><strong>Pareja chilena:</strong> si tienes cónyuge o conviviente civil chileno/a.</li>
  <li><strong>Contrato de trabajo:</strong> si tienes un contrato firmado con empleador chileno.</li>
  <li><strong>Oferta de trabajo:</strong> si tienes una oferta laboral formal (sin contrato aún).</li>
  <li><strong>Estudiante:</strong> si estás matriculado en una institución educacional reconocida.</li>
  <li><strong>Razones humanitarias:</strong> para personas en situación de vulnerabilidad.</li>
  <li><strong>Jubilado o rentista:</strong> si puedes acreditar ingresos propios suficientes.</li>
  <li><strong>MERCOSUR:</strong> para ciudadanos de Argentina, Bolivia, Brasil, Colombia, Ecuador, Paraguay, Perú o Uruguay.</li>
</ul>

<h2>Cómo solicitarla</h2>
<p>Todos los trámites se hacen en el portal del SERMIG: <strong>tramitesmigratorios.interior.gob.cl</strong>. El proceso es 100% en línea. Crea una cuenta, selecciona la categoría que corresponde a tu situación y sube los documentos requeridos.</p>

<h2>¿Qué pasa después?</h2>
<p>Una vez aprobada, el SERMIG te notifica y puedes ir al <strong>Registro Civil</strong> a obtener tu <strong>cédula de identidad de extranjero</strong>, que incluye tu RUT permanente.</p>

<h2>Selecciona tu situación</h2>
<p>Usa el menú de esta sección para acceder a la guía específica según tu caso: contrato de trabajo, hijo chileno, MERCOSUR, renovación y más.</p>$content$,
  title = 'Residencia Temporal en Chile 2025: Tipos, Requisitos y Proceso',
  h1 = 'Residencia Temporal en Chile: guía completa',
  meta_description = 'Todo sobre la Residencia Temporal en Chile: categorías, requisitos, documentos y cómo solicitarla en el portal SERMIG. Guía actualizada 2025.',
  keyword_primary = 'residencia temporal Chile'
WHERE slug = 'residencia-temporal';

-- residencia-definitiva hub
UPDATE articles SET
  content = $content$<h2>¿Qué es la Residencia Definitiva?</h2>
<p>La <strong>Residencia Definitiva</strong> es el permiso de residencia permanente en Chile. Antes se llamaba "permanencia definitiva". Con ella puedes vivir y trabajar en Chile sin límite de tiempo ni necesidad de renovar periódicamente.</p>

<h2>Qué permite la Residencia Definitiva</h2>
<ul>
  <li>Residir en Chile de forma indefinida.</li>
  <li>Trabajar en cualquier empleo sin restricciones.</li>
  <li>Postular a empleos públicos (en muchos casos).</li>
  <li>Acceder a beneficios del Estado (Fonasa, becas, subsidios).</li>
  <li>Ser base para la <a href="/nacionalizacion">naturalización chilena</a> tras 5 años.</li>
</ul>

<h2>Requisitos principales</h2>
<ul>
  <li>Haber tenido <strong>Residencia Temporal por al menos 2 años continuos</strong> en Chile (o 1 año en casos especiales).</li>
  <li>No tener antecedentes penales en Chile.</li>
  <li>Demostrar medios de subsistencia.</li>
  <li>Cédula de identidad de extranjero vigente al momento de la solicitud.</li>
</ul>

<h2>Reducción del plazo a 1 año</h2>
<p>El plazo de 2 años se reduce a <strong>1 año</strong> si cumples alguna condición especial: tener cónyuge o conviviente civil chileno, tener hijos chilenos, o en otros casos contemplados por la ley.</p>

<h2>Cómo solicitarla</h2>
<p>El trámite se realiza en el portal <strong>tramitesmigratorios.interior.gob.cl</strong>. Debes tener todos tus documentos en regla y tu visa temporal vigente o en prórroga al momento de presentar la solicitud.</p>

<h2>Selecciona tu consulta</h2>
<p>Usa el menú de esta sección para guías sobre requisitos, tiempos, casos especiales, rechazos y más.</p>$content$,
  title = 'Residencia Definitiva en Chile 2025: Requisitos y Proceso',
  h1 = 'Residencia Definitiva en Chile: todo lo que necesitas saber',
  meta_description = 'Requisitos, plazos y proceso para obtener la Residencia Definitiva en Chile. Antes llamada permanencia definitiva. Guía actualizada 2025.',
  keyword_primary = 'residencia definitiva Chile'
WHERE slug = 'residencia-definitiva';

-- autodenuncia hub
UPDATE articles SET
  content = $content$<h2>¿Qué es la Autodenuncia Migratoria?</h2>
<p>La <strong>Autodenuncia Migratoria</strong> es el proceso voluntario por el cual un extranjero que se encuentra en Chile en situación irregular notifica su situación a la autoridad migratoria. El objetivo es regularizar su permanencia sin ser expulsado del país.</p>

<h2>¿Quién puede hacerla?</h2>
<p>Cualquier extranjero que esté en Chile de forma irregular: con visa vencida, que ingresó sin los documentos requeridos, o cuya solicitud de visa fue rechazada y no salió del país dentro del plazo.</p>

<h2>¿Ante quién se presenta?</h2>
<p>La autodenuncia se presenta ante la <strong>PDI (Policía de Investigaciones de Chile)</strong> en cualquiera de sus oficinas. No ante el SERMIG — aunque muchos lo confunden.</p>

<h2>¿Qué pasa después?</h2>
<p>Al presentarse, la PDI registra tu situación y puede:</p>
<ul>
  <li>Iniciar el proceso de regularización si cumples requisitos.</li>
  <li>Derivarte al SERMIG para solicitar la visa que corresponde a tu situación.</li>
  <li>En casos donde no hay posibilidad de regularización: notificarte de una expulsión administrativa.</li>
</ul>

<h2>¿Es lo mismo que el empadronamiento?</h2>
<p>No exactamente. El <strong>empadronamiento biométrico</strong> es un paso dentro del proceso de autodenuncia que tomó relevancia en períodos de regularización masiva. Implica registrar tus datos y huellas dactilares en el sistema migratorio chileno.</p>

<h2>¿Conviene hacerlo?</h2>
<p>En la mayoría de los casos, <strong>sí</strong>. Permanecer irregular tiene consecuencias: multas crecientes, riesgo de expulsión, imposibilidad de trabajar formalmente, y dificultad para regularizarse en el futuro. La autodenuncia detiene esa acumulación de infracciones.</p>

<h2>Selecciona tu consulta</h2>
<p>Usa el menú de esta sección para guías sobre el proceso paso a paso, diferencias SERMIG vs PDI, tiempos reales, errores comunes y más.</p>$content$,
  title = 'Autodenuncia Migratoria en Chile 2025: Cómo Regularizarse',
  h1 = 'Autodenuncia Migratoria: guía completa para regularizarse',
  meta_description = 'Qué es la autodenuncia migratoria, cómo hacerla ante la PDI, qué pasa después y si conviene presentarse. Guía actualizada 2025.',
  keyword_primary = 'autodenuncia migratoria Chile'
WHERE slug = 'autodenuncia';

-- nacionalizacion hub
UPDATE articles SET
  content = $content$<h2>¿Qué es la naturalización chilena?</h2>
<p>La <strong>naturalización</strong> es el proceso por el cual un extranjero obtiene la nacionalidad chilena. En Chile también se conoce como "nacionalización". Una vez naturalizado, tienes los mismos derechos que un ciudadano chileno de nacimiento, incluyendo el derecho a voto.</p>

<h2>Requisitos básicos</h2>
<ul>
  <li><strong>5 años de residencia legal continua</strong> en Chile (se reduce a 2 años en casos especiales).</li>
  <li>No tener antecedentes penales en Chile ni en el país de origen.</li>
  <li>Demostrar medios de subsistencia.</li>
  <li>Aprobar el examen de conocimientos cívicos y de historia de Chile.</li>
</ul>

<h2>Reducción del plazo a 2 años</h2>
<p>El plazo se reduce de 5 a <strong>2 años</strong> si tienes cónyuge o conviviente civil chileno, hijos chilenos, o tienes más de 65 años.</p>

<h2>¿Chile exige renunciar a mi nacionalidad?</h2>
<p><strong>No.</strong> Chile permite la doble o múltiple nacionalidad. Al naturalizarte chileno, no pierdes automáticamente tu nacionalidad de origen — aunque debes verificar si tu país de origen lo permite.</p>

<h2>El proceso</h2>
<p>La solicitud se presenta ante la Gobernación Provincial de tu domicilio. El proceso incluye revisión del expediente, examen de conocimientos cívicos, y la emisión de un Decreto de Naturalización publicado en el Diario Oficial. El tiempo total puede ser de 1 a 3 años.</p>

<h2>Selecciona tu consulta</h2>
<p>Usa el menú de esta sección para guías sobre requisitos, el examen, el proceso paso a paso, doble nacionalidad, hijos extranjeros y más.</p>$content$,
  title = 'Cómo Naturalizarse en Chile 2025: Requisitos y Proceso',
  h1 = 'Nacionalización en Chile: guía completa para extranjeros',
  meta_description = 'Cómo obtener la nacionalidad chilena: requisitos, años de residencia, examen cívico, doble nacionalidad y proceso paso a paso. Guía 2025.',
  keyword_primary = 'nacionalización Chile extranjeros'
WHERE slug = 'nacionalizacion';

-- problemas-migratorios hub
UPDATE articles SET
  content = $content$<h2>Problemas migratorios: ¿qué hacer?</h2>
<p>Los problemas migratorios son más frecuentes de lo que parece: una visa rechazada, una multa acumulada, una notificación de expulsión o documentos perdidos pueden paralizar completamente tu situación en Chile. Esta sección te guía sobre qué hacer en cada caso.</p>

<h2>Los problemas más comunes</h2>
<ul>
  <li><strong>Rechazo de visa:</strong> el SERMIG denegó tu solicitud. Tienes derecho a recurso administrativo.</li>
  <li><strong>Visa vencida:</strong> si tu visa venció y no renovaste a tiempo, acumulas multas e infracción migratoria.</li>
  <li><strong>Multas migratorias:</strong> se generan por cada día de permanencia irregular. Se pagan antes de regularizarse.</li>
  <li><strong>Expulsión administrativa:</strong> notificación formal de que debes abandonar el país. Tienes plazos y derechos.</li>
  <li><strong>Antecedentes penales en Chile:</strong> pueden impedir la renovación de visa o la naturalización.</li>
  <li><strong>Trabajo sin visa:</strong> trabajar sin permiso es una infracción laboral y migratoria — pero tiene solución.</li>
  <li><strong>Documentos perdidos:</strong> pasaporte, cédula de extranjero o resolución de visa perdidos.</li>
</ul>

<h2>Principio general: siempre actuar</h2>
<p>El error más frecuente es <strong>no hacer nada</strong> esperando que el problema se resuelva solo. En migración, la inacción empeora siempre la situación: las multas crecen, los plazos vencen y las opciones se reducen. Ante cualquier problema, actúa lo antes posible.</p>

<h2>¿Necesitas asesoría legal?</h2>
<p>Para problemas complejos (expulsión con prohibición de ingreso, antecedentes penales, recursos ante tribunales), se recomienda asesoría de un abogado especialista en derecho migratorio. Existen también organizaciones de la sociedad civil que ofrecen orientación gratuita.</p>

<h2>Selecciona tu problema</h2>
<p>Usa el menú de esta sección para acceder a la guía específica de tu situación.</p>$content$,
  title = 'Problemas Migratorios en Chile 2025: Qué Hacer en Cada Caso',
  h1 = 'Problemas migratorios en Chile: guía de soluciones',
  meta_description = 'Qué hacer ante rechazo de visa, multas, visa vencida, expulsión o documentos perdidos en Chile. Guía completa de problemas migratorios 2025.',
  keyword_primary = 'problemas migratorios Chile'
WHERE slug = 'problemas-migratorios';

-- vivir-en-chile hub
UPDATE articles SET
  content = $content$<h2>Establecerse en Chile como extranjero</h2>
<p>Tener la visa aprobada es solo el primer paso. Para vivir bien en Chile necesitas resolver una serie de trámites prácticos: obtener tu RUT, abrir una cuenta bancaria, afiliarte al sistema de salud, arrendar una vivienda y más. Esta sección cubre todo eso.</p>

<h2>Los primeros pasos al llegar</h2>
<ol>
  <li><strong>Obtener la cédula de identidad de extranjero</strong> en el Registro Civil — incluye tu RUT definitivo.</li>
  <li><strong>Afiliarte a Fonasa</strong> o a una Isapre para acceder al sistema de salud.</li>
  <li><strong>Abrir una cuenta bancaria</strong> — BancoEstado o MACH son las opciones más accesibles para recién llegados.</li>
  <li><strong>Buscar arriendo</strong> — la cédula y el RUT facilitan enormemente este proceso.</li>
</ol>

<h2>Trámites importantes a mediano plazo</h2>
<ul>
  <li><strong>AFP:</strong> si trabajas dependiente, tu empleador cotizará automáticamente. Puedes elegir en qué AFP.</li>
  <li><strong>Matrícula escolar de hijos:</strong> todos los niños tienen derecho a educación pública, independiente de la situación migratoria.</li>
  <li><strong>Convalidación de títulos:</strong> si quieres ejercer tu profesión, el proceso varía según la carrera.</li>
  <li><strong>Envío de remesas:</strong> opciones para enviar dinero a tu familia en el exterior.</li>
</ul>

<h2>Derechos como residente</h2>
<p>Con Residencia Temporal o Definitiva tienes derecho a:</p>
<ul>
  <li>Trabajar formalmente con contrato y cotizaciones.</li>
  <li>Acceder al sistema de salud público.</li>
  <li>Matricular a tus hijos en colegios públicos.</li>
  <li>Arrendar y firmar contratos.</li>
  <li>Recibir atención consular de Chile en el extranjero.</li>
</ul>

<h2>Selecciona tu trámite</h2>
<p>Usa el menú de esta sección para acceder a la guía específica de cada tema: RUT, cédula, banco, salud, AFP, arriendo, remesas, educación, títulos y apostilla.</p>$content$,
  title = 'Vivir en Chile como Extranjero 2025: Guía Práctica Completa',
  h1 = 'Vivir en Chile como extranjero: todo lo que necesitas',
  meta_description = 'Guía práctica para extranjeros en Chile: RUT, cédula de identidad, cuenta bancaria, Fonasa, AFP, arriendo, educación y más. Actualizada 2025.',
  keyword_primary = 'vivir en Chile extranjero'
WHERE slug = 'vivir-en-chile';

COMMIT;
