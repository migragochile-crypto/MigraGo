-- ============================================================
-- MigraciónChile — Seed 048: correcciones de calidad v28
-- nacionalizacion/proceso-naturalizacion  (2 content + 0 FAQ)
-- nacionalizacion/doble-ciudadania        (0 content + 1 FAQ)
-- nacionalizacion/requisitos-nacionalidad (1 content + 0 FAQ)
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

-- ============================================================
-- 1. nacionalizacion/proceso-naturalizacion — content (2 REPLACEs)
-- ============================================================

UPDATE articles
SET content = REPLACE(
  REPLACE(
    content,
    -- Fix 1 (innermost): antecedentes Chile "vigencia 30 días" — plazo absoluto
    'Certificado de antecedentes penales de Chile (SRCeI, vigencia 30 días).',
    'Certificado de antecedentes penales de Chile (SRCeI; verifica el plazo de vigencia exigido al presentar).'
  ),
  -- Fix 2 (outermost): antecedentes origen "vigencia 90 días" — plazo absoluto
  'Certificado de antecedentes penales del país de origen (apostillado, vigencia 90 días).',
  'Certificado de antecedentes penales del país de origen (apostillado; verifica el plazo de vigencia exigido al presentar).'
)
WHERE slug = 'nacionalizacion/proceso-naturalizacion';

-- ============================================================
-- 2. nacionalizacion/doble-ciudadania — faq_items (1 REPLACE)
-- ============================================================

UPDATE articles
SET faq_items = REPLACE(
  faq_items::text,
  -- fq1: "conservas todos tus derechos" — absoluto sobre ley venezolana que puede cambiar
  '"answer": "No. Venezuela reconoce la doble nacionalidad desde la Constitución de 1999. Al naturalizarte en Chile conservas todos tus derechos como ciudadano venezolano. Podrás tener pasaportes de ambos países."',
  '"answer": "Según la normativa venezolana vigente, Venezuela reconoce la doble nacionalidad, por lo que al naturalizarte en Chile en general conservas tu ciudadanía venezolana. Sin embargo, esta situación puede cambiar; verifica con el consulado venezolano antes de iniciar el proceso."'
)::jsonb
WHERE slug = 'nacionalizacion/doble-ciudadania';

-- ============================================================
-- 3. nacionalizacion/requisitos-nacionalidad — content (1 REPLACE)
-- ============================================================

UPDATE articles
SET content = REPLACE(
  content,
  -- Fix 1: "las condenas vigentes por delitos graves sí" — absoluto sin matiz
  'pero las condenas vigentes por delitos graves sí.',
  'pero las condenas vigentes por delitos graves en general sí las impiden.'
)
WHERE slug = 'nacionalizacion/requisitos-nacionalidad';

-- ============================================================
-- Verificación
-- ============================================================
SELECT slug, updated_at
FROM articles
WHERE slug IN (
  'nacionalizacion/proceso-naturalizacion',
  'nacionalizacion/doble-ciudadania',
  'nacionalizacion/requisitos-nacionalidad'
)
ORDER BY slug;
