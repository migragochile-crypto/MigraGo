-- ============================================================
-- MigraciónChile — Seed 059: YMYL corrections v29
-- Cluster vivir-en-chile — primera corrección YMYL del cluster
-- Artículos corregidos:
--   1. vivir-en-chile (hub): acceso salud hedgeado, licencia "90 días"
--      eliminado, residencia fiscal consistente con sub-artículo
--   2. vivir-en-chile/trabajo-contrato: comprobante "habilita" → hedgeado
--      en tabla de permisos y en FAQ
--   3. vivir-en-chile/traer-familia: comprobante "habilita" → hedgeado
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

-- ============================================================
-- 1. vivir-en-chile (hub) — 3 correcciones
-- ============================================================

UPDATE articles
SET content = REPLACE(
  REPLACE(
    REPLACE(
      content,

      -- Fix 1: acceso salud — "tienes acceso a ambos" (absoluto sin gradación)
      'Como extranjero con visa vigente o en trámite tienes acceso a ambos.',
      'Como extranjero, el nivel de acceso varía según tu situación migratoria: con el comprobante de trámite puedes acceder a urgencias en hospitales públicos; con cédula vigente puedes afiliarte formalmente a Fonasa o contratar una Isapre. Ver guía completa en <a href="/vivir-en-chile/sistema-salud">sistema de salud en Chile</a>.'
    ),

    -- Fix 2: licencia de conducir — "(hasta 90 días)" (absolutismo de plazo, depende de la nacionalidad)
    'puedes usarla mientras seas turista (hasta 90 días)',
    'puedes usarla durante el período de tu permiso de turismo'
  ),

  -- Fix 3: residencia fiscal — "eres considerado residente fiscal" (automático, incorrecto)
  --   El sub-artículo impuestos-extranjero dice correctamente que el criterio NO es automático
  'si llevas más de 6 meses en Chile en un año calendario, eres considerado residente fiscal y debes tributar por tus ingresos globales (incluyendo los del extranjero).',
  'si tienes domicilio en Chile, el SII puede considerarte residente tributario y exigir declaración sobre ingresos de fuente global. El criterio no se define únicamente por el número de días. Consulta la <a href="/vivir-en-chile/impuestos-extranjero">guía de impuestos para extranjeros</a> y, si tienes ingresos del exterior, asesórate con un contador.'
)
WHERE slug = 'vivir-en-chile';

-- ============================================================
-- 2. vivir-en-chile/trabajo-contrato — 2 correcciones
-- ============================================================

-- Fix 1: tabla de permisos — "habilita a trabajar" (absoluto)
UPDATE articles
SET content = REPLACE(
  content,
  'el comprobante habilita a trabajar mientras se resuelve la visa',
  'el comprobante puede habilitar a trabajar mientras se resuelve la visa'
)
WHERE slug = 'vivir-en-chile/trabajo-contrato';

-- Fix 2: FAQ — "te habilita para trabajar legalmente" (absoluto)
UPDATE articles
SET faq_items = REPLACE(
  faq_items::text,
  '"answer": "Sí. El comprobante de solicitud activa del trámite migratorio te habilita para trabajar legalmente. Muchos empleadores no están familiarizados con esto; si es el caso, puedes mostrarles el artículo de la Ley 21.325 que lo establece."',
  '"answer": "El comprobante de solicitud activa del trámite migratorio puede habilitar para trabajar, de acuerdo con la Ley 21.325. En la práctica, algunos empleadores no conocen esto — puedes mostrarles la ley, aunque la aceptación puede variar según el empleador."'
)::jsonb
WHERE slug = 'vivir-en-chile/trabajo-contrato';

-- ============================================================
-- 3. vivir-en-chile/traer-familia — 1 corrección
-- ============================================================

UPDATE articles
SET content = REPLACE(
  content,
  'El comprobante de trámite activo los habilita para permanecer mientras se resuelve la solicitud.',
  'El comprobante de trámite activo puede habilitarlos para permanecer durante la tramitación.'
)
WHERE slug = 'vivir-en-chile/traer-familia';

-- ============================================================
-- Verificación
-- ============================================================
SELECT slug, updated_at
FROM articles
WHERE slug IN (
  'vivir-en-chile',
  'vivir-en-chile/trabajo-contrato',
  'vivir-en-chile/traer-familia'
)
ORDER BY slug;
