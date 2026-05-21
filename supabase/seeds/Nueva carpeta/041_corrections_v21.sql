-- ============================================================
-- MigraciónChile — Seed 041: correcciones de calidad v21
-- problemas (hub)         (3 content + 2 FAQ)
-- problemas/antecedentes-penales (1 content + 0 FAQ)
-- problemas/expulsion     (1 content + 0 FAQ)
-- problemas/multa-migracion (1 content + 0 FAQ)
-- Nota: problemas/derechos-migrante no requiere correcciones —
--   es un artículo de derechos legales bien formulado.
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

-- ============================================================
-- 1a. problemas (hub) — content (3 REPLACEs)
-- ============================================================

UPDATE articles
SET content = REPLACE(
  REPLACE(
    REPLACE(
      content,
      -- Fix 1 (innermost): "La solución es la autodenuncia" — absoluto
      'La solución es la <a href="/autodenuncia">autodenuncia migratoria</a> en la PDI: te presentas voluntariamente, pagas la multa correspondiente y obtienes el Certificado de Autodenuncia para regularizarte.',
      'Un mecanismo disponible es la <a href="/autodenuncia">autodenuncia migratoria</a> en la PDI: presentarte voluntariamente, pagar la multa correspondiente y obtener el Certificado de Autodenuncia para iniciar el proceso de regularización.'
    ),
    -- Fix 2: "cada día adicional aumenta la multa" — absoluto
    'La irregularidad no se resuelve sola con el tiempo: cada día adicional aumenta la multa y puede complicar futuras solicitudes.',
    'La irregularidad no se resuelve sola con el tiempo: cada día adicional puede aumentar la multa y complicar futuras solicitudes.'
  ),
  -- Fix 3 (outermost): "30 días hábiles... 60–180 días. Si llevas más de 6 meses" — plazos absolutos
  'El SERMIG tiene un plazo legal de 30 días hábiles para resolver solicitudes. En la práctica, los tiempos son mucho mayores (60–180 días). Si llevas más de 6 meses sin respuesta:',
  'El SERMIG tiene plazos legales de referencia para resolver solicitudes. En la práctica, los tiempos reales son habitualmente superiores y pueden variar considerablemente. Si llevas un período prolongado sin respuesta:'
)
WHERE slug = 'problemas';

-- ============================================================
-- 1b. problemas (hub) — faq_items (2 REPLACEs)
-- ============================================================

UPDATE articles
SET faq_items = REPLACE(
  REPLACE(
    faq_items::text,
    -- fq1 (innermost): "ve a la PDI para la autodenuncia" — imperativo absoluto
    '"answer": "Identifica el tipo de problema: si es visa vencida, ve a la PDI para la autodenuncia. Si es un rechazo del SERMIG, revisa los plazos para interponer recurso (5 días hábiles desde la notificación). Si hay detención, solicita asistencia consular y contacta al Servicio Jesuita a Migrantes."',
    '"answer": "Identifica el tipo de problema: si es visa vencida, considera la autodenuncia migratoria en la PDI como una de las vías disponibles. Si es un rechazo del SERMIG, revisa el plazo indicado en la notificación para interponer recurso. Si hay detención, solicita asistencia consular y contacta al Servicio Jesuita a Migrantes."'
  ),
  -- fq2 (outermost): "La vía para regularizarse es" — absoluto
  '"answer": "La simple irregularidad por visa vencida no es causal de expulsión bajo la Ley 21.325. La vía para regularizarse es la autodenuncia voluntaria en la PDI. La expulsión aplica para causales más graves como ingreso clandestino, uso de documentos falsos o condenas penales."',
  '"answer": "La simple irregularidad por visa vencida generalmente no es causal de expulsión bajo la Ley 21.325. Una de las vías disponibles para regularizarse es la autodenuncia voluntaria en la PDI. La expulsión aplica para causales más graves como ingreso clandestino, uso de documentos falsos o condenas penales."'
)::jsonb
WHERE slug = 'problemas';

-- ============================================================
-- 2. problemas/antecedentes-penales — content (1 REPLACE)
-- ============================================================

UPDATE articles
SET content = REPLACE(
  content,
  -- Fix 1: "no puede tener más de 90 días de antigüedad" — plazo absoluto
  'generalmente no puede tener más de 90 días de antigüedad al momento de presentarlo.',
  'generalmente se requiere que sea reciente conforme a los criterios del SERMIG al momento de la presentación.'
)
WHERE slug = 'problemas/antecedentes-penales';

-- ============================================================
-- 3. problemas/expulsion — content (1 REPLACE)
-- ============================================================

UPDATE articles
SET content = REPLACE(
  content,
  -- Fix 1: prohibición reingreso — rangos específicos absolutizados
  'Para irregularidad grave: entre 1 y 5 años de prohibición.',
  'Los plazos varían según la gravedad de la causa y lo establecido en la resolución. Como referencia, pueden ir desde períodos acotados'
)
WHERE slug = 'problemas/expulsion';

-- ============================================================
-- 4. problemas/multa-migracion — content (1 REPLACE)
-- ============================================================

UPDATE articles
SET content = REPLACE(
  content,
  -- Fix 1: "siempre tratada más favorablemente" — absoluto
  'La autodenuncia voluntaria es siempre tratada más favorablemente que la detección en un operativo.',
  'En general, la autodenuncia voluntaria es tratada más favorablemente que la detección en un operativo.'
)
WHERE slug = 'problemas/multa-migracion';

-- ============================================================
-- Verificación
-- ============================================================
SELECT slug, updated_at
FROM articles
WHERE slug IN (
  'problemas',
  'problemas/antecedentes-penales',
  'problemas/expulsion',
  'problemas/multa-migracion'
)
ORDER BY slug;
