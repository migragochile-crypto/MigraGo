-- ============================================================
-- MigraciónChile — Seed 022: correcciones de calidad v2
-- Corrige vivir-en-chile/emprendimiento:
--   - Afirmación demasiado absoluta sobre categoría migratoria
--   - Agrega sección explicando qué categorías habilitan/restringen
--   - Corrige FAQ sobre comprobante de trámite
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

UPDATE articles
SET content = REPLACE(
  REPLACE(
    content,

    -- 1. Reemplaza el párrafo de apertura demasiado absoluto
    '<p>Cualquier extranjero con <strong>RUT chileno vigente</strong> puede crear una empresa en Chile, independientemente de su categoría migratoria. No necesitas Permanencia Definitiva ni ciudadanía para emprender — con una visa temporaria activa ya puedes iniciar actividades y formalizar un negocio.</p>',
    '<p>Muchos extranjeros pueden crear una empresa en Chile sin necesitar <strong>Permanencia Definitiva</strong> ni ciudadanía. Sin embargo, <strong>no todas las categorías migratorias habilitan para emprender</strong>: el SII exige que el extranjero tenga una visa o autorización migratoria que le permita desarrollar actividades económicas o remuneradas en Chile. Tener un RUT vigente no es suficiente por sí solo — la categoría migratoria importa.</p>'
  ),

  -- 2. Inserta sección "¿Qué categoría migratoria necesitas?" antes de la tabla comparativa
  '<h2>Honorarios vs. empresa formal: ¿cuál te conviene?</h2>',
  '<h2>¿Qué categoría migratoria necesitas para emprender?</h2>
<p>El sistema "Tu Empresa en un Día" del Gobierno de Chile y el SII requieren que el representante legal o socio extranjero tenga una autorización migratoria que permita actividades económicas. El resumen práctico:</p>
<table>
  <thead><tr><th>Situación migratoria</th><th>¿Puede emprender?</th></tr></thead>
  <tbody>
    <tr><td>Visa temporaria con permiso para trabajar/emprender</td><td>✅ Sí</td></tr>
    <tr><td>Permanencia Definitiva</td><td>✅ Sí</td></tr>
    <tr><td>Visa de inversionista</td><td>✅ Sí</td></tr>
    <tr><td>Comprobante de trámite activo (visa pendiente)</td><td>⚠️ Honorarios sí (RUT provisorio SII); SpA/EIRL requiere Clave Única con cédula — normalmente no disponible aún</td></tr>
    <tr><td>Visa sujeta a contrato (dependiente)</td><td>⚠️ Zona gris: la visa te ata a un empleador; ser socio de empresa propia puede estar fuera de las condiciones autorizadas — consulta con el SERMIG antes</td></tr>
    <tr><td>Visa de estudiante</td><td>❌ No habilita para actividades comerciales independientes</td></tr>
    <tr><td>Turismo / sin visa</td><td>❌ Sin RUT definitivo, no es posible</td></tr>
  </tbody>
</table>
<p>Si tienes dudas sobre si tu categoría te habilita, consulta directamente con el SII o con un contador antes de iniciar el proceso.</p>

<h2>Honorarios vs. empresa formal: ¿cuál te conviene?</h2>'
)
WHERE slug = 'vivir-en-chile/emprendimiento';

-- Corregir también el FAQ sobre comprobante de trámite
UPDATE articles
SET faq_items = REPLACE(
  faq_items::text,
  '"answer": "Sí, si tienes comprobante de trámite activo (que te da residencia legal temporal) y RUT chileno. El comprobante de trámite más el RUT son suficientes para iniciar actividades en el SII y usar tuempresa.cl. Verifica que tu RUT esté activo en el SII antes de iniciar."',
  '"answer": "Depende. Con comprobante de trámite activo puedes iniciar actividades como trabajador independiente (honorarios) usando el RUT provisorio del SII. Sin embargo, la constitución formal de una empresa a través de tuempresa.cl requiere Clave Única con cédula de identidad chilena, que normalmente aún no tienes mientras la visa está en proceso. Una vez aprobada la visa y obtenida la cédula, podrás formalizar una SpA o EIRL sin problema."'
)::jsonb
WHERE slug = 'vivir-en-chile/emprendimiento';

-- Verificación
SELECT slug, updated_at
FROM articles
WHERE slug = 'vivir-en-chile/emprendimiento';
