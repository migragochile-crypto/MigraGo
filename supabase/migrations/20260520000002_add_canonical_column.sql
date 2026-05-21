-- Migración: Agregar columna canonical a articles
-- El tipo TypeScript ya la declara pero faltaba en el schema.
-- Se usa para artículos cuya URL real difiere del slug de DB.
-- Caso principal: artículos de países ahora viven en /paises/{slug}.

BEGIN;

-- 1. Agregar columna
ALTER TABLE articles ADD COLUMN IF NOT EXISTS canonical TEXT;

-- 2. Setear canonical para todos los hubs de países
--    DB slug: 'venezuela' → URL real: '/paises/venezuela'
UPDATE articles
  SET canonical = '/paises/' || slug
  WHERE type = 'hub'
    AND slug IN (
      'venezuela', 'peru', 'colombia', 'haiti',
      'bolivia', 'argentina', 'republica-dominicana'
    );

-- 3. Setear canonical para temas de países (slug: 'venezuela/documentos-venezuela')
--    URL real: '/paises/venezuela/documentos-venezuela'
UPDATE articles
  SET canonical = '/paises/' || slug
  WHERE type = 'cluster'
    AND (
      slug LIKE 'venezuela/%'
      OR slug LIKE 'peru/%'
      OR slug LIKE 'colombia/%'
      OR slug LIKE 'haiti/%'
      OR slug LIKE 'bolivia/%'
      OR slug LIKE 'argentina/%'
      OR slug LIKE 'republica-dominicana/%'
    )
    AND silo IN (
      'venezuela', 'peru', 'colombia', 'haiti',
      'bolivia', 'argentina', 'republica-dominicana'
    );

COMMIT;
