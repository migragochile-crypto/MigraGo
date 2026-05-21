-- ============================================================
-- MigraciónChile — Seed 046: correcciones de calidad v26
-- permanencia-definitiva/renovacion   (1 content + 0 FAQ)
-- permanencia-definitiva/requisitos   (6 content + 0 FAQ)
-- permanencia-definitiva/via-conyugue (1 content + 0 FAQ)
-- permanencia-definitiva/via-trabajo  (3 content + 0 FAQ)
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

-- ============================================================
-- 1. permanencia-definitiva/renovacion — content (1 REPLACE)
-- ============================================================

UPDATE articles
SET content = REPLACE(
  content,
  -- Fix 1: "desde los 90 días antes" — plazo administrativo absoluto
  'Puedes renovar la cédula desde los <strong>90 días antes</strong> del vencimiento.',
  'Puedes renovar la cédula con anticipación al vencimiento (generalmente hasta 90 días antes, aunque conviene verificar el plazo actual en el Registro Civil).'
)
WHERE slug = 'permanencia-definitiva/renovacion';

-- ============================================================
-- 2. permanencia-definitiva/requisitos — content (6 REPLACEs)
-- ============================================================

UPDATE articles
SET content = REPLACE(
  REPLACE(
    REPLACE(
      REPLACE(
        REPLACE(
          REPLACE(
            content,
            -- Fix 1 (innermost): pasaporte "al menos 6 meses de vigencia" — plazo absoluto
            'Con al menos 6 meses de vigencia. Si está por vencer, renuévalo antes de presentar.',
            'Con vigencia suficiente conforme a los criterios del SERMIG. Si está por vencer, renuévalo antes de presentar.'
          ),
          -- Fix 2: antecedentes Chile "No mayor a 90 días" — plazo absoluto
          'o en cualquier oficina del SRCeI. No mayor a 90 días.',
          'o en cualquier oficina del SRCeI. Verifica el plazo de vigencia exigido por el SERMIG al presentar.'
        ),
        -- Fix 3: antecedentes extranjero "No mayor a 90 días" — plazo absoluto
        'Apostillado. Si no está en español, traducción oficial. No mayor a 90 días.',
        'Apostillado. Si no está en español, traducción oficial. Verifica el plazo de vigencia exigido por el SERMIG al presentar.'
      ),
      -- Fix 4: "no deben tener más de 90 días de antigüedad" — plazo absoluto
      'Los certificados no deben tener más de 90 días de antigüedad al momento de presentar.',
      'Los certificados deben cumplir el plazo de vigencia indicado por el SERMIG al momento de presentar.'
    ),
    -- Fix 5: URL cruda como anchor text
    '>tramitesmigratorios.interior.gob.cl</a> con tu cuenta existente.',
    '>Portal de Trámites Migratorios del SERMIG</a> con tu cuenta existente.'
  ),
  -- Fix 6 (outermost): "máximo 5 MB por archivo" — dato técnico del portal sujeto a cambio
  '(máximo 5 MB por archivo).',
  '(respetando el tamaño máximo de archivo indicado en el portal).'
)
WHERE slug = 'permanencia-definitiva/requisitos';

-- ============================================================
-- 3. permanencia-definitiva/via-conyugue — content (1 REPLACE)
-- ============================================================

UPDATE articles
SET content = REPLACE(
  content,
  -- Fix 1: "no más de 90 días de antigüedad" (×2: matrimonio + AUC) — plazo absoluto
  ', con no más de 90 días de antigüedad.',
  ', conforme al plazo de vigencia indicado por el SERMIG.'
)
WHERE slug = 'permanencia-definitiva/via-conyugue';

-- ============================================================
-- 4. permanencia-definitiva/via-trabajo — content (3 REPLACEs)
-- ============================================================

UPDATE articles
SET content = REPLACE(
  REPLACE(
    REPLACE(
      content,
      -- Fix 1 (innermost): antecedentes "no mayor a 90 días" — plazo absoluto
      '(apostillado, no mayor a 90 días).',
      '(apostillado; verifica el plazo de vigencia exigido por el SERMIG).'
    ),
    -- Fix 2: URL cruda como anchor text
    '>tramitesmigratorios.interior.gob.cl</a>:',
    '>Portal de Trámites Migratorios del SERMIG</a>:'
  ),
  -- Fix 3 (outermost): "plazo legal es 30 días hábiles" — presenta plazo como garantía
  'El plazo legal es 30 días hábiles, aunque en la práctica puede tomar 3–9 meses.',
  'Los tiempos de resolución son variables; en la práctica suele tomar entre 3 y 9 meses o más.'
)
WHERE slug = 'permanencia-definitiva/via-trabajo';

-- ============================================================
-- Verificación
-- ============================================================
SELECT slug, updated_at
FROM articles
WHERE slug IN (
  'permanencia-definitiva/renovacion',
  'permanencia-definitiva/requisitos',
  'permanencia-definitiva/via-conyugue',
  'permanencia-definitiva/via-trabajo'
)
ORDER BY slug;
