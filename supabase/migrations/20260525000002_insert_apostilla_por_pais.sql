-- Agrega Ecuador y Cuba al artículo apostilla-por-pais
-- El artículo ya existe con tabla comparativa completa; este UPDATE añade las dos filas y secciones que faltan.

UPDATE articles SET
  content = REPLACE(
    REPLACE(
      content,
      -- Agregar Ecuador antes de Venezuela en la tabla
      '<tr class="bg-gray-50">
      <td class="px-4 py-3 border border-gray-200 font-medium">🇻🇪 Venezuela</td>',
      '<tr class="bg-gray-50">
      <td class="px-4 py-3 border border-gray-200 font-medium">🇪🇨 Ecuador</td>
      <td class="px-4 py-3 border border-gray-200 text-green-700 font-medium">✓ Sí</td>
      <td class="px-4 py-3 border border-gray-200">Ministerio de Relaciones Exteriores (cancilleria.gob.ec)</td>
      <td class="px-4 py-3 border border-gray-200 text-green-700">Sí</td>
      <td class="px-4 py-3 border border-gray-200">3-5 días hábiles</td>
    </tr>
    <tr>
      <td class="px-4 py-3 border border-gray-200 font-medium">🇨🇺 Cuba</td>
      <td class="px-4 py-3 border border-gray-200 text-red-700 font-medium">✗ No (no firmó)</td>
      <td class="px-4 py-3 border border-gray-200">Legalización consular (MINREX + Consulado chileno)</td>
      <td class="px-4 py-3 border border-gray-200 text-red-600">No</td>
      <td class="px-4 py-3 border border-gray-200">4-8 semanas</td>
    </tr>
    <tr class="bg-gray-50">
      <td class="px-4 py-3 border border-gray-200 font-medium">🇻🇪 Venezuela</td>'
    ),
    -- Agregar sección Cuba antes del cierre del artículo
    '<h2>Consejo: solicita varios documentos a la vez</h2>',
    '<h2>Cuba: legalización consular (sin apostilla)</h2>
<p>Cuba no es firmante del Convenio de La Haya. Los documentos cubanos requieren <strong>legalización consular</strong>, un proceso en cadena:</p>
<ol>
  <li><strong>Legalización ante el MINREX</strong> (Ministerio de Relaciones Exteriores de Cuba) en La Habana.</li>
  <li><strong>Legalización ante el Consulado de Chile</strong> en Cuba. Si ya estás en Chile, puede gestionarse a través del Consulado de Cuba en Santiago.</li>
</ol>
<p>El proceso puede tomar semanas o meses. Planifica con mucha anticipación.</p>

<h2>Consejo: solicita varios documentos a la vez</h2>'
  ),
  updated_at = NOW()
WHERE slug = 'vivir-en-chile/apostilla-por-pais';
