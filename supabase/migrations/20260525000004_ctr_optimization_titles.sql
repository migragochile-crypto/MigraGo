-- CTR optimization: update titles and meta_descriptions for top impression pages
-- Based on Search Console data (2026-05-21 to 2026-06-01)

-- 1. doble-nacionalidad: 56 impressions, pos 13, 0 clics
--    Queries: "chile permite doble nacionalidad" (pos 6.67), "doble nacionalidad chile bolivia" (pos 8.33)
UPDATE articles SET
  title = 'Doble Nacionalidad en Chile 2025: Sí es Posible (Guía por País)',
  meta_description = 'Chile permite la doble nacionalidad — no pierdes tu pasaporte venezolano, colombiano, peruano ni argentino. Descubre cómo funciona según tu país de origen.',
  updated_at = NOW()
WHERE slug = 'nacionalizacion/doble-nacionalidad';

-- 2. residencia-temporal hub: 50 impressions, pos 22
--    Queries: "residencia temporal chile", "visa temporaria chile", "visa de residencia temporal chile"
UPDATE articles SET
  title = 'Residencia Temporal en Chile 2025 (ex Visa Temporaria): Tipos y Requisitos',
  meta_description = 'Todo sobre la Residencia Temporal en Chile: 8 categorías, documentos y cómo solicitarla en el SERMIG. Antes llamada visa temporaria. Guía actualizada 2025.',
  updated_at = NOW()
WHERE slug = 'residencia-temporal';

-- 3. residencia-definitiva hub: 41 impressions, pos 25
--    Queries: "residencia definitiva chile requisitos", "visa definitiva chile", "requisitos para la definitiva"
UPDATE articles SET
  title = 'Residencia Definitiva en Chile 2025 (ex Permanencia Definitiva): Requisitos',
  meta_description = 'Requisitos para la Residencia Definitiva: 2 años de Residencia Temporal + documentos. Proceso paso a paso en tramites.extranjeria.gob.cl. Antes: permanencia definitiva.',
  updated_at = NOW()
WHERE slug = 'residencia-definitiva';
