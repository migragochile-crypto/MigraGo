-- P2 SEO y utilidad editorial: títulos/descripciones y guía de documentos perdidos.
-- Fuentes consultadas el 29-09-2026: ChileAtiende, PDI y SERMIG.
BEGIN;

UPDATE articles SET
  meta_description='Guías para responder ante rechazos, multas, permisos vencidos y otras dificultades migratorias en Chile, con fuentes oficiales y límites claros.',
  updated_at=NOW()
WHERE slug='problemas-migratorios';

UPDATE articles SET
  title='Permiso migratorio vencido: qué hacer en Chile',
  updated_at=NOW()
WHERE slug='problemas-migratorios/visa-vencida';

UPDATE articles SET
  title='Documentos para Residencia Definitiva según tu situación',
  updated_at=NOW()
WHERE slug='residencia-definitiva/documentos';

UPDATE articles SET
  title='Empadronamiento biométrico: qué fue y qué acredita',
  updated_at=NOW()
WHERE slug='autodenuncia/empadronamiento-biometrico';

UPDATE articles SET
  title='Residencia Temporal para estudiantes: requisitos',
  updated_at=NOW()
WHERE slug='residencia-temporal/estudiante';

UPDATE articles SET
  title='Residencia por vínculo con una persona chilena',
  updated_at=NOW()
WHERE slug='residencia-temporal/pareja-chilena';

UPDATE articles SET
  title='Residencia Temporal por hijo chileno',
  updated_at=NOW()
WHERE slug='residencia-temporal/hijo-chileno';

UPDATE articles SET
  title='Bolivianos en Chile: Residencia MERCOSUR y documentos',
  updated_at=NOW()
WHERE slug='bolivia';

UPDATE articles SET
  meta_description='Compara transferencias internacionales desde Chile por monto recibido, tipo de cambio, comisión, plazo y forma de entrega antes de elegir proveedor.',
  updated_at=NOW()
WHERE slug='vivir-en-chile/remesas';

UPDATE articles SET
  meta_description='Cuándo puedes cambiar de subcategoría o calidad de Residencia Temporal, dónde solicitarlo y qué requisitos debes comprobar antes de postular.',
  updated_at=NOW()
WHERE slug='residencia-temporal/cambio-categoria';

UPDATE articles SET
  meta_description='Países incluidos, lugar de postulación, vigencia y documentos exigidos para solicitar la Residencia Temporal MERCOSUR desde el extranjero.',
  updated_at=NOW()
WHERE slug='residencia-temporal/mercosur';

UPDATE articles SET
  title='Documentos perdidos en Chile: qué hacer si eres extranjero',
  h1='Pérdida o robo de documentos en Chile: qué debe hacer una persona extranjera',
  meta_description='Qué hacer si pierdes tu pasaporte, documento extranjero o cédula chilena: constancia ante PDI, bloqueo, reimpresión y límites para viajar.',
  content=$content$
<h2>Primero identifica qué documento perdiste</h2>
<p>El procedimiento cambia según se trate de un <strong>pasaporte o documento de identidad extranjero</strong>, una <strong>cédula de identidad chilena para extranjeros</strong> o un documento migratorio digital. No uses el mismo trámite para todos los casos.</p>

<h2>Si perdiste el pasaporte o documento de tu país</h2>
<ol>
  <li>Solicita la <strong>constancia de pérdida de documentos para extranjeros</strong> ante la Policía de Investigaciones (PDI), siguiendo el canal publicado para este trámite.</li>
  <li>Presenta la constancia en el consulado o representación de tu país y consulta la reposición o emisión de un documento de emergencia.</li>
  <li>Si hubo robo, conserva también la denuncia y cualquier comprobante que pueda pedir tu consulado o aseguradora.</li>
</ol>
<p>La constancia de PDI no reemplaza el pasaporte y <strong>no permite salir de Chile</strong>. Para viajar necesitas recuperar el documento oficial o recibir uno de emergencia de tu representación consular.</p>

<h2>Si perdiste la cédula chilena para extranjeros</h2>
<p>La pérdida de la cédula chilena se gestiona ante el <strong>Servicio de Registro Civil e Identificación</strong>, no mediante la constancia de PDI para documentos extranjeros.</p>
<ul>
  <li><strong>Bloqueo temporal:</strong> dura dos días hábiles y puede renovarse o anularse si recuperas la cédula. Se solicita con ClaveÚnica en el Registro Civil o por su canal telefónico.</li>
  <li><strong>Bloqueo definitivo:</strong> es irreversible y obliga a solicitar un nuevo documento. Se realiza en una oficina del Registro Civil.</li>
  <li><strong>Reimpresión:</strong> está disponible para personas chilenas y extranjeras mayores de 16 años que cumplan las condiciones publicadas, entre ellas tener una cédula emitida después de septiembre de 2013, pedirla al menos un mes antes del vencimiento y no tener otra solicitud en curso.</li>
</ul>
<p>La reimpresión conserva los datos, fotografía y vencimiento de la última cédula vigente; cambia el número del documento. Si tus datos personales cambiaron o tu situación no cumple las condiciones, consulta la obtención o renovación que corresponda.</p>

<h2>Si perdiste una copia del Estampado Electrónico</h2>
<p>El Estampado Electrónico es un documento digital que acredita la Residencia Temporal. Revisa primero el correo informado en tu solicitud y la bandeja de entrada del Portal de Trámites Digitales. SERMIG publica opciones de descarga usando los datos del documento de identidad o de la resolución.</p>
<p>Perder una impresión en papel no equivale por sí solo a perder el permiso. Si el estampado contiene datos incorrectos, utiliza el trámite de rectificación; no modifiques el archivo.</p>

<h2>Antes de viajar o hacer otro trámite</h2>
<ul>
  <li>Comprueba que el pasaporte o documento de viaje sea aceptado para tu destino.</li>
  <li>No asumas que la constancia policial habilita el cruce de frontera.</li>
  <li>Descarga copias nuevas de tus documentos migratorios digitales desde el canal oficial.</li>
  <li>Guarda comprobantes de bloqueo, constancia, denuncia y solicitud de reposición.</li>
</ul>

<h2>Canales oficiales</h2>
<p><a href="https://www.chileatiende.gob.cl/fichas/1804-constancia-de-perdida-de-documentos-para-extranjeros" target="_blank" rel="noopener noreferrer">Constancia de pérdida de documentos extranjeros — ChileAtiende/PDI</a> · <a href="https://www.chileatiende.gob.cl/fichas/3430-cedula-de-identidad" target="_blank" rel="noopener noreferrer">Bloqueo y reimpresión de cédula — ChileAtiende</a> · <a href="https://serviciomigraciones.cl/residencia-temporal/estampado-electronico/" target="_blank" rel="noopener noreferrer">Estampado Electrónico — SERMIG</a>.</p>
$content$,
  faq_items='[{"q":"¿La constancia de PDI sirve si perdí mi cédula chilena para extranjeros?","a":"No. Esa constancia corresponde a pasaportes o documentos de identidad del país de origen. La cédula chilena se bloquea y repone ante el Registro Civil."},{"q":"¿Puedo salir de Chile con la constancia de pérdida?","a":"No. La constancia no reemplaza el pasaporte ni autoriza el viaje; debes obtener el documento oficial o uno de emergencia en tu consulado."},{"q":"¿Perder la cédula elimina mi permiso de residencia?","a":"No por sí solo. La cédula acredita identidad y contiene datos del permiso, pero debes bloquearla y solicitar la reposición que corresponda."},{"q":"¿Debo denunciar en SERMIG la pérdida de una copia impresa del Estampado Electrónico?","a":"Revisa primero tu correo y la bandeja del Portal de Trámites Digitales para descargar otra copia. Si existen errores en los datos, utiliza el trámite oficial de rectificación."}]'::jsonb,
  related_slugs=ARRAY['problemas-migratorios','vivir-en-chile/rut-extranjero','residencia-temporal','problemas-migratorios/visa-vencida'],
  updated_at=NOW()
WHERE slug='problemas-migratorios/documentos-perdidos';

COMMIT;
