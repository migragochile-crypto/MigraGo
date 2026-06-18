-- Post de actualidad: nuevo sueldo mínimo 2026
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description, content,
  schema_type, author, reading_time_minutes, published_at, updated_at,
  faq_items, howto_steps, related_slugs, is_published
) VALUES (
  'actualidad/nuevo-sueldo-minimo-553553-mayo-2026',
  'actualidad',
  'actualidad',
  'cluster',
  'Nuevo Sueldo Mínimo en Chile: $553.553 desde Mayo 2026',
  'Nuevo sueldo mínimo en Chile: $553.553 desde mayo 2026',
  'El Congreso aprobó el reajuste del sueldo mínimo en Chile: sube de $539.000 a $553.553 con efecto retroactivo desde el 1 de mayo de 2026. Qué significa para extranjeros con contrato de trabajo.',
  $content$<h2>El nuevo sueldo mínimo</h2>
<p>El Congreso aprobó el reajuste del ingreso mínimo mensual en Chile. El nuevo monto es de <strong>$553.553 CLP</strong>, que reemplaza el valor anterior de $539.000. El alza representa un incremento de $14.553 (aproximadamente 2,7%).</p>
<p>El reajuste tiene <strong>efecto retroactivo desde el 1 de mayo de 2026</strong>, lo que significa que los trabajadores que ganan el mínimo recibirán las diferencias acumuladas una vez que la ley sea promulgada y publicada en el Diario Oficial.</p>

<h2>Tabla comparativa</h2>
<div class="overflow-x-auto mt-4 mb-6">
<table class="w-full text-sm border-collapse">
  <thead>
    <tr class="bg-gray-100">
      <th class="text-left px-4 py-3 border border-gray-200 font-semibold">Concepto</th>
      <th class="text-left px-4 py-3 border border-gray-200 font-semibold">Monto anterior</th>
      <th class="text-left px-4 py-3 border border-gray-200 font-semibold">Nuevo monto</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td class="px-4 py-3 border border-gray-200">Sueldo mínimo (18–65 años)</td>
      <td class="px-4 py-3 border border-gray-200">$539.000</td>
      <td class="px-4 py-3 border border-gray-200 font-semibold text-green-700">$553.553</td>
    </tr>
    <tr class="bg-gray-50">
      <td class="px-4 py-3 border border-gray-200">Vigencia</td>
      <td class="px-4 py-3 border border-gray-200">Enero 2026</td>
      <td class="px-4 py-3 border border-gray-200">Desde 1 mayo 2026 (retroactivo)</td>
    </tr>
    <tr>
      <td class="px-4 py-3 border border-gray-200">Próximo reajuste</td>
      <td class="px-4 py-3 border border-gray-200">—</td>
      <td class="px-4 py-3 border border-gray-200">Enero 2027 (según IPC)</td>
    </tr>
  </tbody>
</table>
</div>

<h2>También se reajustan otros beneficios</h2>
<p>El proyecto también contempla ajustes en:</p>
<ul>
  <li><strong>Asignación familiar</strong></li>
  <li><strong>Asignación maternal</strong></li>
  <li><strong>Subsidio familiar</strong></li>
</ul>
<p>Estos montos están vinculados al valor del salario mínimo, por lo que suben proporcionalmente.</p>

<h2>¿Qué significa esto para extranjeros con contrato de trabajo en Chile?</h2>
<p>Si tienes un contrato de trabajo vigente en Chile, tu empleador está obligado a pagarte al menos el nuevo mínimo de <strong>$553.553</strong> en jornada completa (40 horas semanales). Esto aplica a todos los trabajadores — nacionales y extranjeros — sin distinción.</p>
<ul>
  <li>Si tu contrato de trabajo fue presentado ante el SERMIG para solicitar una visa, el monto del contrato debe cumplir el sueldo mínimo vigente al momento de presentar.</li>
  <li>Si tu empleador te paga menos del mínimo, puedes denunciar en la <strong>Dirección del Trabajo</strong> (dt.gob.cl) o llamar al 600 450 4000.</li>
  <li>Para visas pendientes de resolución: el SERMIG evalúa el contrato al momento de la solicitud — si ya fue presentado con el mínimo anterior ($539.000), no deberías tener problemas.</li>
</ul>

<h2>Próxima actualización</h2>
<p>La ley establece que en <strong>enero de 2027</strong> se realizará un nuevo reajuste automático del sueldo mínimo en función del IPC (Índice de Precios al Consumidor) registrado durante el resto de 2026. MigraGo actualizará esta página cuando se confirme el nuevo monto.</p>$content$,
  'Article',
  'MigraGo',
  3,
  '2026-06-17T12:00:00+00:00',
  NOW(),
  '[
    {"q": "¿Cuánto es el sueldo mínimo en Chile en 2026?", "a": "El nuevo sueldo mínimo es $553.553 CLP mensuales para trabajadores de 18 a 65 años, con efecto retroactivo desde el 1 de mayo de 2026. Reemplaza el monto anterior de $539.000."},
    {"q": "¿Cuándo entra en vigencia el nuevo sueldo mínimo?", "a": "Desde el 1 de mayo de 2026, con efecto retroactivo. Los trabajadores recibirán las diferencias acumuladas una vez que la ley sea promulgada y publicada en el Diario Oficial."},
    {"q": "¿El nuevo sueldo mínimo aplica a extranjeros en Chile?", "a": "Sí. El sueldo mínimo aplica a todos los trabajadores con contrato en Chile sin distinción de nacionalidad. Si tu empleador te paga menos del mínimo en jornada completa, está incumpliendo la ley."}
  ]'::jsonb,
  '[]'::jsonb,
  ARRAY['vivir-en-chile/trabajar-en-chile', 'residencia-temporal/contrato-trabajo', 'vivir-en-chile/costo-de-vida'],
  TRUE
);

-- Actualizar monto en artículos que mencionan $500.000 como sueldo mínimo
UPDATE articles SET
  content = REPLACE(content, '$500.000 CLP mensuales (2026)', '$553.553 CLP mensuales (mayo 2026)'),
  content = REPLACE(content, 'El sueldo mínimo en 2026 es $500.000 CLP', 'El sueldo mínimo en Chile es $553.553 CLP (desde mayo 2026)'),
  content = REPLACE(content, 'Sueldo mínimo: $500.000 CLP mensual (2026)', 'Sueldo mínimo: $553.553 CLP mensual (desde mayo 2026)'),
  updated_at = NOW()
WHERE content LIKE '%500.000%'
  AND is_published = TRUE;
