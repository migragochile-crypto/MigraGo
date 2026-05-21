-- ============================================================
-- MigraciónChile — Seed 061: YMYL corrections v31
-- Clusters de países — correcciones YMYL
-- Artículos corregidos:
--   1. venezuela: plazo "60-180 días hábiles" hedgeado
--   2. argentina: DNI aéreo — añade caveat de aerolíneas
--   3. republica-dominicana (content): "habilita" → "puede habilitarte"
--   4. republica-dominicana (FAQ): autodenuncia sin éxito garantizado
--   5. colombia (FAQ): carga familiar hedgeada
-- Artículos revisados y sin cambios: peru, bolivia, haiti (content)
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

-- ============================================================
-- 1. venezuela — 1 corrección de contenido
-- ============================================================

-- "Esperar resolución (60-180 días hábiles)" — plazo absoluto en ruta migratoria.
-- Los plazos del SERMIG varían y no están garantizados en la ley.
UPDATE articles
SET content = REPLACE(
  content,
  '<li><strong>Visa VRD o temporaria:</strong> presentar solicitud en el portal del SERMIG. Esperar resolución (60-180 días hábiles).</li>',
  '<li><strong>Visa VRD o temporaria:</strong> presentar solicitud en el portal del SERMIG. Los plazos de resolución varían; históricamente se han situado entre 60 y 180 días hábiles, pero pueden extenderse según la carga del sistema. Revisa el estado de tu solicitud en el portal del SERMIG.</li>'
)
WHERE slug = 'venezuela';

-- ============================================================
-- 2. argentina — 1 corrección de FAQ
-- ============================================================

-- FAQ: afirma que el DNI es válido "tanto por paso terrestre como aéreo"
-- sin reservas. Aunque el acuerdo Mercosur lo permite en principio, algunas
-- aerolíneas internacionales pueden exigir pasaporte para el embarque.
-- Omitir este matiz puede llevar a alguien a presentarse en aeropuerto
-- sin pasaporte con consecuencias graves.
UPDATE articles
SET faq_items = REPLACE(
  faq_items::text,
  '"answer": "No. Los ciudadanos argentinos pueden ingresar a Chile solo con su cédula de identidad argentina vigente, tanto por paso terrestre como aéreo. El pasaporte no es obligatorio, aunque sí recomendable para viajes fuera de la región."',
  '"answer": "No para paso terrestre — la cédula de identidad argentina vigente es suficiente. Para ingreso aéreo, el acuerdo Mercosur lo permite en principio, pero algunas aerolíneas internacionales pueden exigir pasaporte para el embarque. Verifica con tu aerolínea antes de viajar. Para trámites fuera de Chile, el pasaporte es recomendable."'
)::jsonb
WHERE slug = 'argentina';

-- ============================================================
-- 3. republica-dominicana — 2 correcciones
-- ============================================================

-- Fix 1 (content): "que te habilita a solicitar una visa temporaria" → hedgeado
UPDATE articles
SET content = REPLACE(
  content,
  'que te habilita a solicitar una visa temporaria.',
  'que puede habilitarte a solicitar una visa temporaria.'
)
WHERE slug = 'republica-dominicana';

-- Fix 2 (FAQ): autodenuncia implica éxito automático ("pagas... y obtienes")
-- El certificado se entrega si el proceso se completa correctamente,
-- pero no es un resultado garantizado en todos los casos.
UPDATE articles
SET faq_items = REPLACE(
  faq_items::text,
  '"answer": "Sí. El mecanismo de autodenuncia migratoria está disponible para todas las nacionalidades. Presentándote a la PDI, pagas la multa correspondiente y obtienes el Certificado de Autodenuncia para tramitar una visa."',
  '"answer": "Sí. El mecanismo de autodenuncia migratoria está disponible para todas las nacionalidades. El proceso implica presentarte ante la PDI, declarar tu situación y pagar la multa correspondiente; si el proceso se completa correctamente, se emite el Certificado de Autodenuncia que permite tramitar una visa temporaria. Ver guía completa en <a href=\"/autodenuncia\">autodenuncia migratoria</a>."'
)::jsonb
WHERE slug = 'republica-dominicana';

-- ============================================================
-- 4. colombia — 1 corrección de FAQ
-- ============================================================

-- FAQ: "Una vez que obtienes la Visa Mercosur, puedes incluir a tu cónyuge
-- e hijos menores como cargas familiares" — afirmación absoluta.
-- La inclusión de cargas está sujeta a los requisitos específicos del SERMIG
-- y no es automática.
UPDATE articles
SET faq_items = REPLACE(
  faq_items::text,
  '"answer": "Una vez que obtienes la Visa Mercosur, puedes incluir a tu cónyuge e hijos menores como cargas familiares. También pueden solicitar la visa de forma independiente."',
  '"answer": "Con la Visa Mercosur aprobada, generalmente puedes incluir a tu cónyuge e hijos menores como cargas familiares, según los requisitos documentales que establezca el SERMIG para cada caso. También pueden solicitar la visa de forma independiente."'
)::jsonb
WHERE slug = 'colombia';

-- ============================================================
-- Verificación
-- ============================================================
SELECT slug, updated_at
FROM articles
WHERE slug IN (
  'venezuela',
  'argentina',
  'republica-dominicana',
  'colombia'
)
ORDER BY slug;
