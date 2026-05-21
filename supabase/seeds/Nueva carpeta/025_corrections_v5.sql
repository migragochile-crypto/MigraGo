-- ============================================================
-- MigraciónChile — Seed 025: correcciones de calidad v5
-- 3 ajustes finos en FAQ de autodenuncia:
--   1. Typo pregunta: "si me autodenego" → "si me autodenuncio"
--   2. Primera frase respuesta: "No de forma automática ni absoluta." → "No automáticamente."
--   3. "demuestra buena fe" → "puede ser considerada antecedente favorable de colaboración"
-- Requiere que seed 023 haya sido ejecutado antes
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

UPDATE articles
SET faq_items = REPLACE(
  REPLACE(
    REPLACE(
      faq_items::text,
      -- 1. Typo en la pregunta
      '¿Pueden expulsarme si me autodenego?',
      '¿Pueden expulsarme si me autodenuncio?'
    ),
    -- 2. Primera frase de la respuesta
    'No de forma automática ni absoluta.',
    'No automáticamente.'
  ),
  -- 3. "buena fe" → antecedente técnico de colaboración
  'La autodenuncia voluntaria demuestra buena fe y puede influir',
  'La autodenuncia puede ser considerada como un antecedente favorable de colaboración y voluntad de regularización, y puede influir'
)::jsonb
WHERE slug = 'autodenuncia';

-- Verificación
SELECT slug, updated_at
FROM articles
WHERE slug = 'autodenuncia';
