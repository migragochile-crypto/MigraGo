-- ============================================================
-- MigraciónChile — Seed v14: clusters vivir-en-chile + nacionalizacion
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

-- ──────────────────────────────────────────────────────────
-- 1. CLUSTER: vivir-en-chile/arriendo-vivienda
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, schema_type, howto_steps, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'vivir-en-chile/arriendo-vivienda',
  'vivir-en-chile',
  'vivir-en-chile',
  'cluster',
  'Arrendar Vivienda en Chile como Extranjero 2026',
  'Cómo Arrendar una Vivienda en Chile como Extranjero: Guía Completa',
  'Guía para arrendar una vivienda en Chile como extranjero. Contrato de arriendo, garantía, derechos del arrendatario y qué hacer si el arrendador no cumple.',
  'arrendar vivienda chile extranjero contrato',
  $p1$
<p>Encontrar y arrendar una vivienda es uno de los primeros desafíos al llegar a Chile. Aunque algunos propietarios pueden ser reacios a arrendar a extranjeros sin historial local, la ley chilena protege a todos los arrendatarios por igual, independientemente de la nacionalidad.</p>

<h2>El contrato de arriendo</h2>
<p>El contrato de arriendo es el documento fundamental que protege tanto al arrendatario (quien arrienda) como al arrendador (dueño). En Chile:</p>
<ul>
  <li>No existe un formulario oficial obligatorio — el contrato puede redactarse libremente, aunque debe constar por escrito.</li>
  <li>Debe especificar el monto del arriendo, el plazo, las condiciones de pago y las obligaciones de ambas partes.</li>
  <li>Lo ideal es firmarlo ante notario para mayor seguridad jurídica, aunque no es obligatorio legalmente.</li>
  <li>Guarda siempre una copia del contrato firmado.</li>
</ul>

<h2>¿Qué es la garantía y cuánto es?</h2>
<p>La <strong>garantía</strong> (o depósito) es un monto que pagas al inicio del arriendo como respaldo ante posibles daños o impagos. En Chile:</p>
<ul>
  <li>El monto habitual es <strong>1 mes de arriendo</strong>, aunque puede ser mayor (2 meses en propiedades más costosas).</li>
  <li>La garantía debe devolverse al término del contrato si la propiedad está en buen estado, dentro del plazo establecido en el contrato (generalmente 30 días).</li>
  <li>El arrendador solo puede retener la garantía para cubrir daños reales a la propiedad, no el desgaste normal por uso.</li>
</ul>

<h2>Documentos que suelen pedir los arrendadores</h2>
<ul>
  <li>Cédula de identidad para extranjeros vigente (o pasaporte si la cédula está en trámite).</li>
  <li>Comprobante de ingresos — liquidaciones de sueldo, contrato de trabajo o declaración de renta.</li>
  <li>En algunos casos, aval o codeudor solidario (persona que responde si tú no pagas).</li>
  <li>Algunos arrendadores piden referencias de arriendos anteriores.</li>
</ul>
<p>Si aún no tienes cédula, algunos arrendadores aceptan el pasaporte más el comprobante de trámite de visa. La negativa por razón de nacionalidad no está justificada legalmente, aunque en la práctica puede ocurrir.</p>

<h2>Gastos comunes y servicios básicos</h2>
<ul>
  <li><strong>Gastos comunes:</strong> si el departamento está en un edificio con portería, ascensor u otras áreas comunes, se pagan mensualmente a la administración. Pueden ser desde $30.000 hasta $150.000 CLP según el edificio.</li>
  <li><strong>Agua (ESVAL/ESSBIO/Aguas Andinas según región):</strong> generalmente a nombre del arrendatario. Trámite de cambio de nombre en la empresa sanitaria.</li>
  <li><strong>Electricidad (Enel, CGE, etc.):</strong> idem — traslado a tu nombre en la empresa eléctrica.</li>
  <li><strong>Gas (MetroGas, Gasco, etc.):</strong> el contrato puede estar a nombre del arrendador; consulta en el contrato de arriendo.</li>
</ul>

<h2>Derechos del arrendatario</h2>
<p>La Ley 18.101 (Ley de Arriendo) protege al arrendatario. Puntos clave:</p>
<ul>
  <li><strong>Plazo para desahucio:</strong> si el contrato está vigente, el arrendador no puede pedirte que te vayas sin dar aviso con al menos 2 meses de anticipación (salvo incumplimiento tuyo).</li>
  <li><strong>Arrendatario moroso:</strong> el proceso judicial de desahucio tiene plazos — el arrendador no puede simplemente cambiarte la cerradura.</li>
  <li><strong>Mantenimiento:</strong> el arrendador está obligado a mantener la propiedad en condiciones habitables. Las reparaciones mayores son su responsabilidad.</li>
  <li><strong>Recibo de arriendo:</strong> tienes derecho a recibir un comprobante de cada pago. Guarda todos los recibos.</li>
</ul>

<h2>¿Qué hacer si el arrendador no devuelve la garantía?</h2>
<p>Si el arrendador retiene la garantía injustificadamente:</p>
<ol>
  <li>Notifícale por escrito (carta certificada o correo con acuse de recibo) solicitando la devolución.</li>
  <li>Si no responde en el plazo del contrato, puedes presentar una demanda en el Juzgado de Policía Local de tu comuna.</li>
  <li>El procedimiento es sencillo y no requiere abogado para montos bajos. Puedes pedir asesoría en la Corporación de Asistencia Judicial (CAJ) si necesitas ayuda.</li>
</ol>

<h2>Subsidio habitacional para migrantes</h2>
<p>Los extranjeros con Permanencia Definitiva pueden postular a subsidios habitacionales del Ministerio de Vivienda (MINVU), en igualdad de condiciones con los chilenos. Requieren estar inscrito en el Registro Social de Hogares. Los extranjeros con visa temporaria tienen acceso más limitado — verifica los requisitos vigentes en el sitio del MINVU.</p>
  $p1$,
  'HowTo',
  '[
    {"name": "Buscar propiedades y seleccionar una", "text": "Usa portales como Portal Inmobiliario, Yapo o Mercado Libre para buscar. Filtra por precio, comuna y tipo. Visita personalmente antes de comprometerte."},
    {"name": "Revisar el contrato antes de firmar", "text": "Lee el contrato completo. Verifica el monto, plazo, condiciones de garantía, política de mascotas y qué incluye el precio (¿gastos comunes? ¿estacionamiento?). Si hay cláusulas que no entiendes, consulta antes de firmar."},
    {"name": "Registrar el estado de la propiedad al entrar", "text": "Toma fotos y video de cada habitación al momento de recibir las llaves. Documenta cualquier daño preexistente. Esto te protege al devolver la propiedad."},
    {"name": "Firmar el contrato y pagar garantía", "text": "Firma en dos ejemplares. Exige recibo de la garantía pagada. Idealmente firma ante notario para mayor validez."},
    {"name": "Trasladar servicios básicos a tu nombre", "text": "Contacta las empresas de agua, electricidad y gas para cambiar el titular del contrato a tu nombre. Necesitarás cédula de identidad y el contrato de arriendo."},
    {"name": "Guardar recibos de arriendo mensualmente", "text": "Exige comprobante de cada pago de arriendo. Guárdalos durante todo el período y hasta al menos 1 año después de terminar el contrato."}
  ]'::jsonb,
  '[
    {
      "question": "¿Me pueden rechazar un arriendo por ser extranjero?",
      "answer": "Legalmente no. La discriminación por nacionalidad en el arriendo no está permitida. En la práctica puede ocurrir, pero tienes opciones: buscar en portales donde el arrendador no sabe tu nacionalidad de antemano, o presentar referencias sólidas de ingresos para generar confianza."
    },
    {
      "question": "¿Puedo arrendar sin cédula de identidad para extranjeros?",
      "answer": "Algunos arrendadores aceptan pasaporte más comprobante de trámite de visa. No hay ley que impida arrendar sin cédula, pero cada arrendador decide. Con cédula es mucho más fácil. Si estás en trámite, explica tu situación y ofrece referencias laborales o de ingresos."
    },
    {
      "question": "¿Qué pasa si el arrendador quiere subir el precio antes de que termine el contrato?",
      "answer": "Si tienes contrato vigente con precio fijo, el arrendador no puede aumentarlo unilateralmente durante el plazo. El alza solo aplica al renovar o al vencimiento del contrato. Cualquier cambio debe ser acordado por escrito y firmado."
    },
    {
      "question": "¿Cuánto tiempo de aviso debo dar si quiero irme antes del fin del contrato?",
      "answer": "Depende de lo que diga el contrato. Si no lo especifica, la Ley 18.101 establece que debes avisar con al menos 2 meses de anticipación para contratos de plazo indefinido. Si te vas sin aviso, puedes perder la garantía o deber esos meses."
    }
  ]'::jsonb,
  ARRAY[
    'vivir-en-chile',
    'vivir-en-chile/rut-extranjero',
    'vivir-en-chile/cuenta-bancaria',
    'vivir-en-chile/trabajo-contrato',
    'permanencia-definitiva/beneficios'
  ]::TEXT[],
  6,
  TRUE,
  NOW()
);

-- ──────────────────────────────────────────────────────────
-- 2. CLUSTER: vivir-en-chile/pension-afp
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'vivir-en-chile/pension-afp',
  'vivir-en-chile',
  'vivir-en-chile',
  'cluster',
  'AFP en Chile para Extranjeros: Pensión y Cotizaciones 2026',
  'Cómo Funciona la AFP en Chile para Extranjeros: Cotizaciones y Pensión',
  'Guía sobre el sistema de AFP en Chile para extranjeros. Cómo cotizar, qué pasa con tus fondos si te vas y si puedes recibir pensión como migrante.',
  'afp chile extranjero pension cotizaciones',
  $p2$
<p>El sistema de <strong>AFP (Administradoras de Fondos de Pensiones)</strong> es el pilar del ahorro previsional en Chile. Si trabajas con contrato, cotizar en una AFP es obligatorio y automático — el empleador descuenta el porcentaje y lo deposita en tu cuenta individual cada mes. Esta guía explica cómo funciona para los extranjeros.</p>

<h2>¿Qué es una AFP y cómo funciona?</h2>
<p>Las AFP son empresas privadas que administran tu ahorro para la jubilación. A diferencia de otros países donde hay un sistema de reparto (los activos financian a los jubilados), Chile tiene un sistema de <strong>capitalización individual</strong>: cada trabajador tiene su propia cuenta y el dinero acumulado es suyo.</p>
<p>Existen varias AFP en Chile (Habitat, Provida, Capital, Cuprum, Modelo, PlanVital, Uno). Puedes elegir y cambiar de AFP. La diferencia entre ellas está principalmente en la <strong>comisión cobrada</strong> y el <strong>rendimiento de los fondos</strong>.</p>

<h2>¿Cuánto se cotiza?</h2>
<p>La cotización obligatoria para pensión es de aproximadamente el <strong>10% del sueldo bruto</strong> mensual, más la comisión de la AFP (varía entre 0,58% y 1,45% según la AFP). El empleador descuenta este monto de tu sueldo y lo deposita directamente en tu cuenta AFP.</p>
<p>Adicionalmente existe el <strong>Seguro de Invalidez y Sobrevivencia (SIS)</strong>, que cubre en caso de fallecimiento o invalidez — su costo es compartido entre empleador y trabajador.</p>

<h2>Los multifondos: A, B, C, D, E</h2>
<p>Chile tiene 5 fondos con diferentes perfiles de riesgo-rentabilidad:</p>
<ul>
  <li><strong>Fondo A (más riesgoso):</strong> mayor proporción en renta variable (acciones). Recomendado para personas jóvenes con horizonte de inversión largo.</li>
  <li><strong>Fondo B:</strong> perfil moderado-agresivo.</li>
  <li><strong>Fondo C:</strong> perfil moderado. Es el fondo por defecto si no eliges.</li>
  <li><strong>Fondo D:</strong> perfil conservador.</li>
  <li><strong>Fondo E (menos riesgoso):</strong> mayor proporción en renta fija. Recomendado para personas cerca de la jubilación.</li>
</ul>
<p>Puedes elegir el fondo o distribuir tu saldo entre dos fondos. Puedes cambiar de fondo sin costo.</p>

<h2>¿Qué pasa con mis cotizaciones AFP si me voy de Chile?</h2>
<p>Esta es la pregunta más frecuente de los migrantes. Las opciones dependen de tu situación:</p>
<ul>
  <li><strong>Si tienes Permanencia Definitiva o ciudadanía chilena:</strong> los fondos quedan en tu cuenta AFP hasta la jubilación, incluso si vives en el extranjero. Puedes recibir la pensión desde el exterior.</li>
  <li><strong>Si eres extranjero sin Permanencia Definitiva y te vas definitivamente de Chile:</strong> puedes solicitar la <strong>devolución de tus cotizaciones</strong> bajo la figura del "retiro por cambio de residencia". Debes acreditar que te radicaste en otro país y que no tienes intención de regresar.</li>
  <li><strong>Convenios internacionales:</strong> Chile tiene convenios de seguridad social con varios países (Iberoamérica, Alemania, Suecia, Canadá, etc.) que permiten acumular períodos cotizados en ambos países para acceder a pensión. Consulta si tu país tiene convenio.</li>
</ul>

<h2>¿Cuándo puedo jubilar?</h2>
<p>La edad legal de jubilación en Chile es:</p>
<ul>
  <li><strong>Hombres:</strong> 65 años.</li>
  <li><strong>Mujeres:</strong> 60 años.</li>
</ul>
<p>Para acceder a pensión AFP no existe un mínimo de años cotizados — puedes jubilar con lo que hayas acumulado. Sin embargo, el monto de pensión depende del total acumulado. Si el monto es muy bajo, existen mecanismos de complemento (Pensión Garantizada Universal — PGU) que el Estado puede otorgar.</p>

<h2>Pensión Garantizada Universal (PGU) para migrantes</h2>
<p>La PGU es una pensión básica que el Estado entrega a adultos mayores de 65 años con ingresos bajos. Los extranjeros pueden acceder a ella si:</p>
<ul>
  <li>Tienen 65 años o más.</li>
  <li>Han vivido en Chile de forma continua al menos <strong>20 años</strong> (entre los 20 y 65 años de edad).</li>
  <li>Tienen ingresos inferiores al umbral establecido.</li>
</ul>
<p>El requisito de residencia de 20 años limita el acceso para muchos migrantes recientes, pero si tienes años acumulados en Chile, la PGU puede ser un complemento importante a la pensión AFP.</p>

<h2>¿Cómo revisar tu saldo AFP?</h2>
<p>Puedes revisar tu saldo, cotizaciones y rentabilidad en el sitio web de tu AFP con tu RUT y clave. La Superintendencia de Pensiones también tiene herramientas de consulta en <a href="https://www.spensiones.cl" target="_blank" rel="noopener noreferrer">spensiones.cl</a>.</p>
  $p2$,
  '[
    {
      "question": "¿Puedo elegir no cotizar en AFP si no quiero quedarme en Chile?",
      "answer": "No. La cotización en AFP es obligatoria para todos los trabajadores dependientes en Chile, sin importar la nacionalidad o los planes futuros. Si trabajas con contrato, la cotización se descuenta automáticamente. La única excepción son los trabajadores con ciertas visas diplomáticas."
    },
    {
      "question": "¿Qué pasa si mi empleador no deposita mis cotizaciones AFP?",
      "answer": "Es una infracción grave. Puedes verificar si tus cotizaciones están siendo depositadas en el sitio web de tu AFP. Si no aparecen, tienes derecho a exigirlas y denunciar al empleador ante la Superintendencia de Pensiones y la Dirección del Trabajo."
    },
    {
      "question": "¿Puedo retirar mis fondos AFP si me quedo en Chile pero cambio de trabajo?",
      "answer": "No. Los fondos AFP no se pueden retirar anticipadamente en Chile (salvo el retiro por cambio de residencia para extranjeros que se van definitivamente, o en casos excepcionales habilitados por ley como ocurrió en 2020-2021). Al cambiar de trabajo, los fondos se mantienen en tu misma AFP."
    },
    {
      "question": "¿Cuál AFP es mejor para mí?",
      "answer": "No hay una AFP universalmente mejor. Compara comisiones (menor es mejor) y rentabilidad histórica de los fondos (mayor es mejor). La Superintendencia de Pensiones publica comparativas actualizadas. En términos generales, AFP Modelo y AFP Uno suelen tener comisiones más bajas."
    }
  ]'::jsonb,
  ARRAY[
    'vivir-en-chile',
    'vivir-en-chile/trabajo-contrato',
    'vivir-en-chile/sistema-salud',
    'permanencia-definitiva/beneficios',
    'nacionalizacion'
  ]::TEXT[],
  6,
  TRUE,
  NOW()
);

-- ──────────────────────────────────────────────────────────
-- 3. CLUSTER: nacionalizacion/proceso-naturalizacion
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, schema_type, howto_steps, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'nacionalizacion/proceso-naturalizacion',
  'nacionalizacion',
  'nacionalizacion',
  'cluster',
  'Proceso de Naturalización en Chile: Paso a Paso 2026',
  'Cómo Obtener la Nacionalidad Chilena por Naturalización: Proceso Completo',
  'Guía completa del proceso de naturalización en Chile. Requisitos, documentos, dónde presentar la solicitud, tiempos de espera y qué pasa después.',
  'proceso naturalizacion chile paso a paso',
  $p3$
<p>La naturalización es la vía por la que un extranjero adulto adquiere la nacionalidad chilena. El proceso se tramita ante el <strong>Ministerio del Interior y Seguridad Pública</strong> (Departamento de Extranjería y Migración) y puede tomar entre 1 y 3 años. Esta guía detalla cada etapa.</p>

<h2>Requisitos para iniciar el proceso</h2>
<p>Para solicitar la naturalización debes cumplir:</p>
<ul>
  <li><strong>Residencia continua en Chile:</strong> al menos <strong>5 años</strong> con residencia legal (visa temporaria + Permanencia Definitiva). El período debe ser ininterrumpido — ausencias prolongadas pueden interrumpir el cómputo.</li>
  <li><strong>Permanencia Definitiva vigente:</strong> debes tener PD al momento de solicitar.</li>
  <li><strong>Mayoría de edad:</strong> 18 años cumplidos.</li>
  <li><strong>Buena conducta:</strong> sin antecedentes penales en Chile ni en el extranjero.</li>
  <li><strong>Medios de subsistencia lícitos:</strong> trabajo, negocio, pensión u otro sustento comprobable.</li>
  <li><strong>No estar procesado penalmente:</strong> sin causas penales pendientes en Chile.</li>
</ul>
<p>Existen vías con menores requisitos de residencia para cónyuge/conviviente de chileno (3 años) y para padre/madre de hijo chileno nacido en Chile.</p>

<h2>¿Qué se evalúa?</h2>
<p>El Ministerio del Interior evalúa discrecionalmente la solicitud. No es un proceso automático: aunque cumplas todos los requisitos formales, el Presidente de la República tiene la atribución de otorgar o denegar la naturalización. En la práctica, las solicitudes de quienes cumplen los requisitos y no tienen antecedentes complejos se aprueban en la mayoría de los casos.</p>

<h2>Documentos requeridos</h2>
<ul>
  <li>Solicitud formal (formulario disponible en el portal del Ministerio del Interior).</li>
  <li>Pasaporte vigente.</li>
  <li>Cédula de identidad para extranjeros con Permanencia Definitiva.</li>
  <li>Certificado de antecedentes penales de Chile (SRCeI, vigencia 30 días).</li>
  <li>Certificado de antecedentes penales del país de origen (apostillado, vigencia 90 días).</li>
  <li>Certificado de situación migratoria del SERMIG (acredita el tiempo de residencia legal).</li>
  <li>Comprobante de residencia en Chile (contrato de arriendo, certificado de residencia municipal).</li>
  <li>Comprobante de actividad lícita (contrato de trabajo, liquidaciones, inicio de actividades SII).</li>
  <li>Fotografías tipo carnet.</li>
</ul>

<h2>¿Dónde se presenta la solicitud?</h2>
<p>La solicitud se presenta en el <strong>Departamento de Extranjería y Migración del Ministerio del Interior</strong>, ubicado en Santiago. También puede presentarse en las Gobernaciones Provinciales o Intendencias Regionales según la región donde residas. Verifica el punto de atención vigente en el sitio del Ministerio del Interior.</p>

<h2>Tiempos de resolución</h2>
<p>El proceso de naturalización en Chile es históricamente lento:</p>
<ul>
  <li><strong>Plazo legal:</strong> no existe un plazo máximo legal establecido.</li>
  <li><strong>Tiempos reales observados:</strong> entre <strong>1 y 3 años</strong> desde la presentación de la solicitud completa.</li>
  <li>Las solicitudes por vía de cónyuge de chileno suelen resolverse más rápido que las por vía general.</li>
</ul>

<h2>¿Qué pasa durante el proceso?</h2>
<p>Mientras tramitas la naturalización:</p>
<ul>
  <li>Mantienes tu Permanencia Definitiva — sigues viviendo y trabajando con normalidad.</li>
  <li>No existe un sistema de consulta online como en el SERMIG — el seguimiento es más difícil.</li>
  <li>Puedes preguntar el estado de tu solicitud directamente en el Departamento de Extranjería.</li>
</ul>

<h2>Notificación y ceremonia de jura</h2>
<p>Cuando la naturalización es aprobada, recibes notificación y debes:</p>
<ol>
  <li>Presentarte en el Ministerio del Interior en la fecha indicada.</li>
  <li>Prestar <strong>juramento de fidelidad a Chile</strong> ante autoridad.</li>
  <li>Recibir el <strong>Decreto de Naturalización</strong>.</li>
  <li>Con el Decreto, tramitar la <strong>cédula de identidad chilena</strong> en el Registro Civil.</li>
  <li>Inscribirte en los <strong>registros electorales</strong> (obligatorio para votar).</li>
</ol>
<p>A partir de la cédula de identidad chilena, eres ciudadano de pleno derecho.</p>

<h2>Doble nacionalidad</h2>
<p>Chile permite la doble nacionalidad. Al naturalizarte, no pierdes automáticamente tu nacionalidad de origen (depende de la ley de tu país). Consulta con el consulado de tu país si la naturalización en Chile implica renuncia a tu nacionalidad original.</p>
  $p3$,
  'HowTo',
  '[
    {"name": "Verificar que cumples los requisitos", "text": "Confirma que tienes Permanencia Definitiva vigente, al menos 5 años de residencia legal continua, y no tienes antecedentes penales. Para vía de cónyuge de chileno el plazo es 3 años."},
    {"name": "Obtener certificado de situación migratoria del SERMIG", "text": "Solicítalo en el portal tramitesmigratorios.interior.gob.cl. Acredita el tiempo de residencia legal en Chile. Es uno de los documentos más importantes del proceso."},
    {"name": "Recopilar todos los documentos", "text": "Reúne pasaporte, cédula PD, certificados de antecedentes (Chile y país de origen apostillado), comprobante de residencia y actividad lícita, y fotografías."},
    {"name": "Presentar la solicitud en el Ministerio del Interior", "text": "Entrega la solicitud con todos los documentos en el Departamento de Extranjería de Santiago o en la Gobernación o Intendencia de tu región."},
    {"name": "Esperar la resolución (1–3 años)", "text": "El proceso es largo. Mantén vigentes tu PD y cédula durante todo el proceso. Puedes consultar el estado directamente en el Departamento de Extranjería."},
    {"name": "Prestar juramento y obtener cédula chilena", "text": "Al aprobarse, prestarás juramento de fidelidad a Chile y recibirás el Decreto de Naturalización. Luego tramita la cédula de identidad chilena en el Registro Civil."}
  ]'::jsonb,
  '[
    {
      "question": "¿El Ministerio puede rechazarme aunque cumpla todos los requisitos?",
      "answer": "Sí. La naturalización es una atribución discrecional del Presidente de la República. En la práctica, las solicitudes que cumplen los requisitos formales y no tienen antecedentes complejos se aprueban, pero no existe un derecho subjetivo a la naturalización como lo hay, por ejemplo, con la Permanencia Definitiva."
    },
    {
      "question": "¿Los años con visa temporaria cuentan para el plazo de 5 años?",
      "answer": "Sí. Los 5 años de residencia legal continua incluyen el tiempo con visa temporaria más el tiempo con Permanencia Definitiva. No necesitas 5 años solo con PD — el período se cuenta desde el inicio de tu residencia legal regular."
    },
    {
      "question": "¿Mis hijos nacidos en Chile son automáticamente chilenos?",
      "answer": "Sí. Los hijos nacidos en territorio chileno son chilenos por ius soli, independientemente de la nacionalidad de los padres (con la excepción de hijos de diplomáticos de paso). No necesitan naturalizarse."
    },
    {
      "question": "¿Perderé mi nacionalidad original al naturalizarme chileno?",
      "answer": "Chile permite doble nacionalidad y no exige renuncia a la nacionalidad de origen. Sin embargo, algunos países sí contemplan la pérdida automática de su nacionalidad al naturalizarse en otro. Verifica la ley de tu país de origen antes de naturalizarte."
    }
  ]'::jsonb,
  ARRAY[
    'nacionalizacion',
    'nacionalizacion/requisitos-nacionalidad',
    'permanencia-definitiva',
    'permanencia-definitiva/requisitos',
    'vivir-en-chile'
  ]::TEXT[],
  6,
  TRUE,
  NOW()
);

-- ──────────────────────────────────────────────────────────
-- 4. CLUSTER: nacionalizacion/doble-ciudadania
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'nacionalizacion/doble-ciudadania',
  'nacionalizacion',
  'nacionalizacion',
  'cluster',
  'Doble Ciudadanía en Chile: Chile + Tu País 2026',
  'Doble Ciudadanía Chile: Qué Es, Cómo Funciona y Si Tu País lo Permite',
  'Todo sobre la doble ciudadanía en Chile. Qué países permiten tenerla, cómo funciona legalmente y qué implicaciones tiene para venezolanos, colombianos, peruanos y otros.',
  'doble ciudadania chile',
  $p4$
<p>La <strong>doble ciudadanía</strong> (o doble nacionalidad) significa tener simultáneamente la ciudadanía de dos países. Chile permite la doble nacionalidad desde 1995 — al naturalizarte chileno, <strong>no pierdes automáticamente tu ciudadanía de origen</strong>. Sin embargo, lo que sucede con tu nacionalidad original depende de la ley de tu país, no de Chile.</p>

<h2>Postura de Chile frente a la doble nacionalidad</h2>
<p>Chile reconoce la doble (y múltiple) nacionalidad sin restricciones. El Decreto de Naturalización chileno no exige renunciar a ninguna otra ciudadanía. Una vez naturalizado, puedes usar ambos pasaportes según el país donde te encuentres.</p>

<h2>¿Qué dice tu país sobre la doble ciudadanía?</h2>
<p>La clave está en la ley de tu país de origen. La situación varía:</p>
<table>
  <thead>
    <tr><th>País</th><th>¿Permite doble ciudadanía con Chile?</th></tr>
  </thead>
  <tbody>
    <tr>
      <td>Venezuela</td>
      <td>Sí — Venezuela reconoce la doble nacionalidad. Al naturalizarte en Chile no pierdes la venezolana.</td>
    </tr>
    <tr>
      <td>Colombia</td>
      <td>Sí — Colombia permite doble ciudadanía. Puedes conservar la colombiana.</td>
    </tr>
    <tr>
      <td>Perú</td>
      <td>Sí — Perú reconoce la doble nacionalidad desde 1995.</td>
    </tr>
    <tr>
      <td>Bolivia</td>
      <td>Sí — Bolivia permite la doble nacionalidad.</td>
    </tr>
    <tr>
      <td>Ecuador</td>
      <td>Sí — Ecuador permite la doble ciudadanía.</td>
    </tr>
    <tr>
      <td>Argentina</td>
      <td>Sí — Argentina reconoce la doble ciudadanía.</td>
    </tr>
    <tr>
      <td>Haití</td>
      <td>Situación compleja — la Constitución haitiana históricamente restringía la doble ciudadanía. Verifica la situación legal actualizada.</td>
    </tr>
    <tr>
      <td>República Dominicana</td>
      <td>Sí — República Dominicana permite la doble ciudadanía.</td>
    </tr>
  </tbody>
</table>
<p><em>Esta información es referencial y puede cambiar. Consulta siempre con el consulado de tu país para confirmar la situación actual.</em></p>

<h2>Implicaciones prácticas de tener doble ciudadanía</h2>
<h3>Pasaportes y viajes</h3>
<p>Con doble ciudadanía puedes tener pasaporte de ambos países. En Chile usarás la cédula o pasaporte chileno. En tu país de origen, usarás el pasaporte de ese país. Al ingresar a cada país, usa el pasaporte de ese país — esto evita complicaciones con el servicio de inmigración local.</p>

<h3>Obligaciones militares</h3>
<p>En Chile, el servicio militar es voluntario para la mayoría de los civiles (solo se activa obligatoriamente en caso de emergencia nacional). Sin embargo, tu país de origen puede tener obligaciones militares que te apliquen. Verifica este punto con el consulado.</p>

<h3>Impuestos</h3>
<p>Chile no aplica impuestos a ciudadanos que viven en el extranjero por su sola ciudadanía. Algunos países (notablemente Estados Unidos) sí lo hacen. Para los países de la región, generalmente el impuesto aplica por residencia, no por ciudadanía — al vivir en Chile pagas impuestos en Chile.</p>

<h3>Derechos de voto</h3>
<p>Como ciudadano chileno naturalizado, tienes derecho (y obligación) a inscribirte en el registro electoral y votar en Chile. Dependiendo de tu país de origen, también podrías mantener derechos de voto allá — muchos países permiten el voto consular para ciudadanos en el exterior.</p>

<h2>¿Cómo se obtiene la ciudadanía chilena?</h2>
<p>Hay tres vías:</p>
<ul>
  <li><strong>Ius soli:</strong> nacimiento en territorio chileno (automático para hijos nacidos en Chile).</li>
  <li><strong>Ius sanguinis:</strong> hijo de padre o madre chilena, aunque haya nacido en el extranjero.</li>
  <li><strong>Naturalización:</strong> proceso formal ante el Ministerio del Interior para extranjeros adultos con residencia en Chile.</li>
</ul>
<p>Para la naturalización, el camino habitual es: visa temporaria → Permanencia Definitiva → naturalización. Más detalles en <a href="/nacionalizacion/proceso-naturalizacion">Proceso de Naturalización</a>.</p>

<h2>¿Vale la pena naturalizarse en Chile?</h2>
<p>La ciudadanía chilena ofrece ventajas concretas:</p>
<ul>
  <li>Pasaporte chileno con acceso sin visa a más de 170 países.</li>
  <li>Derecho a voto en Chile.</li>
  <li>Acceso a cargos públicos que requieren ciudadanía.</li>
  <li>Estabilidad migratoria permanente e irrevocable.</li>
  <li>Posibilidad de transmitir la ciudadanía chilena a hijos nacidos en el extranjero.</li>
</ul>
  $p4$,
  '[
    {
      "question": "¿Pierdo mi ciudadanía venezolana si me naturalizo chileno?",
      "answer": "No. Venezuela reconoce la doble nacionalidad desde la Constitución de 1999. Al naturalizarte en Chile conservas todos tus derechos como ciudadano venezolano. Podrás tener pasaportes de ambos países."
    },
    {
      "question": "¿Tengo que renunciar a mi ciudadanía de origen para naturalizarme en Chile?",
      "answer": "Chile no te pide renunciar a ninguna ciudadanía. El Decreto de Naturalización chileno no incluye ninguna cláusula de renuncia. Si pierdes tu ciudadanía de origen, es porque la ley de ese país así lo establece — no porque Chile lo exija."
    },
    {
      "question": "¿Mis hijos nacidos en Chile pueden tener doble ciudadanía?",
      "answer": "Sí. Los hijos nacidos en Chile son ciudadanos chilenos por nacimiento. Si también tienen derecho a la ciudadanía de tu país de origen (por ius sanguinis), pueden tener ambas. Regístralos en el consulado de tu país para obtener también esa ciudadanía si lo deseas."
    },
    {
      "question": "¿Con pasaporte chileno puedo viajar sin visa a más países?",
      "answer": "Generalmente sí. El pasaporte chileno tiene mayor poder de viaje que la mayoría de los pasaportes latinoamericanos, con acceso sin visa a países de la Unión Europea, Reino Unido, Japón, y muchos otros. Es una ventaja práctica significativa de la naturalización."
    }
  ]'::jsonb,
  ARRAY[
    'nacionalizacion',
    'nacionalizacion/requisitos-nacionalidad',
    'nacionalizacion/proceso-naturalizacion',
    'permanencia-definitiva',
    'permanencia-definitiva/beneficios'
  ]::TEXT[],
  5,
  TRUE,
  NOW()
);
