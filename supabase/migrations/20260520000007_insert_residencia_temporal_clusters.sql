-- Migración: Insertar artículos cluster para el silo residencia-temporal (13 clusters)

BEGIN;

INSERT INTO articles (slug, silo, parent_slug, type, title, h1, meta_description, keyword_primary, content, schema_type, faq_items, related_slugs, is_published, published_at)
VALUES (
  'residencia-temporal/hijo-chileno',
  'residencia-temporal',
  'residencia-temporal',
  'cluster',
  'Residencia Temporal por hijo chileno',
  'Residencia Temporal por hijo chileno: requisitos y proceso',
  'Cómo obtener la Residencia Temporal en Chile si tienes un hijo con nacionalidad chilena: documentos, pasos y consideraciones.',
  'residencia temporal hijo chileno chile requisitos documentos',
  $content$<h2>¿Quién puede solicitarla?</h2>
<p>El padre o madre extranjero/a de un hijo con nacionalidad chilena puede solicitar Residencia Temporal bajo esta categoría, independientemente de su relación con el otro progenitor.</p>
<h2>Documentos requeridos</h2>
<ul>
<li>Pasaporte vigente.</li>
<li>Partida de nacimiento del hijo chileno emitida por el SRCeI (no la del país de origen).</li>
<li>Certificado que acredite la filiación o reconocimiento.</li>
<li>Certificado de antecedentes para fines especiales (SRCeI).</li>
<li>Comprobante de domicilio en Chile.</li>
</ul>
<h2>Consideraciones importantes</h2>
<ul>
<li>El hijo debe estar inscrito en el Registro Civil de Chile con nacionalidad chilena.</li>
<li>Si el hijo aún no está inscrito, es necesario hacerlo antes de postular.</li>
<li>Esta categoría puede dar acceso a Residencia Definitiva directamente sin esperar 24 meses.</li>
</ul>
<h2>Proceso</h2>
<p>La solicitud se presenta en el portal del SERMIG (<strong>tramitesmigratorios.interior.gob.cl</strong>). Una vez aprobada, la Residencia Temporal tiene vigencia de 2 años renovables.</p>$content$,
  'FAQPage',
  '[{"question":"¿Puedo solicitarla si mi hijo nació en Chile pero aún no está inscrito?","answer":"Debes inscribirlo primero en el SRCeI para que tenga nacionalidad chilena reconocida. Una vez inscrito, puedes postular a la Residencia Temporal por hijo chileno."},{"question":"¿Esta categoría me permite trabajar en Chile?","answer":"Sí. La Residencia Temporal en cualquiera de sus categorías incluye autorización para trabajar en Chile."}]'::jsonb,
  ARRAY['residencia-temporal/pareja-chilena', 'residencia-temporal/renovacion', 'residencia-temporal/rechazo'],
  TRUE,
  NOW()
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO articles (slug, silo, parent_slug, type, title, h1, meta_description, keyword_primary, content, schema_type, faq_items, related_slugs, is_published, published_at)
VALUES (
  'residencia-temporal/pareja-chilena',
  'residencia-temporal',
  'residencia-temporal',
  'cluster',
  'Residencia Temporal por pareja o cónyuge chileno',
  'Residencia Temporal por pareja o cónyuge chileno: requisitos',
  'Cómo obtener la Residencia Temporal en Chile si eres pareja, cónyuge o conviviente civil de un ciudadano chileno: documentos y proceso.',
  'residencia temporal conyuge pareja chilena chile matrimonio acuerdo union civil',
  $content$<h2>Vínculos habilitantes</h2>
<ul>
<li><strong>Matrimonio:</strong> celebrado en Chile o en el extranjero (si está inscrito en el Registro Civil chileno).</li>
<li><strong>Acuerdo de Unión Civil (AUC):</strong> inscrito en el SRCeI.</li>
<li><strong>Convivencia acreditada:</strong> en algunos casos el SERMIG evalúa relaciones de hecho debidamente documentadas.</li>
</ul>
<h2>Documentos requeridos</h2>
<ul>
<li>Pasaporte vigente.</li>
<li>Certificado de matrimonio o AUC del SRCeI.</li>
<li>Cédula de identidad o pasaporte del cónyuge o pareja chilena.</li>
<li>Certificado de antecedentes para fines especiales (SRCeI).</li>
<li>Comprobante de domicilio en Chile.</li>
</ul>
<h2>Matrimonio celebrado en el extranjero</h2>
<p>Debe estar inscrito en el Registro Civil chileno. Si aún no lo está, el trámite de inscripción puede realizarse en el propio SRCeI con el certificado apostillado del país donde se celebró.</p>
<h2>Ventaja de esta categoría</h2>
<p>Permite acceder a Residencia Definitiva directamente, sin esperar el plazo general de 24 meses.</p>$content$,
  'FAQPage',
  '[{"question":"¿Puedo solicitar Residencia Temporal si solo convivo con un chileno sin matrimonio ni AUC?","answer":"El SERMIG puede evaluar la convivencia acreditada, pero es una vía más incierta. El matrimonio o AUC formal ofrece mayor certeza jurídica para la solicitud."},{"question":"¿Qué pasa si me separo del cónyuge chileno mientras tengo Residencia Temporal por esa causa?","answer":"El SERMIG puede revocar el permiso si el vínculo que lo fundamentó desaparece. Si la separación es definitiva, debes consultar con el SERMIG o cambiar a otra categoría que corresponda a tu situación."}]'::jsonb,
  ARRAY['residencia-temporal/hijo-chileno', 'residencia-temporal/renovacion'],
  TRUE,
  NOW()
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO articles (slug, silo, parent_slug, type, title, h1, meta_description, keyword_primary, content, schema_type, faq_items, related_slugs, is_published, published_at)
VALUES (
  'residencia-temporal/contrato-trabajo',
  'residencia-temporal',
  'residencia-temporal',
  'cluster',
  'Residencia Temporal por contrato de trabajo en Chile',
  'Residencia Temporal por contrato de trabajo: requisitos y proceso',
  'Cómo obtener la Residencia Temporal en Chile con un contrato de trabajo firmado: documentos, pasos y qué exige el SERMIG.',
  'residencia temporal contrato trabajo chile requisitos documentos empleador',
  $content$<h2>¿Qué es esta categoría?</h2>
<p>Permite obtener Residencia Temporal si tienes un contrato de trabajo firmado con un empleador chileno. Es una de las categorías más solicitadas por inmigrantes que llegan con oferta laboral concreta.</p>
<h2>Documentos requeridos</h2>
<ul>
<li>Pasaporte vigente.</li>
<li>Contrato de trabajo firmado por ambas partes (empleador y trabajador).</li>
<li>Certificado de antecedentes para fines especiales (SRCeI).</li>
<li>Certificado de antecedentes del país de origen apostillado.</li>
<li>Comprobante de domicilio en Chile.</li>
</ul>
<h2>Requisitos del contrato</h2>
<ul>
<li>Debe ser un contrato de trabajo formal (no carta de intención ni promesa).</li>
<li>El empleador debe ser una entidad o persona natural con RUT en Chile.</li>
<li>El contrato debe especificar funciones, duración y remuneración.</li>
</ul>
<h2>¿Y si pierdo el trabajo?</h2>
<p>Si el contrato termina, el permiso puede quedar sin sustento. Tienes un plazo para encontrar nuevo empleo o cambiar a otra categoría. Notifica al SERMIG cualquier cambio de situación laboral.</p>$content$,
  'FAQPage',
  '[{"question":"¿El empleador debe hacer algún trámite especial?","answer":"El empleador no necesita hacer un trámite previo de autorización de trabajo para extranjeros en Chile (a diferencia de otros países). Basta con firmar el contrato de trabajo."},{"question":"¿Puedo cambiar de empleador con la misma Residencia Temporal?","answer":"Sí. La Residencia Temporal por contrato de trabajo no te ata a un empleador específico; puedes cambiar de trabajo mientras el permiso esté vigente."}]'::jsonb,
  ARRAY['residencia-temporal/oferta-laboral', 'residencia-temporal/renovacion', 'residencia-temporal/cambio-categoria'],
  TRUE,
  NOW()
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO articles (slug, silo, parent_slug, type, title, h1, meta_description, keyword_primary, content, schema_type, faq_items, related_slugs, is_published, published_at)
VALUES (
  'residencia-temporal/oferta-laboral',
  'residencia-temporal',
  'residencia-temporal',
  'cluster',
  'Residencia Temporal por oferta de trabajo en Chile',
  'Residencia Temporal por oferta de trabajo: diferencias con el contrato',
  'Cómo obtener Residencia Temporal si tienes una oferta laboral pero aún no has firmado contrato. Diferencias con la vía por contrato de trabajo.',
  'residencia temporal oferta laboral chile sin contrato firmado requisitos',
  $content$<h2>¿En qué difiere de la vía por contrato?</h2>
<p>La vía por oferta laboral permite iniciar el proceso de Residencia Temporal con una carta de oferta o promesa de contrato, cuando el contrato definitivo aún no se ha firmado. Es útil para personas que están negociando empleo antes de llegar o justo al llegar a Chile.</p>
<h2>Documentos requeridos</h2>
<ul>
<li>Pasaporte vigente.</li>
<li>Carta de oferta de trabajo en papel timbrado de la empresa, firmada por el empleador, con descripción del cargo, funciones y remuneración.</li>
<li>Certificado de antecedentes para fines especiales.</li>
<li>Comprobante de domicilio en Chile.</li>
</ul>
<h2>¿Qué pasa después?</h2>
<p>Una vez obtenida la Residencia Temporal por oferta, debes formalizar el contrato de trabajo. El SERMIG puede requerir el contrato firmado en una etapa posterior o al momento de la renovación.</p>
<h2>Recomendación</h2>
<p>Si ya tienes el contrato firmado, postula directamente por la categoría de contrato de trabajo: es más sólida y menos sujeta a revisiones. La vía de oferta es una alternativa cuando el contrato aún no está firmado.</p>$content$,
  'FAQPage',
  '[{"question":"¿La carta de oferta debe estar apostillada?","answer":"No, es un documento interno de la empresa en Chile. No requiere apostilla, pero sí debe estar en papel timbrado, firmada por un representante autorizado de la empresa."},{"question":"¿Puedo trabajar antes de que me aprueben la Residencia Temporal?","answer":"Si tienes un permiso de turismo vigente, no puedes trabajar formalmente. Debes esperar la aprobación de la Residencia Temporal para comenzar a trabajar."}]'::jsonb,
  ARRAY['residencia-temporal/contrato-trabajo', 'residencia-temporal/renovacion'],
  TRUE,
  NOW()
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO articles (slug, silo, parent_slug, type, title, h1, meta_description, keyword_primary, content, schema_type, faq_items, related_slugs, is_published, published_at)
VALUES (
  'residencia-temporal/estudiante',
  'residencia-temporal',
  'residencia-temporal',
  'cluster',
  'Residencia Temporal para estudiantes en Chile',
  'Residencia Temporal para estudiantes en Chile: guía completa',
  'Cómo obtener Residencia Temporal en Chile si eres estudiante en una institución acreditada: documentos, restricciones y renovación.',
  'residencia temporal estudiante chile universidad instituto documentos',
  $content$<h2>¿Quién puede solicitarla?</h2>
<p>Cualquier extranjero matriculado en una institución educacional reconocida por el Estado chileno: universidades, institutos profesionales, centros de formación técnica o colegios acreditados.</p>
<h2>Documentos requeridos</h2>
<ul>
<li>Pasaporte vigente.</li>
<li>Certificado de matrícula o carta de aceptación de la institución educativa.</li>
<li>Certificado de antecedentes para fines especiales.</li>
<li>Comprobante de domicilio en Chile.</li>
<li>Comprobante de medios de subsistencia (apoyo familiar, beca, saldo bancario).</li>
</ul>
<h2>¿Puedo trabajar con esta categoría?</h2>
<p>La Residencia Temporal para estudiantes en Chile no restringe el trabajo. A diferencia de otros países, en Chile la visa de estudiante no impide trabajar, aunque el trabajo no puede ser el motivo principal de la estadía.</p>
<h2>Renovación</h2>
<p>Para renovar, debes demostrar que sigues inscrito en la institución. Si interrumpes los estudios, el permiso pierde su sustento y debes cambiar de categoría o no renovar.</p>$content$,
  'FAQPage',
  '[{"question":"¿Sirve para estudiar en un instituto de idiomas o escuela de idiomas?","answer":"Depende de si la institución está reconocida por el Ministerio de Educación de Chile. Verifica el reconocimiento oficial antes de postular bajo esta categoría."},{"question":"¿Puedo traer a mi familia con esta visa?","answer":"Tus familiares directos (cónyuge, hijos) pueden solicitar Residencia Temporal como dependientes bajo tu permiso de estudiante."}]'::jsonb,
  ARRAY['residencia-temporal/renovacion', 'residencia-temporal/cambio-categoria'],
  TRUE,
  NOW()
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO articles (slug, silo, parent_slug, type, title, h1, meta_description, keyword_primary, content, schema_type, faq_items, related_slugs, is_published, published_at)
VALUES (
  'residencia-temporal/razones-humanitarias',
  'residencia-temporal',
  'residencia-temporal',
  'cluster',
  'Residencia Temporal por razones humanitarias en Chile',
  'Residencia Temporal por razones humanitarias en Chile',
  'Cuándo aplica la Residencia Temporal por razones humanitarias en Chile, quién puede solicitarla y qué documentos se requieren.',
  'residencia temporal razones humanitarias chile quien aplica documentos',
  $content$<h2>¿Cuándo aplica esta categoría?</h2>
<p>La Ley 21.325 contempla la Residencia Temporal por razones humanitarias para personas que se encuentran en situaciones de vulnerabilidad grave: víctimas de tráfico de personas, personas en riesgo por catástrofes naturales, personas con enfermedades graves que requieren tratamiento en Chile, entre otras situaciones excepcionales.</p>
<h2>Situaciones habilitantes más frecuentes</h2>
<ul>
<li>Víctimas de trata de personas o tráfico ilícito de migrantes reconocidas por la PDI o el Ministerio del Interior.</li>
<li>Personas con enfermedades graves en tratamiento activo en Chile.</li>
<li>Situaciones de violencia doméstica severa.</li>
<li>Casos calificados por el SERMIG con circunstancias excepcionales.</li>
</ul>
<h2>Proceso</h2>
<p>Esta categoría generalmente requiere un informe o certificación de un organismo público (PDI, Ministerio del Interior, hospital, etc.) que acredite la situación humanitaria. El SERMIG evalúa caso a caso con criterio restrictivo.</p>
<h2>Recomendación</h2>
<p>Si crees que tu situación califica, consulta primero con una organización de apoyo migrante o con el SERMIG directamente, antes de presentar la solicitud, para confirmar que la documentación disponible es suficiente.</p>$content$,
  'FAQPage',
  '[{"question":"¿Estar en situación de pobreza es razón humanitaria suficiente?","answer":"No por sí sola. Las razones humanitarias requieren una situación de vulnerabilidad grave y específica, no solo precariedad económica."},{"question":"¿Esta categoría permite trabajar?","answer":"Sí, como toda Residencia Temporal en Chile, incluye autorización de trabajo."}]'::jsonb,
  ARRAY['residencia-temporal/rechazo', 'residencia-temporal/renovacion'],
  TRUE,
  NOW()
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO articles (slug, silo, parent_slug, type, title, h1, meta_description, keyword_primary, content, schema_type, faq_items, related_slugs, is_published, published_at)
VALUES (
  'residencia-temporal/jubilado-rentista',
  'residencia-temporal',
  'residencia-temporal',
  'cluster',
  'Residencia Temporal para jubilados y rentistas en Chile',
  'Residencia Temporal para jubilados y rentistas en Chile',
  'Cómo obtener Residencia Temporal en Chile siendo jubilado o rentista: ingresos pasivos, documentos requeridos y consideraciones.',
  'residencia temporal jubilado rentista chile pension ingresos documentos',
  $content$<h2>¿A quién aplica?</h2>
<p>Esta categoría es para personas que acreditan ingresos pasivos suficientes para vivir en Chile sin necesidad de trabajar: jubilados con pensión del exterior, rentistas con ingresos periódicos demostrables (arrendamientos, dividendos, etc.).</p>
<h2>Documentos requeridos</h2>
<ul>
<li>Pasaporte vigente.</li>
<li>Certificado de jubilación o pensión (del país de origen o institución emisora), apostillado.</li>
<li>Extractos bancarios que demuestren el ingreso periódico.</li>
<li>Certificado de antecedentes para fines especiales.</li>
<li>Comprobante de domicilio en Chile.</li>
</ul>
<h2>¿Cuánto ingreso se requiere?</h2>
<p>La Ley 21.325 no establece un monto mínimo fijo, pero el SERMIG evalúa si el ingreso es suficiente para cubrir gastos básicos en Chile. Un ingreso equivalente al salario mínimo chileno o superior suele ser aceptado sin observaciones.</p>
<h2>¿Puedo trabajar con esta categoría?</h2>
<p>Sí, aunque no es el motivo principal del permiso, la Residencia Temporal no impide trabajar en Chile.</p>$content$,
  'FAQPage',
  '[{"question":"¿Mi pensión del exterior debe estar apostillada?","answer":"Sí. El certificado de pensión o jubilación del extranjero debe estar apostillado (o con legalización consular si el país no adhiere al Convenio de La Haya) para ser reconocido en Chile."},{"question":"¿Puedo solicitar esta categoría si tengo ingresos por arrendamiento en mi país?","answer":"Sí, si puedes acreditar los ingresos periódicos con extractos bancarios y el contrato de arrendamiento correspondiente, puedes postular como rentista."}]'::jsonb,
  ARRAY['residencia-temporal/renovacion', 'residencia-temporal/rechazo'],
  TRUE,
  NOW()
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO articles (slug, silo, parent_slug, type, title, h1, meta_description, keyword_primary, content, schema_type, faq_items, related_slugs, is_published, published_at)
VALUES (
  'residencia-temporal/responsabilidad-democratica',
  'residencia-temporal',
  'residencia-temporal',
  'cluster',
  'Visa de Responsabilidad Democrática para venezolanos',
  'Visa de Responsabilidad Democrática para venezolanos: qué es y cómo funciona',
  'Qué es la Visa de Responsabilidad Democrática, si sigue vigente en 2026 y qué alternativas tienen los venezolanos para obtener residencia en Chile.',
  'visa responsabilidad democratica venezolanos chile 2026 vigente alternativas',
  $content$<h2>¿Qué fue la Visa de Responsabilidad Democrática?</h2>
<p>Fue una categoría especial creada por el gobierno chileno en 2018 para facilitar el ingreso regular de ciudadanos venezolanos, en reconocimiento de la crisis humanitaria en Venezuela. Se tramitaba en los consulados chilenos en el exterior.</p>
<h2>¿Sigue vigente en 2026?</h2>
<p>Esta visa fue suspendida. Los ciudadanos venezolanos que deseen obtener Residencia Temporal en Chile deben hacerlo a través de las categorías generales de la Ley 21.325: contrato de trabajo, oferta laboral, vínculo familiar, MERCOSUR, u otras que correspondan a su situación.</p>
<h2>Alternativas actuales para venezolanos</h2>
<ul>
<li><strong>Residencia Temporal por contrato de trabajo:</strong> si tienes empleador en Chile.</li>
<li><strong>Residencia Temporal MERCOSUR:</strong> Venezuela fue suspendida del MERCOSUR; confirma elegibilidad actual con el SERMIG.</li>
<li><strong>Vínculo familiar:</strong> si tienes cónyuge, pareja o hijos con residencia o ciudadanía chilena.</li>
<li><strong>Razones humanitarias:</strong> en casos de vulnerabilidad grave debidamente acreditada.</li>
</ul>
<p>Para más información sobre trámites específicos para venezolanos, consulta la <a href="/paises/venezuela">guía para venezolanos</a>.</p>$content$,
  'FAQPage',
  '[{"question":"¿Los venezolanos necesitan visa para entrar a Chile?","answer":"Desde 2019, los venezolanos requieren visa consular para ingresar a Chile. Deben tramitarla antes de viajar en el consulado chileno de su país o de residencia."},{"question":"¿Existe algún beneficio especial para venezolanos en 2026?","answer":"No existe una categoría especial vigente en 2026. Los venezolanos aplican bajo las categorías generales de la Ley 21.325."}]'::jsonb,
  ARRAY['residencia-temporal/contrato-trabajo', 'residencia-temporal/mercosur', 'residencia-temporal/rechazo'],
  TRUE,
  NOW()
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO articles (slug, silo, parent_slug, type, title, h1, meta_description, keyword_primary, content, schema_type, faq_items, related_slugs, is_published, published_at)
VALUES (
  'residencia-temporal/mercosur',
  'residencia-temporal',
  'residencia-temporal',
  'cluster',
  'Residencia Temporal MERCOSUR en Chile',
  'Residencia Temporal MERCOSUR en Chile: quién califica y cómo solicitarla',
  'Cómo obtener la Residencia Temporal por MERCOSUR en Chile: países elegibles, documentos requeridos y proceso ante el SERMIG.',
  'residencia temporal mercosur chile paises elegibles documentos requisitos',
  $content$<h2>¿Qué es la Residencia MERCOSUR?</h2>
<p>El Acuerdo de Residencia del MERCOSUR permite a ciudadanos de países miembros y asociados obtener residencia temporal en Chile de forma más sencilla, sin necesidad de acreditar contrato de trabajo ni vínculo familiar.</p>
<h2>Países elegibles</h2>
<p>Ciudadanos de: Argentina, Bolivia, Brasil, Colombia, Ecuador, Paraguay, Perú, Uruguay. Verifica el estado actualizado de Venezuela en el SERMIG, ya que su situación con el MERCOSUR es especial.</p>
<h2>Documentos requeridos</h2>
<ul>
<li>Pasaporte vigente.</li>
<li>Acta de nacimiento apostillada del país de origen.</li>
<li>Certificado de antecedentes penales del país de origen apostillado.</li>
<li>Certificado de antecedentes para fines especiales del SRCeI (si ya estás en Chile).</li>
<li>Comprobante de domicilio en Chile.</li>
</ul>
<h2>Ventajas de esta vía</h2>
<ul>
<li>No requiere contrato de trabajo ni vínculo familiar.</li>
<li>Los documentos del país de origen necesitan apostilla, no legalización consular.</li>
<li>Es una de las vías más accesibles para quienes vienen a buscar trabajo.</li>
</ul>$content$,
  'FAQPage',
  '[{"question":"¿Puedo trabajar mientras tramito la Residencia MERCOSUR?","answer":"Mientras el trámite está en proceso, el SERMIG puede emitir un comprobante provisional. Consulta con el SERMIG si este comprobante es suficiente para tu empleador."},{"question":"¿La Residencia MERCOSUR es renovable?","answer":"Sí, se renueva como cualquier Residencia Temporal. Tras 2 años (o 1 con cotizaciones), puedes solicitar la Residencia Definitiva."}]'::jsonb,
  ARRAY['residencia-temporal/contrato-trabajo', 'residencia-temporal/renovacion'],
  TRUE,
  NOW()
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO articles (slug, silo, parent_slug, type, title, h1, meta_description, keyword_primary, content, schema_type, faq_items, related_slugs, is_published, published_at)
VALUES (
  'residencia-temporal/renovacion',
  'residencia-temporal',
  'residencia-temporal',
  'cluster',
  'Renovación de la Residencia Temporal en Chile',
  'Renovación de la Residencia Temporal en Chile: guía completa',
  'Cuándo y cómo renovar tu Residencia Temporal en Chile: plazos, documentos, portal SERMIG y qué pasa si se vence antes de renovar.',
  'renovacion residencia temporal chile cuando como documentos plazo sermig',
  $content$<h2>¿Cuándo renovar?</h2>
<p>Se recomienda iniciar la renovación con al menos <strong>90 días de anticipación</strong> al vencimiento. El SERMIG puede tardar semanas o meses en resolver, y si el permiso vence mientras el trámite está en proceso, tu situación queda en suspenso.</p>
<h2>Documentos habituales para la renovación</h2>
<ul>
<li>Pasaporte vigente.</li>
<li>Cédula de identidad de extranjería actual.</li>
<li>Certificado de antecedentes para fines especiales (reciente).</li>
<li>Documentación que justifica la renovación según categoría: contrato de trabajo vigente, matrícula, certificado de pensión, etc.</li>
<li>Comprobante de domicilio actualizado.</li>
</ul>
<h2>¿Qué pasa si el permiso vence antes de renovar?</h2>
<p>Si iniciaste el trámite antes del vencimiento y tienes el comprobante del SERMIG, tu situación queda en estado de "en trámite" y no se considera irregular. Si no iniciaste el trámite antes del vencimiento, entra en situación irregular y puede acumular multa.</p>
<h2>¿Cuántas veces se puede renovar?</h2>
<p>No hay límite de renovaciones, pero cada renovación se evalúa individualmente. Tras 2 años acumulados (o 1 con cotizaciones), es más eficiente solicitar la Residencia Definitiva.</p>$content$,
  'FAQPage',
  '[{"question":"¿Puedo renovar si cambié de empleador desde la última vez?","answer":"Sí. Solo debes presentar el contrato de trabajo o documentación vigente al momento de la renovación. El historial de empleadores no afecta la renovación."},{"question":"¿El trámite de renovación es gratuito?","answer":"No. La renovación tiene un arancel en UTM. Verifícalo en el portal del SERMIG al momento de ingresar la solicitud."}]'::jsonb,
  ARRAY['residencia-temporal/prorroga', 'residencia-temporal/estado-tramite-renovacion'],
  TRUE,
  NOW()
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO articles (slug, silo, parent_slug, type, title, h1, meta_description, keyword_primary, content, schema_type, faq_items, related_slugs, is_published, published_at)
VALUES (
  'residencia-temporal/prorroga',
  'residencia-temporal',
  'residencia-temporal',
  'cluster',
  'Prórroga de la Residencia Temporal en Chile',
  'Prórroga de la Residencia Temporal: cuándo pedirla y cómo',
  'Qué es la prórroga de Residencia Temporal, cuándo conviene pedirla en lugar de la renovación y cómo solicitarla ante el SERMIG.',
  'prorroga residencia temporal chile cuando pedir como solicitar sermig',
  $content$<h2>¿Prórroga o renovación?</h2>
<p>La <strong>prórroga</strong> extiende la vigencia del permiso actual temporalmente, generalmente mientras se resuelve otra solicitud o se regulariza una situación puntual. La <strong>renovación</strong> emite un nuevo permiso por otro período completo (usualmente 2 años).</p>
<h2>¿Cuándo conviene solicitar prórroga?</h2>
<ul>
<li>Cuando el permiso está por vencer y la documentación para renovar aún no está completa.</li>
<li>Cuando hay un proceso pendiente (recurso administrativo, solicitud de Residencia Definitiva) que puede resolverse pronto.</li>
<li>Cuando la situación laboral cambió y necesitas tiempo para actualizar el expediente.</li>
</ul>
<h2>¿Cómo solicitarla?</h2>
<p>La prórroga se solicita en el portal del SERMIG. Debes indicar el motivo y adjuntar la documentación de respaldo. El SERMIG la evalúa y puede conceder una extensión por un período determinado.</p>
<h2>Importante</h2>
<p>La prórroga no reemplaza a la renovación si el objetivo es continuar en Chile a largo plazo. Es una herramienta de emergencia, no una alternativa permanente.</p>$content$,
  'FAQPage',
  '[{"question":"¿Cuánto tiempo otorga una prórroga?","answer":"El SERMIG determina el período, que generalmente va de 1 a 6 meses. No hay un plazo fijo garantizado."},{"question":"¿Puedo pedir prórroga más de una vez?","answer":"En principio sí, pero el SERMIG puede denegar una segunda prórroga si considera que la situación no justifica seguir extendiendo sin resolver el fondo del trámite."}]'::jsonb,
  ARRAY['residencia-temporal/renovacion', 'residencia-temporal/rechazo'],
  TRUE,
  NOW()
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO articles (slug, silo, parent_slug, type, title, h1, meta_description, keyword_primary, content, schema_type, faq_items, related_slugs, is_published, published_at)
VALUES (
  'residencia-temporal/cambio-categoria',
  'residencia-temporal',
  'residencia-temporal',
  'cluster',
  'Cambio de categoría de Residencia Temporal en Chile',
  'Cambio de categoría de Residencia Temporal: cuándo y cómo hacerlo',
  'Cómo cambiar la categoría de tu Residencia Temporal en Chile: de estudiante a trabajo, de familiar a trabajo, y otros cambios habituales.',
  'cambio categoria residencia temporal chile como tramitar requisitos',
  $content$<h2>¿Cuándo es necesario cambiar de categoría?</h2>
<ul>
<li>Tu permiso era por estudios y ahora trabajarás con contrato.</li>
<li>Tu permiso era por vínculo familiar y ese vínculo ya no existe (separación, fallecimiento).</li>
<li>Tu situación cambió y la categoría actual ya no corresponde a tu realidad.</li>
</ul>
<h2>¿Cómo se tramita?</h2>
<p>El cambio de categoría se tramita como una nueva solicitud de Residencia Temporal, esta vez bajo la categoría correcta. No es necesario salir del país para hacerlo si ya tienes Residencia Temporal vigente.</p>
<h2>Documentos</h2>
<p>Los documentos dependen de la categoría a la que cambias: si es por trabajo, necesitas el contrato; si es por vínculo familiar, el certificado correspondiente. Son los mismos documentos que para una solicitud nueva en esa categoría.</p>
<h2>¿El tiempo acumulado se pierde?</h2>
<p>No. Los años de Residencia Temporal válidos siguen contando para el cómputo hacia la Residencia Definitiva, independientemente de la categoría.</p>$content$,
  'FAQPage',
  '[{"question":"¿Puedo cambiar de categoría mientras tengo el permiso vigente?","answer":"Sí. No necesitas esperar al vencimiento. Puedes solicitar el cambio de categoría en cualquier momento mientras tu permiso actual esté vigente."},{"question":"¿El cambio de categoría interrumpe mi derecho a trabajar?","answer":"No, si el trámite está en proceso y tienes el comprobante del SERMIG. Tu permiso actual sigue vigente mientras se resuelve el nuevo."}]'::jsonb,
  ARRAY['residencia-temporal/renovacion', 'residencia-temporal/contrato-trabajo'],
  TRUE,
  NOW()
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO articles (slug, silo, parent_slug, type, title, h1, meta_description, keyword_primary, content, schema_type, faq_items, related_slugs, is_published, published_at)
VALUES (
  'residencia-temporal/rechazo',
  'residencia-temporal',
  'residencia-temporal',
  'cluster',
  'Rechazo de Residencia Temporal en Chile: causas y recursos',
  'Rechazo de Residencia Temporal: causas y cómo recurrir',
  'Por qué puede rechazarse una solicitud de Residencia Temporal en Chile y qué hacer tras recibir la resolución de rechazo del SERMIG.',
  'rechazo residencia temporal chile causas recurso sermig que hacer',
  $content$<h2>Causas frecuentes de rechazo</h2>
<ul>
<li><strong>Documentación incompleta:</strong> falta algún certificado o documento requerido.</li>
<li><strong>Documentos vencidos o ilegibles:</strong> certificados de antecedentes o apostillas fuera de plazo.</li>
<li><strong>Inconsistencias en el expediente:</strong> datos que no coinciden entre documentos.</li>
<li><strong>Antecedentes penales:</strong> condenas que impiden la concesión del permiso.</li>
<li><strong>Ingreso irregular sin regularización previa:</strong> si ingresaste sin registro válido y no tienes autorización previa.</li>
<li><strong>La categoría solicitada no corresponde a tu situación real.</strong></li>
</ul>
<h2>Qué hacer tras el rechazo</h2>
<ol>
<li>Lee la resolución completa: identifica el motivo específico.</li>
<li>Evalúa si corresponde recurso de reposición o si es mejor corregir y volver a postular.</li>
<li>Anota el plazo para recurrir (generalmente 5 días hábiles desde la notificación).</li>
</ol>
<h2>Recursos disponibles</h2>
<ul>
<li><strong>Recurso de reposición:</strong> ante el SERMIG dentro del plazo.</li>
<li><strong>Nueva solicitud:</strong> si el problema fue documental, corrige y vuelve a postular.</li>
<li><strong>Cambio de categoría:</strong> si la categoría no correspondía a tu situación.</li>
</ul>$content$,
  'FAQPage',
  '[{"question":"¿Cuánto tiempo tengo para presentar el recurso de reposición?","answer":"Generalmente 5 días hábiles desde la notificación de la resolución de rechazo. Verifica el plazo exacto en el texto de la resolución."},{"question":"¿El rechazo me obliga a salir de Chile?","answer":"No inmediatamente. Si tienes otro permiso vigente (turismo u otro), puedes permanecer. Si no tienes ningún permiso válido, tu situación es irregular y debes regularizarla o consultar con el SERMIG."}]'::jsonb,
  ARRAY['residencia-temporal/cambio-categoria', 'residencia-temporal/prorroga'],
  TRUE,
  NOW()
) ON CONFLICT (slug) DO NOTHING;

COMMIT;
