-- Posts iniciales de la sección Actualidad Migratoria.
-- Solo datos ya verificados en el sitio — no inventar anuncios del SERMIG.

INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description, content,
  schema_type, author, reading_time_minutes, published_at, updated_at,
  faq_items, howto_steps, related_slugs, is_published
) VALUES
(
  'actualidad/sueldo-minimo-2026-tramites',
  'actualidad',
  'actualidad',
  'cluster',
  'Sueldo Mínimo 2026 en Chile: $500.000 y Cómo Afecta tu Trámite Migratorio',
  'Sueldo mínimo 2026: $500.000 — qué significa para tu trámite migratorio',
  'El sueldo mínimo en Chile es $500.000 en 2026. Te explicamos cómo afecta la acreditación de medios de vida, las visas por contrato de trabajo y la Residencia Definitiva.',
  $content$<h2>El dato</h2>
<p>El sueldo mínimo mensual en Chile es de <strong>$500.000 CLP</strong> en 2026 (aproximadamente USD 550 según el tipo de cambio). Este monto es la referencia que usan varias instituciones — incluido el SERMIG — para evaluar solvencia económica en trámites migratorios.</p>

<h2>Cómo afecta tu trámite</h2>

<h3>1. Visa por contrato de trabajo</h3>
<p>El contrato que presentes ante el SERMIG debe cumplir como mínimo el sueldo mínimo legal. Un contrato por menos de $500.000 mensuales (jornada completa) no es válido y puede causar el rechazo de la solicitud.</p>

<h3>2. Acreditación de medios de vida</h3>
<p>Para la <a href="/residencia-definitiva">Residencia Definitiva</a>, el SERMIG evalúa que puedas sustentarte económicamente. Ingresos iguales o superiores al sueldo mínimo son la referencia básica — liquidaciones de sueldo, boletas de honorarios o ahorros acreditables.</p>

<h3>3. Reducción de plazo por cotizaciones</h3>
<p>Si cotizas en AFP de forma continua durante 12 meses, puedes acceder a la <a href="/residencia-definitiva/reduccion-plazo-12-meses">reducción del plazo de la Residencia Definitiva</a>. Las cotizaciones se calculan sobre tu sueldo real — que no puede ser inferior al mínimo.</p>

<h2>Qué hacer</h2>
<ul>
  <li>Si tu empleador te paga menos del mínimo con jornada completa, está incumpliendo la ley — puedes denunciar en la <strong>Dirección del Trabajo (dt.gob.cl)</strong>.</li>
  <li>Guarda tus liquidaciones de sueldo: son la principal evidencia de medios de vida para el SERMIG.</li>
  <li>Ver guía completa: <a href="/vivir-en-chile/trabajar-en-chile">Trabajar en Chile siendo extranjero</a></li>
</ul>$content$,
  'Article',
  'MigraGo',
  3,
  NOW(),
  NOW(),
  '[]'::jsonb,
  '[]'::jsonb,
  ARRAY['vivir-en-chile/trabajar-en-chile', 'residencia-definitiva/reduccion-plazo-12-meses', 'residencia-temporal/contrato-trabajo'],
  TRUE
),
(
  'actualidad/residencia-temporal-vs-visa-temporaria',
  'actualidad',
  'actualidad',
  'cluster',
  '¿Visa Temporaria o Residencia Temporal? Por Qué Cambió el Nombre y Qué Significa',
  '¿Visa temporaria o Residencia Temporal? El cambio de nombre explicado',
  'Desde la Ley 21.325, la "visa temporaria" se llama "Residencia Temporal" y la "permanencia definitiva" es "Residencia Definitiva". Te explicamos qué cambió realmente y qué sigue igual.',
  $content$<h2>El cambio</h2>
<p>Con la entrada en vigencia de la <strong>Ley de Migración y Extranjería N° 21.325</strong> (2021), la terminología oficial cambió:</p>

<div class="overflow-x-auto mt-4 mb-6">
<table class="w-full text-sm border-collapse">
  <thead>
    <tr class="bg-gray-100">
      <th class="text-left px-4 py-3 border border-gray-200 font-semibold">Nombre antiguo</th>
      <th class="text-left px-4 py-3 border border-gray-200 font-semibold">Nombre oficial actual</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td class="px-4 py-3 border border-gray-200">Visa temporaria</td>
      <td class="px-4 py-3 border border-gray-200 font-medium">Residencia Temporal</td>
    </tr>
    <tr class="bg-gray-50">
      <td class="px-4 py-3 border border-gray-200">Permanencia definitiva (PD)</td>
      <td class="px-4 py-3 border border-gray-200 font-medium">Residencia Definitiva</td>
    </tr>
    <tr>
      <td class="px-4 py-3 border border-gray-200">Departamento de Extranjería y Migración (DEM)</td>
      <td class="px-4 py-3 border border-gray-200 font-medium">Servicio Nacional de Migraciones (SERMIG)</td>
    </tr>
  </tbody>
</table>
</div>

<h2>¿Qué cambió realmente?</h2>
<ul>
  <li><strong>La institución:</strong> el antiguo DEM (dependiente del Ministerio del Interior) fue reemplazado por el SERMIG, un servicio público descentralizado.</li>
  <li><strong>El proceso:</strong> los trámites pasaron a ser 100% digitales en tramites.extranjeria.gob.cl.</li>
  <li><strong>Las categorías:</strong> la ley reorganizó las subcategorías de residencia temporal.</li>
</ul>

<h2>¿Qué sigue igual?</h2>
<ul>
  <li>La lógica general: primero Residencia Temporal, después Residencia Definitiva, finalmente nacionalización si lo deseas.</li>
  <li>Los documentos con nombre antiguo siguen siendo válidos — si tu visa dice "temporaria", es una Residencia Temporal a todos los efectos.</li>
</ul>

<h2>¿Por qué en internet sigue apareciendo "visa temporaria"?</h2>
<p>Porque millones de personas siguen buscando con el nombre antiguo y muchos sitios no actualizaron su contenido. En MigraGo usamos la terminología oficial vigente, indicando siempre el nombre anterior para que no te confundas.</p>

<p>→ Ver guías: <a href="/residencia-temporal">Residencia Temporal</a> | <a href="/residencia-definitiva">Residencia Definitiva</a></p>$content$,
  'Article',
  'MigraGo',
  3,
  NOW(),
  NOW(),
  '[]'::jsonb,
  '[]'::jsonb,
  ARRAY['residencia-temporal', 'residencia-definitiva', 'nacionalizacion/requisitos'],
  TRUE
);
