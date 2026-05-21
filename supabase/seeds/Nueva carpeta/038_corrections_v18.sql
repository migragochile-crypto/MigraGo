-- ============================================================
-- MigraciónChile — Seed 038: correcciones de calidad v18
-- visa-temporaria/estudiante        (5 content + 2 FAQ)
-- visa-temporaria/jubilado-rentista (5 content + 0 FAQ)
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

-- ============================================================
-- 1a. visa-temporaria/estudiante — content (5 REPLACEs)
-- ============================================================

UPDATE articles
SET content = REPLACE(
  REPLACE(
    REPLACE(
      REPLACE(
        REPLACE(
          content,
          -- Fix 1 (innermost): pasaporte "al menos 6 meses de vigencia"
          'Con al menos 6 meses de vigencia.',
          'Vigencia conforme a los requisitos del SERMIG.'
        ),
        -- Fix 2: antecedentes país origen "No mayor a 90 días"
        'Apostillado. No mayor a 90 días. En español o con traducción oficial.',
        'Apostillado. En español o con traducción oficial. Los plazos de antigüedad aceptable pueden variar; verifica los requisitos actualizados con el SERMIG.'
      ),
      -- Fix 3: antecedentes Chile "No mayor a 90 días"
      'Gratis en registrocivil.cl. No mayor a 90 días.',
      'Gratis en registrocivil.cl. Vigente conforme a los requisitos del SERMIG.'
    ),
    -- Fix 4: vigencia "con un máximo de 1 año renovable"
    'La visa se otorga por la duración del programa de estudios, con un máximo de <strong>1 año renovable</strong>.',
    'La visa suele otorgarse por la duración del programa de estudios, generalmente por hasta <strong>1 año renovable</strong>.'
  ),
  -- Fix 5 (outermost): "No necesitas salir del país" — absoluto
  'No necesitas salir del país para hacer el cambio de categoría.',
  'En general no es necesario salir del país para solicitar el cambio de categoría.'
)
WHERE slug = 'visa-temporaria/estudiante';

-- ============================================================
-- 1b. visa-temporaria/estudiante — faq_items (2 REPLACEs)
-- ============================================================

UPDATE articles
SET faq_items = REPLACE(
  REPLACE(
    faq_items::text,
    -- fq1 (innermost): "El cambio de institución en sí no invalida la visa" — absoluto
    '"answer": "Debes notificar el cambio al SERMIG y presentar la nueva carta de aceptación. El cambio de institución en sí no invalida la visa, pero sí debes tener documentación actualizada que acredite tu nueva situación académica."',
    '"answer": "Debes notificar el cambio al SERMIG y presentar la nueva carta de aceptación. El cambio de institución puede no invalidar la visa, aunque los requisitos y condiciones específicos pueden variar; verifica con el SERMIG tu situación particular."'
  ),
  -- fq2 (outermost): "Después de 2 años continuos... puedes solicitar PD" — absoluto
  '"answer": "Sí. El tiempo de residencia con visa de estudiante acumula para los requisitos de la Permanencia Definitiva. Después de 2 años continuos con visa de estudiante vigente, puedes solicitar la permanencia definitiva."',
  '"answer": "El tiempo de residencia con visa de estudiante puede acumularse para los requisitos de la Permanencia Definitiva. Cumplidos los requisitos de tiempo y permanencia establecidos por la normativa, es posible solicitar la Permanencia Definitiva; verifica las condiciones actualizadas con el SERMIG."'
)::jsonb
WHERE slug = 'visa-temporaria/estudiante';

-- ============================================================
-- 2a. visa-temporaria/jubilado-rentista — content (5 REPLACEs)
-- ============================================================

UPDATE articles
SET content = REPLACE(
  REPLACE(
    REPLACE(
      REPLACE(
        REPLACE(
          content,
          -- Fix 1 (innermost): pasaporte "al menos 6 meses de vigencia"
          'Con al menos 6 meses de vigencia.',
          'Vigencia conforme a los requisitos del SERMIG.'
        ),
        -- Fix 2: certificado pensión "No mayor a 90 días"
        'Emitido por la entidad pagadora (AFP, organismo de pensiones, banco). Apostillado. No mayor a 90 días.',
        'Emitido por la entidad pagadora (AFP, organismo de pensiones, banco). Apostillado. Los plazos de antigüedad aceptable pueden variar; verifica los requisitos actualizados con el SERMIG.'
      ),
      -- Fix 3: antecedentes país origen "No mayor a 90 días"
      'Apostillado. No mayor a 90 días. En español o con traducción oficial.',
      'Apostillado. En español o con traducción oficial. Los plazos de antigüedad aceptable pueden variar; verifica los requisitos actualizados con el SERMIG.'
    ),
    -- Fix 4: antecedentes Chile "No mayor a 90 días"
    'Gratis en registrocivil.cl. No mayor a 90 días.',
    'Gratis en registrocivil.cl. Vigente conforme a los requisitos del SERMIG.'
  ),
  -- Fix 5 (outermost): vigencia "1 año renovable" + "2 años continuos" + PD
  'La visa se otorga por <strong>1 año renovable</strong>. Para renovarla, debes acreditar que sigues recibiendo los ingresos declarados. Después de 2 años continuos con esta visa puedes solicitar la <a href="/permanencia-definitiva">Permanencia Definitiva</a>.',
  'La residencia suele otorgarse por períodos renovables. Para renovarla, debes acreditar que sigues contando con los ingresos declarados. Cumplidos los requisitos de tiempo y permanencia establecidos por la normativa, es posible solicitar la <a href="/permanencia-definitiva">Permanencia Definitiva</a>.'
)
WHERE slug = 'visa-temporaria/jubilado-rentista';

-- ============================================================
-- Verificación
-- ============================================================
SELECT slug, updated_at
FROM articles
WHERE slug IN (
  'visa-temporaria/estudiante',
  'visa-temporaria/jubilado-rentista'
)
ORDER BY slug;
