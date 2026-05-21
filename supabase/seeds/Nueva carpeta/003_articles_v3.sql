-- ============================================================
-- MigraciónChile — Seed v3: silos vivir-en-chile y nacionalizacion
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

-- ──────────────────────────────────────────────────────────
-- 1. PILLAR: vivir-en-chile (update con contenido)
-- ──────────────────────────────────────────────────────────
UPDATE articles SET
  content = $e1$
<p>Establecerse en Chile como extranjero implica mucho más que obtener una visa. Una vez que tienes tu permiso de residencia, hay una serie de trámites prácticos que debes hacer para acceder a servicios, trabajar formalmente y construir tu vida en el país. Esta guía cubre los pasos esenciales.</p>

<h2>Lo primero: tu RUT y cédula de identidad</h2>
<p>El <strong>RUT</strong> (Rol Único Tributario) es el número de identificación que necesitas para casi todo en Chile: abrir una cuenta bancaria, firmar un contrato, acceder a salud, matricular a tus hijos en el colegio. Los extranjeros con residencia vigente lo obtienen en el <strong>SRCeI (Servicio de Registro Civil e Identificación)</strong>.</p>
<p>Con tu visa temporaria aprobada, puedes solicitar la cédula de identidad para extranjeros y así obtener tu RUT definitivo. Durante el trámite de visa, el SII puede emitir un RUT provisorio para efectos tributarios. Lee la guía completa en <a href="/vivir-en-chile/rut-extranjero">Cómo obtener el RUT en Chile</a>.</p>

<h2>Sistema de salud</h2>
<p>Los extranjeros con residencia legal en Chile tienen acceso al sistema de salud en las mismas condiciones que los ciudadanos chilenos:</p>
<ul>
  <li><strong>FONASA:</strong> el seguro público de salud. Puedes inscribirte una vez que tengas RUT definitivo. La cotización es del 7% del sueldo imponible.</li>
  <li><strong>ISAPRE:</strong> seguro privado de salud. Requiere RUT definitivo y cotizar el 7% o más.</li>
  <li><strong>FONASA tramo A:</strong> si no tienes ingresos, puedes acceder a FONASA sin costo en el tramo A.</li>
</ul>
<p>Para acceder a atención médica mientras tramitas tu visa, puedes ir a cualquier CESFAM (Centro de Salud Familiar) con tu pasaporte y comprobante de solicitud de visa.</p>

<h2>Sistema previsional (AFP)</h2>
<p>Si trabajas de forma dependiente, tu empleador debe afiliarte a una <strong>AFP</strong> (Administradora de Fondos de Pensiones) y cotizar el 10% de tu sueldo imponible para tu jubilación. También cotizará el SIS (seguro de invalidez) y el seguro de cesantía. Esto aplica aunque seas extranjero.</p>
<p>Si trabajas de forma independiente, puedes afiliarte voluntariamente a una AFP.</p>

<h2>Educación</h2>
<p>Los hijos de extranjeros tienen <strong>derecho garantizado a educación</strong> en Chile, independientemente de la situación migratoria de los padres. Para matricular a un menor en un establecimiento municipal o particular subvencionado, necesitas:</p>
<ul>
  <li>Pasaporte o documento de identidad del menor.</li>
  <li>Certificado de nacimiento (del país de origen o del SRCeI si nació en Chile).</li>
  <li>No se puede denegar la matrícula por motivos migratorios.</li>
</ul>

<h2>Cuenta bancaria</h2>
<p>Abrir una cuenta bancaria en Chile requiere RUT definitivo en la mayoría de los bancos. Algunas alternativas mientras lo obtienes:</p>
<ul>
  <li><strong>Cuenta RUT de BancoEstado:</strong> disponible con RUT provisorio o definitivo. Es gratuita y permite recibir transferencias y pagar con tarjeta.</li>
  <li><strong>Billeteras digitales (Mercado Pago, MACH, Tenpo):</strong> algunas aceptan pasaporte extranjero sin RUT definitivo.</li>
</ul>

<h2>Transporte y licencia de conducir</h2>
<p>Con tu cédula de identidad para extranjeros puedes usar el Bip! (tarjeta del transporte público de Santiago) y pagar pasajes en todo el país. Para obtener licencia de conducir chilena, debes tener permanencia definitiva o solicitar la conversión de tu licencia extranjera. Consulta los requisitos en <a href="/vivir-en-chile/licencia-conducir">Licencia de conducir para extranjeros</a>.</p>

<h2>Homologación de títulos</h2>
<p>Si ejerces una profesión regulada (medicina, odontología, ingeniería civil, derecho, etc.), debes <strong>revalidar o reconocer tu título</strong> en Chile antes de ejercer. El proceso depende de la profesión y del país de origen del título. Consulta los detalles en <a href="/vivir-en-chile/homologacion-titulos">Homologación de títulos profesionales en Chile</a>.</p>
  $e1$,
  faq_items = '[
    {
      "question": "¿Puedo acceder a salud pública sin tener visa aprobada?",
      "answer": "Sí. Los establecimientos de salud pública (CESFAM, hospitales) no pueden negar atención de urgencia por motivos migratorios. Para atención programada, presentar el comprobante de solicitud de visa suele ser suficiente."
    },
    {
      "question": "¿Mis hijos nacidos en Chile son chilenos automáticamente?",
      "answer": "Sí, si al menos uno de los padres tiene residencia legal en Chile al momento del nacimiento. Si ambos padres son turistas o están en situación irregular, el menor no adquiere la nacionalidad automáticamente, aunque puede solicitarla al cumplir 18 años."
    },
    {
      "question": "¿Puedo comprar un inmueble en Chile siendo extranjero?",
      "answer": "Sí. No hay restricciones para que un extranjero compre propiedades en Chile. Solo necesitas RUT definitivo y financiamiento (hipotecario o propio). Algunos bancos pueden requerir permanencia definitiva para créditos hipotecarios."
    },
    {
      "question": "¿Tengo derecho a seguro de cesantía como extranjero?",
      "answer": "Sí. Los trabajadores dependientes con contrato de trabajo en Chile cotizan al seguro de cesantía de forma obligatoria, independientemente de su nacionalidad. Si eres despedido, tienes derecho a cobrar ese seguro."
    }
  ]'::jsonb,
  related_slugs = ARRAY[
    'vivir-en-chile/rut-extranjero',
    'vivir-en-chile/homologacion-titulos',
    'permanencia-definitiva',
    'nacionalizacion',
    'visa-temporaria/contrato-trabajo'
  ]::TEXT[],
  reading_time_minutes = 6,
  updated_at = NOW()
WHERE slug = 'vivir-en-chile';

-- ──────────────────────────────────────────────────────────
-- 2. CLUSTER: vivir-en-chile/rut-extranjero
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, schema_type, howto_steps, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'vivir-en-chile/rut-extranjero',
  'vivir-en-chile',
  'vivir-en-chile',
  'cluster',
  'RUT para Extranjeros en Chile: Cómo Obtenerlo 2026',
  'Cómo Obtener el RUT en Chile siendo Extranjero: Guía Paso a Paso',
  'Guía completa para obtener el RUT en Chile como extranjero: RUT provisorio del SII, cédula definitiva del SRCeI, requisitos y plazos.',
  'rut extranjero chile',
  $e2$
<p>El <strong>RUT</strong> (Rol Único Tributario) es el número de identificación que necesitas para prácticamente cualquier trámite en Chile: abrir una cuenta bancaria, firmar un contrato laboral, acceder a salud, matricular a tus hijos en el colegio o comprar un inmueble. Como extranjero, hay dos tipos de RUT que puedes obtener según tu situación.</p>

<h2>Tipos de RUT para extranjeros</h2>
<p>Existen dos vías para obtener RUT siendo extranjero en Chile:</p>
<ul>
  <li><strong>RUT provisorio (SII):</strong> disponible mientras tramitas tu visa o permanencia. Sirve para efectos tributarios y laborales básicos.</li>
  <li><strong>RUT definitivo (SRCeI):</strong> se obtiene con la cédula de identidad para extranjeros, una vez que la visa o permanencia está aprobada. Es el RUT permanente.</li>
</ul>

<h2>RUT provisorio: cómo obtenerlo en el SII</h2>
<p>Si tienes tu solicitud de visa o permanencia en trámite (es decir, tienes el número de trámite del SERMIG), puedes solicitar un RUT provisorio directamente en cualquier oficina del <strong>Servicio de Impuestos Internos (SII)</strong>.</p>
<p>Documentos necesarios para el RUT provisorio:</p>
<ul>
  <li>Pasaporte vigente.</li>
  <li>Comprobante de solicitud de visa o permanencia definitiva (con número de trámite).</li>
  <li>Comprobante de domicilio en Chile.</li>
</ul>
<p>El RUT provisorio se emite el mismo día. Con él puedes firmar contrato de trabajo, emitir boletas de honorarios, y en algunos casos abrir cuentas bancarias básicas como la Cuenta RUT de BancoEstado.</p>

<h2>RUT definitivo: cómo obtener la cédula de identidad para extranjeros</h2>
<p>Una vez que tu visa temporaria o permanencia definitiva está <strong>aprobada</strong>, debes ir al <strong>SRCeI (Registro Civil)</strong> para solicitar la cédula de identidad para extranjeros. Esta cédula incluye tu RUT definitivo.</p>
<p>Documentos necesarios para la cédula definitiva:</p>
<ul>
  <li>Pasaporte vigente.</li>
  <li>Resolución de aprobación de visa o permanencia definitiva (el documento oficial del SERMIG).</li>
  <li>Comprobante de domicilio en Chile.</li>
  <li>Fotografía (en muchas oficinas la toman en el lugar).</li>
</ul>
<p>El trámite se realiza con cita previa en cualquier oficina del SRCeI. La cédula se entrega en un plazo de <strong>5 a 10 días hábiles</strong>.</p>

<h2>¿Qué número de RUT recibiré?</h2>
<p>El RUT definitivo asignado a extranjeros en Chile comienza con el dígito <strong>5, 6 o 7</strong> seguido de 6 a 7 dígitos más el dígito verificador. Es permanente: aunque cambies de categoría migratoria (de visa temporaria a permanencia definitiva), tu RUT no cambia.</p>

<h2>¿Puedo usar el RUT provisorio para siempre?</h2>
<p>No. El RUT provisorio del SII es temporal. Una vez que obtienes la cédula de identidad para extranjeros con el RUT definitivo, debes actualizar tus datos ante el SII, tu empleador, bancos y AFP. El RUT definitivo tiene el mismo número que el provisorio en la mayoría de los casos, pero es el documento del SRCeI el que tiene validez oficial.</p>

<h2>¿Y si soy venezolano con pasaporte vencido?</h2>
<p>Si tramitaste la VRD con pasaporte vencido y el SERMIG lo aceptó, el SRCeI puede emitir la cédula con ese documento. Sin embargo, la política puede variar. Consulta directamente en la oficina del SRCeI más cercana o en la <a href="https://www.registrocivil.cl" target="_blank" rel="noopener noreferrer">web del Registro Civil</a>.</p>
  $e2$,
  'HowTo',
  '[
    {"name": "Obtén el comprobante de solicitud de visa", "text": "Al presentar tu solicitud en tramitesmigratorios.interior.gob.cl recibirás un número de trámite. Ese comprobante es lo que necesitas para el RUT provisorio."},
    {"name": "Solicita el RUT provisorio en el SII", "text": "Ve a cualquier oficina del SII con tu pasaporte, el comprobante de solicitud y un comprobante de domicilio. El RUT provisorio se emite el mismo día."},
    {"name": "Espera la aprobación de tu visa o permanencia", "text": "Una vez que el SERMIG aprueba tu solicitud, recibirás la resolución oficial por correo o en el portal tramitesmigratorios."},
    {"name": "Agenda cita en el SRCeI", "text": "Con la resolución de aprobación, agenda cita en registrocivil.cl o llama al 600 370 2000 para solicitar la cédula de identidad para extranjeros."},
    {"name": "Preséntate en el SRCeI con tus documentos", "text": "Lleva pasaporte, resolución de aprobación y comprobante de domicilio. En muchas oficinas toman la fotografía en el lugar."},
    {"name": "Retira tu cédula y actualiza tus datos", "text": "En 5 a 10 días hábiles puedes retirar la cédula. Actualiza el RUT ante el SII, tu empleador, banco y AFP."}
  ]'::jsonb,
  '[
    {
      "question": "¿Puedo trabajar con el RUT provisorio del SII?",
      "answer": "Sí. Con el RUT provisorio puedes firmar contrato de trabajo y que tu empleador te registre en sus sistemas. Sin embargo, algunos empleadores prefieren esperar al RUT definitivo. El comprobante de solicitud de visa también es documento habilitante para trabajar."
    },
    {
      "question": "¿El RUT provisorio y el definitivo tienen el mismo número?",
      "answer": "En la mayoría de los casos sí. El SII asigna un número al momento del RUT provisorio y ese mismo número queda asociado a tu cédula definitiva del SRCeI. Sin embargo, en casos excepcionales puede haber diferencias, por lo que siempre debes verificar con tu empleador y banco."
    },
    {
      "question": "¿Cuánto cuesta obtener la cédula de identidad para extranjeros?",
      "answer": "La cédula tiene un costo oficial que varía según su vigencia. Al 2026, la cédula con vigencia de 5 años cuesta alrededor de $4.000 CLP. La vigencia depende de tu tipo de residencia: visa temporaria = vigencia según la visa, permanencia definitiva = vigencia larga."
    },
    {
      "question": "¿Necesito la cédula de identidad para extranjeros o basta con el pasaporte?",
      "answer": "Para la mayoría de los trámites en Chile, la cédula de identidad para extranjeros es preferible al pasaporte porque incluye el RUT chileno. El pasaporte es válido para identificación, pero no contiene el RUT, que es necesario para muchos sistemas informáticos."
    },
    {
      "question": "¿Qué hago si pierdo mi cédula de identidad para extranjeros?",
      "answer": "Debes denunciar la pérdida en la PDI o Carabineros y luego solicitar un duplicado en el SRCeI con los mismos documentos originales (pasaporte y resolución de visa). El proceso tiene el mismo costo que la emisión original."
    }
  ]'::jsonb,
  ARRAY[
    'vivir-en-chile',
    'permanencia-definitiva/requisitos',
    'visa-temporaria/contrato-trabajo',
    'visa-temporaria/hijo-chileno',
    'vivir-en-chile/homologacion-titulos'
  ]::TEXT[],
  5,
  TRUE,
  NOW()
);

-- ──────────────────────────────────────────────────────────
-- 3. PILLAR: nacionalizacion (update con contenido)
-- ──────────────────────────────────────────────────────────
UPDATE articles SET
  content = $e3$
<p>La <strong>nacionalización chilena</strong> permite a un extranjero obtener la <strong>carta de nacionalización</strong>, que le otorga la ciudadanía chilena con casi todos los derechos que tiene un ciudadano nativo: votar, tener pasaporte chileno, ejercer cargos públicos (con algunas excepciones) y transmitir la nacionalidad a sus hijos.</p>

<h2>Requisitos para nacionalizarse en Chile</h2>
<p>Para solicitar la carta de nacionalización debes cumplir:</p>
<ul>
  <li>Tener <strong>permanencia definitiva vigente</strong> en Chile.</li>
  <li>Haber residido en Chile de forma <strong>continua por al menos 5 años</strong> con permanencia definitiva. Las ausencias no deben exceder 180 días por año durante ese período.</li>
  <li>No tener <strong>condenas penales</strong> pendientes ni antecedentes que afecten la moral o el orden público.</li>
  <li>Tener medios de subsistencia conocidos (empleo, negocio, pensión u otro ingreso regular).</li>
  <li>Ser mayor de 18 años.</li>
</ul>
<p>En la práctica, el requisito central es demostrar 5 años de vida en Chile con permanencia definitiva. Quienes llevan más años tienen mayor facilidad en el proceso.</p>

<h2>¿Cuántos años en total debo llevar en Chile?</h2>
<p>La ruta habitual es: visa temporaria (mínimo 1 año) + permanencia definitiva (mínimo 5 años) = <strong>al menos 6 años</strong> en Chile desde la primera visa regular. En casos especiales (hijos de chilenos, cónyuge de chileno) los plazos pueden ser menores.</p>

<h2>Proceso de solicitud</h2>
<p>La carta de nacionalización se solicita ante el <strong>Ministerio del Interior y Seguridad Pública</strong> — no ante el SERMIG. El proceso es:</p>
<ol>
  <li>Reunir la documentación requerida (detallada en <a href="/nacionalizacion/carta-naturalizacion">Requisitos de la carta de nacionalización</a>).</li>
  <li>Presentar la solicitud presencialmente en la Oficina de Partes del Ministerio del Interior o en la Intendencia Regional.</li>
  <li>El Ministerio revisa los antecedentes y puede llamar a entrevista.</li>
  <li>Si es aprobada, se emite la <strong>Resolución de Naturalización</strong> y debes acudir al SRCeI para obtener la cédula de identidad chilena y el pasaporte.</li>
</ol>

<h2>¿Debo renunciar a mi nacionalidad de origen?</h2>
<p>No. Chile permite la <strong>doble nacionalidad</strong>. Al naturalizarte como chileno, no pierdes tu nacionalidad original (salvo que la legislación de tu país de origen así lo establezca — verifica con la embajada de tu país). La mayoría de los países latinoamericanos sí permiten la doble o múltiple nacionalidad.</p>

<h2>¿Qué derechos obtiene un naturalizado que no tiene un residente?</h2>
<ul>
  <li>Derecho a votar en todas las elecciones (incluyendo presidenciales).</li>
  <li>Pasaporte chileno (con acceso sin visa a más de 170 países).</li>
  <li>Posibilidad de optar a cargos de elección popular (con algunas restricciones para naturalizados).</li>
  <li>Transmisión de la nacionalidad chilena a hijos nacidos en el extranjero.</li>
  <li>Acceso a beneficios estatales reservados a ciudadanos.</li>
</ul>
  $e3$,
  faq_items = '[
    {
      "question": "¿Cuánto tiempo tarda el proceso de nacionalización?",
      "answer": "El proceso puede demorar entre 6 meses y 2 años dependiendo del Ministerio del Interior y la carga de solicitudes. No existe un plazo legal definido. Se recomienda presentar la solicitud con todos los documentos completos para evitar demoras."
    },
    {
      "question": "¿Mis hijos nacidos en Chile ya son chilenos aunque yo me nacionalice?",
      "answer": "Si tus hijos nacieron en Chile mientras tenías residencia legal, ya son chilenos por nacimiento. La nacionalización del padre o madre no afecta ni mejora esa situación — ya son ciudadanos."
    },
    {
      "question": "¿Puedo ejercer como médico, abogado o ingeniero con la carta de nacionalización?",
      "answer": "La carta de nacionalización te da los mismos derechos civiles que un chileno nativo. Sin embargo, para ejercer profesiones reguladas (medicina, derecho, ingeniería civil) necesitas adicionalmente revalidar tu título si es extranjero. La nacionalización no reemplaza la homologación del título."
    },
    {
      "question": "¿Puedo presentar la solicitud de nacionalización viviendo fuera de Chile?",
      "answer": "No. Debes estar en Chile para presentar la solicitud presencialmente. Además, el requisito de los 5 años de residencia continua implica que no puedes ausentarte por períodos prolongados."
    },
    {
      "question": "¿Cuánto cuesta la carta de nacionalización?",
      "answer": "El trámite en el Ministerio del Interior no tiene un arancel fijo, pero involucra el costo de los documentos (antecedentes apostillados, traducciones si aplica) y la nueva cédula de identidad chilena en el SRCeI."
    }
  ]'::jsonb,
  related_slugs = ARRAY[
    'nacionalizacion/carta-naturalizacion',
    'permanencia-definitiva',
    'permanencia-definitiva/requisitos',
    'vivir-en-chile/rut-extranjero',
    'vivir-en-chile/homologacion-titulos'
  ]::TEXT[],
  reading_time_minutes = 5,
  updated_at = NOW()
WHERE slug = 'nacionalizacion';

-- ──────────────────────────────────────────────────────────
-- 4. CLUSTER: nacionalizacion/carta-naturalizacion
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, schema_type, howto_steps, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'nacionalizacion/carta-naturalizacion',
  'nacionalizacion',
  'nacionalizacion',
  'cluster',
  'Carta de Nacionalización Chilena: Requisitos y Proceso 2026',
  'Carta de Nacionalización Chilena: Todos los Requisitos y Documentos',
  'Lista completa de requisitos y documentos para obtener la carta de nacionalización chilena. Proceso, plazos y dónde presentar la solicitud.',
  'carta naturalizacion chile requisitos',
  $e4$
<p>La <strong>carta de nacionalización</strong> es el documento que otorga la ciudadanía chilena a un extranjero mediante el proceso de naturalización. Una vez obtenida, puedes solicitar cédula de identidad chilena y pasaporte chileno con todos los derechos de un ciudadano.</p>

<h2>Requisitos de elegibilidad</h2>
<p>Para ser elegible debes cumplir <strong>todos</strong> los siguientes requisitos:</p>
<ul>
  <li><strong>Permanencia definitiva vigente</strong> en Chile.</li>
  <li><strong>5 años de residencia continua</strong> con permanencia definitiva (ausencias no mayores a 180 días por año).</li>
  <li><strong>Mayor de 18 años</strong>.</li>
  <li>No tener condenas penales que afecten la honorabilidad.</li>
  <li>Acreditar medios de subsistencia conocidos y lícitos.</li>
</ul>

<h2>Documentos necesarios</h2>
<table>
  <thead>
    <tr><th>Documento</th><th>Especificaciones</th></tr>
  </thead>
  <tbody>
    <tr>
      <td>Cédula de identidad para extranjeros vigente</td>
      <td>La emitida por el SRCeI con tu permanencia definitiva.</td>
    </tr>
    <tr>
      <td>Pasaporte vigente</td>
      <td>Con al menos 6 meses de vigencia.</td>
    </tr>
    <tr>
      <td>Certificado de permanencia definitiva</td>
      <td>Emitido por el SERMIG. Acredita la vigencia y fecha de tu permiso de residencia permanente.</td>
    </tr>
    <tr>
      <td>Certificado de antecedentes penales de Chile</td>
      <td>Emitido por el SRCeI, no mayor a 90 días.</td>
    </tr>
    <tr>
      <td>Certificado de antecedentes penales del país de origen</td>
      <td>Apostillado. No mayor a 90 días. Si no está en español, traducción oficial.</td>
    </tr>
    <tr>
      <td>Certificado de nacimiento</td>
      <td>Del Registro Civil de tu país de origen. Apostillado y traducido si corresponde.</td>
    </tr>
    <tr>
      <td>Comprobante de domicilio en Chile</td>
      <td>Contrato de arriendo, boleta de servicios básicos o declaración jurada notarial.</td>
    </tr>
    <tr>
      <td>Acreditación de medios de subsistencia</td>
      <td>Liquidaciones de sueldo de los últimos 3 meses, o declaración de renta, o escritura de negocio propio.</td>
    </tr>
    <tr>
      <td>Fotografías recientes</td>
      <td>Generalmente 2 fotografías tamaño pasaporte, fondo blanco.</td>
    </tr>
  </tbody>
</table>

<h2>¿Dónde se presenta la solicitud?</h2>
<p>La solicitud se presenta en la <strong>División de Nacionalización del Ministerio del Interior y Seguridad Pública</strong>, en Santiago (Teatinos 950, piso 6). También puede tramitarse en la <strong>Delegación Presidencial Regional</strong> (ex Intendencia) de tu región.</p>
<p>El trámite es <strong>presencial</strong> y debe presentarlo el interesado personalmente, no a través de terceros ni mandatarios.</p>

<h2>Proceso paso a paso</h2>
<ol>
  <li>Verifica que cumples los 5 años de permanencia definitiva continua.</li>
  <li>Reúne todos los documentos. Verifica vigencia de los certificados (máximo 90 días).</li>
  <li>Presenta la solicitud en persona en el Ministerio del Interior o en la Delegación Presidencial Regional de tu región.</li>
  <li>Espera la evaluación. El Ministerio puede solicitar antecedentes adicionales o convocar a entrevista.</li>
  <li>Si es aprobada, recibirás la <strong>Resolución de Naturalización</strong> (Decreto Supremo firmado por el Presidente de la República).</li>
  <li>Con el decreto, acude al SRCeI para solicitar tu cédula de identidad chilena y luego tu pasaporte chileno.</li>
</ol>

<h2>¿Cuánto tiempo demora?</h2>
<p>No existe un plazo legal definido. En la práctica, el proceso toma entre <strong>6 meses y 2 años</strong>. Los tiempos varían significativamente según la cantidad de solicitudes pendientes en el Ministerio. No hay forma de acelerar el proceso pagando.</p>

<h2>Después de obtener la carta</h2>
<p>Con la Resolución de Naturalización en mano:</p>
<ul>
  <li>Solicita la <strong>cédula de identidad chilena</strong> en el SRCeI (no la de extranjero, sino la cédula chilena estándar).</li>
  <li>Solicita tu <strong>pasaporte chileno</strong> en el SRCeI o en cualquier servicio de pasaportes.</li>
  <li>Inscríbete en el <strong>padrón electoral</strong> si deseas votar.</li>
</ul>
  $e4$,
  'HowTo',
  '[
    {"name": "Verificar el cumplimiento de los 5 años", "text": "Confirma que llevas al menos 5 años con permanencia definitiva vigente y que tus ausencias no superaron 180 días por año."},
    {"name": "Reunir los documentos con fechas vigentes", "text": "Certificados de antecedentes (Chile y país de origen, apostillado), permanencia definitiva, nacimiento apostillado, domicilio y acreditación de ingresos."},
    {"name": "Presentar la solicitud en el Ministerio del Interior", "text": "Preséntate personalmente en la División de Nacionalización (Teatinos 950, Santiago) o en la Delegación Presidencial Regional de tu región."},
    {"name": "Esperar evaluación y posible entrevista", "text": "El Ministerio revisa tus antecedentes. Puede citarte a entrevista. El proceso toma entre 6 meses y 2 años."},
    {"name": "Recibir la Resolución de Naturalización", "text": "Una vez aprobada, recibirás el Decreto Supremo firmado por el Presidente de la República que otorga tu ciudadanía chilena."},
    {"name": "Obtener cédula y pasaporte chilenos en el SRCeI", "text": "Con el decreto, solicita tu cédula de identidad chilena y luego tu pasaporte en el Registro Civil."}
  ]'::jsonb,
  '[
    {
      "question": "¿Puedo presentar la solicitud por correo o de forma online?",
      "answer": "No. La solicitud de carta de naturalización es presencial obligatoria. Debes presentarte tú mismo, con identificación y todos los documentos originales. No se acepta representación por terceros."
    },
    {
      "question": "¿Los años de visa temporaria cuentan para los 5 años?",
      "answer": "No. Los 5 años se cuentan solo desde que tienes permanencia definitiva, no desde la visa temporaria. El tiempo con visa temporaria solo sirve para acumular el 1 año requerido para solicitar la permanencia definitiva."
    },
    {
      "question": "¿Mi cónyuge o hijos también se naturalizan automáticamente?",
      "answer": "No. Cada miembro de la familia debe presentar su propia solicitud de naturalización de forma individual, cumpliendo los requisitos de forma independiente."
    },
    {
      "question": "¿Puedo tener pasaporte chileno y del país de origen al mismo tiempo?",
      "answer": "Depende de la legislación de tu país de origen. Chile permite la doble nacionalidad sin restricciones. Sin embargo, algunos países (Venezuela, por ejemplo, en ciertas circunstancias) pueden exigir renunciar a la nacionalidad extranjera. Consulta con la embajada de tu país."
    },
    {
      "question": "¿Qué pasa si me rechazan la carta de naturalización?",
      "answer": "El Ministerio del Interior no está obligado a dar carta de naturalización — es una gracia del Estado. Si es rechazada, puedes intentarlo nuevamente después de un tiempo. No existe un recurso legal formal para apelar un rechazo."
    }
  ]'::jsonb,
  ARRAY[
    'nacionalizacion',
    'permanencia-definitiva',
    'permanencia-definitiva/requisitos',
    'vivir-en-chile/rut-extranjero',
    'vivir-en-chile/homologacion-titulos'
  ]::TEXT[],
  7,
  TRUE,
  NOW()
);
