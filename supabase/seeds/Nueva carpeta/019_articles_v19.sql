-- ============================================================
-- MigraciónChile — Seed 019: 4 artículos nuevos
--   1. problemas/antecedentes-penales
--   2. vivir-en-chile/mascotas-importar
--   3. permanencia-definitiva/via-trabajo
--   4. venezuela/documentos-apostilla
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

-- ──────────────────────────────────────────────────────────
-- 1. problemas/antecedentes-penales
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'problemas/antecedentes-penales',
  'problemas',
  'problemas',
  'cluster',
  'Antecedentes Penales y Visas en Chile: Qué Cuenta y Cómo Afecta 2026',
  'Antecedentes Penales para Visa en Chile: Qué Debes Saber',
  'Cómo afectan los antecedentes penales a tu solicitud de visa en Chile. Qué documentos se exigen, qué delitos inhabilitan y qué hacer si tienes antecedentes.',
  'antecedentes penales visa chile',
  $w1$
<p>Uno de los requisitos habituales en las solicitudes de visa en Chile es presentar un <strong>certificado de antecedentes penales</strong> del país de origen, y en algunos trámites también el certificado del Registro Civil chileno si ya tienes residencia. Tener antecedentes no implica necesariamente el rechazo — el SERMIG evalúa cada caso.</p>

<h2>¿Qué documentos se exigen?</h2>
<ul>
  <li><strong>Certificado de antecedentes del país de origen:</strong> emitido por la autoridad competente de tu país (policía, ministerio de justicia o registro judicial, según el país). Debe estar apostillado o legalizado y generalmente no puede tener más de 90 días de antigüedad al momento de presentarlo.</li>
  <li><strong>Certificado de antecedentes chileno:</strong> si ya estás en Chile con residencia previa, el SERMIG puede solicitar el certificado del Registro Civil de Chile. Se obtiene en línea en <a href="https://www.registrocivil.cl" target="_blank" rel="noopener noreferrer">registrocivil.cl</a> de forma gratuita.</li>
</ul>

<h2>¿Qué antecedentes pueden causar el rechazo?</h2>
<p>El artículo 52 de la <strong>Ley 21.325</strong> establece causales de rechazo y expulsión. Entre los antecedentes que pueden inhabilitar una solicitud:</p>
<ul>
  <li>Condenas por tráfico de drogas, trata de personas, terrorismo o crímenes contra la humanidad.</li>
  <li>Condenas por delitos graves contra las personas (homicidio, lesiones graves, violación).</li>
  <li>Expulsiones previas de Chile o de otros países.</li>
  <li>Condenas vigentes o penas no cumplidas en el país de origen.</li>
</ul>
<p>El SERMIG tiene facultad discrecional para evaluar antecedentes que no estén en esta lista según la gravedad, el tiempo transcurrido y la rehabilitación demostrada.</p>

<h2>¿Qué antecedentes generalmente NO inhabilitan?</h2>
<ul>
  <li>Faltas leves (infracciones de tránsito, desórdenes menores) que no constituyen delito.</li>
  <li>Condenas antiguas ya cumplidas por delitos menores, especialmente si ha pasado más de 10 años.</li>
  <li>Detenciones sin condena firme.</li>
  <li>Antecedentes cancelados o suprimidos en el país de origen.</li>
</ul>
<p>En estos casos, adjuntar documentación explicativa (resolución judicial, certificado de cancelación de antecedentes, carta explicativa) mejora las posibilidades de aprobación.</p>

<h2>¿Cómo obtener el certificado de tu país?</h2>
<table>
  <thead><tr><th>País</th><th>Organismo</th><th>Nombre del certificado</th></tr></thead>
  <tbody>
    <tr><td>Venezuela</td><td>CICPC</td><td>Certificado de Antecedentes Penales</td></tr>
    <tr><td>Colombia</td><td>Policía Nacional</td><td>Certificado Judicial</td></tr>
    <tr><td>Perú</td><td>PNP / RENIEC</td><td>Certificado de Antecedentes Policiales</td></tr>
    <tr><td>Bolivia</td><td>FELCC</td><td>Certificado de Antecedentes Penales</td></tr>
    <tr><td>Argentina</td><td>Registro Nacional Reincidencia</td><td>Certificado de Antecedentes Penales</td></tr>
    <tr><td>Haití</td><td>Casier Judiciaire (Ministerio de Justicia)</td><td>Extrait du Casier Judiciaire</td></tr>
    <tr><td>Rep. Dominicana</td><td>PGR / Procuraduría</td><td>Certificado de no antecedentes penales</td></tr>
  </tbody>
</table>
<p>El certificado debe venir apostillado (si el país es parte de la Convención de La Haya) o con legalización consular chilena. Verifica los requisitos específicos según tu país en el sitio del SERMIG.</p>

<h2>¿Cuándo consultar a un abogado?</h2>
<ul>
  <li>Si tienes condenas recientes o por delitos graves.</li>
  <li>Si fuiste expulsado previamente de Chile u otro país.</li>
  <li>Si el SERMIG rechazó tu solicitud invocando antecedentes penales.</li>
</ul>
<p>La <strong>Corporación de Asistencia Judicial (CAJ)</strong> ofrece asesoría gratuita en materias migratorias para quienes no tienen recursos.</p>
  $w1$,
  '[
    {
      "question": "¿El SERMIG consulta directamente los registros penales de mi país?",
      "answer": "No directamente — el SERMIG no tiene acceso a bases de datos policiales extranjeras. Por eso exige que tú presentes el certificado oficial de tu país. La responsabilidad de entregarlo completo y verídico es tuya; presentar un certificado falso es causal de expulsión."
    },
    {
      "question": "¿Una multa de tránsito o infracción menor me puede afectar?",
      "answer": "Las infracciones de tránsito y faltas administrativas que no constituyen delito penal generalmente no afectan la solicitud de visa. Lo relevante son las condenas penales formales. Si tu país incluye estas infracciones en el certificado de antecedentes, adjunta una nota explicando su naturaleza."
    },
    {
      "question": "¿Puedo solicitar visa si cumplí mi condena hace varios años?",
      "answer": "En muchos casos sí. El SERMIG evalúa el tipo de delito, el tiempo transcurrido, la rehabilitación y la situación actual. Condenas antiguas por delitos menores, ya cumplidas, suelen no ser impedimento. Para condenas más graves, es recomendable contar con asesoría legal antes de presentar la solicitud."
    },
    {
      "question": "¿El certificado de antecedentes chileno es diferente al del país de origen?",
      "answer": "Sí. El certificado chileno (del Registro Civil) refleja solo los antecedentes registrados en Chile. El del país de origen refleja el historial en ese país. Para trámites migratorios, generalmente se pide el del país de origen. El chileno suele pedirse si ya tienes residencia previa en Chile o para otros trámites internos."
    }
  ]'::jsonb,
  ARRAY[
    'problemas',
    'problemas/rechazo-visa',
    'problemas/recurso-administrativo',
    'visa-temporaria',
    'autodenuncia'
  ]::TEXT[],
  6,
  TRUE,
  NOW()
)
ON CONFLICT (slug) DO NOTHING;

-- ──────────────────────────────────────────────────────────
-- 2. vivir-en-chile/mascotas-importar
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, schema_type, howto_steps, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'vivir-en-chile/mascotas-importar',
  'vivir-en-chile',
  'vivir-en-chile',
  'cluster',
  'Cómo Traer tu Mascota a Chile: Requisitos SAG 2026',
  'Importar Mascotas a Chile: Trámites SAG y Requisitos Paso a Paso',
  'Guía para traer perros, gatos y otras mascotas a Chile. Requisitos SAG, vacunas, microchip, certificado sanitario y qué hacer al llegar en 2026.',
  'traer mascota chile requisitos SAG perro gato',
  $w2$
<p>Chile es territorio libre de rabia terrestre (con excepción de murciélagos), lo que explica los controles sanitarios estrictos del <strong>SAG (Servicio Agrícola y Ganadero)</strong> para el ingreso de animales. Con la planificación correcta, traer a tu perro o gato es un proceso manejable.</p>

<h2>¿Quién controla el ingreso de mascotas?</h2>
<p>El SAG es la autoridad competente. Revisa los documentos en puertos, aeropuertos y pasos fronterizos habilitados. Si los documentos no están completos, la mascota puede ser retenida, sometida a cuarentena o devuelta al país de origen. Consulta siempre los requisitos actualizados en <a href="https://www.sag.gob.cl" target="_blank" rel="noopener noreferrer">sag.gob.cl</a> antes de viajar, ya que pueden cambiar según el país de origen.</p>

<h2>Requisitos generales para perros y gatos</h2>
<ul>
  <li><strong>Microchip ISO 11784/11785</strong> implantado antes o al momento de la vacunación antirrábica.</li>
  <li><strong>Vacuna antirrábica vigente:</strong> aplicada entre 30 días y 12 meses antes del viaje. Las mascotas menores de 3 meses no pueden viajar si no pueden vacunarse.</li>
  <li><strong>Certificado sanitario oficial</strong> emitido por un veterinario acreditado en el país de origen, firmado dentro de los 10 días previos al viaje. Debe indicar: estado de salud, vacunas, identificación del animal y datos del propietario.</li>
  <li><strong>Tratamiento antiparasitario</strong> (ectoparásitos y endoparásitos) según las exigencias para tu país de origen. Algunos países requieren aplicación de antiparasitario entre 24 y 120 horas antes del ingreso.</li>
</ul>

<h2>Requisitos según país de origen</h2>
<p>El SAG clasifica los países según su estatus sanitario respecto a enfermedades específicas. Los países limítrofes (Argentina, Bolivia, Perú) tienen condiciones similares pero pueden tener exigencias adicionales — revisa la tabla de requisitos en sag.gob.cl filtrando por tu país.</p>
<ul>
  <li><strong>Países con rabia enzoótica:</strong> pueden requerir prueba de titulación de anticuerpos antirrábicos (test FAVN o ELISA) realizada en laboratorio acreditado, lo que exige planificación con meses de anticipación.</li>
  <li><strong>Venezuela, Haití, República Dominicana:</strong> verificar si aplican requisitos adicionales por situación sanitaria — consultar sag.gob.cl.</li>
</ul>

<h2>Límite de mascotas</h2>
<p>Como turista o viajero, puedes ingresar hasta <strong>5 mascotas</strong> de compañía. Para más animales se aplican otras normativas de importación comercial.</p>

<h2>Al llegar a Chile</h2>
<p>Declara la mascota en el formulario SAG/Aduana. El funcionario del SAG revisará los documentos y puede realizar una inspección del animal. Si todo está en orden, el proceso toma 15–30 minutos. Guarda todos los documentos originales — los necesitarás para trámites veterinarios en Chile.</p>

<h2>Traslado en avión</h2>
<p>Cada aerolínea tiene sus propias políticas sobre mascotas en cabina vs. bodega. Confirma con la aerolínea con bastante anticipación ya que los cupos son limitados, y verifica si exigen documentos adicionales además de los del SAG.</p>
  $w2$,
  'HowTo',
  '[
    {"name": "Consultar requisitos específicos para tu país en sag.gob.cl", "text": "Entra a sag.gob.cl y busca los requisitos de importación de mascotas (perros/gatos) desde tu país de origen. Los requisitos varían — algunos países exigen prueba de titulación de anticuerpos que puede tardar meses."},
    {"name": "Aplicar microchip y vacuna antirrábica", "text": "Asegúrate de que tu mascota tenga microchip ISO implantado antes de la vacuna antirrábica. La vacuna debe aplicarse entre 30 días y 12 meses antes del viaje."},
    {"name": "Aplicar tratamiento antiparasitario", "text": "Aplica el tratamiento antiparasitario (pulgas, garrapatas, parásitos internos) en los plazos que indica el SAG para tu país. El veterinario debe anotarlo en el certificado sanitario."},
    {"name": "Obtener el certificado sanitario oficial", "text": "Dentro de los 10 días previos al viaje, lleva a tu mascota al veterinario autorizado para que emita el certificado sanitario oficial. Debe consignar todos los datos del animal, vacunas y tratamientos."},
    {"name": "Declarar la mascota al ingresar a Chile", "text": "Al llegar, completa el formulario de declaración SAG/Aduana marcando que traes animales. Dirígete al control SAG con todos los documentos originales (certificado, cartilla de vacunas, identificación del animal)."}
  ]'::jsonb,
  '[
    {
      "question": "¿Puede mi mascota ser retenida o devuelta si los documentos no están correctos?",
      "answer": "Sí. El SAG puede retener la mascota en cuarentena (a costo del propietario) o devolverla al país de origen si los documentos son incompletos, están vencidos o hay dudas sobre el estado sanitario. Verifica todo con anticipación para evitar esta situación."
    },
    {
      "question": "¿Con cuánta anticipación debo planificar el traslado?",
      "answer": "Mínimo 2–3 meses para países estándar: la vacuna antirrábica debe aplicarse al menos 30 días antes, y el certificado sanitario solo puede hacerse en los últimos 10 días. Si tu país requiere prueba de titulación de anticuerpos (test FAVN), necesitas 4–6 meses o más, ya que el análisis y la espera post-vacunación llevan tiempo."
    },
    {
      "question": "¿Aplican los mismos requisitos si ingreso por tierra que por avión?",
      "answer": "Los requisitos sanitarios del SAG son los mismos independientemente del medio de transporte. La diferencia es que en pasos terrestres puede haber menos personal SAG especializado — en algunos pasos menores, puede ser necesario ir a un paso habilitado específico. El aeropuerto de Santiago (AMB) siempre tiene control SAG para mascotas."
    },
    {
      "question": "¿Necesito trámites especiales si solo vengo de turista con mi mascota?",
      "answer": "Los requisitos del SAG aplican independientemente de si eres turista o residente. Lo que cambia es el trámite migratorio tuyo, no el de tu mascota. Si el país de origen de la mascota es el mismo que el tuyo, se aplican los mismos requisitos de importación."
    }
  ]'::jsonb,
  ARRAY[
    'vivir-en-chile',
    'vivir-en-chile/traer-familia',
    'visa-temporaria'
  ]::TEXT[],
  6,
  TRUE,
  NOW()
)
ON CONFLICT (slug) DO NOTHING;

-- ──────────────────────────────────────────────────────────
-- 3. permanencia-definitiva/via-trabajo
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'permanencia-definitiva/via-trabajo',
  'permanencia-definitiva',
  'permanencia-definitiva',
  'cluster',
  'Permanencia Definitiva por Trabajo en Chile: Requisitos y Documentos 2026',
  'Cómo Obtener la Permanencia Definitiva en Chile por Vía Laboral',
  'Requisitos para obtener la Permanencia Definitiva en Chile a través de trabajo. Documentos, plazos de residencia continua y cómo acreditar actividad laboral en 2026.',
  'permanencia definitiva trabajo chile requisitos',
  $w3$
<p>La mayoría de los migrantes obtiene la <strong>Permanencia Definitiva (PD)</strong> después de completar 2 años de residencia legal continua en Chile, período durante el cual deben acreditar una actividad lícita — en la mayoría de los casos, trabajo dependiente o independiente.</p>

<h2>¿Cuándo puedes solicitar la PD por vía laboral?</h2>
<p>Al cumplir <strong>2 años de residencia legal continua</strong> en Chile, contados desde la fecha de otorgamiento de tu primera visa temporaria (no desde que entraste como turista). El período debe ser continuo según la regla de ausencias del SERMIG — ver más abajo.</p>

<h2>Regla de continuidad de residencia</h2>
<p>La residencia se considera continua si:</p>
<ul>
  <li>No has estado fuera de Chile por más de <strong>90 días en un mismo viaje</strong>.</li>
  <li>El total de días fuera de Chile durante los 2 años no supera los <strong>180 días acumulados</strong>.</li>
</ul>
<p>Salidas por sobre estos límites pueden interrumpir el cómputo — el SERMIG analizará tu historial de entradas y salidas. Si tuviste ausencias prolongadas, consulta directamente con el SERMIG o un abogado migratorio antes de presentar la solicitud.</p>

<h2>Documentos requeridos</h2>
<h3>Para trabajadores dependientes (con contrato)</h3>
<ul>
  <li>Contratos de trabajo del período (o el contrato vigente con historial de empleadores).</li>
  <li>Certificados de cotizaciones AFP y de salud (Fonasa o Isapre) que cubran los 2 años. Se obtienen en la AFP y en la institución de salud.</li>
  <li>Últimas liquidaciones de sueldo (generalmente los últimos 3 meses).</li>
  <li>Carta del empleador actual indicando antigüedad y cargo (opcional pero ayuda).</li>
</ul>
<h3>Para trabajadores independientes (boletas de honorarios)</h3>
<ul>
  <li>Iniciación de actividades en el SII — certificado descargable desde <a href="https://www.sii.cl" target="_blank" rel="noopener noreferrer">sii.cl</a>.</li>
  <li>Boletas de honorarios electrónicas del período (o certificado SII de boletas emitidas).</li>
  <li>Declaración anual de impuestos (Formulario 22) de los años correspondientes si aplica.</li>
  <li>Certificado de cotizaciones en AFP si realizaste cotizaciones voluntarias.</li>
</ul>
<h3>Documentos generales (todos los solicitantes)</h3>
<ul>
  <li>Pasaporte vigente con páginas de sellos de entrada y salida.</li>
  <li>Cédula de identidad chilena vigente.</li>
  <li>Certificado de antecedentes del Registro Civil de Chile.</li>
  <li>Certificado de antecedentes del país de origen (apostillado, no mayor a 90 días).</li>
  <li>Fotografía actualizada según especificaciones SERMIG.</li>
</ul>

<h2>Proceso de solicitud</h2>
<p>La solicitud se realiza en <a href="https://tramitesmigratorios.interior.gob.cl" target="_blank" rel="noopener noreferrer">tramitesmigratorios.interior.gob.cl</a>:</p>
<ol>
  <li>Accede con tu cuenta del portal.</li>
  <li>Selecciona "Solicitar Permanencia Definitiva".</li>
  <li>Sube todos los documentos en formato PDF.</li>
  <li>Envía y guarda el número de solicitud.</li>
</ol>
<p>El plazo legal es 30 días hábiles, aunque en la práctica puede tomar 3–9 meses. Ver <a href="/permanencia-definitiva/cuanto-demora">¿Cuánto demora la PD?</a> para tiempos reales actualizados.</p>

<h2>Qué obtienes con la PD</h2>
<p>La Permanencia Definitiva es de duración <strong>indefinida</strong> — no necesitas renovarla. Sí debes renovar la <strong>cédula de identidad</strong> cada 5 años y mantener residencia efectiva en Chile (ausencias superiores a ciertos períodos pueden causar la pérdida de la PD). Ver <a href="/permanencia-definitiva/renovacion">Renovación de la cédula con PD</a>.</p>
  $w3$,
  '[
    {
      "question": "¿Los meses en que estuve sin trabajo interrumpen el camino a la PD?",
      "answer": "No necesariamente. Lo que la ley exige es residencia legal continua y una actividad lícita durante el período, no empleo ininterrumpido. Períodos breves sin trabajo (búsqueda de empleo, entre contratos) generalmente no son un problema si el resto del período está documentado. Lo importante es que no hayas estado en situación migratoria irregular."
    },
    {
      "question": "¿Qué pasa si cambié de empleador varias veces durante los 2 años?",
      "answer": "No es problema. El SERMIG evalúa el período completo. Debes presentar todos los contratos de trabajo y certificados de cotizaciones de cada empleador. Lo importante es que el historial sea coherente y no haya períodos prolongados sin actividad documentada."
    },
    {
      "question": "¿El tiempo que estuve como turista cuenta para los 2 años?",
      "answer": "No. El período de 2 años se cuenta desde que obtuviste tu primera visa temporaria, no desde que entraste como turista. El tiempo como turista no otorga residencia legal en el sentido que exige la PD."
    },
    {
      "question": "¿Puedo solicitar la PD si trabajo por cuenta propia y no tengo contrato?",
      "answer": "Sí. Los trabajadores independientes (honorarios, emprendedores) pueden acceder a la PD acreditando su actividad con iniciación de actividades en el SII, boletas emitidas y declaración de renta. La clave es tener un historial tributario documentado durante los 2 años."
    }
  ]'::jsonb,
  ARRAY[
    'permanencia-definitiva',
    'permanencia-definitiva/requisitos',
    'permanencia-definitiva/documentos',
    'permanencia-definitiva/cuanto-demora',
    'vivir-en-chile/trabajo-contrato'
  ]::TEXT[],
  7,
  TRUE,
  NOW()
)
ON CONFLICT (slug) DO NOTHING;

-- ──────────────────────────────────────────────────────────
-- 4. venezuela/documentos-apostilla
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'venezuela/documentos-apostilla',
  'venezuela',
  'venezuela',
  'cluster',
  'Apostilla de Documentos Venezolanos para Trámites en Chile 2026',
  'Cómo Apostillar o Legalizar Documentos Venezolanos para Visas en Chile',
  'Cómo legalizar documentos venezolanos para trámites migratorios en Chile. Apostilla en Venezuela, legalización consular y opciones cuando la apostilla es difícil de obtener.',
  'apostilla documentos venezolanos chile visa',
  $w4$
<p>Venezuela es parte de la Convención de La Haya sobre apostilla desde 1999, por lo que técnicamente los documentos venezolanos pueden apostillarse. Sin embargo, la situación institucional hace que obtener apostillas en Venezuela sea difícil y a veces imposible. Chile reconoce esta realidad y ha establecido mecanismos alternativos. Esta guía explica las opciones disponibles.</p>

<h2>¿Qué documentos se exigen habitualmente?</h2>
<ul>
  <li><strong>Acta de nacimiento</strong> — para acreditar identidad y, si aplica, filiación.</li>
  <li><strong>Certificado de antecedentes penales (CICPC)</strong> — emitido por el Cuerpo de Investigaciones Científicas, Penales y Criminalísticas.</li>
  <li><strong>Título universitario o certificado de estudios</strong> — si se requiere para la categoría de visa.</li>
  <li><strong>Acta de matrimonio</strong> — para trámites de reunificación familiar o visa por pareja.</li>
</ul>
<p>Los documentos venezolanos están en español, por lo que <strong>no requieren traducción</strong> para trámites en Chile.</p>

<h2>Opción 1: Apostilla en Venezuela (SAREN)</h2>
<p>El <strong>SAREN (Servicio Autónomo de Registros y Notarías)</strong> es el organismo que emite apostillas en Venezuela. El trámite puede realizarse en oficinas SAREN en distintas ciudades o, en algunos casos, a través de gestorías autorizadas.</p>
<ul>
  <li>El proceso puede ser lento (semanas o meses) y los costos varían.</li>
  <li>Si tienes familiares en Venezuela, pueden hacer el trámite con poder notarial.</li>
  <li>El SAREN tiene presencia en Caracas y otras ciudades principales.</li>
</ul>

<h2>Opción 2: Legalización consular chilena</h2>
<p>Si el documento ya está en Venezuela y obtener la apostilla SAREN es difícil, el <strong>Consulado de Chile en Venezuela</strong> puede autenticar el documento directamente. La firma consular es reconocida por el SERMIG como equivalente a la apostilla para ciudadanos venezolanos.</p>
<ul>
  <li>Requiere agendar cita en el consulado chileno (Caracas u otras ciudades con presencia consular).</li>
  <li>El consulado cobra derechos consulares por la autenticación.</li>
  <li>El documento autenticado tiene validez para trámites migratorios en Chile.</li>
</ul>

<h2>Opción 3: Declaración ante notario en Chile</h2>
<p>En casos donde la apostilla y la legalización consular son imposibles de obtener, el SERMIG puede aceptar una <strong>declaración jurada ante notario en Chile</strong> explicando la imposibilidad de legalización, adjunta a la copia del documento. Esta opción se usa como último recurso y no está garantizada para todos los casos.</p>
<p><strong>Importante:</strong> las políticas del SERMIG para ciudadanos venezolanos han variado con el tiempo. Antes de usar esta opción, verifica en <a href="https://www.serviciomigraciones.cl" target="_blank" rel="noopener noreferrer">serviciomigraciones.cl</a> las instrucciones vigentes o consulta directamente en las oficinas del SERMIG.</p>

<h2>Certificado de antecedentes CICPC</h2>
<p>El CICPC emite el certificado de antecedentes penales venezolano. Opciones de obtención:</p>
<ul>
  <li><strong>En Venezuela:</strong> presencialmente en oficinas CICPC o a través de gestorías.</li>
  <li><strong>Desde Chile:</strong> el trámite presencial en Venezuela es la vía principal. Organizaciones comunitarias venezolanas en Chile pueden orientar sobre gestorías de confianza.</li>
  <li>El certificado CICPC debe estar apostillado (SAREN) o autenticado por consulado chileno para ser válido ante el SERMIG.</li>
</ul>

<h2>Organizaciones de apoyo</h2>
<p>En Chile existen organizaciones que asesoran a ciudadanos venezolanos con sus trámites:</p>
<ul>
  <li><strong>ACNUR Chile</strong> — para personas en necesidad de protección internacional.</li>
  <li><strong>R4V (Plataforma de Coordinación para Refugiados y Migrantes de Venezuela)</strong> — directorio de organizaciones de apoyo en Chile.</li>
  <li><strong>Corporación de Asistencia Judicial (CAJ)</strong> — asesoría jurídica gratuita o de bajo costo.</li>
</ul>
  $w4$,
  '[
    {
      "question": "¿El SERMIG acepta documentos venezolanos sin apostilla?",
      "answer": "En algunos casos sí, bajo condiciones específicas que el SERMIG ha establecido para ciudadanos venezolanos reconociendo las dificultades institucionales del país. Sin embargo, las políticas cambian — verifica siempre en serviciomigraciones.cl o directamente en el SERMIG cuál es el procedimiento aceptado actualmente antes de presentar tu solicitud."
    },
    {
      "question": "¿Puedo presentar mi cédula venezolana vencida como documento de identidad?",
      "answer": "La cédula venezolana vencida puede ser aceptada como documento de identidad en algunos trámites migratorios en Chile, especialmente cuando la renovación en Venezuela es imposible. El SERMIG evalúa estos casos. El pasaporte venezolano vigente es siempre preferible. Si tu cédula está vencida, consulta directamente con el SERMIG sobre los documentos alternativos aceptados."
    },
    {
      "question": "¿Cómo obtengo el certificado CICPC desde Chile?",
      "answer": "El trámite presencial del CICPC debe hacerse en Venezuela. La alternativa más común desde Chile es contactar a un familiar en Venezuela para que tramite el certificado con poder notarial, o contratar una gestoría de confianza recomendada por la comunidad venezolana en Chile. Organizaciones como R4V pueden orientarte sobre gestorías verificadas."
    },
    {
      "question": "¿Las actas del Registro Civil venezolano son válidas en Chile?",
      "answer": "Sí, si están debidamente apostilladas (SAREN) o autenticadas por el Consulado de Chile en Venezuela. Las copias simples o sin legalización generalmente no son aceptadas para trámites formales ante el SERMIG, aunque existen procedimientos de excepción para ciudadanos venezolanos que deben verificarse directamente."
    }
  ]'::jsonb,
  ARRAY[
    'venezuela',
    'visa-temporaria',
    'problemas/antecedentes-penales',
    'autodenuncia',
    'vivir-en-chile/traer-familia'
  ]::TEXT[],
  7,
  TRUE,
  NOW()
)
ON CONFLICT (slug) DO NOTHING;

-- ──────────────────────────────────────────────────────────
-- Verificación
-- ──────────────────────────────────────────────────────────
SELECT slug, title, is_published
FROM articles
WHERE slug IN (
  'problemas/antecedentes-penales',
  'vivir-en-chile/mascotas-importar',
  'permanencia-definitiva/via-trabajo',
  'venezuela/documentos-apostilla'
)
ORDER BY slug;
