-- Migración: Insertar artículos cluster para el silo residencia-definitiva (8 clusters)

BEGIN;

INSERT INTO articles (slug, silo, parent_slug, type, title, h1, meta_description, keyword_primary, content, schema_type, faq_items, related_slugs, is_published, published_at)
VALUES (
  'residencia-definitiva/requisitos',
  'residencia-definitiva',
  'residencia-definitiva',
  'cluster',
  'Requisitos para la Residencia Definitiva en Chile',
  'Requisitos para obtener la Residencia Definitiva en Chile',
  'Qué condiciones debes cumplir para solicitar la Residencia Definitiva en Chile: tiempo de residencia, documentos y criterios del SERMIG.',
  'requisitos residencia definitiva chile condiciones documentos sermig',
  $content$<h2>Condición principal: tiempo de residencia</h2>
<p>El requisito fundamental es haber tenido residencia temporal vigente en Chile durante <strong>al menos 2 años continuos</strong> (24 meses) en los últimos 3 años, contados desde la primera Residencia Temporal. La Ley 21.325 permite reducir este plazo a 12 meses en casos específicos.</p>
<h2>Documentos habituales</h2>
<ul>
<li>Pasaporte vigente.</li>
<li>Cédula de identidad de extranjería vigente.</li>
<li>Certificado de antecedentes para fines especiales (hoja de vida, SRCeI).</li>
<li>Certificado de antecedentes del país de origen apostillado (si el SERMIG lo requiere).</li>
<li>Comprobante de domicilio en Chile.</li>
<li>Comprobante de medios de subsistencia (contrato de trabajo, liquidaciones, o declaración jurada según corresponda).</li>
</ul>
<h2>Otros criterios evaluados</h2>
<ul>
<li>Ausencias del territorio: periodos prolongados fuera de Chile pueden interrumpir el cómputo de los 2 años.</li>
<li>Antecedentes penales: condenas pueden ser causal de rechazo.</li>
<li>Vigencia del permiso de residencia durante el período requerido.</li>
</ul>
<h2>¿Puedo solicitarla antes de los 2 años?</h2>
<p>Sí, en casos especiales: cónyuge o conviviente de ciudadano chileno, padre o madre de hijo chileno, o si cumples los requisitos de la vía de 12 meses por cotizaciones previsionales. Ver cluster específico de reducción de plazo.</p>$content$,
  'FAQPage',
  '[{"question":"¿Los años como turista cuentan para los 2 años?","answer":"No. Solo cuentan los períodos con Residencia Temporal vigente. Los días como turista o en situación irregular no se computan."},{"question":"¿Puedo solicitarla si tengo períodos con el permiso vencido?","answer":"Los períodos con permiso vencido no se cuentan y pueden generar observaciones. Si tuviste irregularidades, el SERMIG las evalúa caso a caso."}]'::jsonb,
  ARRAY['residencia-definitiva/como-solicitarla', 'residencia-definitiva/reduccion-plazo-12-meses', 'residencia-definitiva/casos-especiales'],
  TRUE,
  NOW()
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO articles (slug, silo, parent_slug, type, title, h1, meta_description, keyword_primary, content, schema_type, faq_items, related_slugs, is_published, published_at)
VALUES (
  'residencia-definitiva/como-solicitarla',
  'residencia-definitiva',
  'residencia-definitiva',
  'cluster',
  'Cómo solicitar la Residencia Definitiva en Chile',
  'Cómo solicitar la Residencia Definitiva en Chile: guía paso a paso',
  'Pasos concretos para presentar la solicitud de Residencia Definitiva ante el SERMIG: documentos, portal y qué esperar tras el ingreso.',
  'como solicitar residencia definitiva chile pasos portal sermig',
  $content$<h2>Paso 1: Verifica que cumples los requisitos</h2>
<p>Antes de presentar la solicitud, confirma que tienes al menos 2 años de Residencia Temporal continua en los últimos 3 años, sin períodos con permiso vencido relevantes. Calcula tus fechas con el <a href="/herramientas/simulador-plazos">Simulador de Plazos</a>.</p>
<h2>Paso 2: Reúne la documentación</h2>
<ul>
<li>Pasaporte vigente (con copias de todas las páginas con sellos chilenos).</li>
<li>Cédula de identidad de extranjería vigente.</li>
<li>Certificado de antecedentes para fines especiales (SRCeI, debe ser reciente).</li>
<li>Comprobante de domicilio.</li>
<li>Comprobante de medios de subsistencia (liquidaciones, contratos, boletas de honorarios).</li>
</ul>
<h2>Paso 3: Presenta la solicitud</h2>
<p>La solicitud se presenta en el portal de trámites del SERMIG (<strong>tramitesmigratorios.interior.gob.cl</strong>). Crea o accede a tu cuenta, selecciona "Residencia Definitiva" y sube los documentos digitalizados según los formatos requeridos.</p>
<h2>Paso 4: Paga el arancel</h2>
<p>La solicitud de Residencia Definitiva tiene un costo en UTM. El monto se indica al momento del ingreso en el portal. El pago se realiza en línea o en entidades habilitadas.</p>
<h2>Paso 5: Seguimiento</h2>
<p>Consulta el estado en el portal con tu número de folio. El SERMIG puede requerir documentación adicional durante la evaluación. Si es aprobada, recibirás instrucciones para retirar tu cédula en el SRCeI.</p>$content$,
  'FAQPage',
  '[{"question":"¿Puedo presentar la solicitud en papel o solo en línea?","answer":"El SERMIG ha migrado la mayoría de trámites al portal en línea. Consulta si existe atención presencial para tu caso específico, especialmente si tienes dificultades con el portal digital."},{"question":"¿Cuánto cuesta la solicitud de Residencia Definitiva?","answer":"El arancel se expresa en UTM y cambia periódicamente. Verifícalo en el portal del SERMIG al momento de presentar la solicitud."}]'::jsonb,
  ARRAY['residencia-definitiva/requisitos', 'residencia-definitiva/cuanto-demora', 'residencia-definitiva/estado-tramite'],
  TRUE,
  NOW()
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO articles (slug, silo, parent_slug, type, title, h1, meta_description, keyword_primary, content, schema_type, faq_items, related_slugs, is_published, published_at)
VALUES (
  'residencia-definitiva/cuanto-demora',
  'residencia-definitiva',
  'residencia-definitiva',
  'cluster',
  'Cuánto demora la Residencia Definitiva en Chile (2026)',
  'Cuánto demora la Residencia Definitiva en Chile (2026)',
  'Tiempos reales de resolución para la Residencia Definitiva en Chile: plazos del SERMIG, factores que aceleran o demoran y qué hacer si se extiende.',
  'cuanto demora residencia definitiva chile 2026 plazo sermig tiempo',
  $content$<h2>Plazos estimados (2026)</h2>
<p>El SERMIG no publica plazos garantizados. En condiciones normales y con expediente completo, el proceso puede tomar entre <strong>3 y 8 meses</strong> desde el ingreso de la solicitud. En períodos de alta demanda, puede extenderse.</p>
<h2>Etapas del proceso</h2>
<ul>
<li><strong>Ingreso y validación documental:</strong> 2–4 semanas.</li>
<li><strong>Evaluación del expediente:</strong> 2–4 meses.</li>
<li><strong>Requerimiento de documentos adicionales (si aplica):</strong> +4–8 semanas más.</li>
<li><strong>Resolución y emisión de cédula:</strong> 2–6 semanas adicionales tras la aprobación.</li>
</ul>
<h2>Factores que aceleran el proceso</h2>
<ul>
<li>Documentación completa y sin errores desde el primer día.</li>
<li>Responder inmediatamente a cualquier requerimiento del SERMIG.</li>
<li>Datos consistentes entre todos los documentos del expediente.</li>
</ul>
<h2>¿Qué hago mientras espero?</h2>
<p>Tu Residencia Temporal sigue siendo válida mientras el trámite está en proceso. Si tu cédula de extranjería vence, solicita un certificado de vigencia al SERMIG para acreditar tu situación regular ante empleadores o entidades financieras.</p>$content$,
  'FAQPage',
  '[{"question":"¿Puedo trabajar mientras espero la Residencia Definitiva?","answer":"Sí, mientras tu Residencia Temporal esté vigente puedes seguir trabajando con normalidad. Tu permiso de trabajo no se interrumpe por tener una solicitud de Residencia Definitiva en proceso."},{"question":"¿Si demora más de 8 meses puedo reclamar?","answer":"Puedes acudir presencialmente al SERMIG para solicitar información sobre el estado. No hay un mecanismo de reclamación formal por demora, pero la presentación presencial suele activar revisiones."}]'::jsonb,
  ARRAY['residencia-definitiva/como-solicitarla', 'residencia-definitiva/estado-tramite'],
  TRUE,
  NOW()
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO articles (slug, silo, parent_slug, type, title, h1, meta_description, keyword_primary, content, schema_type, faq_items, related_slugs, is_published, published_at)
VALUES (
  'residencia-definitiva/reduccion-plazo-12-meses',
  'residencia-definitiva',
  'residencia-definitiva',
  'cluster',
  'Residencia Definitiva en 12 meses: reducción de plazo',
  'Residencia Definitiva en 12 meses: quién califica para la reducción de plazo',
  'Cómo acceder a la Residencia Definitiva en solo 12 meses de residencia en Chile: requisitos de cotizaciones previsionales y otros casos habilitantes.',
  'residencia definitiva 12 meses reduccion plazo cotizaciones chile',
  $content$<h2>¿En qué consiste la reducción de plazo?</h2>
<p>La Ley 21.325 permite solicitar la Residencia Definitiva con solo <strong>12 meses de Residencia Temporal</strong> (en vez de 24) si se cumplen ciertos requisitos adicionales. Es una vía especialmente relevante para trabajadores con contrato formal.</p>
<h2>¿Quién puede calificar?</h2>
<ul>
<li><strong>Trabajadores con cotizaciones previsionales:</strong> haber cotizado en AFP y sistema de salud durante los 12 meses de Residencia Temporal de forma continua y sin lagunas. Es el caso más frecuente.</li>
<li><strong>Cónyuge o conviviente civil de chileno:</strong> puede solicitar Residencia Definitiva directamente sin esperar 24 meses.</li>
<li><strong>Padre o madre de hijo chileno:</strong> igualmente habilitado para la vía directa.</li>
</ul>
<h2>Documentos adicionales para la vía de 12 meses</h2>
<ul>
<li>Certificado de cotizaciones de AFP (emitido por la AFP, muestra historial completo).</li>
<li>Certificado de cotizaciones de salud (FONASA o ISAPRE).</li>
<li>Los certificados deben cubrir los 12 meses completos sin lagunas significativas.</li>
</ul>
<h2>Consideraciones importantes</h2>
<ul>
<li>Meses sin cotización (por desempleo, informalidad) pueden romper la continuidad requerida.</li>
<li>El SERMIG evalúa caso a caso: tener 11 meses cotizados y 1 sin cotizar puede ser suficiente o no, según el criterio aplicado.</li>
<li>Usa el <a href="/herramientas/simulador-plazos">Simulador de Plazos</a> para estimar si cumples.</li>
</ul>$content$,
  'FAQPage',
  '[{"question":"¿Los períodos trabajando de forma independiente cuentan para las cotizaciones?","answer":"Sí, si cotizaste como trabajador independiente (boletas de honorarios con retención) en AFP y salud, esos meses cuentan. Lo importante es que el certificado de cotizaciones lo refleje."},{"question":"¿Qué pasa si tengo un mes sin cotización en los 12?","answer":"El SERMIG evalúa el caso. Una laguna breve por cambio de trabajo puede ser justificable con documentación. Una laguna prolongada puede impedir la vía de 12 meses y obligar a esperar los 24."}]'::jsonb,
  ARRAY['residencia-definitiva/requisitos', 'residencia-definitiva/como-solicitarla', 'residencia-definitiva/casos-especiales'],
  TRUE,
  NOW()
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO articles (slug, silo, parent_slug, type, title, h1, meta_description, keyword_primary, content, schema_type, faq_items, related_slugs, is_published, published_at)
VALUES (
  'residencia-definitiva/casos-especiales',
  'residencia-definitiva',
  'residencia-definitiva',
  'cluster',
  'Casos especiales para la Residencia Definitiva en Chile',
  'Casos especiales para solicitar la Residencia Definitiva en Chile',
  'Situaciones que permiten acceder a la Residencia Definitiva fuera del plazo general: familiares de chilenos, inversionistas, refugiados y otras categorías.',
  'casos especiales residencia definitiva chile familiar chileno inversionista refugiado',
  $content$<h2>Cónyuge o conviviente civil de ciudadano chileno</h2>
<p>Puede solicitar la Residencia Definitiva directamente, sin necesidad de acumular 24 o 12 meses de Residencia Temporal previa. Requiere acreditar el vínculo (matrimonio o AUC inscrito en el Registro Civil chileno) y cumplir los demás requisitos generales.</p>
<h2>Padre o madre de hijo chileno</h2>
<p>Habilitado para solicitar la Residencia Definitiva directamente, acreditando la filiación con el hijo chileno (partida de nacimiento del SRCeI).</p>
<h2>Personas reconocidas como refugiadas</h2>
<p>Quienes tienen reconocimiento de refugio en Chile pueden solicitar la Residencia Definitiva conforme a la Ley 20.430 (Ley de Refugio) y sus plazos específicos, que pueden ser distintos a los generales.</p>
<h2>Inversionistas y personas con patrimonio demostrable</h2>
<p>La ley contempla categorías para quienes tienen inversiones en Chile o patrimonio que demuestre medios de subsistencia autónoma. El SERMIG evalúa cada caso.</p>
<h2>Otros vínculos relevantes</h2>
<ul>
<li>Personas mayores de 65 años con pensión acreditada.</li>
<li>Personas con discapacidad severa y dependientes de familiar residente.</li>
</ul>
<p>En todos los casos especiales, los requisitos generales de antecedentes (no tener condenas graves, no tener prohibición de ingreso) siguen aplicando.</p>$content$,
  'FAQPage',
  '[{"question":"¿Puedo solicitar la Residencia Definitiva si me casé con un chileno después de llegar como turista?","answer":"Sí, pero primero debes obtener una Residencia Temporal por vínculo familiar. Una vez con Residencia Temporal por matrimonio con chileno, puedes solicitar Residencia Definitiva directamente sin esperar 24 meses."},{"question":"¿Un hijo adoptado cuenta para la vía directa?","answer":"Sí, si la adopción está inscrita en el Registro Civil chileno y el hijo tiene nacionalidad chilena, el vínculo es válido para esta categoría."}]'::jsonb,
  ARRAY['residencia-definitiva/requisitos', 'residencia-definitiva/reduccion-plazo-12-meses'],
  TRUE,
  NOW()
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO articles (slug, silo, parent_slug, type, title, h1, meta_description, keyword_primary, content, schema_type, faq_items, related_slugs, is_published, published_at)
VALUES (
  'residencia-definitiva/rechazo',
  'residencia-definitiva',
  'residencia-definitiva',
  'cluster',
  'Rechazo de Residencia Definitiva: causas y recursos',
  'Rechazo de Residencia Definitiva: causas y cómo recurrir',
  'Por qué puede rechazarse una solicitud de Residencia Definitiva en Chile y qué recursos tienes para impugnar la resolución.',
  'rechazo residencia definitiva chile causas recurso sermig',
  $content$<h2>Causas frecuentes de rechazo</h2>
<ul>
<li><strong>Documentación incompleta o con errores:</strong> falta de algún certificado, fechas inconsistentes, copias ilegibles.</li>
<li><strong>No cumplir el plazo requerido:</strong> períodos con permiso vencido que reducen el tiempo válido computable.</li>
<li><strong>Antecedentes penales:</strong> condenas relevantes en Chile o en el extranjero.</li>
<li><strong>Lagunas en cotizaciones (vía de 12 meses):</strong> si usaste esta vía y los certificados no cubren el período completo.</li>
<li><strong>Salidas prolongadas del país:</strong> ausencias largas que interrumpen la continuidad de residencia.</li>
</ul>
<h2>Qué dice la resolución de rechazo</h2>
<p>La resolución debe indicar el motivo legal específico del rechazo. Lee atentamente antes de decidir el siguiente paso: la causa determina si corresponde recurrir, corregir documentación o esperar más tiempo.</p>
<h2>Recursos disponibles</h2>
<ul>
<li><strong>Recurso de reposición:</strong> ante el SERMIG, dentro del plazo indicado (generalmente 5 días hábiles desde la notificación).</li>
<li><strong>Nueva solicitud:</strong> si el rechazo fue por documentación faltante, puedes corregir y volver a postular cuando tengas todo en orden.</li>
</ul>$content$,
  'FAQPage',
  '[{"question":"¿El rechazo afecta mi Residencia Temporal actual?","answer":"No directamente. Tu Residencia Temporal vigente no se revoca por el rechazo de la Definitiva. Sin embargo, si tu temporal vence pronto, debes renovarla independientemente."},{"question":"¿Cuánto tiempo tengo para volver a postular tras un rechazo?","answer":"No hay período de espera obligatorio si corriges la causa del rechazo. Puedes volver a postular cuando tengas la documentación completa y correcta."}]'::jsonb,
  ARRAY['residencia-definitiva/como-solicitarla', 'residencia-definitiva/requisitos'],
  TRUE,
  NOW()
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO articles (slug, silo, parent_slug, type, title, h1, meta_description, keyword_primary, content, schema_type, faq_items, related_slugs, is_published, published_at)
VALUES (
  'residencia-definitiva/estado-tramite',
  'residencia-definitiva',
  'residencia-definitiva',
  'cluster',
  'Consultar el estado de tu Residencia Definitiva en Chile',
  'Cómo consultar el estado de tu solicitud de Residencia Definitiva',
  'Dónde y cómo verificar el estado de tu solicitud de Residencia Definitiva: portal SERMIG, estados posibles y qué hacer en cada caso.',
  'consultar estado solicitud residencia definitiva chile portal sermig',
  $content$<h2>Portal de trámites del SERMIG</h2>
<p>Accede a <strong>tramitesmigratorios.interior.gob.cl</strong> con tu cuenta y número de folio para ver el estado actualizado de tu solicitud.</p>
<h2>Estados posibles</h2>
<ul>
<li><strong>Ingresado / En validación:</strong> la solicitud fue recibida y se está verificando que los documentos sean correctos.</li>
<li><strong>En revisión / En proceso:</strong> el evaluador del SERMIG está analizando tu expediente.</li>
<li><strong>Documentación pendiente:</strong> el SERMIG requiere documentos adicionales. Revisa el portal para ver qué se solicita y preséntalo a la brevedad.</li>
<li><strong>Aprobado:</strong> la Residencia Definitiva fue concedida. Sigue las instrucciones para sacar tu nueva cédula en el SRCeI.</li>
<li><strong>Rechazado:</strong> la solicitud fue denegada. Tienes plazo para presentar recurso o nueva solicitud.</li>
</ul>
<h2>¿El portal no se actualiza hace meses?</h2>
<ul>
<li>Acude presencialmente al SERMIG con tu número de folio.</li>
<li>Solicita información sobre el estado de evaluación.</li>
<li>Verifica que tus datos de contacto en el portal estén correctos para recibir notificaciones.</li>
</ul>$content$,
  'FAQPage',
  '[{"question":"¿Me avisan por correo cuando hay novedades?","answer":"El SERMIG puede enviar notificaciones al correo registrado en el portal. Asegúrate de que esté correcto y revisa también la carpeta de spam."},{"question":"¿Puedo autorizar a otra persona para hacer seguimiento por mí?","answer":"Para consultas de estado, basta con tener el número de folio. Para gestiones formales, puede requerirse un poder notarial."}]'::jsonb,
  ARRAY['residencia-definitiva/cuanto-demora', 'residencia-definitiva/como-solicitarla'],
  TRUE,
  NOW()
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO articles (slug, silo, parent_slug, type, title, h1, meta_description, keyword_primary, content, schema_type, faq_items, related_slugs, is_published, published_at)
VALUES (
  'residencia-definitiva/prorroga-fuera-chile',
  'residencia-definitiva',
  'residencia-definitiva',
  'cluster',
  'Residencia Definitiva y ausencias del país: qué debes saber',
  'Residencia Definitiva y ausencias de Chile: cómo afectan tu permiso',
  'Cómo afectan las salidas prolongadas de Chile a tu Residencia Definitiva o a la acumulación del plazo para solicitarla.',
  'residencia definitiva ausencias chile salidas pais efecto plazo',
  $content$<h2>Durante el período de acumulación (antes de obtenerla)</h2>
<p>Para cumplir los 2 años de Residencia Temporal, las ausencias prolongadas pueden interrumpir el cómputo. La ley no especifica un límite exacto de días fuera, pero ausencias de varios meses consecutivos pueden reducir el período válido. Lleva registro de tus entradas y salidas (aparecen en el pasaporte con sellos de la PDI).</p>
<h2>Una vez obtenida la Residencia Definitiva</h2>
<p>La Residencia Definitiva puede perderse si el titular permanece fuera de Chile por más de <strong>1 año continuo</strong> sin autorización previa del SERMIG. Si planeas ausentarte por más tiempo, debes solicitar una autorización de ausencia prolongada antes de salir.</p>
<h2>Cómo solicitar autorización de ausencia prolongada</h2>
<ol>
<li>Presenta la solicitud ante el SERMIG antes de salir del país.</li>
<li>Indica el motivo y el período estimado de ausencia.</li>
<li>El SERMIG puede aprobar ausencias extendidas por razones justificadas (estudio, trabajo, salud).</li>
</ol>
<h2>¿Cómo verificar mis entradas y salidas?</h2>
<p>La PDI lleva el registro oficial. Puedes solicitar un certificado de movimientos migratorios (entradas y salidas) en la Jefatura de Extranjería de la PDI, útil para calcular tu tiempo efectivo en Chile.</p>$content$,
  'FAQPage',
  '[{"question":"¿Cuántos días puedo ausentarme sin afectar mi Residencia Definitiva?","answer":"Una vez obtenida, puedes ausentarte hasta 1 año continuo sin perderla. Si necesitas más tiempo, solicita autorización previa al SERMIG antes de salir."},{"question":"¿Las salidas por turismo cortas afectan el período de acumulación de los 2 años?","answer":"Salidas breves (días o semanas) generalmente no interrumpen el cómputo. Ausencias de varios meses consecutivos pueden generar observaciones del SERMIG al evaluar la solicitud."}]'::jsonb,
  ARRAY['residencia-definitiva/requisitos', 'residencia-definitiva/casos-especiales'],
  TRUE,
  NOW()
) ON CONFLICT (slug) DO NOTHING;

COMMIT;
