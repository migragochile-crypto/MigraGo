BEGIN;

INSERT INTO articles (slug, silo, parent_slug, type, title, h1, meta_description, keyword_primary, content, schema_type, faq_items, related_slugs, country_tags, canonical, is_published)
VALUES

-- 1. requisitos
(
  'nacionalizacion/requisitos',
  'nacionalizacion',
  'nacionalizacion',
  'cluster',
  'Requisitos para Nacionalizarse en Chile 2025 | Naturalización',
  'Requisitos para obtener la nacionalidad chilena',
  'Conoce todos los requisitos para naturalizarte en Chile: años de residencia, antecedentes, ingresos y documentos necesarios.',
  'requisitos nacionalización Chile',
  $content$<h2>¿Quién puede pedir la nacionalidad chilena?</h2>
<p>La naturalización en Chile está regulada por el artículo 10 N°3 de la Constitución y el Decreto Ley 1.094. Para solicitarla debes cumplir todos los requisitos siguientes.</p>

<h2>Requisitos generales</h2>
<ul>
  <li><strong>Residencia legal:</strong> haber residido en Chile de manera continua y regular por al menos <strong>5 años</strong> con cualquier tipo de visa.</li>
  <li><strong>Buena conducta:</strong> no tener antecedentes penales en Chile ni en tu país de origen.</li>
  <li><strong>Medios de subsistencia:</strong> demostrar ingresos suficientes para mantenerte (contrato de trabajo, boletas, declaración de renta u otros).</li>
  <li><strong>Renuncia a la nacionalidad anterior</strong> (solo si tu país de origen no permite la doble nacionalidad — Chile siempre acepta la doble).</li>
  <li><strong>No estar procesado ni condenado</strong> por delito en Chile.</li>
</ul>

<h2>Reducción del plazo a 2 años</h2>
<p>El plazo de 5 años se reduce a <strong>2 años</strong> si cumples alguna de estas condiciones:</p>
<ul>
  <li>Tienes cónyuge o conviviente civil chileno/a.</li>
  <li>Tienes hijos chilenos.</li>
  <li>Tienes más de 65 años.</li>
  <li>Has prestado servicios importantes al Estado de Chile.</li>
</ul>

<h2>Documentos necesarios</h2>
<ol>
  <li>Cédula de identidad de extranjero vigente.</li>
  <li>Pasaporte vigente.</li>
  <li>Certificado de antecedentes chileno (del Registro Civil).</li>
  <li>Certificado de antecedentes del país de origen (apostillado y traducido si corresponde).</li>
  <li>Certificado de residencia (emitido por la PDI).</li>
  <li>Certificado de nacimiento.</li>
  <li>Documentos que acrediten medios de subsistencia.</li>
  <li>Si tienes cónyuge chileno/a: certificado de matrimonio.</li>
</ol>

<h2>¿Dónde se presenta la solicitud?</h2>
<p>La solicitud se presenta ante el <strong>Ministerio del Interior</strong> a través del SRCeI (Servicio de Registro Civil e Identificación) o de forma presencial en la Gobernación Provincial correspondiente a tu domicilio.</p>$content$,
  'FAQPage',
  '[
    {"q": "¿Cuántos años de residencia se necesitan para naturalizarse?", "a": "5 años de residencia continua y legal. Se reduce a 2 años si tienes cónyuge o hijos chilenos, o tienes más de 65 años."},
    {"q": "¿Puedo mantener mi nacionalidad anterior?", "a": "Chile no te exige renunciar a tu nacionalidad. Sin embargo, tu país de origen puede no aceptar la doble nacionalidad — debes verificarlo en tu consulado."},
    {"q": "¿Necesito saber español para naturalizarme?", "a": "No hay un examen de idioma formal, pero sí existe un examen de conocimientos cívicos y de historia de Chile que debes aprobar."},
    {"q": "¿Se interrumpe el plazo si viajo fuera de Chile?", "a": "Ausencias esporádicas no interrumpen el plazo, pero estadías largas en el extranjero pueden contarse en tu contra. Se evalúa caso a caso."}
  ]'::jsonb,
  ARRAY['nacionalizacion/examen', 'nacionalizacion/paso-a-paso', 'nacionalizacion/doble-nacionalidad'],
  ARRAY[]::text[],
  '/nacionalizacion/requisitos',
  TRUE
),

-- 2. examen
(
  'nacionalizacion/examen',
  'nacionalizacion',
  'nacionalizacion',
  'cluster',
  'Examen de Nacionalización Chile 2025: Preguntas y Respuestas',
  'Examen de conocimientos cívicos para la nacionalización',
  'Prepárate para el examen de naturalización en Chile: historia, geografía, instituciones y cultura. Preguntas frecuentes y cómo estudiarlo.',
  'examen nacionalización Chile',
  $content$<h2>¿En qué consiste el examen?</h2>
<p>Para obtener la nacionalidad chilena debes aprobar un <strong>examen oral de conocimientos cívicos</strong> ante una comisión del SRCeI o del Ministerio del Interior. No es un examen escrito ni con nota numérica — es una conversación evaluativa.</p>

<h2>Temas evaluados</h2>
<ul>
  <li><strong>Historia de Chile:</strong> independencia, Presidentes principales, hitos históricos.</li>
  <li><strong>Geografía:</strong> regiones, capital, límites del país, accidentes geográficos.</li>
  <li><strong>Instituciones:</strong> poderes del Estado, Constitución, derechos y deberes ciudadanos.</li>
  <li><strong>Himno Nacional:</strong> generalmente te piden que lo cantes o que recites la primera estrofa.</li>
  <li><strong>Símbolos patrios:</strong> bandera, escudo, flor y ave nacional.</li>
</ul>

<h2>Preguntas frecuentes del examen</h2>
<ul>
  <li>¿Cuándo se independizó Chile? (18 de septiembre de 1810 — Grito de Independencia; 12 de febrero de 1818 — Independencia formal).</li>
  <li>¿Cuál es la capital de Chile? Santiago.</li>
  <li>¿Cuántas regiones tiene Chile? 16 regiones.</li>
  <li>¿Quiénes son los poderes del Estado? Ejecutivo, Legislativo y Judicial.</li>
  <li>¿Quién es el Presidente de Chile? (Debes saber el nombre del Presidente actual).</li>
  <li>¿Qué es el Congreso? Poder Legislativo, compuesto por Senado y Cámara de Diputados.</li>
  <li>¿Qué es la Constitución? La ley fundamental que rige el país.</li>
  <li>¿Cuál es la flor nacional? La Copihue.</li>
  <li>¿Cuál es el ave nacional? El Cóndor de los Andes.</li>
</ul>

<h2>Cómo prepararse</h2>
<ol>
  <li>Descarga el <strong>"Manual del Postulante a la Naturalización"</strong> en el sitio del SRCeI.</li>
  <li>Estudia los capítulos de historia, geografía e instituciones.</li>
  <li>Memoriza el Himno Nacional (primera estrofa y coro).</li>
  <li>Practica con preguntas tipo test que encontrarás en foros de migrantes.</li>
</ol>

<h2>¿Cuándo rindo el examen?</h2>
<p>El examen se realiza <strong>después de que el Ministerio del Interior revisa tu solicitud y la aprueba en primera instancia</strong>. Recibirás una citación con fecha, hora y lugar. El proceso puede tardar varios meses desde la presentación de la solicitud hasta el examen.</p>$content$,
  'FAQPage',
  '[
    {"q": "¿Es difícil el examen de nacionalización?", "a": "Es accesible si te preparas. La comisión evalúa que tengas conocimientos básicos, no que seas un experto en historia. La actitud y la preparación importan más que memorizar fechas exactas."},
    {"q": "¿El examen es en español?", "a": "Sí, el examen se realiza íntegramente en español. No hay opción de realizarlo en otro idioma."},
    {"q": "¿Qué pasa si no apruebo el examen?", "a": "Puedes solicitar una segunda evaluación. Si tampoco la apruebas, debes esperar un período antes de volver a intentarlo. Es raro reprobar si te preparas."},
    {"q": "¿Dónde encuentro el manual de estudio oficial?", "a": "En el sitio web del Registro Civil (srcei.cl), sección Nacionalidad > Naturalización."}
  ]'::jsonb,
  ARRAY['nacionalizacion/requisitos', 'nacionalizacion/paso-a-paso'],
  ARRAY[]::text[],
  '/nacionalizacion/examen',
  TRUE
),

-- 3. paso-a-paso
(
  'nacionalizacion/paso-a-paso',
  'nacionalizacion',
  'nacionalizacion',
  'cluster',
  'Cómo Naturalizarse en Chile: Guía Paso a Paso 2025',
  'Proceso de naturalización en Chile paso a paso',
  'Guía completa del proceso de naturalización en Chile: desde la solicitud hasta recibir tu cédula de chileno. Plazos reales y consejos.',
  'proceso naturalización Chile paso a paso',
  $content$<h2>Visión general del proceso</h2>
<p>La naturalización en Chile involucra varias etapas y puede tomar entre <strong>1 y 3 años</strong> desde la presentación de la solicitud. Aquí está el proceso completo.</p>

<h2>Paso 1 — Verificar que cumples los requisitos</h2>
<p>Confirma que tienes los 5 años de residencia (o 2 si aplica reducción), no tienes antecedentes penales y puedes demostrar medios de subsistencia. Ver: <a href="/nacionalizacion/requisitos">Requisitos completos</a>.</p>

<h2>Paso 2 — Reunir la documentación</h2>
<ul>
  <li>Cédula de extranjero vigente + pasaporte.</li>
  <li>Certificado de antecedentes chileno (Registro Civil).</li>
  <li>Certificado de antecedentes del país de origen (apostillado + traducido si es necesario).</li>
  <li>Certificado de residencia (PDI).</li>
  <li>Certificado de nacimiento original.</li>
  <li>Documentos de medios de subsistencia.</li>
</ul>

<h2>Paso 3 — Presentar la solicitud</h2>
<p>La solicitud se presenta en la <strong>Gobernación Provincial</strong> de tu domicilio o en el <strong>SRCeI</strong>. Debes presentarte personalmente con todos los documentos. Te entregan un número de expediente.</p>

<h2>Paso 4 — Revisión del expediente (6–18 meses)</h2>
<p>El Ministerio del Interior revisa tu expediente. En este período pueden pedirte documentos adicionales. Es normal no recibir noticias por varios meses.</p>

<h2>Paso 5 — Citación al examen</h2>
<p>Si el expediente pasa la revisión, recibirás una citación para el <strong>examen de conocimientos cívicos</strong>. Ver: <a href="/nacionalizacion/examen">Cómo prepararte para el examen</a>.</p>

<h2>Paso 6 — Resolución y decreto</h2>
<p>Si apruebas el examen, el Ministerio del Interior emite un <strong>Decreto de Naturalización</strong> que se publica en el Diario Oficial. Esto puede tardar entre 3 y 6 meses adicionales después del examen.</p>

<h2>Paso 7 — Registro y cédula de identidad</h2>
<p>Con el decreto publicado, debes ir al Registro Civil para inscribirte como ciudadano chileno y obtener tu nueva <strong>cédula de identidad chilena</strong>.</p>

<h2>Plazos reales (experiencias de usuarios)</h2>
<ul>
  <li>Solicitud → examen: 12 a 24 meses.</li>
  <li>Examen → decreto publicado: 3 a 6 meses.</li>
  <li>Decreto → cédula: 2 a 4 semanas.</li>
</ul>$content$,
  'HowTo',
  '[
    {"q": "¿Puedo hacer el proceso por internet?", "a": "La solicitud inicial debe ser presencial. Sin embargo, puedes consultar el estado de tu expediente en línea en el sitio del Ministerio del Interior."},
    {"q": "¿Qué pasa con mi visa mientras espero la naturalización?", "a": "Debes mantener tu visa vigente durante todo el proceso. Si vence, debes renovarla — la solicitud de naturalización no te otorga permiso de permanencia automático."},
    {"q": "¿Puedo trabajar mientras espero?", "a": "Sí, con tu visa vigente puedes trabajar normalmente. La naturalización no cambia tus derechos laborales actuales."},
    {"q": "¿Me avisarán cuando el decreto salga en el Diario Oficial?", "a": "No necesariamente. Es recomendable hacer seguimiento activo del estado de tu solicitud y revisar el Diario Oficial periódicamente."}
  ]'::jsonb,
  ARRAY['nacionalizacion/requisitos', 'nacionalizacion/examen', 'nacionalizacion/doble-nacionalidad'],
  ARRAY[]::text[],
  '/nacionalizacion/paso-a-paso',
  TRUE
),

-- 4. doble-nacionalidad
(
  'nacionalizacion/doble-nacionalidad',
  'nacionalizacion',
  'nacionalizacion',
  'cluster',
  'Doble Nacionalidad en Chile 2025: ¿Pierdo mi Pasaporte Anterior?',
  'Doble nacionalidad en Chile: qué dice la ley',
  '¿Chile permite la doble nacionalidad? ¿Perderás tu pasaporte venezolano, colombiano o peruano al naturalizarte? Todo lo que necesitas saber.',
  'doble nacionalidad Chile',
  $content$<h2>¿Chile permite la doble nacionalidad?</h2>
<p><strong>Sí.</strong> Chile no exige que renuncies a tu nacionalidad de origen para naturalizarte chileno. Puedes ser ciudadano de dos o más países simultáneamente, siempre que tu país de origen también lo permita.</p>

<h2>¿Qué pasa con mi nacionalidad original?</h2>
<p>Chile no puede quitarte tu nacionalidad de origen — eso depende exclusivamente de la ley de tu país. Algunos países como Venezuela, Colombia y Perú permiten la doble nacionalidad. Otros, como Ecuador en ciertos contextos, tienen restricciones. <strong>Consulta tu consulado antes de naturalizarte.</strong></p>

<h2>Situación por país de origen</h2>
<ul>
  <li><strong>Venezuela:</strong> permite la doble nacionalidad. Puedes naturalizarte en Chile sin perder la venezolana.</li>
  <li><strong>Colombia:</strong> permite la doble nacionalidad. Sin restricciones.</li>
  <li><strong>Perú:</strong> permite la doble nacionalidad.</li>
  <li><strong>Bolivia:</strong> permite la doble nacionalidad.</li>
  <li><strong>Argentina:</strong> permite la doble nacionalidad.</li>
  <li><strong>Haití:</strong> la ley haitiana es ambigua — consulta con el consulado.</li>
  <li><strong>República Dominicana:</strong> permite la doble nacionalidad.</li>
</ul>

<h2>Beneficios prácticos de la doble nacionalidad</h2>
<ul>
  <li>Puedes entrar a Chile con pasaporte chileno (sin registro migratorio).</li>
  <li>Accedes a derechos políticos plenos: votar en elecciones chilenas.</li>
  <li>Puedes postular a empleos públicos reservados para nacionales.</li>
  <li>Facilita visas a Europa, EE.UU. y otros países con mejor acuerdo para Chile.</li>
  <li>Tus hijos nacidos en Chile serán automáticamente chilenos.</li>
</ul>

<h2>¿Qué pasaporte presento en aduana?</h2>
<p>En Chile, presenta tu <strong>pasaporte o cédula chilena</strong>. Al entrar a tu país de origen, presenta el pasaporte de ese país. Esto evita problemas con las autoridades migratorias de cada nación.</p>$content$,
  'FAQPage',
  '[
    {"q": "¿Chile obliga a renunciar a la nacionalidad anterior?", "a": "No. Chile no exige renuncia a la nacionalidad de origen como condición para naturalizarse."},
    {"q": "¿Puedo votar en dos países?", "a": "Depende de las leyes de cada país. En Chile tendrás plenos derechos de voto. Si tu país de origen permite votar desde el extranjero con doble nacionalidad, también podrías votar allá."},
    {"q": "¿Mi hijo nacido en Chile tiene automáticamente la doble nacionalidad?", "a": "Los hijos de extranjeros nacidos en Chile son chilenos por nacimiento (ius soli). Si además heredan la nacionalidad de sus padres, tienen doble o múltiple nacionalidad."},
    {"q": "¿Necesito renovar ambos pasaportes?", "a": "Sí, cada pasaporte se renueva según las reglas del país que lo emitió. No son intercambiables."}
  ]'::jsonb,
  ARRAY['nacionalizacion/requisitos', 'nacionalizacion/perdida-nacionalidad-anterior', 'nacionalizacion/hijos-extranjeros'],
  ARRAY[]::text[],
  '/nacionalizacion/doble-nacionalidad',
  TRUE
),

-- 5. hijos-extranjeros
(
  'nacionalizacion/hijos-extranjeros',
  'nacionalizacion',
  'nacionalizacion',
  'cluster',
  'Hijos Extranjeros en Chile: Nacionalidad y Documentos 2025',
  'Hijos de extranjeros nacidos en Chile: ¿son chilenos?',
  'Tus hijos nacidos en Chile son chilenos por ley. Aprende cómo inscribirlos, obtener su cédula y si tienen derecho a la nacionalidad de tus padres también.',
  'hijos extranjeros nacidos Chile nacionalidad',
  $content$<h2>¿Los hijos de extranjeros nacidos en Chile son chilenos?</h2>
<p><strong>Sí, con una excepción.</strong> La Constitución chilena establece que son chilenos los nacidos en territorio chileno, salvo los hijos de extranjeros que se encuentren en Chile <em>en servicio de su Gobierno</em> (diplomáticos) y los hijos de extranjeros <em>transeúntes</em>.</p>

<h2>¿Qué significa "transeúnte"?</h2>
<p>La definición legal de transeúnte fue acotada por la <strong>Ley de Migración N°21.325 (2021)</strong>. Se considera transeúnte solo a quien tiene visa de turista o está de paso. Si tienes cualquier tipo de visa de residencia (temporal, definitiva, etc.) o tenías residencia legal al momento del parto, tu hijo <strong>no es considerado transeúnte</strong> y es chileno.</p>

<h2>Caso especial: hijos de padres con visa turista</h2>
<p>Si ambos padres tenían solo visa de turista al momento del nacimiento, el hijo no es automáticamente chileno. Sin embargo, puede solicitar la nacionalidad chilena una vez que cumpla 21 años y haya residido en Chile por al menos 3 años consecutivos.</p>

<h2>Cómo inscribir a tu hijo como chileno</h2>
<ol>
  <li>Ir al <strong>Registro Civil</strong> del hospital o del sector, dentro de los 60 días del parto.</li>
  <li>Presentar el certificado de nacido vivo del hospital.</li>
  <li>Cédula de identidad de ambos padres.</li>
  <li>El hijo queda inscrito como chileno en el Registro Civil.</li>
  <li>Solicitar el RUN (número de identificación) del menor.</li>
</ol>

<h2>¿Tu hijo heredará tu nacionalidad extranjera también?</h2>
<p>Depende de la ley de tu país de origen. Muchos países aplican el principio de <em>ius sanguinis</em> (derecho de sangre): si eres venezolano, colombiano, peruano, etc., tu hijo puede heredar tu nacionalidad aunque haya nacido en Chile. Consulta el consulado de tu país.</p>

<h2>Tener un hijo chileno reduce tu plazo de naturalización</h2>
<p>Si tienes un hijo chileno, el plazo mínimo de residencia para tu naturalización se reduce de 5 años a <strong>2 años</strong>. Ver: <a href="/nacionalizacion/requisitos">Requisitos de naturalización</a>.</p>$content$,
  'FAQPage',
  '[
    {"q": "Mi hijo nació en Chile pero yo tenía visa turista. ¿Es chileno?", "a": "Con la ley actual, si tenías solo visa de turista (no residencia), el hijo no es automáticamente chileno. Puede solicitarlo al cumplir 21 años con 3 años de residencia en Chile."},
    {"q": "¿Puedo inscribir a mi hijo después de 60 días?", "a": "Sí, pero el proceso es más complejo y puede requerir una investigación de partida de nacimiento. Es mejor hacerlo dentro del plazo ordinario."},
    {"q": "¿El RUT del hijo chileno es permanente?", "a": "Sí. El RUN/RUT chileno asignado al nacer es permanente y no cambia."},
    {"q": "¿Mi hijo chileno puede viajar con pasaporte chileno?", "a": "Sí. Una vez que solicites su pasaporte en el Registro Civil, puede viajar como ciudadano chileno."}
  ]'::jsonb,
  ARRAY['nacionalizacion/requisitos', 'nacionalizacion/doble-nacionalidad'],
  ARRAY[]::text[],
  '/nacionalizacion/hijos-extranjeros',
  TRUE
),

-- 6. perdida-nacionalidad-anterior
(
  'nacionalizacion/perdida-nacionalidad-anterior',
  'nacionalizacion',
  'nacionalizacion',
  'cluster',
  '¿Pierdo mi Nacionalidad al Naturalizarme en Chile? 2025',
  '¿Perderás tu nacionalidad original al naturalizarte en Chile?',
  'Descubre si perderás tu pasaporte venezolano, colombiano, peruano u otro al obtener la nacionalidad chilena. Respuesta por país de origen.',
  'perder nacionalidad naturalizarse Chile',
  $content$<h2>¿Chile me obliga a renunciar a mi nacionalidad?</h2>
<p><strong>No.</strong> La ley chilena no te exige renunciar a tu nacionalidad de origen. Sin embargo, la ley de <em>tu país de origen</em> puede tener sus propias reglas sobre qué pasa cuando te naturalizas en otro país.</p>

<h2>Regla general</h2>
<p>La mayoría de los países latinoamericanos permiten la doble o múltiple nacionalidad. Esto significa que al naturalizarte en Chile <strong>conservas tu pasaporte de origen</strong>. Sin embargo, siempre debes verificar la legislación actualizada de tu país.</p>

<h2>Países que conservan la nacionalidad</h2>
<ul>
  <li><strong>Venezuela:</strong> no se pierde la nacionalidad venezolana por naturalización en otro país.</li>
  <li><strong>Colombia:</strong> la Constitución colombiana protege la nacionalidad de origen. No se pierde.</li>
  <li><strong>Perú:</strong> desde 1995, la naturalización en otro país no implica pérdida de la nacionalidad peruana.</li>
  <li><strong>Bolivia:</strong> la Constitución de 2009 permite la doble nacionalidad.</li>
  <li><strong>Argentina:</strong> Argentina permite la doble nacionalidad por ley.</li>
  <li><strong>República Dominicana:</strong> permite la doble nacionalidad.</li>
  <li><strong>Ecuador:</strong> generalmente permitida, pero consulta el consulado.</li>
</ul>

<h2>Casos a consultar</h2>
<ul>
  <li><strong>Haití:</strong> la legislación haitiana sobre doble nacionalidad es ambigua. Consulta el consulado antes de naturalizarte.</li>
  <li><strong>China:</strong> China no reconoce la doble nacionalidad. Al naturalizarte en Chile, oficialmente pierdes la ciudadanía china.</li>
  <li><strong>Otros países:</strong> siempre verifica con el consulado de tu país en Chile.</li>
</ul>

<h2>Consecuencias prácticas de perder la nacionalidad de origen</h2>
<ul>
  <li>Tu pasaporte anterior pierde vigencia — deberás usar solo el chileno.</li>
  <li>Puedes perder derechos de propiedad, herencia o voto en tu país de origen.</li>
  <li>Para visitar tu país de origen, necesitarías visa si eres chileno y tu país exige visa a chilenos.</li>
</ul>

<h2>Recomendación práctica</h2>
<p>Antes de naturalizarte, agenda una cita en el <strong>consulado de tu país en Chile</strong> y pregunta explícitamente: <em>"¿Perderé mi nacionalidad si me naturalizo chileno?"</em>. Solicita la respuesta por escrito si es posible.</p>$content$,
  'FAQPage',
  '[
    {"q": "¿Debo avisar a mi consulado que me naturalizaré en Chile?", "a": "No es obligatorio avisarles, pero sí es recomendable consultarles antes para conocer las consecuencias según la ley de tu país."},
    {"q": "Si pierdo mi nacionalidad, ¿puedo recuperarla después?", "a": "Depende del país. Algunos permiten recuperar la nacionalidad mediante un trámite específico. Otros no. Consulta el consulado."},
    {"q": "Venezuela reconoce la doble nacionalidad, ¿pero puedo entrar a Venezuela con pasaporte chileno?", "a": "Técnicamente sí, aunque Venezuela puede exigir que los venezolanos entren con pasaporte venezolano. En la práctica, es más conveniente mantener ambos pasaportes vigentes."},
    {"q": "¿Puedo renunciar voluntariamente a mi nacionalidad de origen si quiero?", "a": "Depende del país. Algunos lo permiten mediante un trámite consular. Consulta el consulado de tu país."}
  ]'::jsonb,
  ARRAY['nacionalizacion/doble-nacionalidad', 'nacionalizacion/requisitos'],
  ARRAY[]::text[],
  '/nacionalizacion/perdida-nacionalidad-anterior',
  TRUE
);

COMMIT;
