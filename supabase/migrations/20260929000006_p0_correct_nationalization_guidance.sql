-- Corrección urgente de Nacionalización: elimina requisitos y canales no publicados por SERMIG.
-- Fuente principal revisada el 29-09-2026: https://serviciomigraciones.cl/nacionalidad/
BEGIN;

UPDATE articles SET
  title = 'Nacionalidad chilena por carta: requisitos y solicitud',
  h1 = 'Carta de Nacionalización en Chile: quién puede solicitarla',
  meta_description = 'Requisitos vigentes, cómputo de cinco o dos años, Residencia Definitiva y solicitud digital de nacionalización en Chile.',
  content = $content$
<h2>Qué es la Carta de Nacionalización</h2>
<p>Es una forma de adquirir la nacionalidad chilena para personas extranjeras. Se materializa mediante un Decreto Exento del Ministerio del Interior y Seguridad Pública, por orden del Presidente de la República. No es una extensión de la residencia: es un procedimiento diferente y su otorgamiento exige una evaluación completa.</p>

<h2>Vía general</h2>
<p>La persona mayor de 18 años debe tener <strong>Residencia Definitiva vigente</strong> y acreditar cinco años o más de residencia en Chile. SERMIG cuenta este período desde el Estampado Electrónico de la Residencia Temporal que dio origen a la Residencia Definitiva que se mantiene vigente. No son cinco años contados únicamente desde la aprobación de la Residencia Definitiva.</p>
<p>Las personas entre 14 y 17 años también pueden solicitar bajo las condiciones publicadas, incluyendo autorización de sus padres o de quien tenga su cuidado personal.</p>

<h2>Nacionalización calificada a los dos años</h2>
<p>Una persona con Residencia Definitiva vigente puede solicitar con dos años de residencia continuada si acredita alguno de estos vínculos:</p>
<ul>
  <li>ser cónyuge de una persona chilena durante al menos dos años, con matrimonio inscrito en Chile y cumplimiento del hogar común;</li>
  <li>ser pariente de una persona chilena por consanguinidad hasta el segundo grado o haber sido adoptada por una persona chilena;</li>
  <li>ser hijo o hija de quien perdió la nacionalidad chilena antes de su nacimiento.</li>
</ul>
<p>Tener más de 65 años, un Acuerdo de Unión Civil o simplemente conocer a una persona chilena no aparecen como causales autónomas en la lista oficial vigente.</p>

<h2>Dónde se solicita</h2>
<p>La solicitud se presenta <strong>en línea y desde Chile</strong> en el Portal de Trámites Digitales de SERMIG, ingresando con ClaveÚnica. No se presenta actualmente como un trámite ordinario presencial ante una Gobernación o Delegación Presidencial.</p>

<h2>Documentos y comprobaciones</h2>
<ul>
  <li>Documento que acredite identidad y nacionalidad.</li>
  <li>Antecedentes penales o judiciales del país de origen, apostillados o legalizados y traducidos cuando corresponda, para mayores de 18 años.</li>
  <li>Fotografía reciente.</li>
  <li>Documentos de actividad laboral, tributaria o económica que correspondan al caso.</li>
  <li>Certificados que acrediten el vínculo chileno, si solicitas nacionalización calificada.</li>
</ul>
<p>El portal exige adjuntar todos los documentos requeridos. Si la información es errónea o incompleta, SERMIG puede otorgar 60 días hábiles para corregir; si no respondes, el procedimiento puede tenerse por abandonado.</p>

<h2>Tiempo de tramitación</h2>
<p>SERMIG informa un promedio de <strong>tres años</strong>. No existe fundamento para prometer una aprobación en pocos meses. El estado se consulta en el Portal de Trámites Digitales.</p>

<h2>Antes de enviar</h2>
<ol>
  <li>Confirma que tu Residencia Definitiva esté vigente.</li>
  <li>Identifica el Estampado Temporal desde el cual se cuenta el período.</li>
  <li>Elige vía general o calificada según hechos documentables.</li>
  <li>Revisa que todos los documentos extranjeros estén formalizados correctamente.</li>
  <li>Guarda el comprobante y controla las notificaciones del portal.</li>
</ol>

<p><a href="https://serviciomigraciones.cl/nacionalidad/" target="_blank" rel="noopener noreferrer">Consultar requisitos oficiales de nacionalidad en SERMIG</a>.</p>
$content$,
  faq_items = '[{"q":"¿Necesito cinco años de Residencia Definitiva?","a":"No. SERMIG cuenta cinco años desde el Estampado de la Residencia Temporal que dio origen a la Residencia Definitiva vigente."},{"q":"¿Existe una vía de dos años?","a":"Sí, para residentes definitivos con determinados vínculos con Chile expresamente publicados por SERMIG."},{"q":"¿Dónde se presenta?","a":"En línea, desde Chile, mediante el Portal de Trámites Digitales de SERMIG con ClaveÚnica."},{"q":"¿Cuánto demora?","a":"SERMIG informa un promedio de tres años de tramitación."}]'::jsonb,
  updated_at = NOW()
WHERE slug = 'nacionalizacion';

UPDATE articles SET
  title = 'Carta de Nacionalización chilena: solicitud digital y documentos',
  h1 = 'Cómo solicitar la Carta de Nacionalización en Chile',
  meta_description = 'Pasos, documentos, cómputo de residencia y seguimiento de la Carta de Nacionalización mediante el portal SERMIG.',
  content = $content$
<h2>Comprueba tu vía antes de reunir documentos</h2>
<table>
  <thead><tr><th>Vía</th><th>Condición temporal</th><th>Requisito común</th></tr></thead>
  <tbody>
    <tr><td>General</td><td>Cinco años o más desde el Estampado Temporal que originó la Residencia Definitiva vigente</td><td>Residencia Definitiva vigente</td></tr>
    <tr><td>Calificada</td><td>Dos años de residencia continuada</td><td>Residencia Definitiva vigente y vínculo chileno admitido</td></tr>
  </tbody>
</table>

<h2>Solicitud paso a paso</h2>
<ol>
  <li>Ingresa desde Chile al Portal de Trámites Digitales de SERMIG con ClaveÚnica.</li>
  <li>Selecciona la solicitud de Carta de Nacionalización que corresponda a tu caso.</li>
  <li>Completa identidad, historial y actividad actual sin contradicciones.</li>
  <li>Adjunta documentos generales y los específicos de tu edad, actividad o vínculo.</li>
  <li>Finaliza el envío y conserva el comprobante.</li>
  <li>Consulta el estado desde la cuenta utilizada y responde cualquier requerimiento.</li>
</ol>

<h2>Documentación general publicada por SERMIG</h2>
<ul>
  <li>Hoja de identificación del pasaporte; si no tienes pasaporte, el documento alternativo aceptado por la ficha oficial.</li>
  <li>Antecedentes penales o judiciales del país de origen, para mayores de edad.</li>
  <li>Fotografía reciente en el formato solicitado.</li>
  <li>Documentación que acredite la actividad desarrollada actualmente en Chile.</li>
</ul>
<p>Los antecedentes extranjeros deben estar apostillados o legalizados y traducidos cuando corresponda. Las personas naturales que desarrollan actividad económica pueden necesitar carpeta tributaria y certificado de deuda fiscal; los socios deben revisar las exigencias relativas a cada empresa.</p>

<h2>Si solicitas por vínculo con una persona chilena</h2>
<p>El respaldo depende del vínculo. Para cónyuges se exige matrimonio inscrito, certificado de nacimiento del cónyuge y antecedentes que acrediten el hogar común durante el período requerido. Para padres o madres de hijos chilenos se solicitan certificados de nacimiento. Los demás parentescos se prueban mediante la cadena de certificados correspondiente.</p>

<h2>Seguimiento y documentos faltantes</h2>
<p>El estado se revisa en “Consulta estado de trámite” dentro del portal. Si SERMIG detecta información incompleta o incorrecta puede notificarte para subsanar dentro de 60 días hábiles. No responder puede causar el abandono y archivo, obligándote a iniciar una nueva solicitud.</p>

<h2>Errores frecuentes</h2>
<ul>
  <li>Contar cinco años desde una fecha migratoria que no corresponde.</li>
  <li>Presentar presencialmente basándose en instrucciones antiguas.</li>
  <li>Invocar la vía de dos años sin acreditar un vínculo admitido.</li>
  <li>Adjuntar certificados extranjeros sin apostilla, legalización o traducción.</li>
  <li>Ignorar las notificaciones porque el trámite puede durar varios años.</li>
</ul>

<p><a href="https://serviciomigraciones.cl/nacionalidad/" target="_blank" rel="noopener noreferrer">Abrir la ficha oficial de Carta de Nacionalización</a>.</p>
$content$,
  faq_items = '[{"q":"¿La solicitud es presencial?","a":"No según la ficha vigente. Se presenta en línea desde Chile en el Portal de Trámites Digitales de SERMIG."},{"q":"¿Puedo usar un mandatario?","a":"Si interviene un tercero, verifica las reglas del portal y el poder exigido; no uses instrucciones presenciales antiguas."},{"q":"¿Qué pasa si falta un documento?","a":"SERMIG puede otorgar 60 días hábiles para corregir. Si no respondes, puede declarar abandonado el procedimiento."},{"q":"¿La aprobación es automática al cumplir el tiempo?","a":"No. El cumplimiento temporal permite solicitar, pero la autoridad evalúa todos los antecedentes."}]'::jsonb,
  updated_at = NOW()
WHERE slug = 'nacionalizacion/carta-naturalizacion';

UPDATE articles SET
  title = 'Requisitos para obtener la nacionalidad chilena por carta',
  h1 = 'Requisitos vigentes de la Carta de Nacionalización chilena',
  meta_description = 'Residencia Definitiva, cinco años desde el Estampado Temporal, vía calificada de dos años y documentos exigidos por SERMIG.',
  content = $content$
<h2>Requisitos de la vía general</h2>
<ul>
  <li>Tener 18 años o más.</li>
  <li>Ser titular de Residencia Definitiva vigente.</li>
  <li>Acreditar cinco años o más de residencia en Chile.</li>
  <li>Contar el período desde el Estampado Electrónico de la Residencia Temporal que dio origen a la Residencia Definitiva vigente.</li>
  <li>Acompañar los documentos personales, penales y de actividad que correspondan.</li>
</ul>
<p>Las personas de 14 a 17 años pueden solicitar bajo las condiciones especiales publicadas, incluyendo autorización de sus padres o de quien ejerza su cuidado personal.</p>

<h2>Requisitos de la vía calificada</h2>
<p>Exige Residencia Definitiva vigente, dos años de residencia continuada y uno de estos vínculos:</p>
<ul>
  <li>cónyuge chileno durante al menos dos años, matrimonio inscrito en Chile y hogar común;</li>
  <li>consanguinidad con persona chilena hasta el segundo grado;</li>
  <li>adopción por una persona chilena;</li>
  <li>padre o madre que perdió la nacionalidad chilena antes del nacimiento del solicitante.</li>
</ul>

<h2>Documentos generales</h2>
<ul>
  <li>Pasaporte o documento alternativo de identidad permitido.</li>
  <li>Certificado de antecedentes penales o judiciales del país de origen para mayores de 18 años.</li>
  <li>Fotografía reciente.</li>
  <li>Antecedentes de la actividad laboral, profesional o económica actual.</li>
  <li>Documentos específicos de edad, vínculo o situación de refugio, cuando correspondan.</li>
</ul>

<h2>Lo que no debes usar como requisito</h2>
<ul>
  <li>No cuentes necesariamente cinco años desde la Residencia Definitiva.</li>
  <li>No supongas que cualquier vínculo o un AUC activa automáticamente la vía de dos años.</li>
  <li>No agregues fotografías impresas, comprobantes de domicilio o documentos presenciales si no aparecen en tu formulario vigente.</li>
  <li>No asumas que existe un examen obligatorio por información de terceros.</li>
</ul>

<h2>Control final</h2>
<ol>
  <li>Verifica que la Residencia Definitiva continúe vigente.</li>
  <li>Ubica el Estampado Temporal correcto.</li>
  <li>Selecciona la vía según tu situación real.</li>
  <li>Comprueba formalización y traducción de documentos extranjeros.</li>
  <li>Consulta nuevamente la ficha oficial el día del envío.</li>
</ol>

<p><a href="https://serviciomigraciones.cl/nacionalidad/" target="_blank" rel="noopener noreferrer">Ver requisitos oficiales actualizados</a>.</p>
$content$,
  faq_items = '[{"q":"¿El tiempo de Residencia Temporal cuenta?","a":"Sí, cuando corresponde al Estampado Temporal que dio origen a la Residencia Definitiva que mantienes vigente."},{"q":"¿Necesito Residencia Definitiva?","a":"Sí. Debe estar vigente al solicitar tanto por la vía general como por la calificada."},{"q":"¿Tener un hijo chileno permite solicitar a los dos años?","a":"El parentesco por consanguinidad con una persona chilena hasta segundo grado está incluido, pero debes cumplir los demás requisitos."},{"q":"¿Se exige un examen cívico?","a":"La ficha vigente de SERMIG no publica un examen obligatorio entre los requisitos del trámite."}]'::jsonb,
  updated_at = NOW()
WHERE slug = 'nacionalizacion/requisitos-nacionalidad';

UPDATE articles SET
  title = 'Cuánto demora la nacionalización chilena y cómo seguirla',
  h1 = 'Tiempo de tramitación de la Carta de Nacionalización',
  meta_description = 'SERMIG informa un promedio de tres años. Aprende dónde consultar el estado y cómo responder documentos faltantes.',
  content = $content$
<h2>Plazo oficial informado</h2>
<p>SERMIG señala que la nacionalización demora en promedio <strong>tres años</strong>. Es un promedio, no una fecha garantizada. El análisis puede ser más breve o extenso según los antecedentes, requerimientos y verificaciones del expediente.</p>

<h2>No existen etapas con meses garantizados</h2>
<p>No es correcto publicar una tabla que asigne plazos fijos a un examen, al Registro Civil o a la emisión del decreto si SERMIG no ofrece esos tiempos. La solicitud se presenta y se consulta en el Portal de Trámites Digitales de SERMIG.</p>

<h2>Cómo revisar el estado</h2>
<ol>
  <li>Ingresa al Portal de Trámites Digitales con la misma ClaveÚnica utilizada al postular.</li>
  <li>Abre “Consulta estado de trámite”.</li>
  <li>Revisa también la bandeja del portal y el correo declarado.</li>
  <li>Descarga y guarda cada notificación o comprobante.</li>
</ol>

<h2>Qué puede detener el avance</h2>
<ul>
  <li>Identidad o fechas inconsistentes.</li>
  <li>Antecedentes extranjeros sin apostilla, legalización o traducción.</li>
  <li>Falta de documentos que acrediten actividad o vínculo.</li>
  <li>No responder una solicitud de subsanación.</li>
  <li>Cambios de correo o datos de contacto que no se revisan.</li>
</ul>

<h2>Plazo para corregir antecedentes</h2>
<p>Si SERMIG notifica que la solicitud contiene información incorrecta, incompleta o improcedente, la persona dispone de 60 días hábiles para corregir o acompañar documentos. Si no lo hace, el procedimiento puede declararse abandonado y archivarse.</p>

<h2>Qué hacer ante una demora</h2>
<p>Primero confirma que no existe un requerimiento pendiente. Luego utiliza los canales de atención de SERMIG para solicitar información, identificando el número de trámite. Evita presentar solicitudes duplicadas o pagar a terceros que prometan acelerar el decreto.</p>

<p><a href="https://serviciomigraciones.cl/nacionalidad/" target="_blank" rel="noopener noreferrer">Consultar nacionalidad y seguimiento en SERMIG</a>.</p>
$content$,
  faq_items = '[{"q":"¿Cuánto demora en promedio?","a":"SERMIG informa un promedio de tres años de tramitación."},{"q":"¿Puedo pagar para acelerarlo?","a":"No existe un canal oficial de pago para acelerar la evaluación."},{"q":"¿Dónde reviso el estado?","a":"En Consulta estado de trámite del Portal de Trámites Digitales de SERMIG."},{"q":"¿Cuánto tiempo tengo para corregir documentos?","a":"SERMIG informa 60 días hábiles desde la notificación de subsanación."}]'::jsonb,
  updated_at = NOW()
WHERE slug = 'nacionalizacion/cuanto-demora';

UPDATE articles SET
  title = '¿Existe examen de nacionalización en Chile?',
  h1 = 'Examen de nacionalización: qué publica actualmente SERMIG',
  meta_description = 'La ficha vigente de Carta de Nacionalización no publica un examen cívico obligatorio. Revisa siempre una citación oficial.',
  content = $content$
<h2>Respuesta actual</h2>
<p>La ficha vigente de Carta de Nacionalización de SERMIG <strong>no publica un examen oral o escrito de historia, geografía, himno o educación cívica como requisito obligatorio</strong>. Las guías que describen preguntas, manuales, comisiones o intentos de aprobación pueden corresponder a información no oficial, antigua o a propuestas que no forman parte del trámite publicado.</p>

<h2>Qué debes hacer</h2>
<ul>
  <li>Prepara solamente los antecedentes solicitados en tu formulario y ficha oficial.</li>
  <li>No pagues por bancos de preguntas ni cursos que prometan aprobar un supuesto examen.</li>
  <li>Si SERMIG te envía una citación o requerimiento individual, comprueba que figure en el portal y sigue sus instrucciones.</li>
  <li>Revisa nuevamente la normativa antes de postular, porque los requisitos pueden cambiar.</li>
</ul>

<h2>Requisitos que sí aparecen publicados</h2>
<p>La Residencia Definitiva vigente, el período de residencia correspondiente, la identificación, los antecedentes penales o judiciales, la fotografía y los documentos específicos de actividad o vínculo, según el caso.</p>

<p><a href="https://serviciomigraciones.cl/nacionalidad/" target="_blank" rel="noopener noreferrer">Comprobar los requisitos vigentes en SERMIG</a>.</p>
$content$,
  faq_items = '[{"q":"¿Debo estudiar historia de Chile para un examen?","a":"SERMIG no publica actualmente ese examen como requisito obligatorio de la Carta de Nacionalización."},{"q":"¿Puede cambiar este requisito?","a":"Sí. Verifica la ficha oficial al momento de postular y cualquier notificación individual del portal."}]'::jsonb,
  updated_at = NOW()
WHERE slug = 'nacionalizacion/examen';

COMMIT;
