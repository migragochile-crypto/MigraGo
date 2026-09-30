-- Corrección integral de Residencia Temporal según fichas de SERMIG consultadas el 29-09-2026.
BEGIN;

UPDATE articles SET
  title='Residencia Temporal por hijo chileno: requisitos vigentes',
  h1='Residencia Temporal para madre o padre de una persona chilena',
  meta_description='Requisitos, documentos y lugar de solicitud de la Residencia Temporal por reunificación familiar con un hijo o hija chilena.',
  content=$content$
<h2>Quién puede solicitarla</h2>
<p>Esta vía de reunificación familiar permite postular a la madre o al padre extranjero de una persona chilena. El documento central es el certificado de nacimiento del hijo o hija chilena emitido por el Servicio de Registro Civil e Identificación.</p>
<h2>Dónde se presenta</h2>
<p>La solicitud puede realizarse en el Portal de Trámites Digitales de SERMIG tanto desde el extranjero como desde Chile. Si postulas dentro de Chile con Permanencia Transitoria, debes adjuntar la Tarjeta Única Migratoria o el timbre de ingreso correspondiente.</p>
<h2>Documentos principales</h2>
<ul><li>Pasaporte vigente si postulas desde el extranjero, o documento de identidad vigente si postulas desde Chile.</li><li>Certificado de antecedentes penales para mayores de 18 años, emitido por el país de origen o aquel donde hayas residido durante los últimos cinco años.</li><li>Fotografía reciente con las características solicitadas por SERMIG.</li><li>Certificado de nacimiento del hijo o hija chilena emitido por el Registro Civil chileno.</li></ul>
<h2>Vigencia documental</h2>
<p>Los antecedentes penales extranjeros deben tener una antigüedad no superior a 60 días. Los documentos extranjeros deben estar apostillados o legalizados y, si no están en español o inglés, acompañarse de traducción oficial.</p>
<h2>Lo que el vínculo no garantiza</h2>
<p>El parentesco habilita esta subcategoría y permite solicitarla desde Chile, pero no produce una aprobación automática ni concede directamente la Residencia Definitiva. Para una futura Residencia Definitiva debes cumplir su plazo y requisitos; el vínculo familiar es una circunstancia que SERMIG puede considerar para reducir el plazo general.</p>
<p><a href="https://serviciomigraciones.cl/residencia-temporal/subcategorias/reunificacion-familiar/" target="_blank" rel="noopener noreferrer">Consultar la ficha oficial de reunificación familiar</a>.</p>
$content$,
  faq_items='[{"q":"¿Puedo solicitarla estando en Chile?","a":"Sí. La reunificación familiar es una de las excepciones que puede solicitarse desde Chile, además de poder presentarse desde el extranjero."},{"q":"¿Tener un hijo chileno concede Residencia Definitiva automática?","a":"No. Debes solicitarla por separado y cumplir los requisitos aplicables; el vínculo puede ser considerado para una reducción del plazo."},{"q":"¿Puedo trabajar con este permiso?","a":"Sí. SERMIG indica que la Residencia Temporal por reunificación familiar permite desarrollar actividades lícitas remuneradas."}]'::jsonb,
  updated_at=NOW()
WHERE slug='residencia-temporal/hijo-chileno';

UPDATE articles SET
  title='Residencia Temporal por cónyuge o unión civil con persona chilena',
  h1='Residencia Temporal por vínculo de pareja con una persona chilena',
  meta_description='Quién califica por matrimonio o unión civil con una persona chilena, documentos y dónde solicitar la reunificación familiar.',
  content=$content$
<h2>Qué vínculos están publicados</h2>
<p>La ficha de reunificación familiar contempla al cónyuge y a otra figura análoga que produzca efectos equivalentes al matrimonio. SERMIG publica requisitos específicos para matrimonio y unión civil. Una relación de hecho sin reconocimiento jurídico no debe presentarse como equivalente automático.</p>
<h2>Dónde se solicita</h2>
<p>Puede presentarse desde el extranjero o desde Chile en el Portal de Trámites Digitales. La posibilidad de postular dentro del país deriva de la excepción por vínculo familiar con una persona chilena o residente definitiva.</p>
<h2>Documentos principales</h2>
<ul><li>Documento de identidad: pasaporte vigente desde el extranjero o documento vigente desde Chile.</li><li>Certificado de antecedentes penales para mayores de 18 años, del país de origen o de residencia durante los últimos cinco años.</li><li>Fotografía reciente.</li><li>Certificado de matrimonio o de unión civil que acredite el vínculo.</li></ul>
<p>Los documentos emitidos en el extranjero deben cumplir apostilla o legalización y traducción oficial cuando corresponda. Comprueba además los plazos de vigencia documental publicados por SERMIG.</p>
<h2>No confundir con Residencia Definitiva</h2>
<p>Obtener esta Residencia Temporal no concede automáticamente la Residencia Definitiva. El vínculo familiar puede ser considerado por SERMIG para una reducción del plazo, pero la solicitud definitiva se evalúa por separado.</p>
<p><a href="https://serviciomigraciones.cl/residencia-temporal/subcategorias/reunificacion-familiar/" target="_blank" rel="noopener noreferrer">Revisar requisitos oficiales de reunificación familiar</a>.</p>
$content$,
  faq_items='[{"q":"¿Puedo postular desde Chile?","a":"Sí. La reunificación familiar con una persona chilena o residente definitiva puede presentarse desde Chile o desde el extranjero."},{"q":"¿Basta una convivencia informal?","a":"No debe asumirse. La ficha publica matrimonio y unión civil; otro vínculo debe producir efectos jurídicos equivalentes y acreditarse conforme a la normativa aplicable."},{"q":"¿El vínculo entrega Residencia Definitiva inmediata?","a":"No. La Residencia Definitiva exige otra solicitud y el cumplimiento de sus requisitos."}]'::jsonb,
  updated_at=NOW()
WHERE slug='residencia-temporal/pareja-chilena';

UPDATE articles SET
  title='Residencia Temporal para estudiantes en Chile: requisitos',
  h1='Residencia Temporal para estudiar en Chile',
  meta_description='Cómo solicitar desde el extranjero la Residencia Temporal para estudiantes y cuál es el límite de trabajo autorizado.',
  content=$content$
<h2>Quién puede solicitarla</h2>
<p>Está dirigida a personas extranjeras que buscan establecerse en Chile para estudiar en un establecimiento educacional reconocido por el Estado.</p>
<h2>Se solicita desde el extranjero</h2>
<p>La primera solicitud se presenta en el Portal de Trámites Digitales estando fuera de Chile. No corresponde ingresar como turista para iniciar esta subcategoría dentro del país.</p>
<h2>Documentos principales</h2>
<ul><li>Pasaporte con vigencia no inferior a un año desde la solicitud.</li><li>Certificado de antecedentes penales para mayores de 18 años, con antigüedad no superior a 60 días.</li><li>Fotografía reciente.</li><li>Certificado de alumno regular o certificado de matrícula.</li><li>Prueba de sustento económico mediante los medios admitidos por SERMIG.</li></ul>
<h2>¿Puede trabajar un estudiante?</h2>
<p>Sí, pero no de manera ilimitada. La persona titular puede realizar actividades remuneradas lícitas por un máximo de <strong>30 horas semanales</strong>, sin autorización adicional. Exceder ese límite puede afectar la conservación de la calidad de estudiante.</p>
<h2>Prórroga y dependientes</h2>
<p>Para prorrogar se debe acreditar que continúan los estudios y el sustento económico. Determinados familiares pueden solicitar calidad de dependiente si cumplen el artículo 74 de la Ley 21.325.</p>
<p><a href="https://serviciomigraciones.cl/residencia-temporal/subcategorias/estudiantes/" target="_blank" rel="noopener noreferrer">Consultar la ficha oficial para estudiantes</a>.</p>
$content$,
  faq_items='[{"q":"¿Puedo solicitarla desde Chile como turista?","a":"No. La solicitud inicial para estudiantes está disponible solo desde el extranjero."},{"q":"¿Puedo trabajar mientras estudio?","a":"Sí, hasta 30 horas semanales en actividades remuneradas lícitas."},{"q":"¿Una carta de aceptación reemplaza la matrícula?","a":"La ficha vigente solicita certificado de alumno regular o certificado de matrícula; verifica el documento exigido antes de enviar."}]'::jsonb,
  updated_at=NOW()
WHERE slug='residencia-temporal/estudiante';

UPDATE articles SET
  title='Residencia Temporal por razones humanitarias: casos vigentes',
  h1='Residencia Temporal por razones humanitarias en Chile',
  meta_description='Los cinco supuestos humanitarios publicados por SERMIG y por qué cada uno tiene requisitos y procedimientos diferentes.',
  content=$content$
<h2>No es una categoría abierta</h2>
<p>La Residencia Temporal por razones humanitarias está dirigida a personas extranjeras que se encuentran en Chile y encajan en alguno de los supuestos publicados por SERMIG. No basta invocar de manera general vulnerabilidad, falta de recursos o una situación difícil.</p>
<h2>Casos publicados por SERMIG</h2>
<ol><li>Niños, niñas y adolescentes.</li><li>Mujeres extranjeras en situación de embarazo.</li><li>Víctimas de trata de personas.</li><li>Víctimas de tráfico ilícito de migrantes.</li><li>Víctimas de violencia intrafamiliar o de género.</li></ol>
<p>Cada caso tiene su propia ficha, documentación, forma de acreditación y condiciones. Debes entrar al supuesto específico antes de preparar el expediente.</p>
<h2>No confundir con tratamiento médico</h2>
<p>Las personas que deben iniciar o continuar un tratamiento médico en Chile tienen una subcategoría distinta. Una enfermedad no debe clasificarse automáticamente como razón humanitaria.</p>
<h2>Antes de solicitar</h2>
<p>Revisa quién puede presentar la solicitud, qué organismo debe respaldar los hechos y si necesitas apoyo especializado. MigraGo no puede determinar si una situación individual acredita violencia, trata o tráfico.</p>
<p><a href="https://serviciomigraciones.cl/residencia-temporal/subcategorias/razones-humanitarias/" target="_blank" rel="noopener noreferrer">Elegir el supuesto humanitario en SERMIG</a>.</p>
$content$,
  faq_items='[{"q":"¿La pobreza permite obtener este permiso?","a":"No aparece por sí sola como uno de los cinco supuestos publicados por SERMIG."},{"q":"¿Una enfermedad grave es una razón humanitaria?","a":"SERMIG mantiene una subcategoría separada para personas bajo tratamiento médico; revisa esa ficha específica."},{"q":"¿Se puede solicitar desde Chile?","a":"Sí. Los supuestos humanitarios publicados están destinados a personas extranjeras que se encuentran en Chile, con requisitos distintos según el caso."}]'::jsonb,
  updated_at=NOW()
WHERE slug='residencia-temporal/razones-humanitarias';

UPDATE articles SET
  title='Residencia Temporal para jubilados y rentistas: requisitos',
  h1='Residencia Temporal para personas jubiladas o rentistas',
  meta_description='Requisitos para acreditar una pensión, rentas inmobiliarias o activos financieros y solicitar la residencia desde el extranjero.',
  content=$content$
<h2>Dos perfiles diferentes</h2>
<p><strong>Persona jubilada:</strong> debe acreditar una pensión obtenida conforme a la normativa del país correspondiente. <strong>Persona rentista:</strong> debe percibir rentas constantes provenientes de bienes raíces o activos financieros.</p>
<h2>Suficiencia económica</h2>
<p>Los ingresos deben ser regulares y permitir cubrir al menos las necesidades básicas durante la permanencia en Chile, según los indicadores del Ministerio de Desarrollo Social y Familia. SERMIG no publica en esta ficha una equivalencia automática con el sueldo mínimo; por eso no corresponde prometer aprobación sobre la base de ese monto.</p>
<h2>Dónde se solicita</h2>
<p>La solicitud inicial se presenta exclusivamente desde el extranjero mediante el Portal de Trámites Digitales.</p>
<h2>Qué debe acreditar cada persona</h2>
<ul><li><strong>Jubilada:</strong> certificado que indique monto y duración de la jubilación, y comprobante del último pago disponible.</li><li><strong>Rentista inmobiliaria:</strong> dominio del inmueble, contrato de arriendo e ingresos obtenidos.</li><li><strong>Rentista de activos financieros:</strong> titularidad de los activos e ingresos derivados de ellos.</li></ul>
<p>También se exige pasaporte, antecedentes penales y fotografía. Los documentos extranjeros deben cumplir las formalidades de apostilla o legalización y traducción cuando corresponda.</p>
<p><a href="https://serviciomigraciones.cl/residencia-temporal/subcategorias/jubilados-y-rentistas/" target="_blank" rel="noopener noreferrer">Revisar requisitos oficiales para jubilados y rentistas</a>.</p>
$content$,
  faq_items='[{"q":"¿Se puede solicitar desde Chile?","a":"No. La solicitud inicial está disponible solo desde el extranjero."},{"q":"¿Existe un monto mínimo igual al sueldo mínimo?","a":"La ficha no establece esa equivalencia. Exige recursos regulares suficientes para cubrir necesidades básicas según indicadores oficiales."},{"q":"¿Basta mostrar saldo bancario?","a":"No necesariamente. Debes acreditar la fuente correspondiente: jubilación, bienes raíces o activos financieros, además de los ingresos regulares."}]'::jsonb,
  updated_at=NOW()
WHERE slug='residencia-temporal/jubilado-rentista';

UPDATE articles SET
  title='Prórroga de Residencia Temporal: plazo y documentos',
  h1='Cómo prorrogar tu Residencia Temporal en Chile',
  meta_description='Cuándo solicitar la prórroga de Residencia Temporal, dónde se presenta y qué documentos generales y específicos exige SERMIG.',
  content=$content$
<h2>Prórroga es la renovación del permiso</h2>
<p>SERMIG denomina <strong>prórroga</strong> a la solicitud para renovar la Residencia Temporal manteniendo la misma subcategoría y calidad. No es una extensión de emergencia distinta de la renovación.</p>
<h2>Cuándo y dónde solicitarla</h2>
<p>Se presenta desde Chile en el Portal de Trámites Digitales, dentro de los últimos <strong>90 días anteriores al vencimiento</strong> del permiso vigente. No esperes al último día: reúne previamente los documentos de tu subcategoría.</p>
<h2>Documentos generales</h2>
<ul><li>Hoja de identificación del pasaporte o documento de identidad.</li><li>Estampado Electrónico o visa consular con el timbre de ingreso, cuando corresponda.</li><li>Cédula de identidad chilena.</li><li>Antecedentes penales extranjeros para mayores de edad.</li><li>Fotografía reciente.</li></ul>
<h2>Debes mantener el fundamento</h2>
<p>Además de los documentos generales, tienes que acreditar que permanecen las condiciones por las que se otorgó el permiso. Por ejemplo, la subcategoría laboral exige respaldos laborales y previsionales; la de estudiante, continuidad de estudios y sustento; y la familiar, vigencia del vínculo.</p>
<h2>Si cambió tu situación</h2>
<p>Si ya no cumples el fundamento original, revisa si corresponde un cambio de subcategoría o calidad en vez de presentar información que no refleje tu situación actual.</p>
<p><a href="https://serviciomigraciones.cl/residencia-temporal/prorroga/" target="_blank" rel="noopener noreferrer">Consultar la prórroga oficial en SERMIG</a>.</p>
$content$,
  faq_items='[{"q":"¿Prórroga y renovación son trámites distintos?","a":"No. SERMIG llama prórroga a la renovación del permiso conservando la subcategoría y calidad."},{"q":"¿Cuándo puedo solicitarla?","a":"Dentro de los últimos 90 días anteriores al vencimiento del permiso vigente."},{"q":"¿Puedo prorrogar sin mantener el motivo original?","a":"Debes acreditar que mantienes las condiciones de la subcategoría; si cambiaron, revisa el trámite de cambio de subcategoría o calidad."}]'::jsonb,
  updated_at=NOW()
WHERE slug='residencia-temporal/renovacion';

UPDATE articles SET
  title='Prórroga de Residencia Temporal: qué significa y cómo solicitarla',
  h1='Prórroga de Residencia Temporal: renovación de la misma subcategoría',
  meta_description='La prórroga renueva la Residencia Temporal manteniendo subcategoría y calidad. Conoce plazo, lugar de solicitud y límites.',
  content=$content$
<h2>Qué significa prórroga</h2>
<p>En la terminología de SERMIG, prorrogar significa renovar el permiso de Residencia Temporal actual manteniendo su subcategoría y calidad. No es un permiso provisional de uno a seis meses ni una herramienta para ganar tiempo sin cumplir los requisitos.</p>
<h2>Regla operativa</h2>
<ul><li>Se solicita desde Chile.</li><li>Se presenta dentro de los últimos 90 días antes del vencimiento.</li><li>Exige documentos generales vigentes.</li><li>Exige acreditar que se mantienen las condiciones de la subcategoría original.</li></ul>
<h2>Cuándo no corresponde</h2>
<p>Si cambió el fundamento del permiso o la calidad de titular o dependiente, revisa el trámite de cambio de subcategoría o calidad. Si ya cumples las condiciones para Residencia Definitiva, compara ambos trámites antes de decidir.</p>
<p><a href="/residencia-temporal/renovacion">Ver la guía completa de renovación o prórroga</a>.</p>
<p><a href="https://serviciomigraciones.cl/residencia-temporal/prorroga/" target="_blank" rel="noopener noreferrer">Abrir la ficha oficial de SERMIG</a>.</p>
$content$,
  faq_items='[{"q":"¿Cuánto dura una prórroga?","a":"No es una extensión breve separada: es la renovación del permiso y SERMIG resuelve su vigencia conforme a la subcategoría aplicable."},{"q":"¿Sirve mientras preparo documentos?","a":"No reemplaza los requisitos. Debes presentar la documentación general y específica vigente."},{"q":"¿Puedo pedirla fuera de Chile?","a":"No. El trámite de prórroga está disponible desde Chile."}]'::jsonb,
  updated_at=NOW()
WHERE slug='residencia-temporal/prorroga';

UPDATE articles SET
  title='Cuánto demora la Residencia Temporal: seguimiento sin plazos inventados',
  h1='Cuánto demora la Residencia Temporal en Chile',
  meta_description='SERMIG no publica un plazo único de resolución. Aprende a revisar notificaciones, responder solicitudes y hacer seguimiento responsable.',
  content=$content$
<h2>No existe un plazo único garantizado</h2>
<p>SERMIG no publica en sus fichas un rango oficial de resolución aplicable a todas las solicitudes. La duración depende de la subcategoría, el lugar de presentación, la documentación, las verificaciones y los requerimientos del expediente.</p>
<p>Por esa razón, MigraGo no presenta estimaciones de meses por categoría como si fueran plazos oficiales o resultados previsibles.</p>
<h2>Qué revisar durante la tramitación</h2>
<ol><li>Ingresa al Portal de Trámites Digitales y comprueba el estado del expediente.</li><li>Revisa el correo registrado, incluida la carpeta de spam.</li><li>Lee completamente cada notificación y anota su plazo.</li><li>Responde los requerimientos por el canal indicado y conserva el comprobante.</li><li>Mantén actualizados tus datos de contacto y documentos cuando SERMIG lo solicite.</li></ol>
<h2>No todos los comprobantes producen el mismo efecto</h2>
<p>No asumas que cualquier comprobante de solicitud autoriza a trabajar, viajar o reingresar a Chile. El efecto depende del trámite, del documento emitido y de tu permiso anterior. Lee el texto del comprobante y las instrucciones oficiales asociadas.</p>
<h2>Si no hay movimiento</h2>
<p>Primero descarta notificaciones pendientes. Luego utiliza los canales de ayuda y seguimiento de SERMIG. Si existe una urgencia concreta, una medida administrativa o un perjuicio grave, busca orientación jurídica individual sobre las vías que correspondan.</p>
<p><a href="https://serviciomigraciones.cl/residencia-temporal/" target="_blank" rel="noopener noreferrer">Consultar información oficial de Residencia Temporal</a>.</p>
$content$,
  faq_items='[{"q":"¿Cuál es el plazo oficial de una Residencia Temporal?","a":"SERMIG no publica un plazo único garantizado para todas las subcategorías."},{"q":"¿El comprobante siempre permite trabajar?","a":"No debe asumirse. Revisa el documento emitido y las reglas de tu trámite y permiso anterior."},{"q":"¿Qué hago si mi expediente no cambia?","a":"Comprueba el portal y las notificaciones; después utiliza los canales oficiales de ayuda. Si hay una urgencia o medida administrativa, solicita orientación individual."}]'::jsonb,
  updated_at=NOW()
WHERE slug='residencia-temporal/cuanto-demora';

UPDATE articles SET
  title='Rechazo de Residencia Temporal: recurso y próximos pasos',
  h1='Qué hacer ante el rechazo de una Residencia Temporal',
  meta_description='Cómo leer la resolución, presentar un recurso administrativo dentro del plazo y evitar decisiones automáticas tras un rechazo.',
  content=$content$
<h2>La resolución define el problema</h2>
<p>No todos los rechazos tienen la misma causa o consecuencia. Lee la resolución completa, identifica los hechos y normas invocados, la medida adoptada y la fecha exacta de notificación.</p>
<h2>Recurso administrativo publicado por SERMIG</h2>
<p>SERMIG dispone de un recurso administrativo de Residencia Temporal en su Portal de Trámites Digitales, accesible desde Chile. La ficha oficial indica que debe interponerse dentro de los <strong>cinco días siguientes a la notificación del rechazo</strong>.</p>
<h2>Qué debe contener</h2>
<p>El recurso debe identificar a la persona interesada, exponer hechos, razones y peticiones, señalar lugar y fecha, contener firma o autenticación de voluntad e indicar el órgano al que se dirige. Además, SERMIG pide acompañar información nueva capaz de desvirtuar el rechazo.</p>
<h2>No vuelvas a postular automáticamente</h2>
<p>Una nueva solicitud no siempre es admisible ni corrige la causa anterior. Antes de decidir, verifica si existe una medida de abandono, expulsión o prohibición de ingreso, si tu situación migratoria permite postular y si el defecto puede subsanarse mediante recurso.</p>
<h2>Cuándo buscar ayuda</h2>
<p>Busca orientación jurídica urgente si el plazo está corriendo, la resolución incluye una orden de salida o expulsión, existen antecedentes penales, ingreso por paso no habilitado o dudas sobre el recurso adecuado.</p>
<p><a href="https://serviciomigraciones.cl/residencia-temporal/recurso-administrativo/" target="_blank" rel="noopener noreferrer">Consultar el recurso administrativo oficial</a>.</p>
$content$,
  faq_items='[{"q":"¿Cuánto tiempo tengo para recurrir?","a":"La ficha de SERMIG indica cinco días siguientes a la notificación del rechazo. Confirma la fecha y las instrucciones de tu resolución."},{"q":"¿Debo adjuntar algo nuevo?","a":"Sí. SERMIG pide información nueva que permita revisar y desvirtuar el motivo del rechazo."},{"q":"¿Puedo presentar otra solicitud de inmediato?","a":"No debe asumirse. Primero revisa las consecuencias de la resolución, tu situación migratoria y si existe alguna medida vigente."}]'::jsonb,
  updated_at=NOW()
WHERE slug='residencia-temporal/rechazo';

COMMIT;
