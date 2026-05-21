-- ============================================================
-- MigraciónChile — Seed 031: correcciones de calidad v11
-- Reemplaza seed 030 (que tenía un REPLACE() sin argumentos)
-- + correcciones de autodenuncia/sermig-vs-pdi
--
-- autodenuncia/tiempos-reales (6 fixes):
--   1+2. "Ley 21.325 / 30 días hábiles" → plazos de referencia
--         + disclaimer editorial antes de la tabla
--   3.   RUT provisorio → "en ciertos casos"
--   4.   "Lo que no puedes" → formulación sin absoluto
--   5.   "10 días hábiles subsanación" → plazo de la notificación
--   6.   "6 meses" criterio editorial, no oficial
--   7.   URL cruda del portal → texto institucional
--
-- autodenuncia/sermig-vs-pdi (6 fixes):
--   A.   PDI "primera etapa del proceso de regularización" → más preciso
--   B.   SERMIG "segunda etapa" → contexto específico de autodenuncia
--   C.   "Sin certificado el SERMIG no puede recibir" → relativo
--   D.   "cobra la multa" → gestión del procedimiento
--   E.   "visa temporaria" → residencia temporal + SEO
--   F.   URL cruda del portal → texto institucional
--
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

-- ============================================================
-- 1. autodenuncia/tiempos-reales
-- ============================================================

UPDATE articles
SET content = REPLACE(
  REPLACE(
    REPLACE(
      REPLACE(
        REPLACE(
          REPLACE(
            content,
            -- Fix 1+2: elimina "Ley 21.325 / 30 días hábiles" como garantía
            --          e inserta disclaimer editorial (truco: </p><p> en la sustitución)
            'La Ley 21.325 establece que el SERMIG debe resolver las solicitudes de visa en un plazo de <strong>30 días hábiles</strong>. En la práctica, este plazo raramente se cumple cuando hay alta demanda. Los tiempos reales históricos han sido:',
            'La normativa migratoria contempla plazos administrativos de referencia para la tramitación de solicitudes. Sin embargo, en la práctica los tiempos reales pueden extenderse considerablemente dependiendo de la carga del sistema, la categoría migratoria, la complejidad del caso y la necesidad de subsanar antecedentes.</p><p><em>Los siguientes rangos corresponden a estimaciones editoriales basadas en experiencias reportadas por usuarios y tiempos de tramitación observados durante 2025-2026. No constituyen plazos oficiales garantizados por el SERMIG.</em>'
          ),
          -- Fix 3: RUT provisorio — quitar garantía implícita
          '<li>Solicitar el RUT provisorio en el SII.</li>',
          '<li>En ciertos casos, utilizar el comprobante para solicitar un RUT provisorio en el SII (consulta disponibilidad con el SII según tu categoría).</li>'
        ),
        -- Fix 4: "Lo que no puedes" → formulación positiva sin absoluto
        'Lo que <strong>no puedes</strong> hacer con el comprobante de trámite: obtener la cédula de identidad para extranjeros (requiere la visa aprobada).',
        'La obtención de la cédula de identidad para extranjeros normalmente requiere una residencia aprobada y la documentación migratoria correspondiente.'
      ),
      -- Fix 5: plazo subsanación — eliminar "10 días hábiles" como absoluto
      'Tienes un plazo para subsanar (normalmente 10 días hábiles desde la notificación).',
      'Tienes un plazo para subsanar, generalmente dentro del período indicado en la notificación del SERMIG.'
    ),
    -- Fix 6: "6 meses" — criterio editorial, no oficial
    'Si llevas más de <strong>6 meses</strong> sin resolución y el estado sigue como "En revisión" sin observaciones, puedes presentar',
    'Muchas personas consideran razonable solicitar información adicional si llevan un período prolongado sin resolución y el estado sigue como "En revisión" sin observaciones. En ese caso, puedes presentar'
  ),
  -- Fix 7: URL cruda → texto institucional descriptivo
  '>tramitesmigratorios.interior.gob.cl</a>',
  '>Portal de Trámites Migratorios del SERMIG</a>'
)
WHERE slug = 'autodenuncia/tiempos-reales';

-- ============================================================
-- 2. autodenuncia/sermig-vs-pdi
-- ============================================================

UPDATE articles
SET content = REPLACE(
  REPLACE(
    REPLACE(
      REPLACE(
        REPLACE(
          REPLACE(
            content,
            -- Fix A: PDI "primera etapa del proceso de regularización" → preciso institucionalmente
            'La PDI actúa en la <strong>primera etapa del proceso de regularización</strong>: cuando un extranjero en situación irregular se presenta voluntariamente para declarar su situación.',
            'La PDI interviene principalmente en funciones de control migratorio, fiscalización y registro de antecedentes migratorios. En casos de personas en situación irregular, puede participar en etapas iniciales como la autodenuncia y el registro biométrico.'
          ),
          -- Fix B: SERMIG "segunda etapa" → acotado al flujo de autodenuncia
          'El SERMIG actúa en la <strong>segunda etapa</strong>: recibe y resuelve las solicitudes de visa una vez que el extranjero ya tiene el Certificado de Autodenuncia emitido por la PDI.',
          'En procesos de regularización posteriores a una autodenuncia, el SERMIG recibe y evalúa las solicitudes de residencia temporal (visa temporaria) una vez que el extranjero cuenta con el Certificado de Autodenuncia. Fuera de este flujo, el SERMIG también gestiona residencias y permisos para personas que ya cuentan con permiso vigente.'
        ),
        -- Fix C: "Sin certificado el SERMIG no puede recibir" → relativo, no absoluto
        'Sin el Certificado de Autodenuncia, el SERMIG no puede recibir tu solicitud de visa estando en situación irregular.',
        'En muchos casos de permanencia irregular, el Certificado de Autodenuncia forma parte de los antecedentes requeridos para iniciar procesos de regularización ante el SERMIG. Los requisitos específicos pueden variar según la categoría migratoria y la situación de la persona.'
      ),
      -- Fix D: "cobra la multa" → gestión del procedimiento
      'cobra la multa, emite el Certificado de Autodenuncia',
      'gestiona el procedimiento asociado a la infracción migratoria y el pago correspondiente, emite el Certificado de Autodenuncia'
    ),
    -- Fix E: "visa temporaria" en resumen → mezcla SEO + precisión legal
    'Solicitud de visa temporaria',
    'Solicitud de residencia temporal (visa temporaria)'
  ),
  -- Fix F: URL cruda → texto institucional descriptivo
  '>tramitesmigratorios.interior.gob.cl</a>',
  '>Portal de Trámites Migratorios del SERMIG</a>'
)
WHERE slug = 'autodenuncia/sermig-vs-pdi';

-- ============================================================
-- Verificación
-- ============================================================
SELECT slug, updated_at
FROM articles
WHERE slug IN (
  'autodenuncia/tiempos-reales',
  'autodenuncia/sermig-vs-pdi'
)
ORDER BY slug;
