-- ============================================================
-- MigraciónChile — Seed 060: YMYL corrections v30
-- Artículos corregidos:
--   1. vivir-en-chile/rut-extranjero: elimina referencia a Cuenta RUT
--      BancoEstado con RUT provisorio (contradice cuenta-bancaria FAQ)
--   2. haiti (hub): FAQ hijo nacido en Chile — hedgeado; el artículo
--      hijo-nacido-chile dice que el ius soli aplica independientemente
--      del estatus migratorio, mientras este FAQ condicionaba por estatus
--      legal de los padres. Ambas posiciones tienen base en interpretaciones
--      divergentes de la ley; el artículo especializado es la fuente, aquí
--      se remite a él y se elimina la afirmación absoluta alternativa.
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

-- ============================================================
-- 1. vivir-en-chile/rut-extranjero — 1 corrección de contenido
-- ============================================================

-- Elimina "como la Cuenta RUT de BancoEstado" — contradice cuenta-bancaria
-- que dice explícitamente que la Cuenta RUT requiere cédula, no RUT provisorio
UPDATE articles
SET content = REPLACE(
  content,
  'firmar contrato de trabajo, emitir boletas de honorarios, y en algunos casos abrir cuentas bancarias básicas como la Cuenta RUT de BancoEstado.',
  'firmar contrato de trabajo, emitir boletas de honorarios, y en algunos servicios financieros más flexibles (como ciertas fintechs). Para la Cuenta RUT de BancoEstado y la mayoría de cuentas bancarias se requiere la cédula de identidad para extranjeros vigente — ver <a href="/vivir-en-chile/cuenta-bancaria">guía de cuenta bancaria</a>.'
)
WHERE slug = 'vivir-en-chile/rut-extranjero';

-- ============================================================
-- 2. haiti (hub) — 1 corrección de FAQ
-- ============================================================

-- FAQ: afirmaba que la ciudadanía de un hijo nacido en Chile dependía
-- del estatus legal de los padres — esto contradice el artículo
-- nacionalizacion/hijo-nacido-chile. El punto legal es complejo y ha
-- tenido interpretaciones divergentes; se remite al artículo dedicado.
UPDATE articles
SET faq_items = REPLACE(
  faq_items::text,
  '"answer": "Sí, si al menos uno de los padres tenía residencia legal en Chile al momento del nacimiento. Si ambos padres estaban en situación irregular, el menor puede solicitar la nacionalidad al cumplir 18 años."',
  '"answer": "La ciudadanía de los hijos nacidos en Chile de padres extranjeros está regulada por el principio de ius soli de la Constitución. La situación concreta puede depender de las condiciones de ingreso y residencia de los padres al momento del nacimiento — es un punto que ha tenido interpretaciones divergentes. Consulta la guía completa en <a href=\"/nacionalizacion/hijo-nacido-chile\">hijo de extranjeros nacido en Chile</a> o con el SERMIG para tu caso específico."'
)::jsonb
WHERE slug = 'haiti';

-- ============================================================
-- Verificación
-- ============================================================
SELECT slug, updated_at
FROM articles
WHERE slug IN (
  'vivir-en-chile/rut-extranjero',
  'haiti'
)
ORDER BY slug;
