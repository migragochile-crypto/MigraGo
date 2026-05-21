-- ============================================================
-- MigraciónChile — Seed 028: correcciones de calidad v8
-- Audit clúster autodenuncia — 4 artículos corregidos
--   errores-comunes : UTM 3-10 → 1-5 (CRÍTICO), pasaporte absoluto, VRD
--   pdi-paso-a-paso : comisaría absoluta × múltiple, suspensión expulsión, VRD
--   sermig-vs-pdi   : comisaría absoluta en sección de ubicaciones
--   tiempos-reales  : trabajo sin matiz, salud sin caveat
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

-- ============================================================
-- 1. autodenuncia/errores-comunes — contenido
-- ============================================================

UPDATE articles
SET content = REPLACE(
  REPLACE(
    REPLACE(
      content,
      -- Fix 1 (CRÍTICO): rango UTM erróneo 3-10 → 1-5 con disclaimer
      'el monto oscila entre 3 UTM y 10 UTM según el tiempo de irregularidad (una UTM equivale a aproximadamente $68.000 pesos en 2026).',
      'el monto puede oscilar entre 1 y 5 UTM según las circunstancias y el tiempo de irregularidad (orientativo — el monto exacto lo determina la autoridad migratoria). Una UTM equivale a aproximadamente $68.000 pesos en 2026.'
    ),
    -- Fix 2: "no puede completarse" demasiado absoluto
    'Sin pasaporte vigente, el proceso no puede completarse.',
    'Si tu pasaporte está vencido, consulta previamente con la PDI o con el consulado de tu país sobre los documentos alternativos que podrían aceptarse en tu situación específica.'
  ),
  -- Fix 3: VRD sin nota de vigencia
  '<li>Responsabilidad Democrática (VRD) si eres venezolano.</li>',
  '<li>Responsabilidad Democrática (VRD) si eres venezolano (consulta el estado vigente de esta categoría con el SERMIG, ya que sus condiciones pueden cambiar).</li>'
)
WHERE slug = 'autodenuncia/errores-comunes';

-- Fix 4: FAQ "¿Qué pasa si mi pasaporte venció?" — absoluto en answer
UPDATE articles
SET faq_items = REPLACE(
  faq_items::text,
  '"answer": "Sin pasaporte vigente el proceso de autodenuncia no puede completarse. Debes renovar el pasaporte en el consulado de tu país en Chile antes de presentarte a la PDI. Si tienes dificultades con el consulado, organizaciones como el Servicio Jesuita a Migrantes pueden orientarte."',
  '"answer": "Si tu pasaporte está vencido, es recomendable consultar previamente con la PDI o con el consulado de tu país sobre los documentos que podrían aceptarse en tu situación. En muchos casos, renovar el pasaporte facilita el proceso, pero las condiciones pueden variar. Si tienes dificultades con el consulado, organizaciones como el Servicio Jesuita a Migrantes pueden orientarte."'
)::jsonb
WHERE slug = 'autodenuncia/errores-comunes';

-- ============================================================
-- 2. autodenuncia/pdi-paso-a-paso — contenido
-- ============================================================

UPDATE articles
SET content = REPLACE(
  REPLACE(
    REPLACE(
      REPLACE(
        content,
        -- Fix 5: encabezado H2 absoluto
        '<h2>Paso 1 — Dirígete a cualquier comisaría PDI</h2>',
        '<h2>Paso 1 — Dirígete a una unidad PDI habilitada</h2>'
      ),
      -- Fix 6: párrafo de introducción del paso absoluto
      'Puedes presentarte en <strong>cualquier comisaría PDI del país</strong>, no solo en la de tu comuna. El horario de atención habitual es de lunes a viernes de 8:00 a 13:00 horas, aunque puede variar según la sucursal.',
      'Puedes presentarte en <strong>cualquier unidad habilitada de la PDI para trámites migratorios</strong> del país, no solo en la de tu comuna. No todas las comisarías atienden este trámite, por lo que se recomienda verificar previamente. El horario de atención habitual es de lunes a viernes de 8:00 a 13:00 horas, aunque puede variar según la sucursal.'
    ),
    -- Fix 7: "suspende cualquier procedimiento de expulsión" — promete resultado
    'Este documento es fundamental: suspende cualquier procedimiento de expulsión y te habilita para solicitar una visa temporaria en el portal online del SERMIG.',
    'Este documento es fundamental: puede influir en la suspensión de un procedimiento de expulsión en curso y te habilita para presentar una solicitud de visa temporaria en el portal online del SERMIG. El efecto sobre un proceso de expulsión depende del caso y lo determina la autoridad competente.'
  ),
  -- Fix 8: VRD sin nota de vigencia
  '<li><a href="/visa-temporaria/responsabilidad-democratica">Visa de Responsabilidad Democrática</a> (solo venezolanos)</li>',
  '<li><a href="/visa-temporaria/responsabilidad-democratica">Visa de Responsabilidad Democrática</a> (solo venezolanos — consulta el estado vigente de esta categoría con el SERMIG)</li>'
)
WHERE slug = 'autodenuncia/pdi-paso-a-paso';

-- Fix 9 + 10: howto_steps — nombre paso absoluto y texto de suspensión
UPDATE articles
SET howto_steps = REPLACE(
  REPLACE(
    howto_steps::text,
    '"name": "Presentarte en cualquier comisaría PDI"',
    '"name": "Presentarte en una unidad PDI habilitada"'
  ),
  '"text": "Con el pago procesado, recibes el certificado que suspende la expulsión y te habilita para tramitar visa."',
  '"text": "Con el pago procesado, recibes el certificado que puede influir en la suspensión de un proceso de expulsión y te habilita para tramitar visa en el SERMIG."'
)::jsonb
WHERE slug = 'autodenuncia/pdi-paso-a-paso';

-- ============================================================
-- 3. autodenuncia/sermig-vs-pdi — sección de ubicaciones
-- ============================================================

UPDATE articles
SET content = REPLACE(
  content,
  'Puedes presentarte en cualquier comisaría PDI, no solo en la de tu ciudad. Para la autodenuncia, el horario habitual es de lunes a viernes de 8:00 a 13:00, aunque puede variar por sucursal.',
  'Puedes presentarte en unidades habilitadas de la PDI para trámites migratorios, no necesariamente en la de tu ciudad. No todas las comisarías atienden trámites migratorios, por lo que se recomienda verificar previamente. El horario habitual es de lunes a viernes de 8:00 a 13:00, aunque puede variar por sucursal.'
)
WHERE slug = 'autodenuncia/sermig-vs-pdi';

-- ============================================================
-- 4. autodenuncia/tiempos-reales — derechos durante la espera
-- ============================================================

UPDATE articles
SET content = REPLACE(
  REPLACE(
    content,
    -- Fix 11: trabajo sin matiz de autorización
    '<li>Trabajar (la mayoría de los empleadores lo aceptan).</li>',
    '<li>Trabajar, si el comprobante incluye autorización para actividades remuneradas según tu categoría migratoria (consulta el tipo de comprobante que recibiste).</li>'
  ),
  -- Fix 12: salud pública sin caveat de grupos prioritarios
  '<li>Acceder a atención en salud pública.</li>',
  '<li>Acceder a atención en salud pública, principalmente urgencias y grupos prioritarios (menores, embarazadas, personas en situación de vulnerabilidad).</li>'
)
WHERE slug = 'autodenuncia/tiempos-reales';

-- ============================================================
-- Verificación
-- ============================================================
SELECT slug, updated_at
FROM articles
WHERE slug IN (
  'autodenuncia/errores-comunes',
  'autodenuncia/pdi-paso-a-paso',
  'autodenuncia/sermig-vs-pdi',
  'autodenuncia/tiempos-reales'
)
ORDER BY slug;
