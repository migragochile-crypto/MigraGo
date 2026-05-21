BEGIN;

INSERT INTO articles (
  slug, silo, parent_slug, type,
  title, h1, meta_description, keyword_primary,
  content, faq_items, related_slugs, country_tags, is_published
) VALUES (
  'vivir-en-chile/apostilla-por-pais',
  'vivir-en-chile',
  'vivir-en-chile',
  'cluster',
  'Apostilla de Documentos para Chile según País de Origen 2025',
  'Apostilla de documentos para Chile: guía por país de origen',
  'Cómo apostillar documentos según tu país de origen para trámites migratorios en Chile. Tabla comparativa: Bolivia, Perú, Colombia, Argentina, Venezuela, Haití y República Dominicana. 2025.',
  'apostilla documentos chile país origen',
  $content$<h2>¿Qué es la apostilla y para qué sirve?</h2>
<p>La <strong>apostilla</strong> es un sello oficial que autentica la firma de un documento público para que sea válido en otro país. Chile la exige en documentos extranjeros para trámites migratorios ante el SERMIG: acta de nacimiento, certificado de antecedentes penales, acta de matrimonio y títulos académicos.</p>
<p>La apostilla existe gracias al <strong>Convenio de La Haya de 1961</strong>. Los países firmantes pueden apostillar sus documentos; los que no lo firmaron deben usar el proceso alternativo de <strong>legalización consular</strong>, que es más largo.</p>

<h2>Tabla comparativa: apostilla por país de origen</h2>

<div class="overflow-x-auto mt-4 mb-8">
<table class="w-full text-sm border-collapse">
  <thead>
    <tr class="bg-gray-100">
      <th class="text-left px-4 py-3 border border-gray-200 font-semibold">País</th>
      <th class="text-left px-4 py-3 border border-gray-200 font-semibold">¿Tiene apostilla?</th>
      <th class="text-left px-4 py-3 border border-gray-200 font-semibold">Autoridad emisora</th>
      <th class="text-left px-4 py-3 border border-gray-200 font-semibold">Trámite online</th>
      <th class="text-left px-4 py-3 border border-gray-200 font-semibold">Plazo estimado</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td class="px-4 py-3 border border-gray-200 font-medium">🇧🇴 Bolivia</td>
      <td class="px-4 py-3 border border-gray-200 text-green-700 font-medium">✓ Sí</td>
      <td class="px-4 py-3 border border-gray-200">Ministerio de Relaciones Exteriores (tramite.minrex.gob.bo)</td>
      <td class="px-4 py-3 border border-gray-200 text-green-700">Sí</td>
      <td class="px-4 py-3 border border-gray-200">3-5 días + envío postal</td>
    </tr>
    <tr class="bg-gray-50">
      <td class="px-4 py-3 border border-gray-200 font-medium">🇵🇪 Perú</td>
      <td class="px-4 py-3 border border-gray-200 text-green-700 font-medium">✓ Sí</td>
      <td class="px-4 py-3 border border-gray-200">Ministerio de Relaciones Exteriores del Perú</td>
      <td class="px-4 py-3 border border-gray-200 text-green-700">Sí (plataforma.rree.gob.pe)</td>
      <td class="px-4 py-3 border border-gray-200">2-5 días + envío postal</td>
    </tr>
    <tr>
      <td class="px-4 py-3 border border-gray-200 font-medium">🇨🇴 Colombia</td>
      <td class="px-4 py-3 border border-gray-200 text-green-700 font-medium">✓ Sí</td>
      <td class="px-4 py-3 border border-gray-200">Cancillería colombiana (cancilleria.gov.co)</td>
      <td class="px-4 py-3 border border-gray-200 text-green-700">Sí</td>
      <td class="px-4 py-3 border border-gray-200">1-3 días hábiles</td>
    </tr>
    <tr class="bg-gray-50">
      <td class="px-4 py-3 border border-gray-200 font-medium">🇦🇷 Argentina</td>
      <td class="px-4 py-3 border border-gray-200 text-green-700 font-medium">✓ Sí</td>
      <td class="px-4 py-3 border border-gray-200">Ministerio de Relaciones Exteriores de Argentina</td>
      <td class="px-4 py-3 border border-gray-200 text-amber-600">Parcial</td>
      <td class="px-4 py-3 border border-gray-200">1-3 días hábiles</td>
    </tr>
    <tr>
      <td class="px-4 py-3 border border-gray-200 font-medium">🇩🇴 Rep. Dominicana</td>
      <td class="px-4 py-3 border border-gray-200 text-green-700 font-medium">✓ Sí (desde 2009)</td>
      <td class="px-4 py-3 border border-gray-200">Ministerio RREE o Junta Central Electoral (JCE)</td>
      <td class="px-4 py-3 border border-gray-200 text-amber-600">Parcial</td>
      <td class="px-4 py-3 border border-gray-200">1-3 días hábiles</td>
    </tr>
    <tr class="bg-gray-50">
      <td class="px-4 py-3 border border-gray-200 font-medium">🇻🇪 Venezuela</td>
      <td class="px-4 py-3 border border-gray-200 text-red-700 font-medium">✗ Suspendida</td>
      <td class="px-4 py-3 border border-gray-200">Suspendida desde 2017 — ver alternativas</td>
      <td class="px-4 py-3 border border-gray-200 text-red-600">No</td>
      <td class="px-4 py-3 border border-gray-200">Variable (proceso alternativo)</td>
    </tr>
    <tr>
      <td class="px-4 py-3 border border-gray-200 font-medium">🇭🇹 Haití</td>
      <td class="px-4 py-3 border border-gray-200 text-red-700 font-medium">✗ No (no firmó)</td>
      <td class="px-4 py-3 border border-gray-200">Legalización consular (Ministerio RREE + Consulado chileno)</td>
      <td class="px-4 py-3 border border-gray-200 text-red-600">No</td>
      <td class="px-4 py-3 border border-gray-200">4-8 semanas</td>
    </tr>
  </tbody>
</table>
</div>

<h2>Países con apostilla: el proceso general</h2>
<p>Para Bolivia, Perú, Colombia, Argentina y República Dominicana el proceso es similar:</p>
<ol>
  <li>Obtén el documento original en la institución que lo emite (registro civil, policía, etc.).</li>
  <li>Preséntalo al Ministerio de Relaciones Exteriores de tu país (o autoridad equivalente) para la apostilla.</li>
  <li>El documento apostillado es válido en Chile sin trámites adicionales.</li>
  <li>Envíatelo a Chile por correo o tráelo personalmente.</li>
</ol>
<p>Muchos de estos países ya tienen <strong>portales online</strong> que permiten iniciar el trámite sin estar físicamente en el país. Ver guías específicas:</p>
<ul>
  <li><a href="/bolivia/apostilla">Apostilla de documentos bolivianos →</a></li>
  <li><a href="/republica-dominicana/documentos-republica-dominicana">Apostilla de documentos dominicanos →</a></li>
</ul>

<h2>Venezuela: sin apostilla desde 2017</h2>
<p>Venezuela suspendió el servicio de apostilla en 2017 por problemas institucionales. Esto significa que los documentos venezolanos <strong>no pueden apostillarse de la forma habitual</strong>. Las alternativas actuales son:</p>
<ul>
  <li><strong>Legalización vía Consulado chileno en Venezuela:</strong> cuando opera, el Consulado de Chile puede legalizar documentos venezolanos directamente. Sin embargo, la operación consular ha sido intermitente.</li>
  <li><strong>Proceso alternativo ante la Cancillería venezolana:</strong> en algunos casos la Cancillería venezolana puede emitir documentos con validez internacional alternativa. El proceso exacto debe consultarse directamente con el SERMIG, ya que cambia con frecuencia.</li>
  <li><strong>Consultar caso a caso al SERMIG:</strong> el SERMIG tiene instrucciones actualizadas sobre qué documentos acepta de Venezuela. Ante la dificultad generalizada, ha habido períodos de flexibilización documental para venezolanos.</li>
</ul>
<p>Ver guía completa para venezolanos: <a href="/paises/venezuela">Venezolanos en Chile →</a></p>

<h2>Haití: legalización consular (sin apostilla)</h2>
<p>Haití no es firmante del Convenio de La Haya, por lo que sus documentos se validan mediante <strong>legalización consular</strong>, un proceso en dos pasos:</p>
<ol>
  <li><strong>Legalización ante el Ministerio de Relaciones Exteriores de Haití</strong> (Puerto Príncipe).</li>
  <li><strong>Legalización ante el Consulado de Chile</strong> más cercano (generalmente en República Dominicana, ya que Chile no tiene consulado permanente en Haití).</li>
</ol>
<p>Además, como los documentos están en <strong>créole o francés</strong>, se requiere traducción jurada al español. El proceso completo puede tomar 4-8 semanas. Ver guía detallada: <a href="/haiti/documentos-traducidos">Documentos haitianos traducidos para Chile →</a></p>

<h2>¿Necesitan traducción los documentos apostillados?</h2>
<p>Depende del idioma del documento:</p>
<ul>
  <li><strong>Bolivia, Perú, Colombia, Argentina, Venezuela, República Dominicana:</strong> documentos en español — generalmente <strong>no requieren traducción</strong>. El SERMIG los acepta directamente.</li>
  <li><strong>Haití:</strong> documentos en créole o francés — <strong>siempre requieren traducción jurada</strong> al español por un traductor jurado inscrito en el Ministerio de Relaciones Exteriores de Chile.</li>
</ul>

<h2>Costos comparativos por país</h2>
<ul>
  <li><strong>Bolivia:</strong> ~USD 6-9 por apostilla + ~USD 22-36 envío postal. Total por 2-3 documentos: ~USD 40-60.</li>
  <li><strong>Perú:</strong> ~PEN 10-20 por apostilla (~USD 3-6). Muy accesible. Envío similar al boliviano.</li>
  <li><strong>Colombia:</strong> ~COP 45.000-80.000 por apostilla (~USD 11-20). Proceso rápido y online.</li>
  <li><strong>Argentina:</strong> ~ARS variable (ajustar a tipo de cambio). Proceso presencial o por apoderado.</li>
  <li><strong>República Dominicana:</strong> ~USD 9-18 por apostilla. Rápido si se hace en Santo Domingo.</li>
  <li><strong>Venezuela:</strong> variable según alternativa disponible.</li>
  <li><strong>Haití:</strong> ~USD 50-100 por documento (legalización + traducción). Es el proceso más caro y lento.</li>
</ul>

<h2>Documentos que habitualmente requieren apostilla para el SERMIG</h2>
<ul>
  <li><strong>Siempre requeridos:</strong> acta de nacimiento, certificado de antecedentes penales.</li>
  <li><strong>Según categoría de visa:</strong> acta de matrimonio (visa por pareja), actas de nacimiento de hijos (visa por hijo chileno).</li>
  <li><strong>Para homologación de títulos:</strong> diploma o certificado de estudios.</li>
  <li><strong>No requieren apostilla:</strong> pasaporte (se presenta como documento de identidad directo).</li>
</ul>

<h2>Consejo: solicita varios documentos a la vez</h2>
<p>Si tienes que apostillar más de un documento, hazlo todo en el mismo trámite. El costo de envío postal es fijo independientemente de cuántos documentos envíes — apostillar 3 documentos juntos casi no cuesta más que uno solo.</p>$content$,
  $faq$[
    {
      "question": "¿Todos los países necesitan apostilla para trámites en Chile?",
      "answer": "No exactamente. Los países firmantes del Convenio de La Haya (Bolivia, Perú, Colombia, Argentina, República Dominicana) usan apostilla. Venezuela tiene la apostilla suspendida desde 2017 y usa proceso alternativo. Haití no firmó el Convenio y usa legalización consular, que es más lenta y cara."
    },
    {
      "question": "¿Puedo apostillar documentos de mi país estando en Chile?",
      "answer": "Sí, en la mayoría de casos. Bolivia, Perú y Colombia tienen portales online que permiten solicitar la apostilla desde el exterior enviando el documento digital y pagando en línea. Para Argentina y República Dominicana es más fácil hacerlo con ayuda de un familiar o apoderado en el país."
    },
    {
      "question": "¿Los documentos en español necesitan traducción en Chile?",
      "answer": "No. Bolivia, Perú, Colombia, Argentina, Venezuela y República Dominicana emiten documentos en español, que el SERMIG acepta directamente. Solo los documentos haitianos (en créole o francés) requieren traducción jurada al español."
    },
    {
      "question": "¿Qué hago si soy venezolano y no puedo apostillar mis documentos?",
      "answer": "Venezuela suspendió la apostilla en 2017. Las alternativas son: legalización vía Consulado de Chile en Venezuela (cuando opera), proceso alternativo ante la Cancillería venezolana, o consultar directamente al SERMIG qué documentos acepta en tu caso específico. El SERMIG ha tenido períodos de flexibilización para venezolanos."
    },
    {
      "question": "¿Cuánto tiempo antes debo pedir los documentos apostillados?",
      "answer": "El SERMIG exige que los certificados de antecedentes penales tengan menos de 90 días al presentarlos. Considera el tiempo de apostilla (3-5 días) más envío postal (5-10 días) más el tiempo hasta tu cita o trámite. En total, solicita con al menos 4-6 semanas de anticipación."
    },
    {
      "question": "¿El pasaporte necesita apostilla?",
      "answer": "No. El pasaporte es un documento de identidad internacional reconocido directamente — no necesita apostilla. La apostilla se exige sobre otros documentos como acta de nacimiento, antecedentes penales y acta de matrimonio."
    }
  ]$faq$,
  ARRAY[
    'vivir-en-chile/apostilla-traduccion',
    'bolivia/apostilla',
    'bolivia/antecedentes-penales',
    'haiti/documentos-traducidos',
    'republica-dominicana/documentos-republica-dominicana'
  ],
  ARRAY['venezuela', 'peru', 'colombia', 'haiti', 'bolivia', 'argentina', 'republica-dominicana'],
  TRUE
) ON CONFLICT (slug) DO NOTHING;

COMMIT;
