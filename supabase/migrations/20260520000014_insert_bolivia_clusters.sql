BEGIN;

-- bolivia/antecedentes-penales
INSERT INTO articles (
  slug, silo, parent_slug, type,
  title, h1, meta_description, keyword_primary,
  content, faq_items, related_slugs, country_tags, is_published
) VALUES (
  'bolivia/antecedentes-penales',
  'bolivia',
  'bolivia',
  'cluster',
  'Antecedentes Penales de Bolivia para Trámites en Chile 2025',
  'Cómo obtener antecedentes penales de Bolivia para Chile',
  'Guía paso a paso para obtener el certificado de antecedentes penales de Bolivia (DGIP), apostillarlo y presentarlo al SERMIG en Chile. 2025.',
  'antecedentes penales bolivia chile',
  $content$<h2>¿Qué es el certificado de antecedentes penales boliviano?</h2>
<p>Para cualquier trámite de residencia en Chile, el SERMIG exige un <strong>certificado de antecedentes penales</strong> de tu país de origen. En Bolivia, este documento se llama <strong>Certificado de Antecedentes Policiales</strong> y lo emite la <strong>Dirección General de Identificación Personal (DGIP)</strong> de la Policía Boliviana.</p>

<h2>¿Dónde se obtiene?</h2>
<p>Tienes dos vías:</p>
<ul>
  <li><strong>Presencialmente:</strong> en cualquier oficina de la DGIP en Bolivia (hay en La Paz, Cochabamba, Santa Cruz, Oruro, Potosí, Sucre y otras ciudades).</li>
  <li><strong>Online desde Chile:</strong> desde 2023 la Policía Boliviana habilitó solicitud online en <strong>policia.bo</strong>. Requieres cédula de identidad o pasaporte boliviano vigente. El certificado digital tiene QR de verificación y es aceptado por el SERMIG.</li>
</ul>

<h2>Requisitos para obtenerlo</h2>
<ul>
  <li>Cédula de identidad boliviana o pasaporte vigente.</li>
  <li>Si lo solicitas por tercero (familiar, apoderado): poder notarial autenticado.</li>
  <li>Pago de tasa (monto actualizado en policia.bo o en la ventanilla DGIP).</li>
</ul>

<h2>¿Hay que apostillarlo?</h2>
<p><strong>Sí.</strong> Bolivia es parte del Convenio de La Haya (1961), por lo que el certificado debe apostillarse para ser válido en Chile. El trámite de apostilla se hace ante el <strong>Ministerio de Relaciones Exteriores de Bolivia</strong>.</p>

<h3>Proceso de apostilla</h3>
<ol>
  <li>Obtén el certificado de antecedentes originalmente firmado por funcionario de la DGIP.</li>
  <li>Preséntalo al Ministerio de Relaciones Exteriores (La Paz, Cochabamba, Santa Cruz u otras sedes).</li>
  <li>El Ministerio emite la apostilla en 2-3 días hábiles.</li>
  <li>También puedes hacer el proceso online en <strong>tramite.minrex.gob.bo</strong> enviando foto del certificado y comprobante de pago.</li>
</ol>

<h2>Vigencia del certificado</h2>
<p>El SERMIG generalmente exige que el certificado de antecedentes tenga <strong>90 días de antigüedad máxima</strong> al momento de presentarlo. Solicítalo lo más cerca posible de la fecha de tu trámite.</p>

<h2>Plazos estimados</h2>
<ul>
  <li>Solicitud online en policia.bo: 2-3 días hábiles para el certificado digital.</li>
  <li>Apostilla online (tramite.minrex.gob.bo): 3-5 días hábiles + tiempo de envío postal a Chile.</li>
  <li><strong>Total si lo haces todo online desde Chile:</strong> 10-15 días.</li>
</ul>

<h2>Costo estimado</h2>
<ul>
  <li>Certificado DGIP: ~Bs. 20-30 (aprox. USD 3-5).</li>
  <li>Apostilla Ministerio: ~Bs. 40-60 (aprox. USD 6-9).</li>
  <li>Envío postal Bolivia → Chile: ~Bs. 150-250 (aprox. USD 22-36).</li>
</ul>

<h2>Problemas frecuentes</h2>
<ul>
  <li><strong>Certificado vencido al presentarlo:</strong> solicítalo con tiempo considerando el envío postal. Si supera los 90 días, tendrás que tramitar uno nuevo.</li>
  <li><strong>Apostilla con firma que no coincide:</strong> el Ministerio solo apostilla certificados emitidos por funcionario autorizado de la DGIP. Si el documento está incorrecto, la apostilla será rechazada.</li>
  <li><strong>Solicitud online con error de datos:</strong> verifica que el nombre, RUN o cédula sean exactamente como aparecen en tu pasaporte antes de enviar.</li>
</ul>

<h2>Siguiente paso</h2>
<p>Con el certificado apostillado en mano, continúa con la <a href="/residencia-temporal/mercosur">solicitud de Residencia Temporal MERCOSUR</a> (la vía más directa para bolivianos) o la categoría que corresponda a tu situación.</p>$content$,
  $faq$[
    {
      "question": "¿Dónde tramito los antecedentes penales de Bolivia si estoy en Chile?",
      "answer": "Online en policia.bo. Desde 2023 la Policía Boliviana permite solicitud digital. El certificado tiene QR de verificación y el SERMIG lo acepta. Luego debes apostillarlo online en tramite.minrex.gob.bo y recibir el original por correo postal."
    },
    {
      "question": "¿Los antecedentes deben estar apostillados?",
      "answer": "Sí. Bolivia es parte del Convenio de La Haya, así que el SERMIG exige apostilla. El trámite es en el Ministerio de Relaciones Exteriores boliviano, presencial u online."
    },
    {
      "question": "¿Cuánto tiempo de vigencia tienen los antecedentes penales?",
      "answer": "El SERMIG generalmente exige que tengan menos de 90 días al presentarlos. Solicítalos lo más cerca posible de la fecha de tu trámite de visa."
    },
    {
      "question": "¿Puede tramitarlo un familiar en Bolivia en mi nombre?",
      "answer": "Sí, con un poder notarial autenticado. El apoderado puede retirar el certificado presencialmente en la DGIP y luego apostillarlo en el Ministerio de Relaciones Exteriores."
    }
  ]$faq$,
  ARRAY[
    'bolivia',
    'bolivia/documentos-bolivia',
    'residencia-temporal/mercosur',
    'vivir-en-chile/apostilla-traduccion'
  ],
  ARRAY['bolivia'],
  TRUE
) ON CONFLICT (slug) DO NOTHING;

-- bolivia/apostilla
INSERT INTO articles (
  slug, silo, parent_slug, type,
  title, h1, meta_description, keyword_primary,
  content, faq_items, related_slugs, country_tags, is_published
) VALUES (
  'bolivia/apostilla',
  'bolivia',
  'bolivia',
  'cluster',
  'Apostillar Documentos Bolivianos desde Chile 2025: Guía Rápida',
  'Cómo apostillar documentos bolivianos estando en Chile',
  'Cómo apostillar documentos de Bolivia desde Chile: proceso online del Ministerio de Relaciones Exteriores boliviano, costos, plazos y qué documentos necesitan apostilla. 2025.',
  'apostilla documentos bolivianos chile',
  $content$<h2>¿Qué documentos bolivianos necesitan apostilla para Chile?</h2>
<p>Para cualquier trámite de residencia en el SERMIG, los documentos extranjeros deben estar apostillados. Los principales que necesita un boliviano son:</p>
<ul>
  <li><strong>Certificado de antecedentes penales</strong> (DGIP).</li>
  <li><strong>Acta de nacimiento</strong> (Registro de Identidad Multidocumental, RIM).</li>
  <li><strong>Acta de matrimonio</strong> (si aplica, emitida por el RIM).</li>
  <li><strong>Títulos académicos</strong> (si necesitas homologación).</li>
</ul>
<p>El pasaporte en sí no se apostilla — se usa como documento de identidad directamente.</p>

<h2>¿Bolivia reconoce el Convenio de La Haya?</h2>
<p><strong>Sí.</strong> Bolivia es signatario del Convenio de La Haya de 1961, lo que significa que sus documentos apostillados son reconocidos en Chile automáticamente sin necesidad de pasar por el consulado chileno.</p>

<h2>¿Dónde se apostilla en Bolivia?</h2>
<p>La autoridad de apostilla en Bolivia es el <strong>Ministerio de Relaciones Exteriores</strong>. Tiene oficinas en:</p>
<ul>
  <li>La Paz (sede central)</li>
  <li>Cochabamba</li>
  <li>Santa Cruz</li>
  <li>Potosí, Oruro, Sucre (según disponibilidad)</li>
</ul>

<h2>Cómo apostillar desde Chile (sin volver a Bolivia)</h2>
<p>El Ministerio de Relaciones Exteriores boliviano ofrece un <strong>trámite online</strong> en <strong>tramite.minrex.gob.bo</strong>:</p>
<ol>
  <li>Crea una cuenta en el portal.</li>
  <li>Sube foto del documento original (frente y reverso si aplica).</li>
  <li>Realiza el pago bancario a la cuenta indicada por el Ministerio.</li>
  <li>En 3-5 días hábiles el Ministerio emite el documento apostillado.</li>
  <li>Eligen envío postal a tu dirección en Chile (costo adicional de envío ~Bs. 150-250).</li>
</ol>
<p><strong>Alternativa:</strong> un familiar o apoderado en Bolivia puede llevar el documento presencialmente al Ministerio y enviarte el original apostillado.</p>

<h2>Costos por documento</h2>
<ul>
  <li>Apostilla por documento: ~Bs. 40-60 (~USD 6-9).</li>
  <li>Si tienes 3 documentos, puedes apostillarlos en el mismo trámite.</li>
  <li>Envío postal (Bolivia → Chile): ~Bs. 150-250 (~USD 22-36), independiente de cuántos documentos.</li>
</ul>

<h2>Plazos</h2>
<ul>
  <li>Online: 3-5 días hábiles para la apostilla + 5-10 días para envío postal = total ~15 días.</li>
  <li>Presencial en Bolivia: 1-2 días para la apostilla, envío inmediato si lo lleva alguien de confianza.</li>
</ul>

<h2>¿Necesitan traducción los documentos apostillados?</h2>
<p><strong>Generalmente no.</strong> Bolivia y Chile comparten el español, por lo que el SERMIG acepta documentos bolivianos directamente. Excepción: si el SERMIG lo solicita expresamente (raro), puedes usar un traductor jurado inscrito en el Ministerio de Relaciones Exteriores de Chile.</p>

<h2>Consejo práctico</h2>
<p>Agrupa todos los documentos que necesitas apostillar en un solo envío para reducir el costo de correo. Por ejemplo, solicita el acta de nacimiento, antecedentes penales y (si aplica) acta de matrimonio al mismo tiempo, y envíalos todos juntos al Ministerio.</p>$content$,
  $faq$[
    {
      "question": "¿Puedo apostillar documentos bolivianos sin volver a Bolivia?",
      "answer": "Sí. El Ministerio de Relaciones Exteriores de Bolivia tiene un portal online (tramite.minrex.gob.bo) donde puedes solicitar apostilla enviando foto del documento y comprobante de pago. Luego te envían el original apostillado por correo a Chile."
    },
    {
      "question": "¿Cuánto cuesta apostillar en Bolivia?",
      "answer": "Aproximadamente Bs. 40-60 por documento (~USD 6-9). Si necesitas envío postal a Chile, agrega ~Bs. 150-250 (~USD 22-36). Es conveniente apostillar varios documentos en el mismo envío para compartir el costo de envío."
    },
    {
      "question": "¿Los documentos apostillados de Bolivia necesitan traducción en Chile?",
      "answer": "No, en la gran mayoría de los casos. Ambos países usan español. El SERMIG acepta documentos bolivianos directamente. Solo si el SERMIG lo exige expresamente (muy raro) necesitarías traductor jurado."
    },
    {
      "question": "¿Qué pasa si mi documento original está en Bolivia y yo estoy en Chile?",
      "answer": "Puedes pedir a un familiar o apoderado que lleve el documento al Ministerio de Relaciones Exteriores y te lo envíe por correo. O puedes usar el portal online si el documento es digital o si alguien puede escanearlo y enviártelo."
    }
  ]$faq$,
  ARRAY[
    'bolivia',
    'bolivia/documentos-bolivia',
    'bolivia/antecedentes-penales',
    'vivir-en-chile/apostilla-traduccion'
  ],
  ARRAY['bolivia'],
  TRUE
) ON CONFLICT (slug) DO NOTHING;

-- bolivia/visa-temporaria
INSERT INTO articles (
  slug, silo, parent_slug, type,
  title, h1, meta_description, keyword_primary,
  content, faq_items, related_slugs, country_tags, is_published
) VALUES (
  'bolivia/visa-temporaria',
  'bolivia',
  'bolivia',
  'cluster',
  'Visa para Bolivianos en Chile 2025: MERCOSUR y Otras Opciones',
  'Opciones de visa para bolivianos en Chile: MERCOSUR y más',
  'Qué visas puede solicitar un boliviano en Chile: MERCOSUR (sin contrato de trabajo), contrato laboral, hijo chileno y más. Requisitos y proceso. 2025.',
  'visa bolivianos chile mercosur',
  $content$<h2>La ventaja MERCOSUR para bolivianos</h2>
<p>Bolivia es parte del <strong>Acuerdo de Residencia del MERCOSUR</strong>, lo que otorga a los ciudadanos bolivianos una ventaja significativa: pueden solicitar la <strong>Residencia Temporal MERCOSUR</strong> con solo acreditar su nacionalidad, sin necesidad de contrato de trabajo ni cónyuge chileno.</p>

<h2>Residencia Temporal MERCOSUR (vía recomendada)</h2>
<p>Esta es la opción más directa para la mayoría de bolivianos.</p>
<ul>
  <li><strong>Requisito principal:</strong> pasaporte boliviano vigente (o cédula de identidad en algunos casos — confirmar con SERMIG).</li>
  <li><strong>Documentos adicionales:</strong> antecedentes penales apostillados, acta de nacimiento apostillada.</li>
  <li><strong>Vigencia:</strong> 2 años, renovable.</li>
  <li><strong>Permite:</strong> vivir y trabajar en Chile en cualquier empleo.</li>
  <li><strong>Siguiente paso:</strong> después de 2 años continuos, puedes solicitar la <a href="/residencia-definitiva">Residencia Definitiva</a>.</li>
</ul>
<p>Ver guía completa: <a href="/residencia-temporal/mercosur">Residencia Temporal MERCOSUR</a>.</p>

<h2>Otras opciones de residencia temporal para bolivianos</h2>

<h3>Por contrato de trabajo</h3>
<p>Si tienes un contrato firmado con empleador chileno, puedes solicitar la residencia por esta vía aunque no necesitarías hacerlo si aplicas por MERCOSUR (que es más sencillo). Útil si ya tienes empleador que te patrocina antes de llegar.</p>

<h3>Por hijo chileno</h3>
<p>Si tienes un hijo nacido en Chile, puedes solicitar la Residencia Temporal por esta causal. Requiere acta de nacimiento del hijo emitida por el Registro Civil chileno.</p>

<h3>Por pareja chilena</h3>
<p>Si tienes cónyuge o conviviente civil con nacionalidad chilena, puedes solicitar la residencia por esta vía.</p>

<h3>Por razones humanitarias</h3>
<p>Para situaciones de vulnerabilidad acreditada. Menos frecuente para bolivianos, pero disponible.</p>

<h2>¿Ingreso con cédula o pasaporte?</h2>
<p>Los ciudadanos bolivianos pueden ingresar a Chile con su <strong>cédula de identidad boliviana</strong> (hasta 90 días como turistas). Sin embargo, para tramitar la visa, el SERMIG generalmente requiere pasaporte vigente. Si tu pasaporte está vencido, renuévalo antes de iniciar el trámite.</p>

<h2>¿Cómo solicitar la Residencia Temporal?</h2>
<ol>
  <li>Reúne los documentos: pasaporte, antecedentes penales apostillados, acta de nacimiento apostillada.</li>
  <li>Ingresa al portal del SERMIG: <strong>tramitesmigratorios.interior.gob.cl</strong>.</li>
  <li>Crea cuenta y selecciona categoría <strong>MERCOSUR</strong>.</li>
  <li>Sube los documentos escaneados.</li>
  <li>Paga el arancel correspondiente.</li>
  <li>Espera la resolución (60-180 días).</li>
  <li>Aprobada la visa, ve al Registro Civil para obtener tu cédula de extranjero y RUT.</li>
</ol>

<h2>¿Puedo trabajar mientras espero la resolución?</h2>
<p>Si ingresaste con turismo (90 días), puedes solicitar una <strong>prórroga de turismo</strong> mientras tu residencia temporal está en tramitación. Trabajar formalmente requiere la visa aprobada — consulta con tu empleador sobre cómo gestionar el período de espera.</p>$content$,
  $faq$[
    {
      "question": "¿Los bolivianos pueden solicitar visa MERCOSUR en Chile?",
      "answer": "Sí. Bolivia es parte del Acuerdo de Residencia del MERCOSUR, lo que permite a los ciudadanos bolivianos solicitar Residencia Temporal MERCOSUR con solo acreditar su nacionalidad (pasaporte o cédula). No necesitan contrato de trabajo."
    },
    {
      "question": "¿Qué documentos necesita un boliviano para la visa MERCOSUR?",
      "answer": "Pasaporte vigente, certificado de antecedentes penales boliviano apostillado, y acta de nacimiento apostillada. Todo se sube al portal tramitesmigratorios.interior.gob.cl."
    },
    {
      "question": "¿Puedo trabajar en Chile solo con mi cédula boliviana?",
      "answer": "No. Puedes ingresar como turista (90 días) con cédula, pero para trabajar legalmente necesitas la Residencia Temporal aprobada. Solicítala por la vía MERCOSUR que es la más directa para bolivianos."
    },
    {
      "question": "¿Cuánto demora el SERMIG en aprobar la visa MERCOSUR para bolivianos?",
      "answer": "El plazo legal es 60 días, pero en la práctica puede extenderse a 90-180 días según la carga del SERMIG. Puedes hacer seguimiento en tramitesmigratorios.interior.gob.cl con tu número de solicitud."
    }
  ]$faq$,
  ARRAY[
    'bolivia',
    'residencia-temporal/mercosur',
    'residencia-temporal',
    'bolivia/documentos-bolivia',
    'bolivia/antecedentes-penales'
  ],
  ARRAY['bolivia'],
  TRUE
) ON CONFLICT (slug) DO NOTHING;

-- bolivia/trabajar-en-chile
INSERT INTO articles (
  slug, silo, parent_slug, type,
  title, h1, meta_description, keyword_primary,
  content, faq_items, related_slugs, country_tags, is_published
) VALUES (
  'bolivia/trabajar-en-chile',
  'bolivia',
  'bolivia',
  'cluster',
  'Trabajar en Chile siendo Boliviano 2025: Derechos y Trámites',
  'Cómo trabajar en Chile siendo boliviano: derechos y requisitos',
  'Guía para bolivianos que quieren trabajar en Chile: visa necesaria, derechos laborales, contrato, AFP, salud y cómo encontrar empleo. 2025.',
  'trabajar en Chile boliviano',
  $content$<h2>¿Necesitas visa para trabajar en Chile siendo boliviano?</h2>
<p><strong>Sí.</strong> Para trabajar formalmente en Chile necesitas una <strong>Residencia Temporal</strong> vigente. No puedes trabajar con visa de turismo (aunque puedes ingresar a Chile con cédula boliviana por hasta 90 días como turista).</p>
<p>La vía más directa para bolivianos es la <a href="/bolivia/visa-temporaria">Residencia Temporal MERCOSUR</a> — no requiere contrato de trabajo previo, solo acreditar la nacionalidad boliviana.</p>

<h2>Tus derechos laborales en Chile</h2>
<p>Con Residencia Temporal aprobada, tienes <strong>exactamente los mismos derechos laborales que un trabajador chileno</strong>:</p>
<ul>
  <li><strong>Sueldo mínimo legal:</strong> actualmente sobre $500.000 CLP mensuales (varía según año).</li>
  <li><strong>Contrato escrito:</strong> el empleador debe entregarte contrato en 15 días desde que empiezas.</li>
  <li><strong>Vacaciones:</strong> 15 días hábiles al año, después de 12 meses de trabajo continuo.</li>
  <li><strong>Licencia médica:</strong> remunerada, con subsidio de la Isapre/Fonasa.</li>
  <li><strong>Cotizaciones previsionales:</strong> el empleador descuenta y paga AFP (pensión) y salud (Fonasa o Isapre).</li>
  <li><strong>Seguro de cesantía:</strong> acumulas meses de seguro que puedes usar si pierdes el empleo.</li>
  <li><strong>Indemnización:</strong> si te despiden sin causa justificada, tienes derecho a indemnización por años de servicio.</li>
</ul>

<h2>Tipos de contrato más comunes para bolivianos</h2>
<ul>
  <li><strong>Contrato indefinido:</strong> sin fecha de término. Más protección para el trabajador.</li>
  <li><strong>Contrato a plazo fijo:</strong> por un período determinado (máximo 1 año, renovable una vez). Muy común en gastronomía, construcción, agricultura.</li>
  <li><strong>Contrato por obra o faena:</strong> para proyectos específicos. Común en construcción.</li>
</ul>

<h2>AFP: tu cotización de pensión</h2>
<p>Al trabajar formalmente, tu empleador descuenta un porcentaje de tu sueldo para una AFP (Administradora de Fondos de Pensiones). Puedes elegir en cuál AFP afiliarte. Si en algún momento regresas a Bolivia, puedes:</p>
<ul>
  <li>Dejar los fondos en la AFP chilena para cobrarlo cuando cumplas la edad de jubilación en Chile.</li>
  <li>Solicitar devolución de los fondos al salir del país de forma definitiva (bajo ciertas condiciones).</li>
</ul>
<p>Chile y Bolivia tienen un <strong>Convenio de Seguridad Social</strong> que puede permitirte sumar años cotizados en ambos países para jubilación. Consulta con la AFP sobre este convenio.</p>

<h2>Salud: Fonasa o Isapre</h2>
<p>Al trabajar con contrato, cotizas automáticamente al sistema de salud. Puedes optar por:</p>
<ul>
  <li><strong>Fonasa:</strong> sistema público, gratuito o de bajo costo para atención en hospitales y clínicas convenidas. Recomendado para la mayoría de trabajadores.</li>
  <li><strong>Isapre:</strong> sistema privado, más caro pero con acceso más rápido a clínicas privadas.</li>
</ul>
<p>Ver: <a href="/vivir-en-chile/fonasa-isapre">Fonasa vs. Isapre: cuál elegir</a>.</p>

<h2>¿Qué hacer si el empleador no respeta tus derechos?</h2>
<p>Puedes denunciar en la <strong>Inspección del Trabajo</strong> más cercana — la denuncia es gratuita y puedes hacerla aunque estés en situación irregular. Las infracciones más comunes que denuncia la comunidad boliviana:</p>
<ul>
  <li>No pagar el sueldo a tiempo o no pagar lo acordado.</li>
  <li>No dar contrato escrito.</li>
  <li>No pagar cotizaciones.</li>
  <li>Descuentos ilegales del sueldo.</li>
</ul>

<h2>Encontrar trabajo en Chile</h2>
<p>Los sectores con mayor demanda de trabajadores bolivianos en Chile:</p>
<ul>
  <li><strong>Construcción:</strong> albañilería, electricidad, gasfitería.</li>
  <li><strong>Gastronomía:</strong> restaurantes, cocina, servicio de mesa.</li>
  <li><strong>Agricultura:</strong> temporadas en regiones como O'Higgins, Maule y Los Lagos.</li>
  <li><strong>Comercio y retail:</strong> tiendas, supermercados.</li>
  <li><strong>Servicio doméstico:</strong> con contrato formal y derechos laborales plenos.</li>
</ul>
<p>Bolsas de trabajo: OMIL (municipalidades), BolsaNacional.cl, trabajando.com, InfoJobs.cl.</p>$content$,
  $faq$[
    {
      "question": "¿Puedo trabajar en Chile con solo la cédula boliviana?",
      "answer": "No. La cédula boliviana te permite ingresar como turista (90 días), pero para trabajar legalmente necesitas Residencia Temporal vigente. La vía más fácil para bolivianos es la Residencia Temporal MERCOSUR."
    },
    {
      "question": "¿Qué derechos laborales tengo como boliviano en Chile?",
      "answer": "Los mismos que cualquier trabajador chileno: sueldo mínimo, contrato escrito, vacaciones, licencia médica, cotizaciones AFP y salud, seguro de cesantía e indemnización por despido injustificado."
    },
    {
      "question": "¿Qué pasa con mi AFP si regreso a Bolivia?",
      "answer": "Puedes dejar los fondos en Chile para cobrar al jubilarte, o solicitar devolución si regresas definitivamente. Chile y Bolivia tienen un Convenio de Seguridad Social que puede permitirte sumar años cotizados en ambos países."
    },
    {
      "question": "¿Puedo denunciar a mi empleador si no me paga bien?",
      "answer": "Sí. Puedes ir a la Inspección del Trabajo más cercana — la denuncia es gratuita y puedes hacerla aunque no tengas visa regular. El empleador no puede tomar represalias legales por una denuncia laboral."
    },
    {
      "question": "¿Necesito que el empleador me patrocine para obtener la visa?",
      "answer": "No, si solicitas la visa MERCOSUR. Esta vía no requiere contrato de trabajo — solo acreditas tu nacionalidad boliviana. Es la vía recomendada porque no depende de ningún empleador."
    }
  ]$faq$,
  ARRAY[
    'bolivia',
    'bolivia/visa-temporaria',
    'vivir-en-chile/trabajo-contrato',
    'vivir-en-chile/fonasa-isapre',
    'vivir-en-chile/afp-extranjero',
    'problemas-migratorios/derechos-migrante'
  ],
  ARRAY['bolivia'],
  TRUE
) ON CONFLICT (slug) DO NOTHING;

COMMIT;
