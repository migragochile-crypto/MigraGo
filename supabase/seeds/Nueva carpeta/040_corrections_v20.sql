-- ============================================================
-- MigraciónChile — Seed 040: correcciones de calidad v20
-- visa-temporaria/turismo-extension (2 content + 2 FAQ)
-- visa-temporaria/cambio-categoria  (4 content + 2 FAQ)
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

-- ============================================================
-- 1a. visa-temporaria/turismo-extension — content (2 REPLACEs)
-- ============================================================

UPDATE articles
SET content = REPLACE(
  REPLACE(
    content,
    -- Fix 1 (innermost): "Chile permite extender una vez... 180 días" — absoluto
    'Sí. Chile permite extender el permiso de turismo una vez, llegando a un máximo de 180 días en el año.',
    'En general, Chile permite extender el permiso de turismo una vez, llegando a un máximo de 180 días en el año, aunque las condiciones son discrecionales y sujetas a la evaluación de la autoridad.'
  ),
  -- Fix 2 (outermost): "desde 2023, Venezuela requiere visa consular previa" — dato específico cambiante
  'desde 2023, <strong>Venezuela</strong> requiere visa consular previa.',
  '<strong>Venezuela</strong> ha estado sujeta a requisitos de visa que pueden variar; verifica el estado actualizado en el SERMIG o el consulado chileno correspondiente antes de planificar el viaje.'
)
WHERE slug = 'visa-temporaria/turismo-extension';

-- ============================================================
-- 1b. visa-temporaria/turismo-extension — faq_items (2 REPLACEs)
-- ============================================================

UPDATE articles
SET faq_items = REPLACE(
  REPLACE(
    faq_items::text,
    -- fq1 (innermost): "No existe proceso online" — absoluto que puede cambiar
    '"answer": "No. La extensión de turismo es un trámite presencial ante la PDI o el SERMIG. No existe proceso online para este trámite específico."',
    '"answer": "En general, la extensión de turismo se realiza como trámite presencial ante la PDI o el SERMIG. Verifica la disponibilidad de modalidades digitales en el sitio oficial del SERMIG al momento de realizar el trámite."'
  ),
  -- fq2 (outermost): "El comprobante te protege" — absoluto
  '"answer": "Sí. Puedes iniciar el trámite de visa temporaria desde Chile mientras tu permiso de turismo está vigente. El comprobante de la solicitud te protege cuando venza el turismo, permitiéndote permanecer mientras se resuelve."',
  '"answer": "Sí. Puedes iniciar el trámite de visa temporaria desde Chile mientras tu permiso de turismo está vigente. El comprobante de la solicitud puede habilitar tu permanencia cuando venza el turismo, mientras se resuelve la solicitud."'
)::jsonb
WHERE slug = 'visa-temporaria/turismo-extension';

-- ============================================================
-- 2a. visa-temporaria/cambio-categoria — content (4 REPLACEs)
-- ============================================================

UPDATE articles
SET content = REPLACE(
  REPLACE(
    REPLACE(
      REPLACE(
        content,
        -- Fix 1 (innermost): "no puedes hacer el cambio directamente" — absoluto
        'si tu permiso de turismo o visa ya está vencido, no puedes hacer el cambio directamente',
        'si tu permiso de turismo o visa ya está vencido, en muchos casos no es posible hacer el cambio directamente'
      ),
      -- Fix 2: URL cruda como anchor text (paso 1)
      '>tramitesmigratorios.interior.gob.cl</a>.',
      '>Portal de Trámites Migratorios del SERMIG</a>.'
    ),
    -- Fix 3: comprobante "te mantiene en situación migratoria regular" — absoluto
    'El comprobante de solicitud activa te mantiene en situación migratoria regular mientras se resuelve.',
    'El comprobante de solicitud activo puede habilitar tu permanencia regular mientras se resuelve.'
  ),
  -- Fix 4 (outermost): "El plazo legal es 30 días hábiles; el real puede ser 2–5 meses"
  'El plazo legal es 30 días hábiles; el real puede ser 2–5 meses.',
  'Los plazos son de referencia; en la práctica los tiempos de tramitación pueden variar considerablemente.'
)
WHERE slug = 'visa-temporaria/cambio-categoria';

-- ============================================================
-- 2b. visa-temporaria/cambio-categoria — faq_items (2 REPLACEs)
-- ============================================================

UPDATE articles
SET faq_items = REPLACE(
  REPLACE(
    faq_items::text,
    -- fq1 (innermost): "la única opción es la autodenuncia" — absoluto
    '"answer": "No hay un plazo específico para presentar la solicitud, pero debes hacerlo antes de que venza tu permiso de turismo o visa actual. Si ya vencieron, la única opción es la autodenuncia. Por eso conviene actuar apenas tengas los documentos reunidos, sin esperar al límite."',
    '"answer": "No hay un plazo específico para presentar la solicitud, pero idealmente debes hacerlo antes de que venza tu permiso de turismo o visa actual. Si ya vencieron, en muchos casos el proceso de autodenuncia será el camino a seguir. Por eso conviene actuar apenas tengas los documentos reunidos, sin esperar al límite."'
  ),
  -- fq2 (outermost): "ya no estás ligado" + "Puedes trabajar para cualquier empleador" + comprobante "te permite"
  '"answer": "Sí. Una vez que el SERMIG resuelve favorablemente el cambio a una visa por vínculo familiar, ya no estás ligado al empleador anterior. Puedes trabajar para cualquier empleador con la nueva visa. Durante el período de tramitación, el comprobante activo también te permite trabajar."',
  '"answer": "Una vez aprobado el cambio de categoría, las condiciones de autorización laboral corresponden a la nueva visa. En el caso de visa por vínculo familiar, en general no existe restricción de empleador, aunque se recomienda verificar las condiciones con el SERMIG. Durante el período de tramitación, el comprobante activo puede habilitar actividades laborales cuando incluye la autorización correspondiente."'
)::jsonb
WHERE slug = 'visa-temporaria/cambio-categoria';

-- ============================================================
-- Verificación
-- ============================================================
SELECT slug, updated_at
FROM articles
WHERE slug IN (
  'visa-temporaria/turismo-extension',
  'visa-temporaria/cambio-categoria'
)
ORDER BY slug;
