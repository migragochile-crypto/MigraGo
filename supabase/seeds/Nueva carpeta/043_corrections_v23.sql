-- ============================================================
-- MigraciónChile — Seed 043: correcciones de calidad v23
-- problemas/sin-respuesta-sermig (3 content + 1 FAQ)
-- problemas/visa-vencida         (3 content + 1 FAQ)
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

-- ============================================================
-- 1a. problemas/sin-respuesta-sermig — content (3 REPLACEs)
-- ============================================================

UPDATE articles
SET content = REPLACE(
  REPLACE(
    REPLACE(
      content,
      -- Fix 1 (innermost): "los tiempos reales son:" — presenta rangos como referencia fija
      'En la práctica, los tiempos reales son:',
      'En la práctica, los tiempos reales aproximados han sido, como referencia orientativa:'
    ),
    -- Fix 2: URL cruda como anchor text (termina con dos puntos)
    '>tramitesmigratorios.interior.gob.cl</a>:',
    '>Portal de Trámites Migratorios del SERMIG</a>:'
  ),
  -- Fix 3 (outermost): "Hay un plazo de 10 días hábiles para responder" — plazo absoluto
  'Hay un plazo de 10 días hábiles para responder.',
  'Generalmente hay un plazo para responder; verifica el plazo indicado en la notificación del SERMIG.'
)
WHERE slug = 'problemas/sin-respuesta-sermig';

-- ============================================================
-- 1b. problemas/sin-respuesta-sermig — faq_items (1 REPLACE)
-- ============================================================

UPDATE articles
SET faq_items = REPLACE(
  faq_items::text,
  -- fq4: honorarios específicos en pesos — dato cambiante
  '"answer": "Sí. Los abogados migratorios cobran desde $50.000 hasta $300.000 CLP por caso según complejidad. Si no tienes recursos, la Corporación de Asistencia Judicial (CAJ) ofrece asesoría gratuita o de bajo costo."',
  '"answer": "Sí. Los honorarios varían según el profesional y la complejidad del caso; consulta directamente con el abogado o bufete. Si no tienes recursos, la Corporación de Asistencia Judicial (CAJ) ofrece asesoría gratuita o de bajo costo."'
)::jsonb
WHERE slug = 'problemas/sin-respuesta-sermig';

-- ============================================================
-- 2a. problemas/visa-vencida — content (3 REPLACEs)
-- ============================================================

UPDATE articles
SET content = REPLACE(
  REPLACE(
    REPLACE(
      content,
      -- Fix 1 (innermost): "debes hacer la autodenuncia" — imperativo absoluto
      'debes hacer la <a href="/autodenuncia">autodenuncia migratoria</a> en la PDI y luego solicitar una visa temporaria.',
      'en muchos casos deberás completar la <a href="/autodenuncia">autodenuncia migratoria</a> en la PDI y luego solicitar una visa temporaria.'
    ),
    -- Fix 2: "suspende cualquier procedimiento de expulsión y te habilita" — absolutos
    'A cambio, recibes el <strong>Certificado de Autodenuncia</strong> que suspende cualquier procedimiento de expulsión y te habilita para tramitar una visa temporaria.',
    'A cambio, en la mayoría de los casos recibes el <strong>Certificado de Autodenuncia</strong>, que puede contribuir a la suspensión de procedimientos de expulsión y habilitar para tramitar una visa temporaria.'
  ),
  -- Fix 3 (outermost): "ya puedes retomar la actividad laboral" — absoluto
  'una vez que presentes la autodenuncia y tengas el comprobante de solicitud de visa, ya puedes retomar la actividad laboral.',
  'una vez que presentes la autodenuncia y obtengas el comprobante de solicitud de visa, este puede habilitar la actividad laboral en la medida en que incluya la autorización correspondiente.'
)
WHERE slug = 'problemas/visa-vencida';

-- ============================================================
-- 2b. problemas/visa-vencida — faq_items (1 REPLACE)
-- ============================================================

UPDATE articles
SET faq_items = REPLACE(
  faq_items::text,
  -- fq1: "se suspende cualquier procedimiento de expulsión" — absoluto
  '"answer": "No. Al presentarte a la autodenuncia, se suspende cualquier procedimiento de expulsión. La PDI no te detiene por presentarte voluntariamente — es exactamente el mecanismo diseñado para esto."',
  '"answer": "En general, al presentarte a la autodenuncia voluntariamente, el proceso puede contribuir a la suspensión de procedimientos de expulsión. La PDI no suele detener a quienes se presentan voluntariamente, aunque la situación puede variar según el caso y los antecedentes de la persona."'
)::jsonb
WHERE slug = 'problemas/visa-vencida';

-- ============================================================
-- Verificación
-- ============================================================
SELECT slug, updated_at
FROM articles
WHERE slug IN (
  'problemas/sin-respuesta-sermig',
  'problemas/visa-vencida'
)
ORDER BY slug;
