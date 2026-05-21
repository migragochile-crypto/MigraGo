-- ============================================================
-- MigraciónChile — Seed 029: correcciones de calidad v9
-- Ajustes finos en autodenuncia/pdi-paso-a-paso
--   1. "no requiere abogado" → matiz para casos complejos
--   2. Pasaporte: agrega "criterio de la autoridad"
--   3. Biometría: "obligatorio para todos" → "habitualmente requerido"
--   4. "Visa por contrato" → mezcla SEO + precisión legal moderna
--   5. URL cruda del portal → texto descriptivo institucional
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

UPDATE articles
SET content = REPLACE(
  REPLACE(
    REPLACE(
      REPLACE(
        REPLACE(
          content,
          -- Fix 1: "no requiere abogado ni intermediario" → matiz casos complejos
          'Es el primer paso para regularizar una situación migratoria irregular y no requiere abogado ni intermediario.',
          'Es el primer paso para regularizar una situación migratoria irregular. La autodenuncia puede realizarse directamente por la persona interesada y, en muchos casos, no requiere abogado ni intermediarios. Sin embargo, situaciones complejas —como procesos de expulsión, antecedentes penales o solicitudes especiales— pueden requerir asesoría migratoria profesional.'
        ),
        -- Fix 2: pasaporte → agregar dependencia del criterio de la autoridad
        '(o en su defecto, cédula de identidad de tu país). Si está vencido, consúltalo directamente con la PDI.',
        '(o en su defecto, cédula de identidad de tu país). Si está vencido, consúltalo directamente con la PDI — la aceptación de documentos alternativos depende del criterio de la autoridad.'
      ),
      -- Fix 3: biometría — "obligatorio para todos" → "habitualmente requerido"
      'Este proceso es obligatorio para todos los trámites migratorios en Chile.',
      'Este proceso es habitualmente requerido en procedimientos migratorios de regularización y residencia.'
    ),
    -- Fix 4: terminología moderna — mezcla SEO + precisión legal
    '>Visa por contrato de trabajo</a>',
    '>Residencia temporal por motivos laborales (visa por contrato de trabajo)</a>'
  ),
  -- Fix 5: URL cruda del portal → texto institucional descriptivo
  '>tramitesmigratorios.interior.gob.cl</a>',
  '>Portal de Trámites Migratorios del SERMIG</a>'
)
WHERE slug = 'autodenuncia/pdi-paso-a-paso';

-- Verificación
SELECT slug, updated_at
FROM articles
WHERE slug = 'autodenuncia/pdi-paso-a-paso';
