INSERT INTO articles (
  slug, title, h1, meta_description, content,
  schema_type, silo, type, author,
  reading_time_minutes, published_at, updated_at,
  faq_items, howto_steps, related_slugs
) VALUES (
  'residencia-temporal/cuanto-demora',
  'Cuánto Demora la Residencia Temporal en Chile 2025 (Tiempos Reales)',
  'Cuánto demora la Residencia Temporal en Chile: tiempos reales 2025',
  'Tiempos reales de resolución para la Residencia Temporal en Chile. Plazos del SERMIG por categoría, qué factores alargan el proceso y qué hacer si tu trámite lleva demasiado tiempo.',
  $content$<h2>Plazos estimados del SERMIG (2025)</h2>
<p>El SERMIG no publica plazos garantizados ni tiempos oficiales de resolución. Los tiempos reales varían según la categoría de visa, la completitud del expediente y la carga del servicio.</p>

<div class="overflow-x-auto mt-4 mb-6">
<table class="w-full text-sm border-collapse">
  <thead>
    <tr class="bg-gray-100">
      <th class="text-left px-4 py-3 border border-gray-200 font-semibold">Categoría</th>
      <th class="text-left px-4 py-3 border border-gray-200 font-semibold">Plazo estimado</th>
      <th class="text-left px-4 py-3 border border-gray-200 font-semibold">Observaciones</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td class="px-4 py-3 border border-gray-200 font-medium">Hijo chileno</td>
      <td class="px-4 py-3 border border-gray-200">3 – 6 meses</td>
      <td class="px-4 py-3 border border-gray-200">Una de las más rápidas cuando el expediente está completo</td>
    </tr>
    <tr class="bg-gray-50">
      <td class="px-4 py-3 border border-gray-200 font-medium">Pareja chilena</td>
      <td class="px-4 py-3 border border-gray-200">3 – 6 meses</td>
      <td class="px-4 py-3 border border-gray-200">Requiere acreditar el vínculo (matrimonio o AUC)</td>
    </tr>
    <tr>
      <td class="px-4 py-3 border border-gray-200 font-medium">Contrato de trabajo</td>
      <td class="px-4 py-3 border border-gray-200">4 – 8 meses</td>
      <td class="px-4 py-3 border border-gray-200">Puede haber requerimientos de documentos adicionales del empleador</td>
    </tr>
    <tr class="bg-gray-50">
      <td class="px-4 py-3 border border-gray-200 font-medium">MERCOSUR</td>
      <td class="px-4 py-3 border border-gray-200">2 – 5 meses</td>
      <td class="px-4 py-3 border border-gray-200">Proceso simplificado para países del bloque</td>
    </tr>
    <tr>
      <td class="px-4 py-3 border border-gray-200 font-medium">Razones humanitarias</td>
      <td class="px-4 py-3 border border-gray-200">4 – 10 meses</td>
      <td class="px-4 py-3 border border-gray-200">Mayor variabilidad — depende de la situación particular</td>
    </tr>
    <tr class="bg-gray-50">
      <td class="px-4 py-3 border border-gray-200 font-medium">Jubilado / Rentista</td>
      <td class="px-4 py-3 border border-gray-200">4 – 8 meses</td>
      <td class="px-4 py-3 border border-gray-200">Requiere acreditar ingresos suficientes</td>
    </tr>
  </tbody>
</table>
</div>

<h2>¿Qué hacer mientras esperas?</h2>
<p>Una vez presentada la solicitud, el SERMIG emite un <strong>comprobante de radicación</strong>. Con ese comprobante puedes:</p>
<ul>
  <li>Permanecer legalmente en Chile mientras el trámite está en proceso (tu situación queda regularizada).</li>
  <li>En muchos casos, trabajar con el comprobante de solicitud vigente — verifica con tu empleador.</li>
  <li>Consultar el estado en <strong>tramites.extranjeria.gob.cl</strong> con tu número de radicación.</li>
</ul>

<h2>Factores que alargan el proceso</h2>
<ul>
  <li><strong>Expediente incompleto:</strong> si falta algún documento, el SERMIG emite un "requerimiento de antecedentes". Tu trámite queda pausado hasta que respondas.</li>
  <li><strong>Documentos con errores:</strong> nombres mal escritos, apostillas vencidas o documentos no traducidos causan demoras.</li>
  <li><strong>Alta demanda estacional:</strong> en ciertos meses el volumen de solicitudes es mayor.</li>
  <li><strong>Verificación de antecedentes:</strong> en casos con antecedentes penales en el extranjero, el proceso de verificación puede ser más extenso.</li>
</ul>

<h2>¿Cuándo preocuparse?</h2>
<p>Si tu trámite supera los 12 meses sin resolución y no has recibido ningún requerimiento ni notificación, puedes:</p>
<ol>
  <li>Revisar el portal para confirmar que no haya requerimientos sin responder.</li>
  <li>Enviar un correo o presentarte en una oficina del SERMIG solicitando información sobre el estado.</li>
  <li>Revisar nuestra guía: <a href="/problemas-migratorios/sin-respuesta-sermig">¿Qué hacer si el SERMIG no responde?</a></li>
</ol>

<h2>Tiempo desde la aprobación hasta la cédula</h2>
<p>Una vez que el SERMIG aprueba tu solicitud, debes tramitar la <strong>cédula de identidad de extranjero</strong> en el Registro Civil. Ese proceso toma entre 7 y 15 días hábiles adicionales. En total, desde la solicitud hasta tener la cédula en mano, el proceso completo puede tardar entre 3 y 10 meses según la categoría.</p>
$content$,
  'FAQPage',
  'residencia-temporal',
  'cluster',
  'MigraGo',
  5,
  NOW(),
  NOW(),
  '[
    {"q": "¿Cuánto demora la Residencia Temporal en Chile?", "a": "Depende de la categoría. Las más rápidas (hijo chileno, MERCOSUR) pueden resolverse en 2-5 meses. Las más complejas (razones humanitarias, contrato de trabajo) pueden tomar 4-10 meses. El SERMIG no publica plazos oficiales."},
    {"q": "¿Puedo trabajar mientras espero la resolución de mi Residencia Temporal?", "a": "En muchos casos sí, con el comprobante de solicitud vigente. Sin embargo, la validez legal del comprobante para trabajar depende de la categoría. Verifica con tu empleador y consulta el portal del SERMIG para tu caso específico."},
    {"q": "¿Qué pasa si mi visa vence mientras espero la resolución?", "a": "Si presentaste la solicitud de renovación antes del vencimiento, tu situación queda regularizada mientras el trámite está en proceso. No estás en situación irregular durante la espera."},
    {"q": "¿Cómo sé si hay un requerimiento pendiente en mi trámite?", "a": "Revisa periódicamente el portal tramites.extranjeria.gob.cl y tu correo electrónico registrado. El SERMIG envía notificaciones de requerimientos, pero es recomendable hacer seguimiento activo."},
    {"q": "¿Puedo salir de Chile mientras espero la Residencia Temporal?", "a": "Puedes salir, pero debes ser cuidadoso. Si tu visa de turista o permiso anterior venció y solo tienes el comprobante de radicación, podrías tener problemas al reingresar. Consulta con el SERMIG o un abogado antes de viajar."}
  ]'::jsonb,
  '[]'::jsonb,
  ARRAY['residencia-temporal/renovacion', 'residencia-temporal/prorroga', 'problemas-migratorios/sin-respuesta-sermig', 'residencia-definitiva/cuanto-demora']
);
