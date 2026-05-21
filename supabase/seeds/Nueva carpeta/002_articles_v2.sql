-- ============================================================
-- MigraciónChile — Seed v2: silos visa-temporaria y permanencia-definitiva
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

-- ──────────────────────────────────────────────────────────
-- 1. CLUSTER: visa-temporaria/responsabilidad-democratica
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'visa-temporaria/responsabilidad-democratica',
  'visa-temporaria',
  'visa-temporaria',
  'cluster',
  'Visa de Responsabilidad Democrática (VRD): Requisitos 2026',
  'Visa de Responsabilidad Democrática para Venezolanos: Requisitos y Cómo Solicitarla',
  'Guía completa de la Visa de Responsabilidad Democrática (VRD) para venezolanos en Chile: requisitos, documentos, proceso y estado actual.',
  'visa responsabilidad democratica venezuela',
  $d1$
<p>La <strong>Visa de Responsabilidad Democrática (VRD)</strong> es una categoría migratoria creada por Chile exclusivamente para ciudadanos venezolanos, en reconocimiento a la situación política y humanitaria de Venezuela. Fue establecida en 2018 y renovada con modificaciones por la Ley 21.325 de 2021.</p>

<h2>¿Quiénes pueden solicitarla?</h2>
<p>Pueden solicitar la VRD los ciudadanos venezolanos que cumplan los siguientes requisitos:</p>
<ul>
  <li>Ser <strong>nacional venezolano</strong> con pasaporte vigente o en trámite de renovación.</li>
  <li>No tener <strong>antecedentes penales</strong> en Chile ni en Venezuela (ni en ningún país donde hayan residido).</li>
  <li>No tener <strong>órdenes de expulsión</strong> vigentes en Chile.</li>
  <li>Encontrarse en Chile <strong>con o sin visa vigente</strong> — si la visa está vencida, es necesario completar primero la <a href="/autodenuncia">autodenuncia migratoria</a>.</li>
</ul>
<p>La VRD no requiere acreditar contrato de trabajo, vínculo familiar con un chileno ni ninguna otra causal específica. Es de carácter humanitario.</p>

<h2>¿Sigue vigente la VRD en 2026?</h2>
<p>Sí. La VRD continúa disponible para venezolanos en Chile. Sin embargo, su vigencia ha estado sujeta a renovaciones periódicas y el gobierno chileno puede establecer condiciones adicionales o plazos de presentación. Verifica siempre el estado actualizado en el <a href="https://tramitesmigratorios.interior.gob.cl" target="_blank" rel="noopener noreferrer">portal oficial del SERMIG</a> antes de presentar.</p>

<h2>Documentos necesarios</h2>
<table>
  <thead>
    <tr><th>Documento</th><th>Especificaciones</th></tr>
  </thead>
  <tbody>
    <tr>
      <td>Pasaporte venezolano vigente</td>
      <td>Con al menos 6 meses de vigencia. Si está vencido, consulta el procedimiento con pasaporte caducado más abajo.</td>
    </tr>
    <tr>
      <td>Certificado de antecedentes penales de Venezuela</td>
      <td>Emitido por el CICPC o el Ministerio del Poder Popular para Relaciones Interiores. Apostillado. No mayor a 90 días.</td>
    </tr>
    <tr>
      <td>Certificado de antecedentes del Registro Civil de Chile</td>
      <td>Gratis en <a href="https://www.registrocivil.cl" target="_blank" rel="noopener noreferrer">registrocivil.cl</a>. Solo si llevas más de 6 meses en Chile.</td>
    </tr>
    <tr>
      <td>Fotografía reciente</td>
      <td>Fondo blanco, formato digital JPG o PNG, tamaño pasaporte.</td>
    </tr>
    <tr>
      <td>Comprobante de domicilio en Chile</td>
      <td>Contrato de arriendo, boleta de servicios básicos o declaración jurada notarial de hospedaje.</td>
    </tr>
  </tbody>
</table>

<h2>¿Qué pasa si mi pasaporte venezolano está vencido?</h2>
<p>Este es uno de los casos más frecuentes. El SERMIG puede aceptar pasaportes venezolanos vencidos bajo la VRD, dado el reconocimiento oficial de las dificultades para renovar documentos en Venezuela. Sin embargo, la política puede cambiar. Consulta directamente en el portal del SERMIG o en la <a href="https://www.ve.cl" target="_blank" rel="noopener noreferrer">Embajada de Venezuela en Chile</a> sobre el estado actual del reconocimiento de pasaportes vencidos.</p>

<h2>Cómo solicitarla paso a paso</h2>
<ol>
  <li>Si tu visa está vencida, realiza primero la <a href="/autodenuncia/pdi-paso-a-paso">autodenuncia en la PDI</a> para obtener el Certificado de Autodenuncia.</li>
  <li>Reúne todos los documentos indicados. Verifica fechas de vigencia.</li>
  <li>Ingresa al portal <a href="https://tramitesmigratorios.interior.gob.cl" target="_blank" rel="noopener noreferrer">tramitesmigratorios.interior.gob.cl</a> y crea una cuenta.</li>
  <li>Selecciona <strong>Solicitud de visa → Visa Temporaria → Razones humanitarias → Responsabilidad Democrática</strong>.</li>
  <li>Carga los documentos (PDF o JPG, máximo 5 MB por archivo) y paga el arancel.</li>
  <li>Guarda el número de trámite para consultar el estado de tu solicitud.</li>
</ol>

<h2>Vigencia y renovación</h2>
<p>La VRD se otorga por <strong>1 año calendario</strong> y es renovable. Después de 1 año continuo con la VRD vigente, puedes solicitar la <a href="/permanencia-definitiva">Permanencia Definitiva</a>. Esto te permite residir y trabajar en Chile sin límite de tiempo.</p>

<h2>¿Puedo trabajar con la VRD?</h2>
<p>Sí. La Visa de Responsabilidad Democrática incluye <strong>permiso de trabajo</strong> en todas sus categorías. Puedes trabajar de forma dependiente o independiente desde que la visa está aprobada. Durante el trámite, el comprobante de solicitud también es aceptado por muchos empleadores.</p>
  $d1$,
  '[
    {
      "question": "¿La VRD aplica solo para venezolanos dentro de Chile?",
      "answer": "La VRD se solicita estando dentro de Chile. Los venezolanos fuera del país deben gestionar una visa de turismo u otra categoría en el consulado chileno de su país de residencia."
    },
    {
      "question": "¿Puedo solicitar la VRD aunque haya ingresado ilegalmente a Chile?",
      "answer": "Sí. Si ingresaste sin visa o tu visa venció, primero debes hacer la autodenuncia migratoria en la PDI. Con el Certificado de Autodenuncia puedes presentar la solicitud de VRD aunque hayas estado en situación irregular."
    },
    {
      "question": "¿Cuánto tiempo tarda la resolución de la VRD?",
      "answer": "El SERMIG tiene plazo legal de 30 días hábiles, pero el tiempo real suele estar entre 60 y 180 días hábiles dependiendo de la carga del servicio. Durante ese período, el comprobante de solicitud es suficiente para trabajar."
    },
    {
      "question": "¿Qué pasa si me rechazan la VRD?",
      "answer": "Si la solicitud es rechazada, recibirás una resolución con el motivo. Tienes derecho a interponer un recurso administrativo dentro del plazo indicado en la resolución. Consulta nuestra guía sobre rechazos en la sección de Problemas Migratorios."
    },
    {
      "question": "¿Puedo incluir a mis hijos en la VRD?",
      "answer": "Los hijos menores de 18 años venezolanos pueden ser incluidos como carga familiar en tu solicitud de VRD. Debes declararlos en el formulario y presentar sus documentos de identidad y certificado de nacimiento."
    },
    {
      "question": "¿La VRD me sirve para solicitar la permanencia definitiva?",
      "answer": "Sí. Después de completar 1 año continuo con la VRD vigente, puedes solicitar la Permanencia Definitiva, que no tiene límite de tiempo y te otorga residencia permanente en Chile."
    }
  ]'::jsonb,
  ARRAY[
    'visa-temporaria',
    'autodenuncia/pdi-paso-a-paso',
    'permanencia-definitiva',
    'venezuela',
    'vivir-en-chile/rut-extranjero'
  ]::TEXT[],
  6,
  TRUE,
  NOW()
);

-- ──────────────────────────────────────────────────────────
-- 2. CLUSTER: visa-temporaria/contrato-trabajo
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, schema_type, howto_steps, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'visa-temporaria/contrato-trabajo',
  'visa-temporaria',
  'visa-temporaria',
  'cluster',
  'Visa Temporaria por Contrato de Trabajo en Chile: Guía 2026',
  'Visa Temporaria por Contrato de Trabajo: Requisitos, Documentos y Proceso',
  'Cómo obtener la visa temporaria en Chile con un contrato de trabajo: requisitos, documentos que debe tramitar el empleador y plazos.',
  'visa temporaria contrato de trabajo chile',
  $d2$
<p>La <strong>visa temporaria por contrato de trabajo</strong> permite a un extranjero residir y trabajar legalmente en Chile cuando cuenta con un empleador dispuesto a contratarlo de forma formal. Es la vía más común para quienes tienen una oferta de empleo concreta.</p>

<h2>¿Quién puede solicitarla?</h2>
<p>Puede solicitar esta visa cualquier extranjero que:</p>
<ul>
  <li>Tenga un <strong>contrato de trabajo firmado</strong> con un empleador chileno (persona natural o jurídica con RUT chileno).</li>
  <li>No tenga antecedentes penales graves en Chile ni en su país de origen.</li>
  <li>Se encuentre en Chile — si está en situación irregular, debe completar primero la <a href="/autodenuncia">autodenuncia migratoria</a>.</li>
</ul>
<p>El empleador no necesita ser una empresa grande. Una persona natural (como empleador doméstico) también puede firmar el contrato habilitante.</p>

<h2>Rol del empleador</h2>
<p>El empleador tiene un papel activo en este proceso. Debe:</p>
<ol>
  <li>Firmar un contrato de trabajo según las normas del Código del Trabajo chileno.</li>
  <li>Registrar el contrato en la <strong>Dirección del Trabajo</strong> a través del portal <a href="https://www.dt.gob.cl" target="_blank" rel="noopener noreferrer">dt.gob.cl</a>.</li>
  <li>Comprometerse a mantener el contrato vigente mientras dure el proceso de visa.</li>
</ol>
<p>Un contrato no registrado en la Dirección del Trabajo puede ser rechazado por el SERMIG.</p>

<h2>Documentos necesarios</h2>
<table>
  <thead>
    <tr><th>Documento</th><th>Quién lo obtiene</th></tr>
  </thead>
  <tbody>
    <tr>
      <td>Pasaporte vigente (mín. 6 meses de vigencia)</td>
      <td>El trabajador extranjero</td>
    </tr>
    <tr>
      <td>Contrato de trabajo firmado y registrado en la DT</td>
      <td>El empleador</td>
    </tr>
    <tr>
      <td>Certificado de antecedentes penales del país de origen (apostillado)</td>
      <td>El trabajador — no mayor a 90 días</td>
    </tr>
    <tr>
      <td>Certificado de antecedentes del Registro Civil de Chile</td>
      <td>El trabajador — gratis en <a href="https://www.registrocivil.cl" target="_blank" rel="noopener noreferrer">registrocivil.cl</a></td>
    </tr>
    <tr>
      <td>Fotografía reciente fondo blanco</td>
      <td>El trabajador</td>
    </tr>
    <tr>
      <td>Comprobante de domicilio en Chile</td>
      <td>El trabajador</td>
    </tr>
  </tbody>
</table>

<h2>Paso a paso</h2>
<ol>
  <li>El empleador firma el contrato de trabajo y lo registra en la Dirección del Trabajo.</li>
  <li>Si estás en situación irregular, completa la <a href="/autodenuncia/pdi-paso-a-paso">autodenuncia en la PDI</a>.</li>
  <li>Reúne los documentos personales indicados.</li>
  <li>Ingresa al portal <a href="https://tramitesmigratorios.interior.gob.cl" target="_blank" rel="noopener noreferrer">tramitesmigratorios.interior.gob.cl</a>.</li>
  <li>Selecciona <strong>Solicitud de visa → Visa Temporaria → Trabajo → Contrato de trabajo</strong>.</li>
  <li>Carga los documentos y paga el arancel de solicitud.</li>
  <li>Guarda el número de trámite para seguimiento.</li>
</ol>

<h2>¿Puedo trabajar mientras espero la resolución?</h2>
<p>Sí. Desde el momento en que presentas la solicitud, el comprobante de trámite te habilita para trabajar con el empleador que firmó el contrato. No debes esperar a que el SERMIG resuelva para comenzar a trabajar.</p>
<p>Sin embargo, para obtener tu <strong>RUT definitivo</strong> en el Registro Civil deberás esperar a que la visa sea aprobada.</p>

<h2>¿Qué pasa si el empleador cancela el contrato?</h2>
<p>Si el contrato se termina mientras el trámite está en curso, debes notificar al SERMIG y actualizar tu situación. Dependiendo de las circunstancias, podrás presentar un nuevo contrato o la visa puede ser rechazada. No ocultarlo puede derivar en complicaciones migratorias futuras.</p>

<h2>Vigencia y renovación</h2>
<p>La visa se otorga inicialmente por <strong>1 año</strong> y es renovable mientras mantengas la relación laboral. Después de 1 año continuo con la visa vigente puedes solicitar la <a href="/permanencia-definitiva">Permanencia Definitiva</a>.</p>
  $d2$,
  'HowTo',
  '[
    {"name": "Firma y registra el contrato de trabajo", "text": "El empleador firma el contrato según el Código del Trabajo y lo registra en la Dirección del Trabajo (dt.gob.cl)."},
    {"name": "Autodenuncia si estás en situación irregular", "text": "Si tu visa venció o ingresaste sin visa, presenta la autodenuncia en cualquier comisaría PDI antes de continuar."},
    {"name": "Reúne los documentos personales", "text": "Pasaporte vigente, antecedentes penales del país de origen apostillados, certificado de antecedentes de Chile, fotografía y domicilio."},
    {"name": "Presenta la solicitud en el portal del SERMIG", "text": "Ingresa a tramitesmigratorios.interior.gob.cl, selecciona Visa Temporaria › Trabajo › Contrato de trabajo y carga los documentos."},
    {"name": "Paga el arancel y guarda el comprobante", "text": "El comprobante de solicitud te habilita para trabajar de inmediato con el empleador contratante."},
    {"name": "Recibe la visa y obtén tu RUT definitivo", "text": "Con la visa aprobada, acércate al SRCeI para obtener tu cédula de identidad para extranjeros y RUT definitivo."}
  ]'::jsonb,
  '[
    {
      "question": "¿Puede ser mi empleador una persona natural (no empresa)?",
      "answer": "Sí. Un empleador doméstico, una persona que te contrata para trabajos del hogar o cualquier persona natural con RUT chileno puede firmar el contrato habilitante. El contrato debe igual registrarse en la Dirección del Trabajo."
    },
    {
      "question": "¿El empleador debe pagar algo para contratarme como extranjero?",
      "answer": "No hay costos adicionales para el empleador más allá de las obligaciones laborales normales (cotizaciones, sueldo mínimo si aplica). El SERMIG no cobra aranceles al empleador."
    },
    {
      "question": "¿Puedo cambiar de empleador mientras tramito la visa?",
      "answer": "Si cambias de empleador antes de que la visa sea resuelta, debes actualizar la solicitud con el nuevo contrato. Esto puede reiniciar los plazos de revisión. Se recomienda esperar a tener la visa aprobada antes de cambiar de empleador."
    },
    {
      "question": "¿Cuánto cuesta el arancel de la visa por contrato de trabajo?",
      "answer": "El arancel varía según el país de origen (reciprocidad). Para la mayoría de los países latinoamericanos oscila entre $50.000 y $100.000 CLP. Algunas nacionalidades tienen exención."
    },
    {
      "question": "¿Tengo que presentar el contrato en físico o puede ser digital?",
      "answer": "El portal del SERMIG acepta documentos en formato PDF o JPG (máximo 5 MB por archivo). No es necesario presentar documentos físicos salvo que se te indique lo contrario en la resolución."
    }
  ]'::jsonb,
  ARRAY[
    'visa-temporaria',
    'autodenuncia/pdi-paso-a-paso',
    'permanencia-definitiva',
    'vivir-en-chile/rut-extranjero',
    'problemas/visa-vencida'
  ]::TEXT[],
  6,
  TRUE,
  NOW()
);

-- ──────────────────────────────────────────────────────────
-- 3. PILLAR: permanencia-definitiva (update con contenido)
-- ──────────────────────────────────────────────────────────
UPDATE articles SET
  content = $d3$
<p>La <strong>permanencia definitiva</strong> es el permiso de residencia permanente en Chile. A diferencia de las visas temporarias, no tiene fecha de vencimiento: una vez obtenida, puedes vivir y trabajar en Chile de forma indefinida sin necesidad de renovar ningún permiso migratorio.</p>

<h2>¿Quiénes pueden solicitarla?</h2>
<p>Puede solicitar la permanencia definitiva cualquier extranjero que cumpla una de estas condiciones:</p>
<ul>
  <li>Haber tenido <strong>visa temporaria vigente por al menos 1 año continuo</strong> en Chile.</li>
  <li>Ser <strong>cónyuge o conviviente civil de un residente permanente</strong> chileno.</li>
  <li>Ser <strong>padre o madre de un hijo o hija chileno</strong> (en algunos casos puede solicitarse de forma directa, sin pasar por visa temporaria).</li>
  <li>Haber cumplido el plazo establecido en otras categorías especiales contempladas por la Ley 21.325.</li>
</ul>
<p>El caso más común es el del extranjero que ya tiene una visa temporaria (por contrato de trabajo, hijo chileno, VRD u otra) y completa el año requerido.</p>

<h2>Ventajas de la permanencia definitiva sobre la visa temporaria</h2>
<ul>
  <li><strong>Sin vencimiento:</strong> no debes renovar el permiso cada año.</li>
  <li><strong>Sin restricción de empleador:</strong> puedes trabajar con quien quieras, cambiar de trabajo libremente, o trabajar de forma independiente.</li>
  <li><strong>Cédula de identidad para extranjeros:</strong> obtienes la cédula definitiva en el SRCeI.</li>
  <li><strong>Paso previo a la nacionalización:</strong> llevar 5 años con permanencia definitiva te habilita para solicitar la <a href="/nacionalizacion">carta de nacionalización chilena</a>.</li>
</ul>

<h2>¿Cómo se cuenta el año de residencia?</h2>
<p>El año continuo se cuenta desde la fecha de inicio de vigencia de tu visa temporaria, no desde la fecha de solicitud. Puedes salir de Chile durante ese período, pero las ausencias no deben superar los <strong>180 días en total</strong> durante el año. Si superas ese límite, el año no se cuenta como continuo.</p>

<h2>Documentos necesarios</h2>
<p>La lista completa de documentos está en el artículo <a href="/permanencia-definitiva/requisitos">Requisitos para la Permanencia Definitiva</a>. En líneas generales incluye:</p>
<ul>
  <li>Pasaporte vigente</li>
  <li>Visa temporaria vigente (o resolución de aprobación)</li>
  <li>Certificado de antecedentes penales de Chile</li>
  <li>Comprobante de domicilio</li>
  <li>Formulario de solicitud del SERMIG</li>
</ul>

<h2>¿Puedo solicitarla si mi visa temporaria venció?</h2>
<p>Si la visa venció hace poco y ya cumpliste el año requerido, puedes igual presentar la solicitud. Sin embargo, si llevas más de 90 días con la visa vencida sin haber tramitado, podrías enfrentar complicaciones. Consulta el caso específico en la sección de <a href="/problemas">Problemas Migratorios</a>.</p>

<h2>¿Qué sigue después de la permanencia definitiva?</h2>
<p>Después de 5 años con permanencia definitiva puedes iniciar el proceso de <a href="/nacionalizacion">nacionalización chilena</a>. Si no te interesa la nacionalización, la permanencia definitiva es suficiente para vivir en Chile de forma indefinida.</p>
  $d3$,
  faq_items = '[
    {
      "question": "¿Cuánto tiempo tarda la resolución de la permanencia definitiva?",
      "answer": "El SERMIG tiene plazo legal de 30 días hábiles, pero el tiempo real suele ser de 60 a 120 días hábiles. Durante ese período, el comprobante de solicitud actúa como documento habilitante."
    },
    {
      "question": "¿Puedo trabajar mientras tramito la permanencia definitiva?",
      "answer": "Sí. Si tu visa temporaria aún está vigente, puedes trabajar con normalidad. Si la visa venció pero presentaste la solicitud de permanencia antes del vencimiento, el comprobante de trámite te habilita para continuar trabajando."
    },
    {
      "question": "¿Cuánto cuesta solicitar la permanencia definitiva?",
      "answer": "El arancel de solicitud varía según el país de origen. Para la mayoría de los latinoamericanos oscila entre $50.000 y $100.000 CLP. Algunas categorías especiales están exentas."
    },
    {
      "question": "¿Puedo salir de Chile mientras tramito la permanencia definitiva?",
      "answer": "Sí, puedes salir con el comprobante de trámite. Sin embargo, si la resolución llega mientras estás fuera, tendrás un plazo para ingresar y retirar la cédula. No se recomienda hacer viajes largos mientras el trámite está activo."
    },
    {
      "question": "¿La permanencia definitiva caduca si paso mucho tiempo fuera de Chile?",
      "answer": "Técnicamente no caduca, pero una ausencia de más de 1 año sin autorización puede ser causal para revocarla. Si planeas ausentarte por largo tiempo, notifica al SERMIG."
    }
  ]'::jsonb,
  related_slugs = ARRAY[
    'permanencia-definitiva/requisitos',
    'visa-temporaria/hijo-chileno',
    'visa-temporaria/contrato-trabajo',
    'nacionalizacion',
    'vivir-en-chile/rut-extranjero'
  ]::TEXT[],
  reading_time_minutes = 5,
  updated_at = NOW()
WHERE slug = 'permanencia-definitiva';

-- ──────────────────────────────────────────────────────────
-- 4. CLUSTER: permanencia-definitiva/requisitos
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, schema_type, howto_steps, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'permanencia-definitiva/requisitos',
  'permanencia-definitiva',
  'permanencia-definitiva',
  'cluster',
  'Requisitos para la Permanencia Definitiva en Chile 2026',
  'Permanencia Definitiva en Chile: Requisitos, Documentos y Paso a Paso',
  'Listado completo de requisitos y documentos para solicitar la permanencia definitiva en Chile. Proceso actualizado 2026.',
  'requisitos permanencia definitiva chile',
  $d4$
<p>La <strong>permanencia definitiva</strong> en Chile requiere cumplir un conjunto de requisitos documentales y de residencia. A continuación se detalla la lista completa actualizada y el proceso para presentar la solicitud.</p>

<h2>Requisito principal: 1 año de visa temporaria</h2>
<p>El requisito central es haber tenido una <strong>visa temporaria vigente durante al menos 1 año continuo</strong> en Chile. Este año se cuenta desde la fecha de inicio de vigencia de la visa, y admite ausencias de hasta 180 días en total durante ese período.</p>
<p>Si tienes visa por hijo chileno, por contrato de trabajo, VRD u otra categoría, el año cuenta desde que esa visa fue vigente — no desde que presentaste la solicitud.</p>

<h2>Documentos necesarios</h2>
<table>
  <thead>
    <tr><th>Documento</th><th>Especificaciones</th></tr>
  </thead>
  <tbody>
    <tr>
      <td>Pasaporte vigente</td>
      <td>Con al menos 6 meses de vigencia. Si está por vencer, renuévalo antes de presentar.</td>
    </tr>
    <tr>
      <td>Visa temporaria vigente o resolución de aprobación</td>
      <td>Documento que acredite tu residencia legal en Chile por al menos 1 año.</td>
    </tr>
    <tr>
      <td>Certificado de antecedentes penales de Chile</td>
      <td>Gratis en <a href="https://www.registrocivil.cl" target="_blank" rel="noopener noreferrer">registrocivil.cl</a> o en cualquier oficina del SRCeI. No mayor a 90 días.</td>
    </tr>
    <tr>
      <td>Certificado de antecedentes penales del país de origen</td>
      <td>Apostillado. Si no está en español, traducción oficial. No mayor a 90 días.</td>
    </tr>
    <tr>
      <td>Comprobante de domicilio en Chile</td>
      <td>Contrato de arriendo, boleta de servicios o declaración jurada notarial de hospedaje.</td>
    </tr>
    <tr>
      <td>Fotografía reciente</td>
      <td>Tamaño pasaporte, fondo blanco, en formato digital JPG o PNG.</td>
    </tr>
    <tr>
      <td>Formulario de solicitud del SERMIG</td>
      <td>Se completa directamente en el portal tramitesmigratorios.interior.gob.cl al momento de presentar.</td>
    </tr>
  </tbody>
</table>

<h2>Documentos adicionales según tu situación</h2>
<p>Dependiendo de la causal de tu visa temporaria, el SERMIG puede pedir documentos complementarios:</p>
<ul>
  <li><strong>Si tu visa es por hijo chileno:</strong> certificado de nacimiento actualizado del hijo/a (SRCeI, no mayor a 90 días).</li>
  <li><strong>Si tu visa es por contrato de trabajo:</strong> certificado de cotizaciones de la AFP y de salud que acredite tu relación laboral durante el año.</li>
  <li><strong>Si tu visa es por pareja chilena:</strong> certificado de matrimonio o AUC actualizado.</li>
  <li><strong>Si tu visa es VRD:</strong> no se requieren documentos adicionales más allá de la lista estándar.</li>
</ul>

<h2>Paso a paso para solicitar</h2>
<ol>
  <li>Verifica que tu visa temporaria lleva al menos 1 año de vigencia y que no superaste los 180 días de ausencia durante ese período.</li>
  <li>Reúne todos los documentos indicados. Revisa fechas: los certificados no deben tener más de 90 días de antigüedad al momento de presentar.</li>
  <li>Ingresa al portal <a href="https://tramitesmigratorios.interior.gob.cl" target="_blank" rel="noopener noreferrer">tramitesmigratorios.interior.gob.cl</a> con tu cuenta existente.</li>
  <li>Selecciona <strong>Solicitud de permanencia definitiva</strong> y completa el formulario.</li>
  <li>Carga los documentos en formato PDF o JPG (máximo 5 MB por archivo).</li>
  <li>Paga el arancel de solicitud y guarda el comprobante.</li>
  <li>Recibirás un número de trámite. Guárdalo para consultar el estado.</li>
</ol>

<h2>¿Qué pasa después de la aprobación?</h2>
<p>Con la permanencia definitiva aprobada, debes ir al <strong>SRCeI</strong> para obtener tu nueva <strong>cédula de identidad para extranjeros</strong> con vigencia definitiva. Esta cédula tiene la misma validez legal que la de un ciudadano chileno para efectos de identificación, empleo y acceso a servicios.</p>
<p>Para más información sobre cómo sacar el RUT y acceder a servicios con la permanencia definitiva, consulta <a href="/vivir-en-chile/rut-extranjero">Cómo obtener el RUT en Chile</a>.</p>
  $d4$,
  'HowTo',
  '[
    {"name": "Verificar el año de residencia continua", "text": "Confirma que tu visa temporaria lleva al menos 1 año vigente y que no superaste 180 días de ausencia en ese período."},
    {"name": "Obtener los certificados con fecha vigente", "text": "Solicita el certificado de antecedentes de Chile (registrocivil.cl) y el de tu país de origen apostillado. Ambos deben tener menos de 90 días."},
    {"name": "Reunir documentos complementarios según tu causal", "text": "Si tu visa es por trabajo, necesitas certificado de cotizaciones. Si es por hijo chileno, el certificado de nacimiento actualizado."},
    {"name": "Presentar la solicitud en el portal del SERMIG", "text": "Ingresa a tramitesmigratorios.interior.gob.cl, selecciona Solicitud de permanencia definitiva, completa el formulario y carga los documentos."},
    {"name": "Pagar el arancel y guardar el comprobante", "text": "El comprobante de trámite actúa como habilitante mientras esperas la resolución (60-120 días hábiles en promedio)."},
    {"name": "Obtener la cédula definitiva en el SRCeI", "text": "Con la permanencia aprobada, acércate al Registro Civil para obtener tu cédula de identidad para extranjeros con vigencia indefinida."}
  ]'::jsonb,
  '[
    {
      "question": "¿Puedo solicitar la permanencia definitiva si mi visa temporal venció hace poco?",
      "answer": "Si la visa venció y ya completaste el año requerido, puedes presentar la solicitud. Si llevas más de 90 días con visa vencida sin haber tramitado, consulta directamente con el SERMIG tu situación específica."
    },
    {
      "question": "¿Los viajes al extranjero interrumpen el año de residencia?",
      "answer": "No interrumpen, pero se descuentan del cómputo. Puedes ausentarte hasta 180 días en total durante el año y aún así cumplir el requisito. Si superas ese límite, ese año no cuenta como continuo."
    },
    {
      "question": "¿Necesito apostillar los documentos de mi país si llevo años viviendo en Chile?",
      "answer": "Sí. El certificado de antecedentes penales de tu país de origen debe estar apostillado aunque lleves mucho tiempo en Chile. No se acepta sin apostilla salvo casos especiales que el SERMIG evalúa caso a caso."
    },
    {
      "question": "¿Cuánto demora el SRCeI en emitir la cédula definitiva?",
      "answer": "Una vez que tienes la resolución de permanencia aprobada, la cédula de identidad para extranjeros del SRCeI se obtiene con cita previa. El tiempo de espera para la cita varía según la región, pero suele estar entre 1 y 4 semanas."
    },
    {
      "question": "¿La permanencia definitiva me permite votar en Chile?",
      "answer": "Los extranjeros con permanencia definitiva y más de 5 años de residencia legal pueden inscribirse en el padrón electoral y votar en elecciones municipales y presidenciales. El derecho a sufragio es automático para quienes cumplan ese plazo."
    }
  ]'::jsonb,
  ARRAY[
    'permanencia-definitiva',
    'visa-temporaria/hijo-chileno',
    'visa-temporaria/contrato-trabajo',
    'visa-temporaria/responsabilidad-democratica',
    'vivir-en-chile/rut-extranjero'
  ]::TEXT[],
  6,
  TRUE,
  NOW()
);
