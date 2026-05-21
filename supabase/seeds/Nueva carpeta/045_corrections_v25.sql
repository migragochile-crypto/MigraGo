-- ============================================================
-- MigraciónChile — Seed 045: correcciones de calidad v25
-- permanencia-definitiva/beneficios   (2 content + 0 FAQ)
-- permanencia-definitiva/cuanto-demora (1 content + 0 FAQ)
-- permanencia-definitiva/documentos   (4 content + 0 FAQ)
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

-- ============================================================
-- 1. permanencia-definitiva/beneficios — content (2 REPLACEs)
-- ============================================================

UPDATE articles
SET content = REPLACE(
  REPLACE(
    content,
    -- Fix 1 (innermost): "basta con... no ausentarte" — imperativo absoluto
    'basta con mantener la cédula de identidad para extranjeros vigente (que se renueva cada 5 años) y no ausentarte de Chile por más de un año sin notificar.',
    'es importante mantener la cédula de identidad para extranjeros vigente (que se renueva cada 5 años) y evitar ausencias prolongadas sin notificar al SERMIG.'
  ),
  -- Fix 2 (outermost): "deben ser notificadas" — imperativo absoluto
  'Ausencias de más de 1 año que debas hacer (por trabajo, familia, salud) deben ser notificadas al SERMIG para que no afecten el permiso.',
  'Ausencias de más de 1 año que debas hacer (por trabajo, familia, salud) es recomendable notificarlas al SERMIG previamente para reducir el riesgo de que afecten el permiso.'
)
WHERE slug = 'permanencia-definitiva/beneficios';

-- ============================================================
-- 2. permanencia-definitiva/cuanto-demora — content (1 REPLACE)
-- ============================================================

UPDATE articles
SET content = REPLACE(
  content,
  -- Fix 1: comprobante "actúa como extensión implícita" + "No estás en situación irregular"
  'el comprobante de solicitud actúa como extensión implícita de tu permiso. No estás en situación irregular mientras el trámite esté vigente.',
  'el comprobante de solicitud puede habilitar la permanencia en el país durante la espera. La situación migratoria concreta puede depender del tipo de visa y las condiciones del caso.'
)
WHERE slug = 'permanencia-definitiva/cuanto-demora';

-- ============================================================
-- 3. permanencia-definitiva/documentos — content (4 REPLACEs)
-- ============================================================

UPDATE articles
SET content = REPLACE(
  REPLACE(
    REPLACE(
      REPLACE(
        content,
        -- Fix 1 (innermost): URL cruda como anchor text
        '>tramitesmigratorios.interior.gob.cl</a>. Los documentos',
        '>Portal de Trámites Migratorios del SERMIG</a>. Los documentos'
      ),
      -- Fix 2: encabezado tabla "Vigencia máxima" — absoluto
      '<th>Vigencia máxima al presentar</th>',
      '<th>Vigencia orientativa al presentar</th>'
    ),
    -- Fix 3: "Tiene validez de 30 días" — plazo absoluto (antecedentes Chile)
    'Tiene validez de 30 días.',
    'Tiene un plazo de vigencia que debes verificar al momento de obtenerlo.'
  ),
  -- Fix 4 (outermost): "Tiene validez de 90 días desde su emisión" — plazo absoluto
  'Tiene validez de 90 días desde su emisión.',
  'Tiene un plazo de vigencia desde su emisión; verifica el plazo indicado en el documento y los criterios actuales del SERMIG.'
)
WHERE slug = 'permanencia-definitiva/documentos';

-- ============================================================
-- Verificación
-- ============================================================
SELECT slug, updated_at
FROM articles
WHERE slug IN (
  'permanencia-definitiva/beneficios',
  'permanencia-definitiva/cuanto-demora',
  'permanencia-definitiva/documentos'
)
ORDER BY slug;
