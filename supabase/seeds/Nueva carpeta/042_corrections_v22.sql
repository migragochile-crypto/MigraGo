-- ============================================================
-- MigraciónChile — Seed 042: correcciones de calidad v22
-- problemas/rechazo-visa          (3 content + 0 FAQ)
-- problemas/recurso-administrativo (2 content + 2 FAQ)
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

-- ============================================================
-- 1a. problemas/rechazo-visa — content (3 REPLACEs)
-- ============================================================

UPDATE articles
SET content = REPLACE(
  REPLACE(
    REPLACE(
      content,
      -- Fix 1 (innermost): "tiene alta probabilidad de éxito" — promete resultado
      'el recurso de reposición con los documentos correctos tiene alta probabilidad de éxito.',
      'el recurso de reposición acompañado de los documentos correctos puede tener mayor posibilidad de éxito.'
    ),
    -- Fix 2: "No hay impedimento para volver a solicitar" — absoluto
    'No hay impedimento para volver a solicitar si las circunstancias cambiaron.',
    'En general no hay impedimento para volver a solicitar si las circunstancias cambiaron, aunque el historial previo puede influir en la evaluación.'
  ),
  -- Fix 3 (outermost): comprobante "actúa como habilitante" — absoluto
  'Mientras un recurso esté formalmente presentado y activo, el comprobante de recurso actúa como habilitante de residencia. No estás en situación irregular durante ese período.',
  'Mientras un recurso esté formalmente presentado y activo, el comprobante puede habilitar la permanencia en el país. La situación migratoria durante ese período puede depender del tipo de recurso y las condiciones específicas del caso.'
)
WHERE slug = 'problemas/rechazo-visa';

-- ============================================================
-- 2a. problemas/recurso-administrativo — content (2 REPLACEs)
-- ============================================================

UPDATE articles
SET content = REPLACE(
  REPLACE(
    content,
    -- Fix 1 (innermost): URL cruda como anchor text
    '>tramitesmigratorios.interior.gob.cl</a>) o presencialmente',
    '>Portal de Trámites Migratorios del SERMIG</a>) o presencialmente'
  ),
  -- Fix 2 (outermost): comprobante "actúa como habilitante" — absoluto
  'Mientras el recurso esté activo, puedes permanecer en Chile. El comprobante de recurso presentado actúa como habilitante de residencia hasta que se resuelva.',
  'Mientras el recurso esté activo, el comprobante de recurso presentado puede habilitar la permanencia en Chile hasta que se resuelva.'
)
WHERE slug = 'problemas/recurso-administrativo';

-- ============================================================
-- 2b. problemas/recurso-administrativo — faq_items (2 REPLACEs)
-- ============================================================

UPDATE articles
SET faq_items = REPLACE(
  REPLACE(
    faq_items::text,
    -- fq1 (innermost): "aumenta significativamente las posibilidades de éxito" — promete resultado
    '"answer": "No es obligatorio. Cualquier persona puede presentar su propio recurso. Sin embargo, para casos complejos (antecedentes penales, múltiples rechazos anteriores, situaciones migratorias complejas), contratar un abogado migratorio aumenta significativamente las posibilidades de éxito."',
    '"answer": "No es obligatorio. Cualquier persona puede presentar su propio recurso. Sin embargo, para casos complejos (antecedentes penales, múltiples rechazos anteriores, situaciones migratorias complejas), contar con asesoría legal puede mejorar las posibilidades de éxito."'
  ),
  -- fq5 (outermost): comprobante "actúa como habilitante" + "No estás en situación irregular"
  '"answer": "Mientras el recurso esté formalmente presentado y activo, el comprobante de recurso actúa como habilitante de residencia. No estás en situación irregular durante ese período."',
  '"answer": "Mientras el recurso esté formalmente presentado y activo, el comprobante puede habilitar la permanencia en Chile. La situación migratoria durante ese período puede depender del tipo de recurso y las condiciones del caso."'
)::jsonb
WHERE slug = 'problemas/recurso-administrativo';

-- ============================================================
-- Verificación
-- ============================================================
SELECT slug, updated_at
FROM articles
WHERE slug IN (
  'problemas/rechazo-visa',
  'problemas/recurso-administrativo'
)
ORDER BY slug;
