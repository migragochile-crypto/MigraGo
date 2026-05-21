-- ============================================================
-- MigraciónChile — Seed 062: YMYL corrections v32
-- vivir-en-chile/homologacion-titulos — 2 correcciones
-- Artículo sin correcciones previas (creado en seed 007).
-- Correcciones:
--   1. content: ejemplos de "profesiones no reguladas" — contador y
--      psicólogo listados sin matiz; algunas especialidades (contador
--      auditor, psicólogo clínico con cobertura) tienen requisitos
--      adicionales según la institución o contexto.
--   2. howto_steps: step 6 afirma que "Con el certificado puedes
--      ejercer legalmente" como absoluto — omite que pueden existir
--      requisitos adicionales de colegiatura o registro profesional.
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

-- ============================================================
-- 1. content — profesiones no reguladas sin matiz de especialidades
-- ============================================================

UPDATE articles
SET content = REPLACE(
  content,
  'Para la mayoría de las demás profesiones <strong>no es obligatoria</strong> la homologación: puedes trabajar como economista, contador, diseñador, programador, psicólogo, etc., con tu título extranjero. El empleador puede aceptarlo directamente.',
  'Para la mayoría de las demás profesiones <strong>no es obligatoria</strong> la homologación: en general puedes trabajar como economista, diseñador, programador u otras profesiones no reguladas con tu título extranjero; el empleador lo valora directamente. Para roles más específicos — como contador auditor habilitado para emitir informes de auditoría, o psicólogo en contextos con cobertura de seguro — algunas instituciones o empleadores pueden tener requisitos adicionales. Verifica con el empleador o la institución antes de asumir que no se requiere ningún trámite.'
)
WHERE slug = 'vivir-en-chile/homologacion-titulos';

-- ============================================================
-- 2. howto_steps — step 6: "Con el certificado puedes ejercer legalmente"
-- ============================================================

UPDATE articles
SET howto_steps = REPLACE(
  howto_steps::text,
  '"text": "Los plazos varían: desde 3 meses (casos simples) hasta más de un año (Universidad de Chile, EUNACOM). Con el certificado puedes ejercer legalmente."',
  '"text": "Los plazos varían: desde 3 meses (casos simples) hasta más de un año (Universidad de Chile, EUNACOM). Con el certificado de reconocimiento, y cumplidos los eventuales requisitos adicionales del organismo o colegio profesional correspondiente, puedes ejercer en Chile conforme a la normativa de tu profesión."'
)::jsonb
WHERE slug = 'vivir-en-chile/homologacion-titulos';

-- ============================================================
-- Verificación
-- ============================================================
SELECT slug, updated_at
FROM articles
WHERE slug = 'vivir-en-chile/homologacion-titulos';
