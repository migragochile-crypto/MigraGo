-- ============================================================
-- MigraciónChile — Seed 047: correcciones de calidad v27
-- nacionalizacion/carta-naturalizacion (4 content + 1 FAQ)
-- nacionalizacion/hijo-nacido-chile    (1 content + 0 FAQ)
-- Nota: nacionalizacion (hub) no requiere correcciones.
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

-- ============================================================
-- 1a. nacionalizacion/carta-naturalizacion — content (4 REPLACEs)
-- ============================================================

UPDATE articles
SET content = REPLACE(
  REPLACE(
    REPLACE(
      REPLACE(
        content,
        -- Fix 1 (innermost): pasaporte "al menos 6 meses de vigencia" — plazo absoluto
        'Con al menos 6 meses de vigencia.',
        'Con vigencia suficiente conforme a los criterios del Ministerio del Interior al presentar.'
      ),
      -- Fix 2: antecedentes Chile "no mayor a 90 días" — plazo absoluto
      'Emitido por el SRCeI, no mayor a 90 días.',
      'Emitido por el SRCeI; verifica el plazo de vigencia exigido al presentar.'
    ),
    -- Fix 3: antecedentes origen "No mayor a 90 días" — plazo absoluto
    'Apostillado. No mayor a 90 días. Si no está en español, traducción oficial.',
    'Apostillado; verifica el plazo de vigencia exigido. Si no está en español, traducción oficial.'
  ),
  -- Fix 4 (outermost): "máximo 90 días" en paso a paso — plazo absoluto
  'Verifica vigencia de los certificados (máximo 90 días).',
  'Verifica la vigencia de los certificados conforme a los plazos exigidos.'
)
WHERE slug = 'nacionalizacion/carta-naturalizacion';

-- ============================================================
-- 1b. nacionalizacion/carta-naturalizacion — faq_items (1 REPLACE)
-- ============================================================

UPDATE articles
SET faq_items = REPLACE(
  faq_items::text,
  -- fq2: error factual — afirma que el tiempo con visa temporaria NO cuenta para los 5 años,
  --      lo que contradice el hub y proceso-naturalizacion. Corrección + hedging.
  '"answer": "No. Los 5 años se cuentan solo desde que tienes permanencia definitiva, no desde la visa temporaria. El tiempo con visa temporaria solo sirve para acumular el 1 año requerido para solicitar la permanencia definitiva."',
  '"answer": "No necesariamente. Los 5 años de residencia legal continua pueden incluir tiempo con visa temporaria y con Permanencia Definitiva. Lo que sí es necesario es tener la Permanencia Definitiva vigente al momento de presentar la solicitud, no durante todos los 5 años."'
)::jsonb
WHERE slug = 'nacionalizacion/carta-naturalizacion';

-- ============================================================
-- 2. nacionalizacion/hijo-nacido-chile — content (1 REPLACE)
-- ============================================================

UPDATE articles
SET content = REPLACE(
  content,
  -- Fix 1: "plazo legal de 60 días" — plazo absoluto sin indicar que puede variar
  'El plazo legal es de <strong>60 días</strong> desde el nacimiento.',
  'El plazo establecido para el registro es de <strong>60 días</strong> desde el nacimiento; conviene verificar los requisitos actuales con el Registro Civil.'
)
WHERE slug = 'nacionalizacion/hijo-nacido-chile';

-- ============================================================
-- Verificación
-- ============================================================
SELECT slug, updated_at
FROM articles
WHERE slug IN (
  'nacionalizacion/carta-naturalizacion',
  'nacionalizacion/hijo-nacido-chile'
)
ORDER BY slug;
