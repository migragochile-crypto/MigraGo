BEGIN;

INSERT INTO articles (slug, silo, parent_slug, type, title, h1, meta_description, keyword_primary, content, schema_type, faq_items, related_slugs, country_tags, canonical, is_published)
VALUES

-- 1. rut-extranjero
(
  'vivir-en-chile/rut-extranjero',
  'vivir-en-chile',
  'vivir-en-chile',
  'cluster',
  'RUT para Extranjeros en Chile 2025: Cómo Obtenerlo',
  'RUT para extranjeros: cómo obtenerlo en Chile',
  'Aprende cómo obtener el RUT si eres extranjero en Chile: requisitos, dónde tramitarlo, tiempos y diferencia entre RUT provisorio y definitivo.',
  'RUT extranjero Chile',
  $content$<h2>¿Qué es el RUT y para qué sirve?</h2>
<p>El <strong>RUT (Rol Único Tributario)</strong> es el número de identificación fiscal en Chile. Lo necesitas para trabajar legalmente, abrir una cuenta bancaria, firmar contratos, acceder al sistema de salud y prácticamente cualquier trámite en el país.</p>

<h2>Tipos de RUT para extranjeros</h2>
<ul>
  <li><strong>RUT provisorio:</strong> lo entrega el SII (Servicio de Impuestos Internos) a extranjeros que aún no tienen cédula de identidad. Sirve para trámites tributarios básicos pero no para todo.</li>
  <li><strong>RUT definitivo:</strong> se asigna automáticamente al obtener tu cédula de identidad de extranjero en el Registro Civil. Este es el que necesitas para la mayoría de trámites.</li>
</ul>

<h2>Cómo obtener el RUT definitivo</h2>
<p>El RUT definitivo se obtiene <strong>automáticamente</strong> al tramitar tu <strong>cédula de identidad de extranjero</strong> en el Registro Civil. No necesitas un trámite separado. Ver: <a href="/vivir-en-chile/cedula-extranjero">Cómo obtener tu cédula de extranjero</a>.</p>

<h2>Cómo obtener el RUT provisorio (SII)</h2>
<ol>
  <li>Ingresa al sitio web del <strong>SII (sii.cl)</strong>.</li>
  <li>Ve a "RUT e inicio de actividades" → "Obtener RUT".</li>
  <li>Selecciona "Persona natural sin cédula de identidad chilena".</li>
  <li>Ingresa tu pasaporte y datos personales.</li>
  <li>El RUT provisorio se asigna de inmediato en línea.</li>
</ol>

<h2>¿Qué puedo hacer con el RUT provisorio?</h2>
<ul>
  <li>Emitir boletas de honorarios.</li>
  <li>Iniciar actividades como trabajador independiente.</li>
  <li>Algunos trámites bancarios limitados.</li>
</ul>
<p>No reemplaza al RUT definitivo para todos los efectos (arriendo, algunos bancos, contrato de trabajo formal).</p>

<h2>¿Cambia el RUT al naturalizarme?</h2>
<p>No. El número de RUT es permanente. Al obtener la ciudadanía chilena, el mismo número queda asociado a tu nueva cédula chilena.</p>$content$,
  'FAQPage',
  '[
    {"q": "¿Puedo trabajar en Chile sin RUT?", "a": "No en la formalidad. Para tener contrato de trabajo, cotizar en AFP y Fonasa, y recibir sueldo por transferencia necesitas el RUT. Con visa de trabajo te dan el RUT al sacar la cédula."},
    {"q": "¿El RUT es lo mismo que el RUN?", "a": "Sí. RUT y RUN son el mismo número. RUN (Rol Único Nacional) es el término del Registro Civil; RUT (Rol Único Tributario) es el término del SII. El número es idéntico."},
    {"q": "¿Cuánto demora tener el RUT definitivo?", "a": "Depende del tiempo que tome tu cédula de extranjero. Una vez que el SERMIG aprueba tu residencia, el Registro Civil puede asignarte el RUT en el mismo acto de emisión de la cédula."},
    {"q": "¿Necesito RUT para arrendar una casa?", "a": "La mayoría de arrendadores y corredores de propiedades exigen RUT para firmar el contrato de arriendo. El RUT provisorio puede no ser aceptado por todos."}
  ]'::jsonb,
  ARRAY['vivir-en-chile/cedula-extranjero', 'vivir-en-chile/cuenta-bancaria', 'vivir-en-chile/afp-extranjero'],
  ARRAY[]::text[],
  '/vivir-en-chile/rut-extranjero',
  TRUE
),

-- 2. cedula-extranjero
(
  'vivir-en-chile/cedula-extranjero',
  'vivir-en-chile',
  'vivir-en-chile',
  'cluster',
  'Cédula de Identidad de Extranjero en Chile 2025: Trámite Completo',
  'Cómo obtener la cédula de identidad de extranjero en Chile',
  'Guía completa para obtener la cédula de identidad de extranjero en Chile: requisitos, dónde tramitarla, costo y tiempos de entrega.',
  'cédula identidad extranjero Chile',
  $content$<h2>¿Qué es la cédula de identidad de extranjero?</h2>
<p>Es el documento de identificación oficial para extranjeros con residencia legal en Chile. La emite el <strong>Registro Civil</strong> y es equivalente al carnet de identidad chileno. Incluye tu RUT permanente.</p>

<h2>¿Cuándo puedo solicitarla?</h2>
<p>Puedes tramitarla <strong>una vez que el SERMIG apruebe tu visa</strong> (Residencia Temporal o Definitiva) y te notifique. Con la notificación de aprobación ya puedes ir al Registro Civil.</p>

<h2>Requisitos</h2>
<ul>
  <li>Resolución de aprobación de visa emitida por el SERMIG (Servicio Nacional de Migraciones).</li>
  <li>Pasaporte vigente.</li>
  <li>Pagar el arancel de la cédula (varía según categoría — consulta el Registro Civil).</li>
</ul>

<h2>Proceso paso a paso</h2>
<ol>
  <li>Recibe la notificación de aprobación de visa del SERMIG (por correo o en el portal tramitesmigratorios.interior.gob.cl).</li>
  <li>Agenda hora en el Registro Civil en registrocivil.cl o presencialmente en la oficina más cercana.</li>
  <li>Asiste con tu pasaporte y la resolución de aprobación.</li>
  <li>Te toman fotografía y huella dactilar en el momento.</li>
  <li>Pagas el arancel correspondiente.</li>
  <li>Recibes un comprobante con fecha de retiro.</li>
  <li>Retiras la cédula en el Registro Civil (generalmente 7 a 15 días hábiles).</li>
</ol>

<h2>Vigencia de la cédula</h2>
<ul>
  <li><strong>Residencia Temporal:</strong> la cédula tiene la misma vigencia que tu visa (normalmente 1 o 2 años).</li>
  <li><strong>Residencia Definitiva:</strong> la cédula tiene vigencia de 5 años.</li>
</ul>

<h2>Cédula vencida</h2>
<p>Si tu cédula vence, debes renovarla. El proceso es el mismo que el de obtención inicial. Mientras esperas la renovación, el comprobante de solicitud puede funcionar como documento provisional.</p>$content$,
  'FAQPage',
  '[
    {"q": "¿Puedo usar el pasaporte en lugar de la cédula de extranjero?", "a": "Para algunos trámites sí, pero en la práctica muchas instituciones (bancos, isapres, empleadores) exigen la cédula chilena. Es importante tramitarla lo antes posible."},
    {"q": "¿Cuánto cuesta la cédula de extranjero?", "a": "El arancel varía según la categoría de visa. En 2025 ronda los $3.000 a $5.000 CLP. Verifica el valor actualizado en registrocivil.cl."},
    {"q": "¿La cédula de extranjero sirve para votar?", "a": "No. Solo los ciudadanos chilenos (nacionales y nacionalizados) pueden votar. La cédula de extranjero acredita residencia, no ciudadanía."},
    {"q": "¿Qué hago si pierdo mi cédula de extranjero?", "a": "Debes ir al Registro Civil con tu pasaporte y la resolución de visa. Pagas el arancel de duplicado y sigues el mismo proceso de emisión."}
  ]'::jsonb,
  ARRAY['vivir-en-chile/rut-extranjero', 'vivir-en-chile/cuenta-bancaria', 'residencia-temporal/renovacion'],
  ARRAY[]::text[],
  '/vivir-en-chile/cedula-extranjero',
  TRUE
),

-- 3. cuenta-bancaria
(
  'vivir-en-chile/cuenta-bancaria',
  'vivir-en-chile',
  'vivir-en-chile',
  'cluster',
  'Cuenta Bancaria para Extranjeros en Chile 2025: Qué Banco Abre Sin Problemas',
  'Cómo abrir cuenta bancaria siendo extranjero en Chile',
  'Descubre qué bancos en Chile abren cuentas a extranjeros, qué documentos necesitas y cuáles son las alternativas si te rechazan.',
  'cuenta bancaria extranjero Chile',
  $content$<h2>¿Pueden los extranjeros abrir cuentas bancarias en Chile?</h2>
<p><strong>Sí</strong>, pero los requisitos varían mucho entre bancos. Algunos son más abiertos que otros. La clave es tener RUT y documentación en regla.</p>

<h2>Documentos que generalmente piden</h2>
<ul>
  <li>Cédula de identidad de extranjero <strong>vigente</strong>.</li>
  <li>RUT (viene en la cédula).</li>
  <li>Pasaporte vigente.</li>
  <li>Comprobante de domicilio (cuenta de servicio, contrato de arriendo).</li>
  <li>Algunos bancos piden comprobante de ingresos (liquidaciones de sueldo o contrato de trabajo).</li>
</ul>

<h2>Situación por banco (referencial 2025)</h2>
<ul>
  <li><strong>BancoEstado:</strong> el más accesible para extranjeros. Permite abrir CuentaRUT con solo la cédula de extranjero y el RUT. No exige antigüedad laboral.</li>
  <li><strong>Banco Santander:</strong> abre cuentas a extranjeros con cédula vigente y contrato de trabajo.</li>
  <li><strong>Banco de Chile:</strong> suele pedir antigüedad laboral de 6 meses o más.</li>
  <li><strong>Scotiabank:</strong> similar a Banco de Chile — más restrictivo.</li>
  <li><strong>MACH (BancoEstado):</strong> cuenta digital sin requisito de historial. Ideal para recién llegados.</li>
</ul>

<h2>Alternativas si te rechazan en el banco</h2>
<ul>
  <li><strong>MACH:</strong> aplicación digital de BancoEstado. Sin sucursal, abre en minutos con RUT y cédula.</li>
  <li><strong>Mercado Pago:</strong> billetera digital que no requiere cuenta bancaria tradicional.</li>
  <li><strong>Prepago BIP/MACH:</strong> para pagos cotidianos.</li>
</ul>

<h2>Consejos prácticos</h2>
<ul>
  <li>Empieza por BancoEstado o MACH — tienen los requisitos más bajos.</li>
  <li>Lleva todos los documentos originales y copias.</li>
  <li>Si tienes contrato de trabajo, úsalo como respaldo aunque no sea obligatorio.</li>
  <li>El historial bancario en Chile se construye con el tiempo — comienza con una cuenta básica.</li>
</ul>$content$,
  'FAQPage',
  '[
    {"q": "¿Puedo abrir cuenta bancaria si tengo visa de turista?", "a": "En general no. Los bancos exigen visa de residencia y cédula de extranjero. Con visa turista las opciones son muy limitadas."},
    {"q": "¿Necesito cuenta bancaria para recibir mi sueldo?", "a": "Sí. La ley chilena exige que los sueldos se paguen por transferencia bancaria si el trabajador así lo solicita. Sin cuenta, el empleador puede pagar en efectivo, pero no es lo habitual."},
    {"q": "¿Qué es la CuentaRUT de BancoEstado?", "a": "Es una cuenta de ahorro básica asociada al RUT chileno. No cobra mantención, acepta transferencias y tiene tarjeta de débito. Es la más accesible para extranjeros."},
    {"q": "¿Puedo enviar remesas desde una cuenta chilena?", "a": "Sí. Desde una cuenta bancaria chilena puedes hacer transferencias internacionales. También hay servicios especializados en remesas como Western Union, MoneyGram o apps como Remitly."}
  ]'::jsonb,
  ARRAY['vivir-en-chile/rut-extranjero', 'vivir-en-chile/cedula-extranjero', 'vivir-en-chile/remesas'],
  ARRAY[]::text[],
  '/vivir-en-chile/cuenta-bancaria',
  TRUE
),

-- 4. fonasa-isapre
(
  'vivir-en-chile/fonasa-isapre',
  'vivir-en-chile',
  'vivir-en-chile',
  'cluster',
  'Salud para Extranjeros en Chile: Fonasa vs Isapre 2025',
  'Sistema de salud para extranjeros en Chile: Fonasa e Isapre',
  'Cómo acceder al sistema de salud en Chile siendo extranjero: diferencias entre Fonasa e Isapre, cómo inscribirse y qué cubre cada uno.',
  'salud extranjero Chile Fonasa Isapre',
  $content$<h2>El sistema de salud en Chile</h2>
<p>Chile tiene un sistema de salud dual: el público (<strong>Fonasa</strong>) y el privado (<strong>Isapres</strong>). Si trabajas de forma dependiente, tu empleador descuenta el 7% de tu sueldo para salud — tú decides si va a Fonasa o a una Isapre.</p>

<h2>¿Pueden acceder los extranjeros?</h2>
<p><strong>Sí.</strong> Los extranjeros con residencia legal y RUT pueden afiliarse a Fonasa o a una Isapre. Incluso quienes no trabajan formalmente pueden afiliarse a Fonasa en ciertos tramos.</p>

<h2>Fonasa (Fondo Nacional de Salud)</h2>
<ul>
  <li>Es el sistema público de salud.</li>
  <li>Se divide en <strong>tramos A, B, C y D</strong> según ingreso.</li>
  <li>Tramo A (sin ingresos): atención gratuita en hospitales y consultorios públicos.</li>
  <li>Tramos B, C y D: copago escalonado según ingreso.</li>
  <li>Cubre: atención médica, hospitalización, urgencias, medicamentos de la farmacia popular.</li>
  <li>Para inscribirte: ve a una sucursal de Fonasa con tu RUT y cédula.</li>
</ul>

<h2>Isapres (Instituciones de Salud Previsional)</h2>
<ul>
  <li>Son seguros de salud privados.</li>
  <li>Ofrecen mayor acceso a clínicas privadas y tiempos de espera más cortos.</li>
  <li>Más caros que Fonasa — el 7% de cotización puede no alcanzar para el plan deseado, debiendo pagar diferencia.</li>
  <li>El sistema de isapres está en proceso de reforma tras la crisis de 2023-2024.</li>
</ul>

<h2>¿Cuál conviene a un extranjero recién llegado?</h2>
<p>Para la mayoría, <strong>Fonasa es la opción más práctica al comienzo</strong>: no requiere examen de salud previo, no tiene listas de espera para afiliación y cubre urgencias desde el primer día. Si tienes mayores ingresos y quieres atención privada, evalúa una Isapre.</p>

<h2>Urgencias sin Fonasa</h2>
<p>En Chile, <strong>ninguna urgencia puede ser negada</strong> por falta de seguro de salud. Los hospitales públicos deben atender urgencias a cualquier persona, independiente de su situación migratoria o previsional.</p>$content$,
  'FAQPage',
  '[
    {"q": "¿Puedo acceder a Fonasa si no trabajo formalmente?", "a": "Sí. Puedes inscribirte en el Tramo A de Fonasa si no tienes ingresos formales. Recibirás atención gratuita en centros de salud públicos."},
    {"q": "¿Los hijos de extranjeros tienen acceso a salud?", "a": "Sí. Los hijos menores de 18 años son beneficiarios de Fonasa de sus padres, independiente de su situación migratoria. Además, todos los niños tienen derecho a atención en salud pública."},
    {"q": "¿La Fonasa cubre atención dental?", "a": "Cubre atención dental básica en algunos centros de salud públicos. No cubre tratamientos cosméticos ni odontología compleja en general."},
    {"q": "¿Puedo cambiar de Isapre a Fonasa?", "a": "Sí, puedes cambiarte anualmente en el período establecido o cuando pierdas el trabajo. El proceso es a través de la propia Isapre o de Fonasa."}
  ]'::jsonb,
  ARRAY['vivir-en-chile/rut-extranjero', 'vivir-en-chile/afp-extranjero', 'vivir-en-chile/cedula-extranjero'],
  ARRAY[]::text[],
  '/vivir-en-chile/fonasa-isapre',
  TRUE
),

-- 5. afp-extranjero
(
  'vivir-en-chile/afp-extranjero',
  'vivir-en-chile',
  'vivir-en-chile',
  'cluster',
  'AFP para Extranjeros en Chile 2025: Cotizaciones y Devolución',
  'AFP en Chile siendo extranjero: todo lo que debes saber',
  'Qué es la AFP en Chile, si los extranjeros deben cotizar, cómo funciona y si puedes recuperar tus ahorros al volver a tu país.',
  'AFP extranjero Chile cotizaciones',
  $content$<h2>¿Qué es la AFP?</h2>
<p>Las <strong>AFP (Administradoras de Fondos de Pensiones)</strong> son entidades privadas que administran los ahorros para jubilación en Chile. Si trabajas de forma dependiente, tu empleador descuenta automáticamente el <strong>10% de tu sueldo bruto</strong> más la comisión de la AFP elegida.</p>

<h2>¿Los extranjeros deben cotizar en AFP?</h2>
<p><strong>Sí, si trabajan como dependientes.</strong> La cotización previsional es obligatoria para todos los trabajadores con contrato en Chile, independiente de la nacionalidad o si planean quedarse o no en el país.</p>

<h2>Excepción: convenios de seguridad social</h2>
<p>Chile tiene convenios de seguridad social con varios países (Argentina, Brasil, Colombia, Uruguay, entre otros). Si tu país tiene convenio con Chile, podrías quedar exento de cotizar en AFP chilena y que tu cotización vaya al sistema de tu país. Consulta con la Superintendencia de Pensiones.</p>

<h2>¿Puedo recuperar los fondos de AFP si me voy de Chile?</h2>
<p>Sí, con ciertos requisitos. Si obtienes la <strong>Residencia Definitiva</strong> y luego decides salir del país permanentemente, o si ya no cumples los requisitos para jubilarte en Chile, puedes solicitar la devolución de tus fondos de AFP. El proceso es:</p>
<ol>
  <li>Acreditar que dejarás Chile de forma permanente.</li>
  <li>Presentar la solicitud ante la AFP.</li>
  <li>La devolución está sujeta a tributación (impuesto único de retiro).</li>
</ol>

<h2>¿Cuándo puedo jubilarme con la AFP chilena?</h2>
<p>La edad legal de jubilación en Chile es <strong>65 años para hombres y 60 para mujeres</strong> (se debate una reforma). Si has cotizado en Chile y llegas a esa edad aquí, puedes jubilarte con los fondos acumulados, independiente de tu nacionalidad.</p>

<h2>Multifondos: elige tu fondo</h2>
<p>Existen 5 multifondos (A, B, C, D, E) con distinto nivel de riesgo. Puedes elegir en cuál invertir tus ahorros. Si no eliges, te asignan uno según tu edad.</p>$content$,
  'FAQPage',
  '[
    {"q": "¿Qué pasa con mi AFP si pierdo el trabajo?", "a": "Los fondos acumulados siguen siendo tuyos y crecen (o disminuyen) según el rendimiento del fondo. No desaparecen si dejas de cotizar."},
    {"q": "¿Puedo elegir en qué AFP cotizar?", "a": "Sí. Puedes elegir libremente la AFP. Si no eliges, te asigna una mediante licitación. Puedes cambiarte de AFP gratuitamente."},
    {"q": "¿Mi empleador puede no descontar la AFP?", "a": "No — es obligatorio por ley. Si tu empleador no cotiza tus AFP, está cometiendo una ilegalidad y puedes denunciarlo a la Dirección del Trabajo."},
    {"q": "¿Los trabajadores independientes cotizamos obligatoriamente?", "a": "Desde 2019, los trabajadores independientes que emiten boletas de honorarios deben cotizar en AFP e salud. El monto se retiene en la operación renta anual."}
  ]'::jsonb,
  ARRAY['vivir-en-chile/fonasa-isapre', 'vivir-en-chile/rut-extranjero'],
  ARRAY[]::text[],
  '/vivir-en-chile/afp-extranjero',
  TRUE
),

-- 6. arriendo
(
  'vivir-en-chile/arriendo',
  'vivir-en-chile',
  'vivir-en-chile',
  'cluster',
  'Arriendo para Extranjeros en Chile 2025: Cómo Encontrar y Firmar',
  'Cómo arrendar una casa o departamento siendo extranjero en Chile',
  'Guía para arrendar en Chile siendo extranjero: documentos que piden, contratos, depósitos, garantías y cómo evitar estafas.',
  'arriendo extranjero Chile',
  $content$<h2>¿Pueden arrendar los extranjeros en Chile?</h2>
<p><strong>Sí.</strong> No hay restricción legal para que un extranjero arriende una propiedad en Chile. Sin embargo, en la práctica algunos arrendadores son más exigentes o directamente discriminatorios. Conocer tus derechos y documentación ayuda.</p>

<h2>Documentos que normalmente piden</h2>
<ul>
  <li>Cédula de identidad de extranjero vigente (con RUT).</li>
  <li>Pasaporte vigente.</li>
  <li>Liquidaciones de sueldo de los últimos 3 meses (o contrato de trabajo).</li>
  <li>Certificado de antecedentes chileno.</li>
  <li>Aval o codeudor chileno (algunos arrendadores lo exigen).</li>
</ul>

<h2>Contratos de arriendo</h2>
<p>El contrato debe ser por escrito y firmado por ambas partes. Debe incluir:</p>
<ul>
  <li>Monto del arriendo y fecha de pago.</li>
  <li>Duración del contrato.</li>
  <li>Monto del depósito (garantía).</li>
  <li>Condiciones de renovación y término.</li>
</ul>
<p>Se recomienda <strong>notariar el contrato</strong> — no es obligatorio pero da mayor protección legal a ambas partes.</p>

<h2>Depósito de garantía</h2>
<p>Es habitual pagar 1 a 2 meses de arriendo como depósito. Legalmente, el arrendador debe devolverte el depósito al término del contrato si no hay deudas ni daños a la propiedad. Documenta el estado del inmueble al entrar con fotos y video.</p>

<h2>Cómo evitar estafas</h2>
<ul>
  <li>No pagues sin ver la propiedad en persona.</li>
  <li>Verifica que quien arrienda es el dueño legal (pide el certificado de dominio vigente del Conservador de Bienes Raíces).</li>
  <li>Desconfía de precios muy por debajo del mercado.</li>
  <li>Evita pagar en efectivo sin recibo.</li>
</ul>

<h2>Si te discriminan por ser extranjero</h2>
<p>La discriminación en el arriendo por origen nacional es ilegal en Chile. Puedes denunciarla ante el <strong>SERNAC</strong> o en el <strong>INDH (Instituto Nacional de Derechos Humanos)</strong>.</p>$content$,
  'FAQPage',
  '[
    {"q": "¿Necesito un aval para arrendar en Chile?", "a": "Algunos arrendadores lo exigen, especialmente si eres extranjero sin historial en Chile. El aval debe ser una persona con ingresos demostrables en Chile que se hace responsable si no pagas."},
    {"q": "¿Puedo arrendar si tengo visa de turista?", "a": "Legalmente puedes firmar un contrato, pero en la práctica es muy difícil: sin RUT ni cédula de extranjero, la mayoría de arrendadores te rechazará."},
    {"q": "¿Qué plazo mínimo tiene un contrato de arriendo?", "a": "No hay plazo mínimo legal. Lo fijan las partes. Los contratos de arriendo residencial suelen ser por 1 año renovable."},
    {"q": "¿Qué pasa si el arrendador no devuelve el depósito?", "a": "Puedes demandar en el Juzgado de Letras. El proceso es relativamente accesible y no siempre requiere abogado para montos menores."}
  ]'::jsonb,
  ARRAY['vivir-en-chile/rut-extranjero', 'vivir-en-chile/cedula-extranjero'],
  ARRAY[]::text[],
  '/vivir-en-chile/arriendo',
  TRUE
),

-- 7. remesas
(
  'vivir-en-chile/remesas',
  'vivir-en-chile',
  'vivir-en-chile',
  'cluster',
  'Enviar Remesas desde Chile 2025: Mejores Opciones y Comisiones',
  'Cómo enviar dinero a tu familia desde Chile',
  'Compara las mejores opciones para enviar remesas desde Chile a Venezuela, Colombia, Perú, Bolivia y otros países. Comisiones y tasas de cambio reales.',
  'enviar remesas desde Chile',
  $content$<h2>¿Cómo funciona el envío de remesas desde Chile?</h2>
<p>Una <strong>remesa</strong> es una transferencia de dinero al exterior, generalmente a la familia en el país de origen. Desde Chile puedes enviarlas de varias formas: bancos, casas de cambio, aplicaciones digitales y agentes físicos.</p>

<h2>Opciones más usadas en Chile</h2>

<h3>Aplicaciones digitales (las más convenientes)</h3>
<ul>
  <li><strong>Remitly:</strong> muy popular entre migrantes latinoamericanos. Tasas competitivas, entrega rápida, opera a Venezuela, Colombia, Perú, Bolivia y más.</li>
  <li><strong>Western Union (app):</strong> amplia red de destinos y agentes. Permite envío en efectivo o cuenta bancaria.</li>
  <li><strong>MoneyGram:</strong> similar a Western Union, con muchos puntos de retiro en destino.</li>
  <li><strong>Wise (antes TransferWise):</strong> excelente tasa de cambio y transparencia de comisiones. Ideal si el destinatario tiene cuenta bancaria.</li>
</ul>

<h3>Bancos chilenos</h3>
<p>Todos los bancos permiten transferencias internacionales (SWIFT). Son seguros pero generalmente más lentos y con mayores comisiones que las apps digitales.</p>

<h3>Casas de cambio físicas</h3>
<p>Puedes encontrarlas en el centro de Santiago y otras ciudades. Suelen tener buenas tasas para monedas latinoamericanas. Verifica que estén autorizadas por el CMF.</p>

<h2>¿Cuánto puedo enviar?</h2>
<p>No hay un límite legal establecido en Chile para el envío de remesas. Sin embargo, para montos altos el proveedor puede pedir documentación sobre el origen de los fondos (cumplimiento antilavado).</p>

<h2>Factores para comparar opciones</h2>
<ul>
  <li><strong>Tasa de cambio:</strong> la diferencia entre el tipo de cambio real y el aplicado es donde más se pierde.</li>
  <li><strong>Comisión fija:</strong> algunas apps cobran cargo fijo por envío.</li>
  <li><strong>Tiempo de entrega:</strong> desde minutos hasta 3 días hábiles.</li>
  <li><strong>Forma de entrega en destino:</strong> efectivo, cuenta bancaria, billetera digital.</li>
</ul>

<h2>Consejos</h2>
<ul>
  <li>Compara siempre el monto que recibirá el beneficiario (no solo la comisión que pagas tú).</li>
  <li>Las apps digitales suelen ganar a los bancos en tasa de cambio.</li>
  <li>Para Venezuela: verifica las restricciones cambiarias vigentes — la situación puede variar.</li>
</ul>$content$,
  'FAQPage',
  '[
    {"q": "¿Pago impuestos por enviar remesas?", "a": "No. En Chile el envío de remesas no está gravado con impuesto. Lo que sí puede variar es el costo en comisiones y tasa de cambio del proveedor."},
    {"q": "¿Puedo enviar remesas sin cuenta bancaria chilena?", "a": "Sí. Western Union, MoneyGram y algunas casas de cambio permiten enviar en efectivo desde puntos físicos sin necesidad de cuenta bancaria."},
    {"q": "¿Cuál es la forma más barata de enviar dinero a Venezuela?", "a": "Depende del método de entrega en destino. En 2025, Remitly y Wise suelen ofrecer las mejores tasas para Venezuela. Compara el monto final que recibirá el beneficiario."},
    {"q": "¿El banco puede bloquear mi transferencia internacional?", "a": "Puede ocurrir para montos grandes o destinos con restricciones. Si te bloquean, el banco debe explicarte el motivo. Documentar el origen del dinero facilita el proceso."}
  ]'::jsonb,
  ARRAY['vivir-en-chile/cuenta-bancaria'],
  ARRAY[]::text[],
  '/vivir-en-chile/remesas',
  TRUE
),

-- 8. educacion-hijos
(
  'vivir-en-chile/educacion-hijos',
  'vivir-en-chile',
  'vivir-en-chile',
  'cluster',
  'Educación para Hijos de Extranjeros en Chile 2025',
  'Cómo matricular a tus hijos en el colegio en Chile',
  'Aprende cómo acceder al sistema educacional chileno siendo extranjero: matrícula, documentos, gratuidad y derechos de los niños migrantes.',
  'educación hijos extranjeros Chile colegio',
  $content$<h2>¿Los hijos de extranjeros pueden estudiar en Chile?</h2>
<p><strong>Sí y es un derecho garantizado.</strong> La ley chilena garantiza el acceso a la educación pública gratuita a todos los niños y niñas que residan en Chile, independiente de su situación migratoria o la de sus padres.</p>

<h2>Educación parvularia (jardín y prekínder)</h2>
<ul>
  <li>JUNJI e Integra ofrecen jardines infantiles gratuitos para niños desde los 3 meses hasta los 5 años.</li>
  <li>No se requiere visa ni documentación migratoria del niño para acceder.</li>
  <li>Solo se pide certificado de nacimiento y comprobante de domicilio.</li>
</ul>

<h2>Educación básica y media (escolar)</h2>
<p>Los colegios municipales y subvencionados están obligados a recibir a niños extranjeros. El proceso de matrícula varía según el establecimiento, pero generalmente piden:</p>
<ul>
  <li>Certificado de nacimiento del menor (apostillado si viene de otro país).</li>
  <li>Certificado de estudios o notas del país de origen (si tiene escolaridad previa).</li>
  <li>Cédula de identidad del apoderado (puede ser pasaporte si no hay cédula chilena).</li>
  <li>Comprobante de domicilio.</li>
</ul>

<h2>¿Qué pasa si el niño no tiene documentos?</h2>
<p>Los establecimientos educacionales no pueden negar la matrícula por falta de documentos migratorios. El Ministerio de Educación ha instruido que los niños sean recibidos con matrícula provisional mientras se regulariza la documentación.</p>

<h2>Reconocimiento de estudios extranjeros</h2>
<p>Para incorporar a un niño con escolaridad previa en otro país, el establecimiento puede hacer una <strong>evaluación diagnóstica</strong> para determinar el curso que le corresponde. No es necesario convalidar estudios formalmente en la educación básica.</p>

<h2>Educación superior</h2>
<p>Los extranjeros con residencia legal pueden postular a universidades, institutos y centros de formación técnica. Pueden acceder a becas del MINEDUC si tienen residencia definitiva. La gratuidad universitaria requiere cumplir requisitos de ingreso y socioeconómicos.</p>$content$,
  'FAQPage',
  '[
    {"q": "¿Puede un colegio negar la matrícula a mi hijo por ser extranjero?", "a": "No. Es ilegal. Si te lo niegan, puedes denunciarlo a la Superintendencia de Educación o a la JUNAEB. Los establecimientos reciben orientaciones claras del MINEDUC."},
    {"q": "¿En qué curso entra mi hijo si viene de otro país?", "a": "Generalmente por edad. El establecimiento puede hacer una evaluación diagnóstica para ajustar el nivel. En Chile la educación básica va de 1° a 8° básico y la media de 1° a 4° medio."},
    {"q": "¿Mi hijo puede estudiar en Chile si está irregular?", "a": "Sí. La situación migratoria del niño o de sus padres no puede ser causa de rechazo en la matrícula escolar."},
    {"q": "¿Hay apoyo para idioma? (para hijos de haitianos que hablan créole)", "a": "Algunos colegios cuentan con mediadores interculturales y apoyo de idioma. Consulta con el establecimiento o con el Departamento de Extranjería Escolar de tu municipio."}
  ]'::jsonb,
  ARRAY['vivir-en-chile/rut-extranjero', 'vivir-en-chile/convalidacion-titulos'],
  ARRAY[]::text[],
  '/vivir-en-chile/educacion-hijos',
  TRUE
),

-- 9. convalidacion-titulos
(
  'vivir-en-chile/convalidacion-titulos',
  'vivir-en-chile',
  'vivir-en-chile',
  'cluster',
  'Convalidación de Títulos Extranjeros en Chile 2025: Guía Completa',
  'Cómo convalidar tu título profesional extranjero en Chile',
  'Aprende cómo reconocer tu título universitario extranjero en Chile: quién lo hace, cuánto demora y qué pasos seguir según tu profesión.',
  'convalidar título extranjero Chile',
  $content$<h2>¿Qué es la convalidación de títulos?</h2>
<p>La <strong>convalidación o reconocimiento de títulos</strong> permite que un título profesional obtenido en el extranjero sea reconocido en Chile para ejercer la profesión legalmente. El proceso varía según la profesión.</p>

<h2>¿Quién realiza la convalidación en Chile?</h2>
<p>Depende de la profesión:</p>
<ul>
  <li><strong>Universidades chilenas:</strong> convalidan la mayoría de las carreras profesionales. Cualquier universidad del Estado o reconocida oficialmente puede hacerlo.</li>
  <li><strong>Ministerio de Educación (MINEDUC):</strong> para títulos de educación básica y media y ciertas carreras técnicas.</li>
  <li><strong>Profesiones reguladas por ley:</strong> médicos, dentistas, farmacéuticos, abogados — requieren procesos adicionales ante sus colegios o el Ministerio de Salud.</li>
</ul>

<h2>Proceso general en una universidad chilena</h2>
<ol>
  <li>Elige una universidad acreditada que ofrezca el programa de convalidación de tu área.</li>
  <li>Presenta el título original apostillado y traducido (si no está en español).</li>
  <li>Presenta el certificado de estudios con todas las materias cursadas (también apostillado).</li>
  <li>La universidad revisa la equivalencia con sus programas.</li>
  <li>Puede pedirte aprobar exámenes o cursar materias complementarias.</li>
  <li>Si aprueba, emite una resolución de reconocimiento.</li>
</ol>

<h2>Profesiones con proceso especial</h2>
<ul>
  <li><strong>Médicos:</strong> deben rendir el <strong>EUNACOM</strong> (Examen Único Nacional de Conocimientos de Medicina) y obtener habilitación del Ministerio de Salud.</li>
  <li><strong>Abogados:</strong> deben convalidar en una universidad y luego obtener habilitación para ejercer.</li>
  <li><strong>Profesores:</strong> proceso a través del MINEDUC.</li>
  <li><strong>Enfermeros y matronas:</strong> requieren validación ante el Ministerio de Salud.</li>
</ul>

<h2>¿Cuánto demora?</h2>
<p>Entre <strong>6 meses y 2 años</strong> dependiendo de la institución, la carrera y si debes rendir exámenes adicionales. Las universidades más grandes suelen ser más rápidas.</p>

<h2>Costo</h2>
<p>Las universidades cobran un arancel por el proceso de convalidación. Varía entre $200.000 y $600.000 CLP aproximadamente. Consulta directamente en la universidad elegida.</p>$content$,
  'FAQPage',
  '[
    {"q": "¿Puedo trabajar en mi profesión mientras espero la convalidación?", "a": "Depende de la profesión. Algunas permiten trabajar como asistente o en roles no regulados. Profesiones como medicina o abogacía requieren habilitación previa para ejercer."},
    {"q": "¿Cuál universidad es más rápida para convalidar?", "a": "Varía por carrera. En general la Universidad de Chile, la USACH y universidades regionales procesan convalidaciones. Consulta directamente con sus departamentos de admisión o registro curricular."},
    {"q": "¿Necesito apostillar mis documentos de Venezuela si no hay apostilla allá?", "a": "Venezuela suspendió la apostilla en 2017. Para títulos venezolanos existe un proceso alternativo de autenticación ante el consulado chileno en Venezuela o mediante la Cancillería. Consulta al MINEDUC."},
    {"q": "¿Mi título técnico también se puede convalidar?", "a": "Sí. Los títulos técnicos se convalidan ante el MINEDUC o en institutos reconocidos. El proceso es similar al universitario pero más corto."}
  ]'::jsonb,
  ARRAY['vivir-en-chile/apostilla-traduccion', 'vivir-en-chile/educacion-hijos'],
  ARRAY[]::text[],
  '/vivir-en-chile/convalidacion-titulos',
  TRUE
),

-- 10. apostilla-traduccion
(
  'vivir-en-chile/apostilla-traduccion',
  'vivir-en-chile',
  'vivir-en-chile',
  'cluster',
  'Apostilla y Traducción de Documentos para Extranjeros en Chile 2025',
  'Apostilla y traducción de documentos extranjeros en Chile',
  'Qué es la apostilla, cómo obtenerla, qué documentos necesitan traducción oficial y dónde hacerla en Chile. Guía completa para migrantes.',
  'apostilla traducción documentos Chile',
  $content$<h2>¿Qué es la apostilla?</h2>
<p>La <strong>apostilla</strong> es un sello oficial que certifica que un documento público emitido en un país es auténtico y válido en otro país. Es el sistema internacional establecido por la <strong>Convención de La Haya de 1961</strong>.</p>

<h2>¿Qué documentos necesitan apostilla?</h2>
<ul>
  <li>Certificado de nacimiento.</li>
  <li>Certificado de matrimonio.</li>
  <li>Certificado de antecedentes penales.</li>
  <li>Título universitario o técnico.</li>
  <li>Certificados de estudios o notas.</li>
  <li>Cualquier documento público que debas presentar en Chile.</li>
</ul>

<h2>¿Dónde se obtiene la apostilla?</h2>
<p>La apostilla la emite una autoridad designada en el <strong>país donde se emitió el documento</strong>, no en Chile. Por ejemplo, si tu acta de nacimiento es venezolana, debes apostillarla en Venezuela (o gestionar el trámite a distancia mediante apoderado).</p>

<h2>Países sin apostilla (o con proceso distinto)</h2>
<ul>
  <li><strong>Venezuela:</strong> suspendió el servicio de apostilla desde 2017. Proceso alternativo: legalización vía consulado chileno o Cancillería venezolana. Consulta caso a caso.</li>
  <li><strong>Haití:</strong> no es signatario de la Convención de La Haya. Los documentos haitianos requieren <strong>legalización consular</strong> (distinto proceso).</li>
  <li>Para estos países, consulta al SERMIG o a un abogado de inmigración.</li>
</ul>

<h2>¿Qué documentos necesitan traducción?</h2>
<p>Si tu documento está en un idioma distinto al español, debes presentar una <strong>traducción oficial</strong>. En Chile, las traducciones oficiales son realizadas por <strong>traductores jurados</strong> certificados.</p>

<h2>Cómo obtener una traducción oficial en Chile</h2>
<ol>
  <li>Busca un <strong>traductor jurado</strong> en el listado del Ministerio de Relaciones Exteriores (minrel.gob.cl).</li>
  <li>El traductor traduce el documento y certifica con su sello y firma.</li>
  <li>Algunos trámites aceptan la traducción simple; otros exigen que también esté notariada.</li>
</ol>

<h2>¿Cuánto cuesta?</h2>
<ul>
  <li>Traducción por página: entre $15.000 y $40.000 CLP según idioma y traductor.</li>
  <li>Apostilla en destino: varía según el país y el tipo de documento.</li>
</ul>

<h2>Orden correcto del proceso</h2>
<p>Siempre en este orden: primero <strong>apostilla el original</strong> en el país de origen, luego <strong>tradúcelo</strong> en Chile. Algunos trámites admiten ambos pasos en paralelo, pero este orden es el estándar.</p>$content$,
  'FAQPage',
  '[
    {"q": "¿Chile apostilla documentos?", "a": "Sí, Chile apostilla sus propios documentos para uso en el extranjero. El trámite se hace en el Ministerio de Relaciones Exteriores (MINREL). Pero para documentos extranjeros, la apostilla la hace el país de origen."},
    {"q": "¿Necesito apostillar todos mis documentos para la visa?", "a": "No todos. El SERMIG indica qué documentos requieren apostilla. Generalmente: certificado de nacimiento, antecedentes penales y certificado de matrimonio (si aplica)."},
    {"q": "¿Puedo hacer la apostilla a distancia desde Chile?", "a": "Sí, mediante un apoderado en tu país que realice el trámite en tu nombre. También existen servicios de gestión de apostilla a distancia."},
    {"q": "Mi país no apostilla. ¿Qué hago?", "a": "Si tu país no tiene apostilla (como Haití) o el servicio está suspendido (como en Venezuela), debes hacer el proceso de legalización consular. Consulta al SERMIG o a un abogado de inmigración."}
  ]'::jsonb,
  ARRAY['vivir-en-chile/convalidacion-titulos', 'vivir-en-chile/cedula-extranjero'],
  ARRAY[]::text[],
  '/vivir-en-chile/apostilla-traduccion',
  TRUE
)
ON CONFLICT (slug) DO NOTHING;

COMMIT;
