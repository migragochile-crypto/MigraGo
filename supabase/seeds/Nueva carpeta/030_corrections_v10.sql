-- ============================================================
-- MigraciónChile — Seed 030: correcciones de calidad v10
-- Ajustes finos en autodenuncia/tiempos-reales
--   1+2. "Ley 21.325 / 30 días hábiles" → plazos de referencia
--         + disclaimer editorial antes de la tabla
--   3.   RUT provisorio → "en ciertos casos"
--   4.   "Lo que no puedes" → formulación positiva sin absoluto
--   5.   "10 días hábiles subsanación" → plazo de la notificación
--   6.   "6 meses" como criterio oficial → experiencia práctica
--   7.   URL cruda del portal → texto institucional descriptivo
-- Ejecutar en: Supabase Dashboard → SQL Editor
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
              -- Fix 1+2: elimina cita a "Ley 21.325 / 30 días hábiles" como garantía
              --          e inserta disclaimer editorial antes de la tabla
              'La Ley 21.325 establece que el SERMIG debe resolver las solicitudes de visa en un plazo de <strong>30 días hábiles</strong>. En la práctica, este plazo raramente se cumple cuando hay alta demanda. Los tiempos reales históricos han sido:',
              'La normativa migratoria contempla plazos administrativos de referencia para la tramitación de solicitudes. Sin embargo, en la práctica los tiempos reales pueden extenderse considerablemente dependiendo de la carga del sistema, la categoría migratoria, la complejidad del caso y la necesidad de subsanar antecedentes.</p><p><em>Los siguientes rangos corresponden a estimaciones editoriales basadas en experiencias reportadas por usuarios y tiempos de tramitación observados durante 2025-2026. No constituyen plazos oficiales garantizados por el SERMIG.</em>'
            ),
            -- Fix 3: RUT provisorio — quitar garantía implícita
            '<li>Solicitar el RUT provisorio en el SII.</li>',
            '<li>En ciertos casos, utilizar el comprobante para solicitar un RUT provisorio en el SII (consulta disponibilidad con el SII según tu categoría).</li>'
          ),
          -- Fix 4: "Lo que no puedes" → formulación menos absoluta
          'Lo que <strong>no puedes</strong> hacer con el comprobante de trámite: obtener la cédula de identidad para extranjeros (requiere la visa aprobada).',
          'La obtención de la cédula de identidad para extranjeros normalmente requiere una residencia aprobada y la documentación migratoria correspondiente.'
        ),
        -- Fix 5: plazo subsanación — eliminar "10 días hábiles" como absoluto
        'Tienes un plazo para subsanar (normalmente 10 días hábiles desde la notificación).',
        'Tienes un plazo para subsanar, generalmente dentro del período indicado en la notificación del SERMIG.'
      ),
      -- Fix 6: "más de 6 meses" — criterio editorial, no oficial
      'Si llevas más de <strong>6 meses</strong> sin resolución y el estado sigue como "En revisión" sin observaciones, puedes presentar',
      'Muchas personas consideran razonable solicitar información adicional si llevan un período prolongado sin resolución y el estado sigue como "En revisión" sin observaciones. En ese caso, puedes presentar'
    ),
    -- Fix 7: URL cruda del portal → texto institucional descriptivo
    '>tramitesmigratorios.interior.gob.cl</a>',
    '>Portal de Trámites Migratorios del SERMIG</a>'
  )
)
WHERE slug = 'autodenuncia/tiempos-reales';

-- Verificación
SELECT slug, updated_at
FROM articles
WHERE slug = 'autodenuncia/tiempos-reales';
