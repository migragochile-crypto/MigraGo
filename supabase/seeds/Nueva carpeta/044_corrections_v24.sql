-- ============================================================
-- MigraciónChile — Seed 044: correcciones de calidad v24
-- permanencia-definitiva (hub)  (7 content + 1 FAQ)
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

-- ============================================================
-- 1a. permanencia-definitiva (hub) — content (7 REPLACEs)
-- ============================================================

UPDATE articles
SET content = REPLACE(
  REPLACE(
    REPLACE(
      REPLACE(
        REPLACE(
          REPLACE(
            REPLACE(
              content,
              -- Fix 1 (innermost): URL cruda como anchor text
              '>tramitesmigratorios.interior.gob.cl</a>. Los pasos son:',
              '>Portal de Trámites Migratorios del SERMIG</a>. Los pasos son:'
            ),
            -- Fix 2: pasaporte "al menos 6 meses de vigencia" — plazo absoluto
            'con al menos 6 meses de vigencia.',
            'con vigencia suficiente conforme a los requisitos del SERMIG al presentar.'
          ),
          -- Fix 3: antecedentes "no mayor a 90 días" (×2) — plazo absoluto
          ', no mayor a 90 días.',
          ', conforme al plazo de vigencia indicado por el SERMIG.'
        ),
        -- Fix 4: "máximo 90 días de antigüedad" en paso a paso — plazo absoluto
        '(máximo 90 días de antigüedad).',
        'conforme a los plazos de vigencia indicados por el SERMIG.'
      ),
      -- Fix 5: "plazo legal de 30 días hábiles" — presenta plazo como garantía
      'El SERMIG tiene plazo legal de 30 días hábiles, pero en la práctica los tiempos han sido:',
      'El SERMIG tiene plazos legales de referencia, pero en la práctica los tiempos registrados han sido:'
    ),
    -- Fix 6: comprobante "actúa como habilitante de residencia y trabajo" — absoluto
    'el comprobante de trámite actúa como habilitante de residencia y trabajo.',
    'el comprobante de trámite puede habilitar la permanencia en el país y, en la medida en que incluya la autorización correspondiente, ciertas actividades laborales.'
  ),
  -- Fix 7 (outermost): "5 días hábiles desde la notificación" — plazo absoluto
  'dentro de los 5 días hábiles desde la notificación.',
  'dentro del plazo indicado en la notificación de rechazo.'
)
WHERE slug = 'permanencia-definitiva';

-- ============================================================
-- 1b. permanencia-definitiva (hub) — faq_items (1 REPLACE)
-- ============================================================

UPDATE articles
SET faq_items = REPLACE(
  faq_items::text,
  -- fq2: "No hay excepciones a este requisito temporal" — absoluto
  '"answer": "No. La Ley 21.325 establece 1 año continuo de residencia con visa temporaria vigente como plazo mínimo. No hay excepciones a este requisito temporal, aunque sí existen causales por vínculo familiar que pueden tener condiciones distintas."',
  '"answer": "No. La Ley 21.325 establece 1 año continuo de residencia con visa temporaria vigente como requisito general. Sin embargo, existen causales por vínculo familiar y otras categorías que pueden tener condiciones y plazos distintos; verifica tu situación con el SERMIG."'
)::jsonb
WHERE slug = 'permanencia-definitiva';

-- ============================================================
-- Verificación
-- ============================================================
SELECT slug, updated_at
FROM articles
WHERE slug = 'permanencia-definitiva'
ORDER BY slug;
