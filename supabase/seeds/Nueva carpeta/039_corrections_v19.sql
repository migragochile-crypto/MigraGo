-- ============================================================
-- MigraciónChile — Seed 039: correcciones de calidad v19
-- visa-temporaria/razones-humanitarias (4 content + 1 FAQ)
-- visa-temporaria/renovacion           (4 content + 1 FAQ)
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

-- ============================================================
-- 1a. visa-temporaria/razones-humanitarias — content (4 REPLACEs)
-- ============================================================

UPDATE articles
SET content = REPLACE(
  REPLACE(
    REPLACE(
      REPLACE(
        content,
        -- Fix 1 (innermost): "Departamento de Extranjería e Inmigración" — nombre desactualizado
        'Lo gestiona el Departamento de Extranjería e Inmigración con apoyo del ACNUR.',
        'Lo gestiona el SERMIG con apoyo del ACNUR.'
      ),
      -- Fix 2: URL cruda como anchor text (nota: cierra con paréntesis, no punto)
      '>tramitesmigratorios.interior.gob.cl</a>)',
      '>Portal de Trámites Migratorios del SERMIG</a>)'
    ),
    -- Fix 3: navegación exacta "Visa Temporaria → Razones Humanitarias"
    'bajo la categoría <strong>Visa Temporaria → Razones Humanitarias</strong>.',
    'en la categoría correspondiente a <strong>Razones Humanitarias</strong> conforme a las opciones disponibles en el portal.'
  ),
  -- Fix 4 (outermost): vigencia "1 año renovable" — absoluto
  'La visa humanitaria se otorga por <strong>1 año renovable</strong> mientras persistan las condiciones que la motivaron.',
  'La residencia humanitaria suele otorgarse por períodos renovables mientras persistan las condiciones que la motivaron.'
)
WHERE slug = 'visa-temporaria/razones-humanitarias';

-- ============================================================
-- 1b. visa-temporaria/razones-humanitarias — faq_items (1 REPLACE)
-- ============================================================

UPDATE articles
SET faq_items = REPLACE(
  faq_items::text,
  -- fq1: "entre 60 y 180 días hábiles en promedio" — rango específico no garantizado
  '"answer": "No hay plazos diferenciados para esta categoría. Los tiempos son similares a otras visas temporarias: entre 60 y 180 días hábiles en promedio. En casos de urgencia extrema, es posible solicitar una resolución acelerada aportando evidencia de la urgencia."',
  '"answer": "No hay plazos diferenciados garantizados para esta categoría. Los tiempos de tramitación son de referencia y pueden variar considerablemente según la carga del servicio y la complejidad del caso. En situaciones de urgencia extrema, es posible acompañar la solicitud con evidencia de la urgencia."'
)::jsonb
WHERE slug = 'visa-temporaria/razones-humanitarias';

-- ============================================================
-- 2a. visa-temporaria/renovacion — content (4 REPLACEs)
-- ============================================================

UPDATE articles
SET content = REPLACE(
  REPLACE(
    REPLACE(
      REPLACE(
        content,
        -- Fix 1 (innermost): "el comprobante activo te protege" — absoluto
        'si la visa vence mientras el trámite está en proceso, el comprobante activo te protege',
        'si la visa vence mientras el trámite está en proceso, el comprobante activo puede habilitar tu permanencia mientras se resuelve'
      ),
      -- Fix 2: antecedentes Chile "vigencia 30 días" — plazo absoluto
      '<strong>Certificado de antecedentes penales de Chile</strong> (SRCeI, vigencia 30 días).',
      '<strong>Certificado de antecedentes penales de Chile</strong> (SRCeI, vigente conforme a los requisitos del SERMIG al momento de la solicitud).'
    ),
    -- Fix 3: URL cruda como anchor text (paso 1)
    '>tramitesmigratorios.interior.gob.cl</a>.',
    '>Portal de Trámites Migratorios del SERMIG</a>.'
  ),
  -- Fix 4 (outermost): "te permite seguir en Chile y trabajando legalmente" — absoluto
  'El comprobante de trámite activo te permite seguir en Chile y trabajando legalmente mientras se resuelve la renovación.',
  'El comprobante de trámite activo puede habilitar tu permanencia y actividades laborales en Chile mientras se resuelve la renovación, en la medida en que incluya las autorizaciones correspondientes.'
)
WHERE slug = 'visa-temporaria/renovacion';

-- ============================================================
-- 2b. visa-temporaria/renovacion — faq_items (1 REPLACE)
-- ============================================================

UPDATE articles
SET faq_items = REPLACE(
  faq_items::text,
  -- fq1: "te habilita para trabajar legalmente" — absoluto
  '"answer": "Sí. El comprobante de trámite activo te habilita para trabajar legalmente en Chile mientras se resuelve la renovación. Si tu empleador pregunta, muéstrale el comprobante de solicitud vigente."',
  '"answer": "El comprobante de trámite activo puede habilitar actividades remuneradas mientras se resuelve la renovación, cuando incluye la autorización correspondiente. Si tu empleador pregunta, puedes presentarle el comprobante de solicitud vigente."'
)::jsonb
WHERE slug = 'visa-temporaria/renovacion';

-- ============================================================
-- Verificación
-- ============================================================
SELECT slug, updated_at
FROM articles
WHERE slug IN (
  'visa-temporaria/razones-humanitarias',
  'visa-temporaria/renovacion'
)
ORDER BY slug;
