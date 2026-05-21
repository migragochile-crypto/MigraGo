-- ============================================================
-- MigraciónChile — Seed 021: 4 artículos nuevos
--   1. peru/documentos-peru
--   2. argentina/documentos-argentina
--   3. vivir-en-chile/emprendimiento
--   4. problemas/multa-migracion
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

-- ──────────────────────────────────────────────────────────
-- 1. peru/documentos-peru
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'peru/documentos-peru',
  'peru',
  'peru',
  'cluster',
  'Documentos Peruanos para Trámites en Chile: Apostilla y RENIEC 2026',
  'Cómo Apostillar Documentos Peruanos para Visas y Trámites en Chile',
  'Guía para apostillar documentos peruanos para trámites migratorios en Chile. RENIEC, PNP, Ministerio de Relaciones Exteriores del Perú y proceso desde Chile en 2026.',
  'apostilla documentos peruanos chile RENIEC',
  $y1$
<p>Perú es parte de la Convención de La Haya sobre apostilla, lo que permite legalizar documentos peruanos de forma estandarizada para su uso en Chile. Los documentos están en español, así que <strong>no requieren traducción</strong>. Con la planificación correcta, el proceso puede hacerse mayormente a distancia.</p>

<h2>¿Quién emite la apostilla en Perú?</h2>
<p>La autoridad competente para emitir apostillas en Perú es el <strong>Ministerio de Relaciones Exteriores</strong>, a través de sus oficinas en Lima y en algunas regiones. El trámite puede iniciarse en línea en <a href="https://www.gob.pe" target="_blank" rel="noopener noreferrer">gob.pe</a> (plataforma Facilita Perú) para ciertos tipos de documentos.</p>

<h2>Documentos más solicitados para Chile</h2>
<ul>
  <li><strong>Partida de nacimiento:</strong> emitida por el RENIEC (Registro Nacional de Identificación y Estado Civil). Puede obtenerse en oficinas RENIEC o en línea para ciudadanos registrados.</li>
  <li><strong>Certificado de antecedentes penales:</strong> emitido por la Policía Nacional del Perú (PNP) a través de sus comisarías o portal virtual. También puede obtenerse el Certificado de Antecedentes Judiciales del Poder Judicial.</li>
  <li><strong>Partida de matrimonio:</strong> emitida por el RENIEC si fue matrimonio civil, o por la municipalidad donde se celebró.</li>
  <li><strong>Título universitario / diploma de grado:</strong> emitido por la institución educativa; puede requerir autenticación de la SUNEDU antes de la apostilla si se va a usar para homologación profesional.</li>
</ul>

<h2>Proceso de apostilla</h2>
<ol>
  <li><strong>Obtén el documento original</strong> con firma y sello oficial de la entidad emisora (RENIEC, PNP, Poder Judicial, etc.).</li>
  <li><strong>Solicita la apostilla</strong> en el Ministerio de Relaciones Exteriores del Perú. Puedes hacerlo en las oficinas de Lima (Palacio Torre Tagle u otras sedes) o en oficinas descentralizadas en regiones.</li>
  <li><strong>Paga los derechos correspondientes</strong> — el valor está publicado en el portal del Ministerio y varía según el tipo de documento.</li>
  <li><strong>Recibe el documento apostillado</strong>. El Ministerio estampa la apostilla en el mismo documento o emite hoja adjunta con código de verificación.</li>
</ol>

<h2>Trámite desde Chile</h2>
<p>Si estás en Chile y tus documentos están en Perú:</p>
<ul>
  <li><strong>Familiares en Perú</strong> pueden tramitar la apostilla con carta poder simple (en algunos casos) o poder notarial.</li>
  <li><strong>El Consulado de Perú en Santiago</strong> puede autenticar ciertos documentos y orientar sobre el proceso. No emite apostillas, pero puede ayudar con poderes y orientación.</li>
  <li><strong>Gestorías peruanas especializadas</strong> ofrecen el servicio a distancia — verifica referencias antes de contratar.</li>
  <li>El <strong>RENIEC</strong> permite a peruanos en el exterior actualizar datos y solicitar algunos documentos a través del consulado.</li>
</ul>

<h2>Certificado de antecedentes: PNP vs. Poder Judicial</h2>
<p>Existen dos certificados de antecedentes en Perú:</p>
<ul>
  <li><strong>Certificado de Antecedentes Policiales (PNP):</strong> refleja el historial policial.</li>
  <li><strong>Certificado de Antecedentes Judiciales (Poder Judicial):</strong> refleja condenas judiciales.</li>
</ul>
<p>El SERMIG puede solicitar uno o ambos. Verifica en los requisitos específicos del trámite qué certificado piden y apostilla el que corresponda.</p>
  $y1$,
  '[
    {
      "question": "¿Puedo obtener mi partida de nacimiento peruana desde Chile?",
      "answer": "Sí, en muchos casos. El RENIEC permite a peruanos en el exterior solicitar copias certificadas a través del Consulado de Perú en Santiago. El Consulado actúa como intermediario con el RENIEC. Para la apostilla posterior, necesitarás que un familiar o gestoría en Perú la tramite en el Ministerio de Relaciones Exteriores."
    },
    {
      "question": "¿Cuánto demora el proceso completo de apostilla en Perú?",
      "answer": "El tiempo varía según el tipo de documento y la carga del Ministerio. En promedio, entre 5 y 15 días hábiles desde que tienes el documento original hasta obtener la apostilla. El trámite previo de obtener el documento del RENIEC o PNP puede agregar días adicionales."
    },
    {
      "question": "¿Los documentos peruanos necesitan traducción para Chile?",
      "answer": "No. Los documentos peruanos están en español y no requieren traducción oficial para trámites ante el SERMIG en Chile. Solo asegúrate de que estén apostillados y sean legibles."
    },
    {
      "question": "¿El certificado de antecedentes PNP y el del Poder Judicial son lo mismo?",
      "answer": "No. El PNP registra el historial policial (detenciones, denuncias) y el Poder Judicial registra condenas formales. Para trámites migratorios en Chile, puede pedirse el judicial, el policial o ambos dependiendo del tipo de visa. Lee los requisitos del trámite específico que vas a realizar."
    }
  ]'::jsonb,
  ARRAY[
    'peru',
    'visa-temporaria',
    'problemas/antecedentes-penales',
    'permanencia-definitiva/documentos'
  ]::TEXT[],
  6,
  TRUE,
  NOW()
)
ON CONFLICT (slug) DO NOTHING;

-- ──────────────────────────────────────────────────────────
-- 2. argentina/documentos-argentina
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'argentina/documentos-argentina',
  'argentina',
  'argentina',
  'cluster',
  'Documentos Argentinos para Trámites en Chile: Apostilla MREC 2026',
  'Cómo Apostillar Documentos Argentinos para Visas y Trámites en Chile',
  'Cómo apostillar documentos argentinos para trámites migratorios en Chile. Registro Civil, antecedentes penales, Ministerio de Relaciones Exteriores y proceso online en 2026.',
  'apostilla documentos argentinos chile MREC',
  $y2$
<p>Argentina es parte de la Convención de La Haya y cuenta con un sistema de apostilla digital relativamente ágil. Los ciudadanos argentinos tienen la ventaja adicional de poder acceder a la <strong>visa MERCOSUR</strong> para Chile (ver <a href="/visa-temporaria/mercosur">Visa MERCOSUR</a>), que simplifica el trámite migratorio.</p>

<h2>¿Quién emite la apostilla en Argentina?</h2>
<p>El <strong>Ministerio de Relaciones Exteriores y Culto (MREC)</strong> es la autoridad competente para emitir apostillas en Argentina. La plataforma en línea se accede a través de <a href="https://www.cancilleria.gob.ar" target="_blank" rel="noopener noreferrer">cancilleria.gob.ar</a>. Argentina también cuenta con una apostilla electrónica verificable con código QR que el SERMIG reconoce.</p>

<h2>Documentos más solicitados para Chile</h2>
<ul>
  <li><strong>Partida de nacimiento:</strong> emitida por el Registro Civil de la provincia correspondiente o, para nacimientos desde ciertos años, disponible en el Registro Nacional de las Personas (RENAPER).</li>
  <li><strong>Certificado de antecedentes penales:</strong> emitido por el Registro Nacional de Reincidencia (Ministerio de Justicia y Derechos Humanos). Se obtiene en línea a través de <a href="https://www.argentina.gob.ar" target="_blank" rel="noopener noreferrer">argentina.gob.ar</a>.</li>
  <li><strong>Partida de matrimonio:</strong> del Registro Civil provincial o nacional según corresponda.</li>
  <li><strong>Título universitario:</strong> emitido por la institución educativa, con intervención del Ministerio de Educación si se requiere para reválida.</li>
</ul>

<h2>Proceso de apostilla</h2>
<ol>
  <li><strong>Obtén el documento original</strong> con firma y sello oficial de la entidad emisora.</li>
  <li><strong>Accede a la plataforma del MREC</strong> en cancilleria.gob.ar y selecciona el trámite de apostilla. Argentina tiene apostilla presencial (en la Cancillería en Buenos Aires y delegaciones provinciales) y apostilla digital para documentos emitidos electrónicamente.</li>
  <li><strong>Paga los aranceles</strong> — el valor está publicado en el portal del MREC.</li>
  <li><strong>Recibe la apostilla</strong> física o digital. La apostilla digital tiene código de verificación para que el receptor pueda comprobar su autenticidad.</li>
</ol>

<h2>Certificado de antecedentes penales desde Chile</h2>
<p>El <strong>Certificado de Antecedentes del Registro Nacional de Reincidencia</strong> puede solicitarse completamente en línea por ciudadanos argentinos, incluso desde el exterior, a través de la plataforma Mi Argentina (argentina.gob.ar). Una vez obtenido, la apostilla puede tramitarse por un familiar o gestoría en Argentina.</p>

<h2>Ventaja MERCOSUR</h2>
<p>Los ciudadanos argentinos son elegibles para la <strong>visa temporaria MERCOSUR</strong> en Chile, que tiene requisitos documentales más simples (no exige apostilla en todos los documentos). Si calificas, evalúa si conviene más esta vía que la visa temporaria estándar. Ver <a href="/visa-temporaria/mercosur">Visa MERCOSUR</a> para el detalle.</p>

<h2>Trámite desde Chile</h2>
<ul>
  <li>El <strong>Consulado Argentino en Santiago</strong> ofrece servicios consulares, incluyendo emisión de documentos de identidad y orientación sobre apostilla.</li>
  <li>Para el DNI o pasaporte argentino vencido: puedes renovarlo en el Consulado.</li>
  <li>Familiares en Argentina pueden tramitar la apostilla presencialmente.</li>
</ul>
  $y2$,
  '[
    {
      "question": "¿La apostilla digital argentina es aceptada por el SERMIG en Chile?",
      "answer": "En la mayoría de los casos sí. Argentina implementó la apostilla electrónica con código de verificación que puede comprobarse en línea. El SERMIG generalmente acepta estos documentos digitales apostillados. Si tienes dudas sobre un documento específico, consulta directamente en el SERMIG antes de presentar la solicitud."
    },
    {
      "question": "¿Necesito apostilla si uso la visa MERCOSUR?",
      "answer": "La visa MERCOSUR tiene requisitos documentales simplificados. Algunos documentos pueden presentarse sin apostilla bajo este acuerdo — verifica los requisitos específicos de la visa MERCOSUR en la guía correspondiente o en el portal del SERMIG, ya que pueden variar."
    },
    {
      "question": "¿Puedo tramitar la apostilla de mi DNI o partida de nacimiento desde Chile?",
      "answer": "La apostilla requiere el documento físico original con firma oficial. El certificado de antecedentes del Registro Nacional de Reincidencia puede obtenerse digitalmente desde Chile vía Mi Argentina. Para otros documentos, un familiar en Argentina puede tramitar la apostilla con autorización. El Consulado Argentino en Santiago también puede orientarte."
    },
    {
      "question": "¿Los documentos argentinos necesitan traducción para Chile?",
      "answer": "No. Los documentos argentinos están en español y no requieren traducción para trámites ante el SERMIG en Chile."
    }
  ]'::jsonb,
  ARRAY[
    'argentina',
    'visa-temporaria/mercosur',
    'visa-temporaria',
    'problemas/antecedentes-penales',
    'permanencia-definitiva/documentos'
  ]::TEXT[],
  5,
  TRUE,
  NOW()
)
ON CONFLICT (slug) DO NOTHING;

-- ──────────────────────────────────────────────────────────
-- 3. vivir-en-chile/emprendimiento
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'vivir-en-chile/emprendimiento',
  'vivir-en-chile',
  'vivir-en-chile',
  'cluster',
  'Emprendimiento en Chile para Extranjeros: Cómo Crear tu Empresa 2026',
  'Cómo Emprender y Crear una Empresa en Chile siendo Extranjero',
  'Guía para extranjeros que quieren crear una empresa en Chile. SpA, EIRL, RUT empresa, trámites SII y diferencias con trabajar a honorarios en 2026.',
  'emprendimiento empresa chile extranjero visa',
  $y3$
<p>Cualquier extranjero con <strong>RUT chileno vigente</strong> puede crear una empresa en Chile, independientemente de su categoría migratoria. No necesitas Permanencia Definitiva ni ciudadanía para emprender — con una visa temporaria activa ya puedes iniciar actividades y formalizar un negocio.</p>

<h2>Honorarios vs. empresa formal: ¿cuál te conviene?</h2>
<table>
  <thead><tr><th></th><th>Honorarios (independiente)</th><th>Empresa formal (SpA/EIRL)</th></tr></thead>
  <tbody>
    <tr><td><strong>Registro</strong></td><td>Iniciación de actividades SII</td><td>Constitución legal + SII</td></tr>
    <tr><td><strong>IVA</strong></td><td>No cobras IVA (servicios)</td><td>Cobras IVA 19% si vendes productos/servicios afectos</td></tr>
    <tr><td><strong>Responsabilidad</strong></td><td>Ilimitada (personal)</td><td>Limitada al capital social</td></tr>
    <tr><td><strong>Imagen</strong></td><td>Persona natural</td><td>Razón social propia</td></tr>
    <tr><td><strong>Contratar empleados</strong></td><td>Difícil (debes ser empresa)</td><td>Sí, como empleador formal</td></tr>
    <tr><td><strong>Costo inicial</strong></td><td>Gratis</td><td>Bajo ($0 en tuempresa.cl)</td></tr>
  </tbody>
</table>
<p>Para servicios profesionales simples (diseño, consultoría, desarrollo web), los <strong>honorarios</strong> suelen ser suficientes. Si necesitas contratar personal, emitir facturas con IVA, o proyectar una imagen más corporativa, una <strong>empresa formal</strong> es lo indicado.</p>

<h2>Tipos de empresa más usados por emprendedores</h2>
<ul>
  <li><strong>SpA (Sociedad por Acciones):</strong> la más flexible. Puede tener uno o más socios, capital dividido en acciones, modificación estatutaria simple. Ideal para emprendimientos con proyección de crecimiento o futuros socios.</li>
  <li><strong>EIRL (Empresa Individual de Responsabilidad Limitada):</strong> solo un dueño, responsabilidad limitada al capital aportado. Buena opción para negocios unipersonales.</li>
  <li><strong>SRL (Sociedad de Responsabilidad Limitada):</strong> requiere mínimo 2 socios, más compleja de modificar. Menos popular que la SpA para nuevos emprendimientos.</li>
</ul>

<h2>Crear una empresa en línea: tuempresa.cl</h2>
<p>El portal <a href="https://www.tuempresa.cl" target="_blank" rel="noopener noreferrer">tuempresa.cl</a> del Ministerio de Economía permite crear una SpA o EIRL completamente en línea, con costo $0 en notaría y registro. Solo necesitas:</p>
<ul>
  <li>RUT chileno vigente y Clave Única del SII.</li>
  <li>Definir nombre de la empresa, actividad económica, capital inicial y domicilio.</li>
  <li>Firma electrónica (cédula de identidad chilena con chip).</li>
</ul>
<p>El proceso toma menos de una hora. La empresa queda constituida y registrada en el Conservador de Comercio automáticamente.</p>

<h2>Pasos después de constituir la empresa</h2>
<ol>
  <li><strong>Iniciación de actividades en el SII</strong> con el RUT de la empresa — en <a href="https://www.sii.cl" target="_blank" rel="noopener noreferrer">sii.cl</a>.</li>
  <li><strong>Obtener resolución de inicio de actividades</strong> del SII para poder emitir boletas y facturas.</li>
  <li><strong>Abrir cuenta bancaria empresa</strong> — BancoEstado ofrece cuenta Pyme gratuita para empresas con ventas hasta cierto monto anual.</li>
  <li><strong>Registrarse como empleador en la DT</strong> si vas a contratar personal.</li>
</ol>

<h2>Impuestos de una empresa en Chile</h2>
<ul>
  <li><strong>Impuesto de Primera Categoría:</strong> 10% para Pymes con régimen Pro Pyme (ventas hasta 75.000 UF anuales) o 27% en régimen general. Se paga sobre las utilidades.</li>
  <li><strong>IVA:</strong> 19% sobre ventas de productos y servicios afectos. Debes declarar mensualmente.</li>
  <li><strong>Retenciones de empleados:</strong> si contratas trabajadores, retienes el impuesto de segunda categoría de sus sueldos.</li>
</ul>
<p>Para una empresa pequeña con régimen Pro Pyme, la carga tributaria es manejable. Considera contratar a un contador desde el inicio para las declaraciones mensuales de IVA y la declaración anual.</p>

<h2>¿Afecta el emprendimiento a mi visa?</h2>
<p>Ser dueño de empresa no cambia tu categoría migratoria ni pone en riesgo tu visa. De hecho, una empresa activa con ingresos puede ser una forma válida de acreditar actividad lícita para la renovación de visa temporaria o para la Permanencia Definitiva. Conserva los documentos tributarios de la empresa como respaldo.</p>
  $y3$,
  '[
    {
      "question": "¿Puedo crear una empresa en Chile si todavía estoy tramitando mi visa?",
      "answer": "Sí, si tienes comprobante de trámite activo (que te da residencia legal temporal) y RUT chileno. El comprobante de trámite más el RUT son suficientes para iniciar actividades en el SII y usar tuempresa.cl. Verifica que tu RUT esté activo en el SII antes de iniciar."
    },
    {
      "question": "¿Necesito socios chilenos para crear una empresa?",
      "answer": "No. Una SpA puede tener un único accionista extranjero. Una EIRL también puede tener un solo dueño extranjero. No existe ninguna exigencia de que los socios sean chilenos o tengan Permanencia Definitiva."
    },
    {
      "question": "¿Qué diferencia hay entre trabajar a honorarios y tener una empresa para efectos de la visa?",
      "answer": "Ambas formas son actividad lícita válida para acreditar ante el SERMIG. La diferencia es que los honorarios se registran a nombre personal con iniciación de actividades, mientras que la empresa tiene su propio RUT y razón social. Para la Permanencia Definitiva, ambas sirven igualmente — lo importante es tener documentación tributaria (boletas, facturas, declaraciones de renta)."
    },
    {
      "question": "¿Una empresa chilena puede traer trabajadores extranjeros?",
      "answer": "Sí. Una empresa chilena puede ser empleador y contratar trabajadores extranjeros, incluso siendo tú mismo un extranjero el dueño. El trabajador extranjero debe tramitar su propia visa de trabajo (sujeta a contrato). La empresa actúa como empleador patrocinador ante el SERMIG."
    }
  ]'::jsonb,
  ARRAY[
    'vivir-en-chile',
    'vivir-en-chile/trabajo-contrato',
    'vivir-en-chile/rut-provisorio-sii',
    'vivir-en-chile/impuestos-extranjero',
    'permanencia-definitiva/via-trabajo',
    'visa-temporaria/contrato-trabajo'
  ]::TEXT[],
  8,
  TRUE,
  NOW()
)
ON CONFLICT (slug) DO NOTHING;

-- ──────────────────────────────────────────────────────────
-- 4. problemas/multa-migracion
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'problemas/multa-migracion',
  'problemas',
  'problemas',
  'cluster',
  'Multa por Irregular en Chile: Cuánto Es y Cómo Pagarla 2026',
  'Multa Migratoria en Chile: Montos, Cómo Pagarla y Si Afecta tu Visa',
  'Información sobre la multa por permanencia irregular en Chile. Monto en UTM, cómo se notifica, cómo pagarla y si la autodenuncia evita la multa en 2026.',
  'multa migracion irregular chile pagar',
  $y4$
<p>La <strong>Ley 21.325</strong> establece multas para quienes permanecen en Chile en situación migratoria irregular. Si estás o estuviste en situación irregular, esta guía explica qué esperar y cómo actuar.</p>

<h2>¿En qué casos se aplica la multa?</h2>
<ul>
  <li><strong>Permanencia irregular:</strong> haber estado en Chile con permiso de turismo o visa vencidos sin regularizarse.</li>
  <li><strong>Trabajo sin autorización:</strong> trabajar sin tener el tipo de visa que permite trabajar.</li>
  <li><strong>Incumplimiento de condiciones de la visa:</strong> por ejemplo, estudiar cuando la visa solo permite trabajar.</li>
</ul>

<h2>¿Cuánto es la multa?</h2>
<p>El monto de la multa varía entre <strong>1 UTM y 5 UTM</strong> según la gravedad y duración de la irregularidad. La UTM (Unidad Tributaria Mensual) se actualiza mensualmente — consulta el valor vigente en <a href="https://www.sii.cl" target="_blank" rel="noopener noreferrer">sii.cl</a>. Como referencia, 1 UTM equivale aproximadamente a $66.000–$68.000 CLP (valor 2026).</p>
<table>
  <thead><tr><th>Situación</th><th>Multa aproximada</th></tr></thead>
  <tbody>
    <tr><td>Overstay breve (1–3 meses), primera vez</td><td>1–2 UTM</td></tr>
    <tr><td>Irregularidad prolongada o reincidencia</td><td>3–5 UTM</td></tr>
    <tr><td>Trabajo sin autorización</td><td>Puede sumarse a la multa por permanencia</td></tr>
  </tbody>
</table>
<p><em>Nota: los montos exactos los determina el SERMIG según el caso concreto. Esta tabla es orientativa.</em></p>

<h2>¿Cómo se notifica la multa?</h2>
<p>La multa puede notificarse de dos formas:</p>
<ul>
  <li><strong>En un control migratorio o policial:</strong> si eres detectado en situación irregular por PDI u otros organismos, puedes recibir una citación al SERMIG o la multa directamente.</li>
  <li><strong>Durante el proceso de autodenuncia:</strong> al regularizarte voluntariamente, el SERMIG puede aplicar una multa como parte del proceso, aunque con montos generalmente menores que si eres detectado.</li>
</ul>

<h2>¿La autodenuncia evita la multa?</h2>
<p>No siempre la evita, pero generalmente <strong>reduce significativamente su monto</strong> o puede resultar en su condonación si el SERMIG lo estima pertinente. La autodenuncia voluntaria es siempre tratada más favorablemente que la detección en un operativo. Además, evitar la autodenuncia y ser encontrado en situación irregular puede llevar a consecuencias más graves, incluyendo la expulsión. Ver <a href="/autodenuncia">guía de autodenuncia</a>.</p>

<h2>¿Cómo pagar la multa?</h2>
<p>El SERMIG notifica el monto de la multa mediante una resolución formal. El pago se realiza:</p>
<ul>
  <li>En las <strong>oficinas del SERMIG</strong> de tu región, con la resolución de multa en mano.</li>
  <li>En algunos casos, mediante <strong>transferencia bancaria</strong> a la cuenta indicada en la resolución.</li>
</ul>
<p>Guarda el comprobante de pago — es fundamental presentarlo para continuar el proceso de regularización.</p>

<h2>¿Afecta la multa a futuras solicitudes de visa?</h2>
<p>Una multa <strong>pagada</strong> generalmente no bloquea futuras solicitudes de visa. Lo que puede bloquearlas es tener una multa <strong>impaga</strong> o una expulsión pendiente. Regulariza tu situación y paga cualquier multa antes de presentar solicitudes nuevas.</p>

<h2>¿Cuándo puede haber expulsión en lugar de multa?</h2>
<p>La expulsión se aplica a casos más graves: reincidencia, delitos, condenas penales, o cuando el SERMIG determina que la persona es un riesgo para el orden público. Para la mayoría de los casos de overstay sin antecedentes, la multa es la consecuencia más probable. Ver <a href="/problemas/expulsion">Expulsión migratoria</a> para más detalles.</p>
  $y4$,
  '[
    {
      "question": "¿Puedo salir de Chile si tengo una multa migratoria sin pagar?",
      "answer": "Técnicamente puede ser posible salir, pero es arriesgado. En el control de salida, el PDI puede detectar la multa impaga y generar consecuencias (registro de salida forzada, impedimento de reingreso). Lo recomendable es regularizar la situación y pagar la multa antes de salir. Si necesitas salir urgente, consulta con el SERMIG sobre el procedimiento."
    },
    {
      "question": "¿Cuánto tiempo tengo para pagar la multa desde que me la notifican?",
      "answer": "La resolución de multa indica el plazo. Generalmente hay un período para pagar o impugnar la multa (recurso de reposición). No ignorar la notificación — la multa impaga genera intereses y puede bloquearte futuras solicitudes migratorias."
    },
    {
      "question": "¿Puedo impugnar la multa si creo que es injusta?",
      "answer": "Sí. Puedes interponer un recurso de reposición ante el SERMIG dentro del plazo indicado en la resolución. Si el recurso es rechazado, puedes continuar con recurso jerárquico ante el Ministerio del Interior. Ver la guía de recursos administrativos migratorios."
    },
    {
      "question": "¿La multa aparece en mis antecedentes penales?",
      "answer": "No. Las multas migratorias son sanciones administrativas, no penales. No aparecen en el certificado de antecedentes del Registro Civil. Sin embargo, quedan registradas en el sistema del SERMIG y pueden afectar la evaluación de futuras solicitudes migratorias."
    }
  ]'::jsonb,
  ARRAY[
    'problemas',
    'autodenuncia',
    'problemas/visa-vencida',
    'problemas/expulsion',
    'problemas/recurso-administrativo'
  ]::TEXT[],
  6,
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
  'peru/documentos-peru',
  'argentina/documentos-argentina',
  'vivir-en-chile/emprendimiento',
  'problemas/multa-migracion'
)
ORDER BY slug;
