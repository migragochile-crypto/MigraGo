BEGIN;

-- ──────────────────────────────────────────────────────────
-- PERÚ
-- ──────────────────────────────────────────────────────────

INSERT INTO articles (
  slug, silo, parent_slug, type,
  title, h1, meta_description, keyword_primary,
  content, faq_items, related_slugs, country_tags, is_published
) VALUES (
  'peru/antecedentes-penales',
  'peru',
  'peru',
  'cluster',
  'Antecedentes Penales de Perú para Chile 2025: REJNAP y Apostilla',
  'Cómo obtener antecedentes penales de Perú para Chile',
  'Guía para obtener el certificado de antecedentes penales de Perú (REJNAP) y apostillarlo para trámites migratorios en Chile. Proceso online, costos y plazos. 2025.',
  'antecedentes penales Peru Chile REJNAP',
  $content$<h2>¿Dónde se obtiene el certificado de antecedentes penales peruano?</h2>
<p>En Perú, el certificado de antecedentes penales lo emite el <strong>Registro de Condenas del Poder Judicial</strong>, también conocido como <strong>REJNAP</strong> (Registro Judicial Nacional de Antecedentes Penales). Es el documento que exige el SERMIG para trámites de residencia en Chile.</p>

<h2>Cómo obtenerlo</h2>
<p>Tienes dos opciones:</p>
<ul>
  <li><strong>Online desde Chile:</strong> el Poder Judicial del Perú ofrece el certificado online en <strong>pj.gob.pe</strong>. El proceso es completamente digital: creas una cuenta, identificas con DNI o carné de extranjería, y descargas el certificado con código de verificación. Tiene validez legal.</li>
  <li><strong>Presencial en Perú:</strong> en cualquier sede del Poder Judicial. Puede gestionarlo un apoderado con poder notarial.</li>
</ul>

<h2>Apostilla del certificado peruano</h2>
<p>Perú es firmante del Convenio de La Haya, por lo que el certificado puede <strong>apostillarse</strong> para ser válido en Chile. La apostilla se obtiene en el <strong>Ministerio de Relaciones Exteriores del Perú</strong> (Torre Tagle, Lima) o en sus oficinas regionales.</p>
<p>Si sacaste el certificado online con firma digital, consulta con el SERMIG si acepta la versión digital directamente — en algunos casos el QR de verificación es suficiente sin apostilla física.</p>

<h3>Apostilla online (desde Chile)</h3>
<p>El Ministerio de Relaciones Exteriores del Perú tiene trámite de apostilla online en <strong>plataforma.rree.gob.pe</strong>:</p>
<ol>
  <li>Sube el documento digital (el certificado REJNAP descargado).</li>
  <li>Paga el arancel online.</li>
  <li>El Ministerio emite la apostilla en 2-3 días hábiles.</li>
  <li>Recibes el documento apostillado digital o te lo envían por correo.</li>
</ol>

<h2>Vigencia</h2>
<p>El SERMIG exige que el certificado tenga <strong>menos de 90 días</strong> al presentarlo. Solicítalo lo más cerca posible de tu trámite.</p>

<h2>Costo estimado</h2>
<ul>
  <li>Certificado REJNAP online: gratuito o costo mínimo.</li>
  <li>Apostilla: S/. 35-60 (~USD 9-16) según modalidad.</li>
  <li>Envío postal si necesitas el físico: variable.</li>
</ul>

<h2>Siguiente paso</h2>
<p>Con el certificado apostillado, continúa con la <a href="/peru/visa-mercosur">solicitud de Residencia Temporal MERCOSUR</a> — la vía más directa y sencilla para peruanos.</p>$content$,
  $faq$[
    {
      "question": "¿Puedo obtener los antecedentes penales peruanos desde Chile?",
      "answer": "Sí. El Poder Judicial del Perú tiene un portal online (pj.gob.pe) donde puedes solicitar el certificado REJNAP digitalmente con tu DNI. También puedes apostillarlo online en plataforma.rree.gob.pe."
    },
    {
      "question": "¿El certificado REJNAP online necesita apostilla para Chile?",
      "answer": "Generalmente sí. Aunque el certificado digital tiene código de verificación, el SERMIG habitualmente exige apostilla física o digital validada. Consulta al SERMIG si acepta el certificado con QR directamente antes de apostillar."
    },
    {
      "question": "¿Cuánto cuesta apostillar en Perú?",
      "answer": "Aproximadamente S/. 35-60 (~USD 9-16). El trámite puede hacerse online en plataforma.rree.gob.pe desde Chile, sin necesidad de volver a Perú."
    }
  ]$faq$,
  ARRAY[
    'peru',
    'peru/documentos-peru',
    'peru/visa-mercosur',
    'residencia-temporal/mercosur',
    'vivir-en-chile/apostilla-por-pais'
  ],
  ARRAY['peru'],
  TRUE
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO articles (
  slug, silo, parent_slug, type,
  title, h1, meta_description, keyword_primary,
  content, faq_items, related_slugs, country_tags, is_published
) VALUES (
  'peru/visa-mercosur',
  'peru',
  'peru',
  'cluster',
  'Visa MERCOSUR para Peruanos en Chile 2025: Requisitos y Proceso',
  'Cómo solicitar la Residencia Temporal MERCOSUR siendo peruano',
  'Guía específica para peruanos: cómo solicitar la Residencia Temporal MERCOSUR en Chile, documentos requeridos, proceso en el SERMIG y qué pasa después. 2025.',
  'visa MERCOSUR peruanos Chile residencia',
  $content$<h2>La Residencia Temporal MERCOSUR para peruanos</h2>
<p>Perú es parte del <strong>Acuerdo de Residencia del MERCOSUR</strong>, lo que otorga a los ciudadanos peruanos una ventaja enorme: pueden obtener residencia temporal en Chile <strong>sin contrato de trabajo</strong>, presentando solo su documentación personal.</p>

<h2>¿Qué permite la Residencia Temporal MERCOSUR?</h2>
<ul>
  <li>Vivir y trabajar legalmente en Chile.</li>
  <li>Vigencia de <strong>2 años</strong>, renovable.</li>
  <li>Después de 2 años continuos: solicitar <a href="/residencia-definitiva">Residencia Definitiva</a>.</li>
  <li>Obtener cédula de identidad de extranjero y RUT permanente.</li>
</ul>

<h2>Documentos requeridos</h2>
<ul>
  <li><strong>Pasaporte peruano vigente</strong> (o DNI — confirmar con el SERMIG si acepta solo DNI).</li>
  <li><strong>Certificado de antecedentes penales REJNAP apostillado</strong> — ver <a href="/peru/antecedentes-penales">guía de antecedentes</a>.</li>
  <li><strong>Acta de nacimiento apostillada</strong> — emitida por RENIEC, apostillada en el Ministerio de Relaciones Exteriores.</li>
</ul>

<h2>Proceso de solicitud</h2>
<ol>
  <li>Reúne los documentos apostillados.</li>
  <li>Ingresa al portal <strong>tramitesmigratorios.interior.gob.cl</strong>.</li>
  <li>Crea cuenta y selecciona categoría <strong>MERCOSUR</strong>.</li>
  <li>Sube los documentos escaneados.</li>
  <li>Paga el arancel (ver monto vigente en el portal).</li>
  <li>Espera la resolución: plazo legal 60 días, en práctica 60-180 días.</li>
  <li>Aprobada la visa: ve al Registro Civil con la resolución para obtener tu cédula y RUT.</li>
</ol>

<h2>¿Puedo ingresar a Chile con solo el DNI?</h2>
<p>Sí. Los ciudadanos peruanos pueden ingresar a Chile con solo su DNI vigente (sin pasaporte) para estadías de turismo hasta 90 días. Para la solicitud de MERCOSUR, el SERMIG generalmente requiere pasaporte, pero consulta directamente si tu DNI es suficiente.</p>

<h2>¿Puedo trabajar mientras espero la resolución?</h2>
<p>La visa turista no autoriza a trabajar. Si ingresaste como turista, pide al empleador que espere la resolución o consulta con el SERMIG la posibilidad de una prórroga que indique "en trámite".</p>$content$,
  $faq$[
    {
      "question": "¿Necesito contrato de trabajo para la visa MERCOSUR siendo peruano?",
      "answer": "No. La categoría MERCOSUR no requiere contrato de trabajo. Solo necesitas acreditar tu nacionalidad peruana con pasaporte (o DNI) más los documentos apostillados (antecedentes penales y acta de nacimiento)."
    },
    {
      "question": "¿Cuánto demora el SERMIG en aprobar la visa MERCOSUR?",
      "answer": "El plazo legal es 60 días. En práctica puede extenderse a 90-180 días según la carga del SERMIG. Puedes hacer seguimiento en tramitesmigratorios.interior.gob.cl con tu número de solicitud."
    },
    {
      "question": "¿Los peruanos pueden entrar a Chile con solo el DNI?",
      "answer": "Sí, para turismo hasta 90 días. Para la solicitud de residencia, el SERMIG generalmente pide pasaporte. Consulta si aceptan DNI para el trámite MERCOSUR antes de iniciar."
    }
  ]$faq$,
  ARRAY[
    'peru',
    'peru/antecedentes-penales',
    'peru/documentos-peru',
    'residencia-temporal/mercosur',
    'residencia-definitiva'
  ],
  ARRAY['peru'],
  TRUE
) ON CONFLICT (slug) DO NOTHING;

-- ──────────────────────────────────────────────────────────
-- COLOMBIA
-- ──────────────────────────────────────────────────────────

INSERT INTO articles (
  slug, silo, parent_slug, type,
  title, h1, meta_description, keyword_primary,
  content, faq_items, related_slugs, country_tags, is_published
) VALUES (
  'colombia/antecedentes-penales',
  'colombia',
  'colombia',
  'cluster',
  'Antecedentes Penales de Colombia para Chile 2025: Policía y Apostilla',
  'Cómo obtener antecedentes penales de Colombia para trámites en Chile',
  'Cómo obtener el certificado judicial de antecedentes de Colombia (Policía Nacional) y apostillarlo en la Cancillería para trámites migratorios en Chile. 2025.',
  'antecedentes penales Colombia Chile certificado judicial',
  $content$<h2>¿Dónde se obtiene el certificado de antecedentes penales colombiano?</h2>
<p>En Colombia, el certificado de antecedentes penales lo emite la <strong>Policía Nacional de Colombia</strong>. Se llama <strong>Certificado Judicial de Antecedentes Penales</strong> y es el documento que el SERMIG exige para trámites de residencia en Chile.</p>

<h2>Cómo obtenerlo</h2>
<ul>
  <li><strong>Online desde Chile:</strong> la Policía Nacional de Colombia ofrece el certificado digital en <strong>policia.gov.co/servicios/judicial</strong>. El proceso es gratuito y el certificado tiene código de validación QR. Es el método más conveniente si estás en Chile.</li>
  <li><strong>Presencial en Colombia:</strong> en cualquier CAI (Centro de Atención Inmediata) de la Policía o estación de policía. Puede gestionarlo un apoderado.</li>
</ul>

<h2>Apostilla en la Cancillería colombiana</h2>
<p>Colombia es firmante del Convenio de La Haya. La apostilla se obtiene en la <strong>Cancillería colombiana</strong> (Ministerio de Relaciones Exteriores). Tiene portal online en <strong>cancilleria.gov.co</strong>:</p>
<ol>
  <li>Descarga el certificado de la Policía con firma digital.</li>
  <li>Ingresa al portal de la Cancillería y solicita apostilla electrónica.</li>
  <li>Paga el arancel online (~COP 44.000-80.000, ~USD 11-20).</li>
  <li>La apostilla digital se emite en 1-3 días hábiles.</li>
</ol>
<p>La apostilla electrónica colombiana con QR es reconocida internacionalmente — el SERMIG la acepta en formato digital.</p>

<h2>Vigencia</h2>
<p>El SERMIG exige que el certificado tenga <strong>menos de 90 días</strong> al presentarlo. El proceso online en Colombia es tan rápido (1-3 días para el certificado + 1-3 días para la apostilla) que puedes hacerlo todo en una semana desde Chile.</p>

<h2>Costo estimado</h2>
<ul>
  <li>Certificado Policía Nacional: gratuito online.</li>
  <li>Apostilla Cancillería: ~COP 44.000-80.000 (~USD 11-20).</li>
  <li>Sin costos de envío postal si todo es digital.</li>
</ul>

<h2>Siguiente paso</h2>
<p>Con el certificado apostillado, continúa con la <a href="/colombia/visa-mercosur">solicitud de Residencia Temporal MERCOSUR</a>.</p>$content$,
  $faq$[
    {
      "question": "¿Puedo obtener los antecedentes penales colombianos desde Chile?",
      "answer": "Sí, totalmente online. La Policía Nacional de Colombia tiene portal gratuito (policia.gov.co). El certificado digital tiene QR de verificación. La apostilla también se hace online en la Cancillería (cancilleria.gov.co). Todo el proceso toma 3-7 días sin salir de Chile."
    },
    {
      "question": "¿El SERMIG acepta la apostilla electrónica colombiana?",
      "answer": "Sí. La apostilla digital de la Cancillería colombiana con código QR es reconocida internacionalmente y el SERMIG la acepta. No necesitas imprimir ni enviar documentos físicos."
    },
    {
      "question": "¿Cuánto cuesta apostillar en Colombia?",
      "answer": "Aproximadamente COP 44.000-80.000 (~USD 11-20) por la apostilla de la Cancillería. El certificado de la Policía es gratuito. Es uno de los procesos más baratos y rápidos entre todos los países."
    }
  ]$faq$,
  ARRAY[
    'colombia',
    'colombia/apostilla-colombia',
    'colombia/visa-mercosur',
    'residencia-temporal/mercosur',
    'vivir-en-chile/apostilla-por-pais'
  ],
  ARRAY['colombia'],
  TRUE
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO articles (
  slug, silo, parent_slug, type,
  title, h1, meta_description, keyword_primary,
  content, faq_items, related_slugs, country_tags, is_published
) VALUES (
  'colombia/visa-mercosur',
  'colombia',
  'colombia',
  'cluster',
  'Visa MERCOSUR para Colombianos en Chile 2025: Guía Completa',
  'Residencia Temporal MERCOSUR para colombianos en Chile',
  'Guía paso a paso para colombianos: cómo solicitar la Residencia Temporal MERCOSUR en Chile sin contrato de trabajo. Documentos, proceso SERMIG y qué sigue. 2025.',
  'visa MERCOSUR colombianos Chile residencia temporal',
  $content$<h2>Colombia y el MERCOSUR: una ventaja clave</h2>
<p>Colombia es parte del <strong>Acuerdo de Residencia del MERCOSUR</strong>. Esto significa que los colombianos pueden obtener Residencia Temporal en Chile <strong>solo acreditando su nacionalidad</strong>, sin necesidad de contrato de trabajo, empleador patrocinador ni cónyuge chileno.</p>

<h2>¿Qué otorga la Residencia Temporal MERCOSUR?</h2>
<ul>
  <li>Autorización para <strong>vivir y trabajar</strong> en Chile en cualquier empleo.</li>
  <li>Vigencia de <strong>2 años</strong>, renovable.</li>
  <li>Pasados 2 años: solicitar <a href="/residencia-definitiva">Residencia Definitiva</a>.</li>
  <li>Cédula de identidad de extranjero y RUT permanente.</li>
</ul>

<h2>Documentos requeridos</h2>
<ul>
  <li><strong>Pasaporte colombiano vigente.</strong></li>
  <li><strong>Certificado judicial de antecedentes (Policía Nacional) apostillado.</strong> Ver <a href="/colombia/antecedentes-penales">guía de antecedentes</a>.</li>
  <li><strong>Registro civil de nacimiento apostillado</strong> — emitido por la Registraduría Nacional del Estado Civil, apostillado en la Cancillería.</li>
</ul>

<h2>Proceso paso a paso</h2>
<ol>
  <li>Obtén y apostilla todos los documentos (todo puede hacerse online desde Chile en 1 semana).</li>
  <li>Ingresa al portal <strong>tramitesmigratorios.interior.gob.cl</strong>.</li>
  <li>Crea cuenta y selecciona categoría <strong>MERCOSUR</strong>.</li>
  <li>Sube los documentos escaneados.</li>
  <li>Paga el arancel.</li>
  <li>Espera la resolución (60-180 días en práctica).</li>
  <li>Con la resolución aprobada, obtén tu cédula en el Registro Civil.</li>
</ol>

<h2>¿Necesito visa para entrar a Chile?</h2>
<p>No. Los colombianos pueden ingresar a Chile con pasaporte sin visa de turista (90 días). Puedes ingresar y desde Chile solicitar la Residencia Temporal MERCOSUR directamente, sin pasar por un consulado chileno en Colombia.</p>$content$,
  $faq$[
    {
      "question": "¿Necesito contrato de trabajo para la visa MERCOSUR siendo colombiano?",
      "answer": "No. La categoría MERCOSUR solo requiere acreditar la nacionalidad colombiana. Basta con pasaporte vigente, antecedentes penales apostillados y registro civil apostillado. Sin empleador patrocinador."
    },
    {
      "question": "¿Puedo tramitar los documentos colombianos desde Chile sin volver a Colombia?",
      "answer": "Sí, prácticamente todo es online. El certificado de antecedentes de la Policía Nacional es gratuito en policia.gov.co. La apostilla de la Cancillería se hace en cancilleria.gov.co. El proceso completo puede hacerse en menos de una semana."
    },
    {
      "question": "¿Colombia necesita visa para entrar a Chile?",
      "answer": "No. Los colombianos pueden ingresar sin visa de turista (hasta 90 días). Puedes entrar a Chile como turista y desde Chile solicitar la Residencia Temporal MERCOSUR directamente en el portal del SERMIG."
    }
  ]$faq$,
  ARRAY[
    'colombia',
    'colombia/antecedentes-penales',
    'colombia/apostilla-colombia',
    'residencia-temporal/mercosur',
    'residencia-definitiva'
  ],
  ARRAY['colombia'],
  TRUE
) ON CONFLICT (slug) DO NOTHING;

-- ──────────────────────────────────────────────────────────
-- ARGENTINA
-- ──────────────────────────────────────────────────────────

INSERT INTO articles (
  slug, silo, parent_slug, type,
  title, h1, meta_description, keyword_primary,
  content, faq_items, related_slugs, country_tags, is_published
) VALUES (
  'argentina/antecedentes-penales',
  'argentina',
  'argentina',
  'cluster',
  'Antecedentes Penales de Argentina para Chile 2025: RNR y Apostilla',
  'Cómo obtener antecedentes penales de Argentina para Chile',
  'Cómo obtener el certificado del Registro Nacional de Reincidencia (RNR) de Argentina y apostillarlo para trámites migratorios en Chile. Proceso online, costos y plazos. 2025.',
  'antecedentes penales Argentina Chile RNR',
  $content$<h2>¿Dónde se obtiene el certificado de antecedentes penales argentino?</h2>
<p>En Argentina, el certificado de antecedentes penales lo emite el <strong>Registro Nacional de Reincidencia (RNR)</strong>, dependiente del Ministerio de Justicia. Es el documento que el SERMIG exige para trámites de residencia en Chile.</p>

<h2>Cómo obtenerlo</h2>
<ul>
  <li><strong>Online desde Chile:</strong> el RNR tiene trámite digital en <strong>rnr.jus.gob.ar</strong>. Requieres DNI o pasaporte argentino. El certificado tiene código de verificación.</li>
  <li><strong>Presencial en Argentina:</strong> en la sede central del RNR (Av. General Paz 3701, Buenos Aires) o en delegaciones provinciales. Puede gestionarlo un apoderado con poder notarial.</li>
  <li><strong>Consulado argentino en Chile:</strong> el Consulado de Argentina puede tramitar el RNR para argentinos residentes en Chile. Consulta con ellos los tiempos actuales.</li>
</ul>

<h2>Apostilla del certificado argentino</h2>
<p>Argentina es firmante del Convenio de La Haya. La apostilla se obtiene en el <strong>Ministerio de Relaciones Exteriores de Argentina</strong>. Para documentos notariales, también en los colegios de escribanos provinciales.</p>
<p>El proceso online está disponible en <strong>tramites.cancilleria.gob.ar</strong>:</p>
<ol>
  <li>Ingresa con CUIL/CUIT (sistema TAD — Trámites a Distancia).</li>
  <li>Carga el documento digital del RNR.</li>
  <li>Paga el arancel online.</li>
  <li>La apostilla digital se emite en 2-5 días hábiles.</li>
</ol>

<h2>Vigencia</h2>
<p>El SERMIG exige que el certificado tenga <strong>menos de 90 días</strong> al presentarlo.</p>

<h2>Costo estimado</h2>
<ul>
  <li>Certificado RNR: gratuito o costo mínimo (~ARS variable según tipo de cambio).</li>
  <li>Apostilla Cancillería: arancel en pesos argentinos (consultar valor actualizado en cancilleria.gob.ar).</li>
</ul>

<h2>Siguiente paso</h2>
<p>Con el certificado apostillado, continúa con la <a href="/argentina/visa-mercosur">solicitud de Residencia Temporal MERCOSUR</a>.</p>$content$,
  $faq$[
    {
      "question": "¿Puedo obtener los antecedentes penales argentinos desde Chile?",
      "answer": "Sí. El Registro Nacional de Reincidencia (RNR) tiene trámite online en rnr.jus.gob.ar. También puedes hacerlo en el Consulado de Argentina en Santiago. La apostilla se tramita online en tramites.cancilleria.gob.ar."
    },
    {
      "question": "¿El certificado del RNR necesita apostilla para Chile?",
      "answer": "Sí. El SERMIG exige apostilla en documentos extranjeros. Argentina es La Haya firmante, así que la apostilla es válida. Puedes apostillar online en la Cancillería argentina."
    },
    {
      "question": "¿Puede tramitar el certificado un familiar en Argentina?",
      "answer": "Sí, con poder notarial debidamente autenticado. El apoderado puede retirar el certificado del RNR y apostillarlo. El Consulado argentino en Santiago también puede asistir con algunos trámites."
    }
  ]$faq$,
  ARRAY[
    'argentina',
    'argentina/documentos-argentina',
    'argentina/visa-mercosur',
    'residencia-temporal/mercosur',
    'vivir-en-chile/apostilla-por-pais'
  ],
  ARRAY['argentina'],
  TRUE
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO articles (
  slug, silo, parent_slug, type,
  title, h1, meta_description, keyword_primary,
  content, faq_items, related_slugs, country_tags, is_published
) VALUES (
  'argentina/visa-mercosur',
  'argentina',
  'argentina',
  'cluster',
  'Visa MERCOSUR para Argentinos en Chile 2025: Con el DNI',
  'Residencia Temporal MERCOSUR para argentinos: solo con el DNI',
  'Guía para argentinos: cómo solicitar la Residencia Temporal MERCOSUR en Chile usando solo el DNI, sin contrato de trabajo. Proceso, documentos y plazos. 2025.',
  'visa MERCOSUR argentinos Chile DNI residencia',
  $content$<h2>La ventaja del DNI argentino en Chile</h2>
<p>Argentina es país fundador del MERCOSUR y su acuerdo de residencia. Los argentinos tienen dos ventajas únicas frente a otros países:</p>
<ol>
  <li>Pueden ingresar a Chile <strong>solo con su DNI</strong> (sin pasaporte).</li>
  <li>Pueden solicitar la Residencia Temporal MERCOSUR <strong>sin contrato de trabajo</strong>.</li>
</ol>

<h2>¿Qué otorga la Residencia Temporal MERCOSUR?</h2>
<ul>
  <li>Autorización para vivir y trabajar en Chile por <strong>2 años</strong>, renovable.</li>
  <li>Después de 2 años: solicitar <a href="/residencia-definitiva">Residencia Definitiva</a>.</li>
  <li>Cédula de identidad de extranjero y RUT permanente.</li>
</ul>

<h2>Documentos requeridos</h2>
<ul>
  <li><strong>DNI argentino vigente</strong> (o pasaporte — cualquiera es válido para el trámite).</li>
  <li><strong>Certificado del RNR (Registro Nacional de Reincidencia) apostillado.</strong> Ver <a href="/argentina/antecedentes-penales">guía de antecedentes</a>.</li>
  <li><strong>Partida de nacimiento apostillada</strong> — emitida por el Registro Civil provincial, apostillada en el Ministerio de Relaciones Exteriores o colegio de escribanos.</li>
</ul>

<h2>Proceso paso a paso</h2>
<ol>
  <li>Reúne los documentos apostillados (RNR + partida de nacimiento).</li>
  <li>Ingresa al portal <strong>tramitesmigratorios.interior.gob.cl</strong>.</li>
  <li>Crea cuenta y selecciona categoría <strong>MERCOSUR</strong>.</li>
  <li>Sube los documentos escaneados.</li>
  <li>Paga el arancel.</li>
  <li>Espera resolución (60-180 días).</li>
  <li>Con la resolución: ve al Registro Civil para la cédula y RUT.</li>
</ol>

<h2>¿Puedo trabajar mientras espero?</h2>
<p>Con turismo vigente (90 días), no puedes trabajar formalmente. Si necesitas trabajar de inmediato, una opción es que el empleador espere la resolución MERCOSUR. El SERMIG no emite permisos provisionales de trabajo para este trámite.</p>

<h2>¿El DNI vencido sirve para el trámite MERCOSUR?</h2>
<p>No. El SERMIG exige DNI vigente. Si tu DNI está vencido, renuévalo en el Consulado argentino en Santiago (Av. Miraflores 285, piso 10, Santiago Centro) antes de iniciar el trámite.</p>$content$,
  $faq$[
    {
      "question": "¿Los argentinos pueden usar el DNI en lugar del pasaporte para la visa MERCOSUR?",
      "answer": "Sí. Los argentinos son una de las pocas nacionalidades que puede usar el DNI (sin pasaporte) tanto para entrar a Chile como para tramitar la Residencia Temporal MERCOSUR. El DNI debe estar vigente."
    },
    {
      "question": "¿Necesito contrato de trabajo siendo argentino?",
      "answer": "No para la categoría MERCOSUR. Solo necesitas DNI vigente, certificado del RNR apostillado y partida de nacimiento apostillada. No se requiere empleador patrocinador."
    },
    {
      "question": "Mi DNI argentino está vencido. ¿Qué hago?",
      "answer": "Renuévalo en el Consulado argentino en Santiago (Av. Miraflores 285, piso 10). El trámite de renovación del DNI en el exterior puede tomar varias semanas — inicia con anticipación."
    },
    {
      "question": "¿Cuánto demora el SERMIG en resolver la MERCOSUR para argentinos?",
      "answer": "El plazo legal es 60 días. En práctica puede extenderse a 90-180 días. Puedes hacer seguimiento en tramitesmigratorios.interior.gob.cl con tu número de solicitud."
    }
  ]$faq$,
  ARRAY[
    'argentina',
    'argentina/antecedentes-penales',
    'argentina/documentos-argentina',
    'residencia-temporal/mercosur',
    'residencia-definitiva'
  ],
  ARRAY['argentina'],
  TRUE
) ON CONFLICT (slug) DO NOTHING;

COMMIT;
