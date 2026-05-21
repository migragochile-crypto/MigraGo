-- ============================================================
-- MigraciónChile — Seed v12: clusters permanencia-definitiva + vivir-en-chile
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

-- ──────────────────────────────────────────────────────────
-- 1. CLUSTER: permanencia-definitiva/cuanto-demora
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'permanencia-definitiva/cuanto-demora',
  'permanencia-definitiva',
  'permanencia-definitiva',
  'cluster',
  'Cuánto Demora la Permanencia Definitiva en Chile 2026',
  'Cuánto Demora la Permanencia Definitiva en Chile: Tiempos Reales 2026',
  'Tiempos reales de tramitación de la Permanencia Definitiva en Chile en 2026. Cuánto demora el SERMIG, qué factores influyen y cómo consultar el estado.',
  'cuanto demora permanencia definitiva chile',
  $n1$
<p>La pregunta más frecuente entre quienes solicitan la Permanencia Definitiva en Chile es: <strong>¿cuánto tiempo tarda el SERMIG en resolver?</strong> La respuesta legal dice 30 días hábiles. La respuesta real, en 2025-2026, es bastante distinta.</p>

<h2>El plazo legal versus la realidad</h2>
<p>La Ley 21.325 establece que el SERMIG debe resolver las solicitudes de Permanencia Definitiva en <strong>30 días hábiles</strong>. En la práctica, este plazo no se cumple en la mayoría de los casos. Los tiempos reales observados en 2025-2026 son:</p>
<table>
  <thead>
    <tr><th>Situación</th><th>Tiempo real aproximado</th></tr>
  </thead>
  <tbody>
    <tr><td>Solicitud completa, sin observaciones, caso estándar</td><td>60–120 días hábiles (~3–6 meses)</td></tr>
    <tr><td>Solicitud con observaciones o documentación subsanada</td><td>90–180 días hábiles (~5–9 meses)</td></tr>
    <tr><td>Solicitud con antecedentes complejos (penales, múltiples visas anteriores)</td><td>120–240 días hábiles (~6–12 meses)</td></tr>
  </tbody>
</table>
<p>Estos rangos son referenciales. Los tiempos varían según la carga del SERMIG, la región y la completitud de los documentos presentados.</p>

<h2>¿Qué factores influyen en el tiempo de resolución?</h2>
<ul>
  <li><strong>Completitud de la documentación:</strong> una solicitud con todos los documentos en regla se procesa más rápido que una que requiere subsanación.</li>
  <li><strong>Carga del SERMIG:</strong> los meses de mayor demanda (enero–marzo y julio–agosto) tienden a tener tiempos más largos.</li>
  <li><strong>Complejidad del historial migratorio:</strong> múltiples visas anteriores, irregularidades pasadas o antecedentes penales requieren más tiempo de evaluación.</li>
  <li><strong>Región:</strong> algunas regiones tienen menor carga que la Región Metropolitana y pueden resolver más rápido.</li>
</ul>

<h2>¿Qué puedes hacer mientras esperas?</h2>
<p>El comprobante de solicitud activo te habilita para:</p>
<ul>
  <li>Permanecer en Chile legalmente.</li>
  <li>Trabajar con contrato o a honorarios.</li>
  <li>Renovar el RUT provisorio en el SII si es necesario.</li>
  <li>Acceder a atención en salud pública de urgencia.</li>
</ul>
<p>Lo que <strong>no puedes hacer</strong> con solo el comprobante de trámite: renovar la cédula de identidad para extranjeros (eso requiere la Permanencia Definitiva aprobada).</p>

<h2>Cómo consultar el estado de tu solicitud</h2>
<ol>
  <li>Ingresa a <a href="https://tramitesmigratorios.interior.gob.cl" target="_blank" rel="noopener noreferrer">tramitesmigratorios.interior.gob.cl</a>.</li>
  <li>Inicia sesión con tu cuenta.</li>
  <li>Ve a <strong>Mis trámites</strong> y busca la solicitud de Permanencia Definitiva.</li>
  <li>Los estados posibles son: <strong>En revisión, Con observaciones, Aprobado, Rechazado</strong>.</li>
</ol>
<p>Si aparece <strong>Con observaciones</strong>, el SERMIG detectó un problema con algún documento. Tienes un plazo (generalmente 10 días hábiles) para subsanar. No ignores esta notificación: si no respondes en plazo, la solicitud puede ser rechazada.</p>

<h2>¿Cuándo es razonable preocuparse?</h2>
<p>Si llevas más de <strong>8 meses</strong> desde la fecha de solicitud sin resolución y el estado sigue en "En revisión" sin observaciones, puedes:</p>
<ul>
  <li>Ir presencialmente a las oficinas del SERMIG de tu región y solicitar información sobre el estado.</li>
  <li>Presentar una solicitud formal de información invocando la <strong>Ley de Transparencia</strong> (Ley 20.285).</li>
  <li>En casos extremos (más de 1 año sin respuesta), consultar con un abogado migratorio sobre el silencio administrativo.</li>
</ul>

<h2>¿Qué pasa si mi visa temporaria vence mientras espero?</h2>
<p>Si tu visa temporaria vence mientras tienes la solicitud de Permanencia Definitiva activa, el comprobante de solicitud actúa como extensión implícita de tu permiso. No estás en situación irregular mientras el trámite esté vigente. Sin embargo, para renovar la cédula de identidad para extranjeros necesitarás la resolución aprobada.</p>
  $n1$,
  '[
    {
      "question": "¿Puedo exigir que el SERMIG resuelva en 30 días hábiles?",
      "answer": "Legalmente sí, pero en la práctica el mecanismo de exigencia (recurso por silencio administrativo) raramente acelera el proceso. La mayoría de los solicitantes esperan el tiempo real sin recurrir formalmente al silencio administrativo."
    },
    {
      "question": "¿Me avisan por correo cuando resuelven?",
      "answer": "Sí. El SERMIG envía notificación al correo registrado en tu cuenta del portal cuando hay un cambio en el estado. Asegúrate de que el correo sea el que usas actualmente y revisa la carpeta de spam regularmente."
    },
    {
      "question": "¿Puedo viajar fuera de Chile mientras espero la Permanencia Definitiva?",
      "answer": "Sí, puedes salir del país. Si tu visa temporaria sigue vigente, reingresas con ella. Si ya venció, reingresarías como turista (90 días). La solicitud de Permanencia Definitiva sigue activa mientras estás fuera, pero si reingresarás como turista puede haber complicaciones. Consulta con el SERMIG antes de viajar."
    },
    {
      "question": "¿Cuánto demora si tengo antecedentes penales menores?",
      "answer": "Los antecedentes penales menores (faltas, condenas cumplidas de baja gravedad) alargan el tiempo de evaluación pero no impiden necesariamente la aprobación. El SERMIG hace una evaluación de proporcionalidad. Estos casos pueden tomar entre 6 y 12 meses."
    }
  ]'::jsonb,
  ARRAY[
    'permanencia-definitiva',
    'permanencia-definitiva/requisitos',
    'permanencia-definitiva/beneficios',
    'autodenuncia/tiempos-reales',
    'problemas/recurso-administrativo'
  ]::TEXT[],
  4,
  TRUE,
  NOW()
);

-- ──────────────────────────────────────────────────────────
-- 2. CLUSTER: permanencia-definitiva/renovacion
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, schema_type, howto_steps, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'permanencia-definitiva/renovacion',
  'permanencia-definitiva',
  'permanencia-definitiva',
  'cluster',
  'Renovar Cédula de Permanencia Definitiva en Chile 2026',
  'Cómo Renovar la Cédula de Identidad con Permanencia Definitiva en Chile',
  'Cómo renovar la cédula de identidad para extranjeros con Permanencia Definitiva en Chile. Cuándo hacerlo, qué documentos necesitas y cuánto cuesta.',
  'renovar cedula permanencia definitiva chile',
  $n2$
<p>La <strong>Permanencia Definitiva no vence</strong>, pero la cédula de identidad para extranjeros que la acredita sí tiene fecha de caducidad: <strong>cada 5 años</strong>. Renovarla es un trámite sencillo que se hace en el Registro Civil, pero es importante no dejarlo vencer para evitar complicaciones con empleadores, bancos e instituciones.</p>

<h2>¿Qué vence y qué no?</h2>
<p>Es importante entender la diferencia:</p>
<ul>
  <li><strong>El permiso de Permanencia Definitiva:</strong> no vence. Una vez otorgado, es indefinido. No necesitas renovarlo ante el SERMIG.</li>
  <li><strong>La cédula de identidad para extranjeros:</strong> tiene una vigencia de 5 años y debe renovarse en el Registro Civil (SRCeI). Es el documento físico que certifica la permanencia definitiva.</li>
</ul>
<p>Si tu cédula vence pero no la renuevas, técnicamente sigues teniendo Permanencia Definitiva, pero el documento que lo acredita está vencido, lo que puede causar problemas prácticos en trámites bancarios, laborales y con el SII.</p>

<h2>¿Cuándo renovar?</h2>
<p>Puedes renovar la cédula desde los <strong>90 días antes</strong> del vencimiento. No existe penalidad por renovar antes, y es recomendable hacerlo con tiempo suficiente para evitar estar sin documento vigente.</p>
<p>Si tu cédula ya venció, también puedes renovarla, pero durante el período sin cédula vigente pueden surgir dificultades en algunos trámites.</p>

<h2>Documentos necesarios</h2>
<ul>
  <li><strong>Cédula de identidad para extranjeros vencida o próxima a vencer.</strong></li>
  <li><strong>Pasaporte vigente</strong> como documento de respaldo de identidad.</li>
  <li><strong>Comprobante de pago</strong> del arancel de renovación.</li>
</ul>
<p>No necesitas volver a presentar documentos migratorios ante el SERMIG. La renovación se hace directamente en el Registro Civil con tu cédula anterior y el pasaporte.</p>

<h2>¿Dónde renovar?</h2>
<p>En cualquier oficina del <strong>Servicio de Registro Civil e Identificación (SRCeI)</strong> en todo Chile. También puedes agendar hora por el portal del Registro Civil para evitar esperas.</p>

<h2>¿Cuánto cuesta?</h2>
<p>El arancel de la cédula de identidad para extranjeros varía según la vigencia solicitada. Para 5 años, el costo es aproximadamente <strong>$4.000 a $8.000 CLP</strong> (puede variar). Verifica el valor actualizado en el sitio del Registro Civil.</p>

<h2>¿Qué pasa con el RUT?</h2>
<p>Tu RUT no cambia al renovar la cédula. El número permanece el mismo durante toda tu vida en Chile. Solo se actualiza la fecha de vencimiento del documento físico.</p>
  $n2$,
  'HowTo',
  '[
    {"name": "Verificar la fecha de vencimiento de tu cédula", "text": "Revisa cuándo vence tu cédula de identidad para extranjeros. Puedes renovarla hasta 90 días antes del vencimiento."},
    {"name": "Agendar hora en el Registro Civil", "text": "Ingresa al portal del SRCeI (registrocivil.cl) y agenda una hora en la oficina más conveniente para ti, o preséntate directamente si hay atención sin hora previa."},
    {"name": "Ir con cédula anterior y pasaporte vigente", "text": "Lleva tu cédula vencida o próxima a vencer y tu pasaporte vigente como respaldo de identidad."},
    {"name": "Pagar el arancel", "text": "El pago se realiza en la oficina del Registro Civil. El monto es bajo (aproximadamente $4.000–$8.000 CLP para 5 años)."},
    {"name": "Toma de fotografía y huella", "text": "El Registro Civil tomará una nueva fotografía y huella dactilar para la cédula renovada."},
    {"name": "Retirar la cédula", "text": "La cédula se entrega en el momento o en un plazo breve según la oficina. Verifica el plazo al momento de la solicitud."}
  ]'::jsonb,
  '[
    {
      "question": "¿Necesito ir al SERMIG para renovar la cédula?",
      "answer": "No. La renovación de la cédula de identidad para extranjeros se hace directamente en el Registro Civil (SRCeI), sin ningún trámite ante el SERMIG. El SERMIG solo interviene en procesos de visa o permanencia, no en renovaciones de cédula."
    },
    {
      "question": "¿Qué pasa si perdí mi cédula de Permanencia Definitiva?",
      "answer": "Si perdiste la cédula, debes ir al Registro Civil para solicitar un duplicado. También puedes pedir un certificado de permanencia definitiva al SERMIG para acreditar tu situación ante instituciones mientras tramitas el duplicado."
    },
    {
      "question": "¿Puedo trabajar con la cédula vencida mientras la renuevo?",
      "answer": "Técnicamente sigues teniendo Permanencia Definitiva con la cédula vencida, pero muchos empleadores y bancos exigen el documento vigente. Es recomendable renovarla antes de que venza para evitar interrupciones."
    },
    {
      "question": "¿Mis hijos incluidos como carga también deben renovar?",
      "answer": "Sí. Cada persona tiene su propia cédula con su propia fecha de vencimiento. Los hijos incluidos como carga familiar también deben renovar sus cédulas cada 5 años en el Registro Civil."
    }
  ]'::jsonb,
  ARRAY[
    'permanencia-definitiva',
    'permanencia-definitiva/requisitos',
    'permanencia-definitiva/beneficios',
    'vivir-en-chile/rut-extranjero',
    'nacionalizacion'
  ]::TEXT[],
  4,
  TRUE,
  NOW()
);

-- ──────────────────────────────────────────────────────────
-- 3. CLUSTER: vivir-en-chile/sistema-salud
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'vivir-en-chile/sistema-salud',
  'vivir-en-chile',
  'vivir-en-chile',
  'cluster',
  'Sistema de Salud en Chile para Extranjeros: Fonasa e Isapre 2026',
  'Cómo Acceder al Sistema de Salud en Chile como Extranjero: Fonasa e Isapre',
  'Guía completa sobre el sistema de salud en Chile para extranjeros. Cómo afiliarse a Fonasa, diferencias con Isapre, qué cubre cada uno y cómo acceder sin cédula.',
  'sistema salud chile extranjero fonasa',
  $n3$
<p>Chile tiene un sistema de salud mixto: un pilar público (Fonasa) y uno privado (Isapres). Como extranjero, tienes acceso a ambos desde el momento en que inicias tu proceso de regularización, aunque el nivel de acceso varía según tu situación migratoria.</p>

<h2>Acceso según situación migratoria</h2>
<table>
  <thead>
    <tr><th>Situación</th><th>Acceso al sistema de salud</th></tr>
  </thead>
  <tbody>
    <tr>
      <td>Turista (permiso vigente)</td>
      <td>Solo urgencias en hospitales públicos. Sin afiliación a Fonasa.</td>
    </tr>
    <tr>
      <td>Solicitud de visa activa (comprobante de trámite)</td>
      <td>Urgencias en hospitales públicos. Acceso a atención primaria en muchos centros. Sin afiliación formal a Fonasa.</td>
    </tr>
    <tr>
      <td>Visa temporaria aprobada + cédula vigente</td>
      <td>Afiliación completa a Fonasa si cotizas. Acceso a toda la red pública. Posibilidad de contratar Isapre.</td>
    </tr>
    <tr>
      <td>Permanencia Definitiva</td>
      <td>Mismos derechos que un ciudadano chileno. Fonasa o Isapre según preferencia.</td>
    </tr>
  </tbody>
</table>

<h2>¿Qué es Fonasa?</h2>
<p>El <strong>Fondo Nacional de Salud (Fonasa)</strong> es el seguro público de salud de Chile. Es el más grande del país: cubre a más del 80% de la población. Si trabajas con contrato, tu empleador descuenta automáticamente el <strong>7% de tu sueldo bruto</strong> como cotización de salud y lo destina a Fonasa (salvo que hayas elegido una Isapre).</p>

<h3>Tramos de Fonasa</h3>
<p>Fonasa divide a sus beneficiarios en tramos según ingresos:</p>
<table>
  <thead>
    <tr><th>Tramo</th><th>Ingresos mensuales</th><th>Costo de atención</th></tr>
  </thead>
  <tbody>
    <tr><td>A</td><td>Sin ingresos / muy bajos</td><td>Gratuita (indigentes, carentes de recursos)</td></tr>
    <tr><td>B</td><td>Hasta ~$432.000 CLP</td><td>Gratuita</td></tr>
    <tr><td>C</td><td>~$432.000 a ~$600.000 CLP</td><td>10% del arancel</td></tr>
    <tr><td>D</td><td>Sobre ~$600.000 CLP</td><td>20% del arancel</td></tr>
  </tbody>
</table>
<p>Los montos de los tramos se actualizan periódicamente. Consulta el sitio de Fonasa para los valores vigentes.</p>

<h3>Modalidades de atención en Fonasa</h3>
<ul>
  <li><strong>Modalidad institucional:</strong> atención en hospitales, consultorios y centros de salud de la red pública. Más económica.</li>
  <li><strong>Modalidad de libre elección (MLE):</strong> atención en médicos y clínicas privadas que acepten Fonasa. Más cara pero con mayor libertad de elección.</li>
</ul>

<h2>¿Qué es una Isapre?</h2>
<p>Las <strong>Isapres</strong> son instituciones de salud previsional privadas. Ofrecen coberturas más amplias, tiempos de espera menores y acceso a clínicas privadas, a cambio de cotizaciones más altas que el 7% mínimo legal.</p>
<p>Contratar una Isapre puede convenir si tienes ingresos estables y valoras la rapidez de atención. Sin embargo, las Isapres pueden rechazar a personas con enfermedades preexistentes o cobrar cotizaciones diferenciadas. A partir de 2025, la reforma al sistema de salud ha introducido cambios importantes: verifica la situación actualizada antes de contratar.</p>

<h2>¿Cómo afiliarse a Fonasa?</h2>
<p>La afiliación a Fonasa ocurre de forma automática cuando:</p>
<ul>
  <li>Comienzas a trabajar con contrato y tu empleador realiza las cotizaciones.</li>
  <li>Te inscribes voluntariamente si trabajas a honorarios o no tienes ingresos (tramo A).</li>
</ul>
<p>Para afiliarte directamente, debes tener cédula de identidad para extranjeros vigente y presentarte en cualquier sucursal de Fonasa.</p>

<h2>Sistema de salud pública sin cédula</h2>
<p>Si aún no tienes cédula (estás en trámite de visa), tienes derecho a atención de urgencia en cualquier hospital público independientemente de tu situación migratoria. La Ley 21.325 garantiza este derecho explícitamente.</p>
<p>Para atención de urgencia, lleva tu pasaporte y el comprobante de solicitud de visa o certificado de autodenuncia. Los hospitales no pueden negarte atención de urgencia.</p>

<h2>Embarazo y atención materno-infantil</h2>
<p>Las mujeres embarazadas extranjeras tienen derecho a atención prenatal, parto y posparto en el sistema público independientemente de su situación migratoria. El Programa Chile Crece Contigo también está disponible para familias extranjeras desde el embarazo.</p>
  $n3$,
  '[
    {
      "question": "¿Puedo atenderme en Fonasa con el comprobante de trámite de visa?",
      "answer": "Para urgencias sí. Para atención programada (consultas, exámenes no urgentes), depende del centro de salud. Los consultorios de atención primaria generalmente atienden a personas en trámite de visa. La afiliación formal a Fonasa requiere cédula vigente."
    },
    {
      "question": "¿Qué pasa con mis cotizaciones de salud si cambio de empleador?",
      "answer": "Las cotizaciones de salud siguen a tu relación laboral. Si cambias de empleador, el nuevo empleador descuenta el 7% y lo destina a Fonasa o a la Isapre que hayas elegido. No pierdes la cobertura durante el proceso de cambio."
    },
    {
      "question": "¿Puedo inscribir a mis hijos en Fonasa?",
      "answer": "Sí. Los hijos menores de 18 años pueden inscribirse como cargas en tu Fonasa o Isapre. Necesitan cédula de identidad para extranjeros o pasaporte. Para menores nacidos en Chile de padres extranjeros, el proceso es similar."
    },
    {
      "question": "¿Fonasa cubre medicamentos?",
      "answer": "Fonasa cubre parcialmente el costo de medicamentos a través de su lista de prestaciones. Las farmacias populares comunales también ofrecen medicamentos a precios reducidos para afiliados a Fonasa. La cobertura no es total pero reduce significativamente el gasto."
    },
    {
      "question": "¿Puedo ir a urgencias sin documentos migratorios?",
      "answer": "Los hospitales públicos están obligados a atender urgencias sin importar la situación migratoria o la documentación. En la práctica, llevar el pasaporte facilita el proceso administrativo, pero no puede ser requisito para recibir atención de emergencia."
    }
  ]'::jsonb,
  ARRAY[
    'vivir-en-chile',
    'vivir-en-chile/rut-extranjero',
    'permanencia-definitiva/beneficios',
    'visa-temporaria',
    'autodenuncia'
  ]::TEXT[],
  6,
  TRUE,
  NOW()
);

-- ──────────────────────────────────────────────────────────
-- 4. CLUSTER: vivir-en-chile/cuenta-bancaria
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, schema_type, howto_steps, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'vivir-en-chile/cuenta-bancaria',
  'vivir-en-chile',
  'vivir-en-chile',
  'cluster',
  'Abrir Cuenta Bancaria en Chile como Extranjero 2026',
  'Cómo Abrir una Cuenta Bancaria en Chile como Extranjero: Requisitos y Opciones',
  'Guía completa para abrir cuenta bancaria en Chile como extranjero en 2026. Bancos tradicionales, fintechs, qué documentos necesitas y cuáles son las opciones sin cédula.',
  'abrir cuenta bancaria chile extranjero',
  $n4$
<p>Abrir una cuenta bancaria en Chile es uno de los primeros pasos prácticos para establecerse en el país. Sin cuenta bancaria es difícil recibir el sueldo formalmente, pagar el arriendo, acceder a servicios online o hacer transferencias. La buena noticia es que hay opciones para todos los niveles de documentación migratoria.</p>

<h2>¿Qué necesitas para abrir cuenta?</h2>
<p>Los requisitos varían según el tipo de institución:</p>
<table>
  <thead>
    <tr><th>Tipo de cuenta</th><th>Documentos requeridos</th><th>Disponible sin cédula</th></tr>
  </thead>
  <tbody>
    <tr>
      <td>Cuenta corriente (banco tradicional)</td>
      <td>Cédula de identidad para extranjeros vigente + acreditación de ingresos</td>
      <td>No</td>
    </tr>
    <tr>
      <td>Cuenta vista / RUT (BancoEstado)</td>
      <td>Cédula de identidad para extranjeros vigente</td>
      <td>No</td>
    </tr>
    <tr>
      <td>Cuenta digital fintech (MACH, Mercado Pago)</td>
      <td>Pasaporte + RUT provisorio (algunos) o solo cédula</td>
      <td>Parcialmente</td>
    </tr>
    <tr>
      <td>Prepago (Prepago Los Héroes, CajaVecina)</td>
      <td>Cédula de identidad para extranjeros</td>
      <td>No</td>
    </tr>
  </tbody>
</table>

<h2>Opciones mientras esperas la cédula</h2>
<p>Si aún no tienes cédula de identidad para extranjeros (estás en trámite de visa), las opciones son más limitadas pero existen:</p>
<ul>
  <li><strong>Mercado Pago:</strong> acepta pasaporte y permite recibir transferencias, pagar con código QR y usar tarjeta virtual. Es la opción más accesible sin cédula.</li>
  <li><strong>MACH (BCI):</strong> requiere cédula o RUT en algunos flujos, pero tiene opciones limitadas con pasaporte.</li>
  <li><strong>Transferencias internacionales:</strong> si recibes dinero del exterior, servicios como Remitly, Western Union o Wise no requieren cuenta bancaria chilena para recibir en efectivo.</li>
</ul>

<h2>La Cuenta RUT de BancoEstado: la opción más accesible</h2>
<p>La <strong>Cuenta RUT de BancoEstado</strong> es la cuenta bancaria más accesible del sistema chileno:</p>
<ul>
  <li>Sin costo de mantención.</li>
  <li>Permite recibir transferencias, pagar cuentas y usar tarjeta de débito.</li>
  <li>Se abre con la cédula de identidad para extranjeros (con RUT asignado).</li>
  <li>No requiere acreditación de ingresos ni historial crediticio.</li>
</ul>
<p>Es la primera cuenta que abren la mayoría de los migrantes apenas tienen la cédula. El proceso de apertura es rápido y puede hacerse en cualquier sucursal de BancoEstado o en algunos casos de forma online.</p>

<h2>Cuenta corriente en banco tradicional</h2>
<p>Para abrir una cuenta corriente en bancos como Santander, BCI, Banco de Chile o Scotiabank, generalmente se requiere:</p>
<ul>
  <li>Cédula de identidad para extranjeros vigente.</li>
  <li>Acreditación de ingresos (liquidaciones de sueldo, contratos, declaración de renta).</li>
  <li>En algunos casos, historial crediticio o tiempo mínimo en Chile.</li>
  <li>Algunos bancos piden que el empleador también opere con ellos.</li>
</ul>
<p>Las cuentas corrientes ofrecen más funcionalidades (chequera, línea de crédito, tarjeta de crédito asociada), pero son más difíciles de obtener para quienes acaban de llegar.</p>

<h2>¿Qué es el historial crediticio y cómo construirlo?</h2>
<p>El historial crediticio (también llamado "comportamiento en Dicom") registra si has pagado tus obligaciones a tiempo. Como recién llegado no tienes historial en Chile, lo que algunos bancos ven como riesgo. Para construirlo:</p>
<ul>
  <li>Empieza con la Cuenta RUT de BancoEstado.</li>
  <li>Paga el arriendo y los servicios puntualmente (algunos quedan registrados).</li>
  <li>Solicita una tarjeta de crédito de bajo cupo después de 6–12 meses con historial limpio.</li>
  <li>Evita aparecer en Dicom (registro de morosidades): paga siempre a tiempo.</li>
</ul>

<h2>Recibir el sueldo sin cuenta bancaria</h2>
<p>En Chile los empleadores están obligados a pagar el sueldo mediante depósito bancario si el trabajador tiene cuenta. Si no tienes cuenta, el empleador puede pagar en efectivo, aunque es menos común. Muchos empleadores prefieren transferencia, por lo que abrir la Cuenta RUT rápidamente facilita la relación laboral.</p>
  $n4$,
  'HowTo',
  '[
    {"name": "Obtener la cédula de identidad para extranjeros", "text": "La cédula es el requisito principal para la mayoría de las cuentas bancarias. Una vez que el SERMIG aprueba tu visa, ve al Registro Civil (SRCeI) para obtenerla."},
    {"name": "Abrir la Cuenta RUT de BancoEstado como primer paso", "text": "Es la cuenta más accesible: sin costo, sin requisito de ingresos. Lleva tu cédula de identidad para extranjeros a cualquier sucursal de BancoEstado."},
    {"name": "Usar Mercado Pago mientras tramitas la cédula", "text": "Si aún no tienes cédula, Mercado Pago acepta pasaporte en algunos flujos y permite recibir transferencias y pagar con código QR."},
    {"name": "Acumular historial crediticio", "text": "Paga tus obligaciones a tiempo durante 6–12 meses. Esto construye historial que te permitirá acceder a mejores productos bancarios."},
    {"name": "Solicitar cuenta corriente cuando tengas historial", "text": "Con 6–12 meses de historial limpio y liquidaciones de sueldo, puedes solicitar cuenta corriente en un banco tradicional con más funcionalidades."},
    {"name": "Agregar tarjeta de crédito cuando sea posible", "text": "Una tarjeta de crédito de bajo cupo usada responsablemente fortalece el historial y abre acceso a más servicios financieros."}
  ]'::jsonb,
  '[
    {
      "question": "¿Puedo abrir la Cuenta RUT de BancoEstado con el comprobante de trámite de visa?",
      "answer": "No. La Cuenta RUT requiere cédula de identidad para extranjeros vigente, no el comprobante de trámite. Debes esperar a que el SERMIG apruebe tu visa y luego obtener la cédula en el Registro Civil."
    },
    {
      "question": "¿Puedo recibir transferencias desde el extranjero en una cuenta chilena?",
      "answer": "Sí. Las cuentas bancarias chilenas pueden recibir transferencias internacionales (SWIFT). Sin embargo, tienen costos y pueden tardar varios días. Para envíos frecuentes desde el exterior, servicios como Wise o Remitly son más económicos."
    },
    {
      "question": "¿Qué es Dicom y cómo me afecta?",
      "answer": "Dicom es el registro de morosidades comerciales más conocido en Chile. Si no pagas una deuda y el acreedor te ingresa al sistema, quedas como moroso y los bancos pueden rechazarte créditos o cuentas. Para evitarlo, paga siempre a tiempo."
    },
    {
      "question": "¿Puedo tener cuenta bancaria en Chile y en mi país al mismo tiempo?",
      "answer": "Sí, no hay restricción para tener cuentas en múltiples países. De hecho, es una práctica común entre migrantes para facilitar el envío de remesas a familiares."
    },
    {
      "question": "¿Los bancos pueden negarse a abrirme cuenta por ser extranjero?",
      "answer": "Los bancos no pueden discriminar por nacionalidad, pero sí pueden rechazar por falta de historial crediticio, ingresos insuficientes o documentación incompleta. Si un banco rechaza, prueba con BancoEstado o fintechs que tienen criterios más flexibles."
    }
  ]'::jsonb,
  ARRAY[
    'vivir-en-chile',
    'vivir-en-chile/rut-extranjero',
    'permanencia-definitiva/beneficios',
    'visa-temporaria',
    'vivir-en-chile/sistema-salud'
  ]::TEXT[],
  5,
  TRUE,
  NOW()
);
