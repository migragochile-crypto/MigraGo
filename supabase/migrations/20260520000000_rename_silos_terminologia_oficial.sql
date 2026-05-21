-- Migración: Actualizar terminología oficial SERMIG
-- "visa-temporaria"      → "residencia-temporal"
-- "permanencia-definitiva" → "residencia-definitiva"
--
-- La Ley 21.325 (2021) cambió la nomenclatura oficial del SERMIG.

BEGIN;

-- 1. Actualizar campo silo
UPDATE articles SET silo = 'residencia-temporal'  WHERE silo = 'visa-temporaria';
UPDATE articles SET silo = 'residencia-definitiva' WHERE silo = 'permanencia-definitiva';

-- 2. Actualizar slugs de clusters (primero, antes que los pilares para no colisionar)
UPDATE articles
  SET slug = REPLACE(slug, 'visa-temporaria/', 'residencia-temporal/')
  WHERE slug LIKE 'visa-temporaria/%';

UPDATE articles
  SET slug = REPLACE(slug, 'permanencia-definitiva/', 'residencia-definitiva/')
  WHERE slug LIKE 'permanencia-definitiva/%';

-- 3. Actualizar slugs de pilares
UPDATE articles SET slug = 'residencia-temporal'  WHERE slug = 'visa-temporaria';
UPDATE articles SET slug = 'residencia-definitiva' WHERE slug = 'permanencia-definitiva';

-- 4. Actualizar parent_slug
UPDATE articles SET parent_slug = 'residencia-temporal'  WHERE parent_slug = 'visa-temporaria';
UPDATE articles SET parent_slug = 'residencia-definitiva' WHERE parent_slug = 'permanencia-definitiva';

-- 5. Actualizar referencias cruzadas en related_slugs
UPDATE articles
  SET related_slugs = ARRAY(
    SELECT
      REPLACE(
        REPLACE(r, 'visa-temporaria/', 'residencia-temporal/'),
        'permanencia-definitiva/', 'residencia-definitiva/'
      )
    FROM unnest(related_slugs) AS r
  )
  WHERE EXISTS (
    SELECT 1 FROM unnest(related_slugs) AS r
    WHERE r LIKE 'visa-temporaria/%'
       OR r LIKE 'permanencia-definitiva/%'
       OR r = 'visa-temporaria'
       OR r = 'permanencia-definitiva'
  );

-- 6. Actualizar slugs en glossary_terms
UPDATE glossary_terms SET slug = 'residencia-temporal'  WHERE slug = 'visa-temporaria';
UPDATE glossary_terms SET slug = 'residencia-definitiva' WHERE slug = 'permanencia-definitiva';

-- 7. Actualizar related_slugs en glossary_terms
UPDATE glossary_terms
  SET related_slugs = ARRAY(
    SELECT
      REPLACE(
        REPLACE(r, 'visa-temporaria/', 'residencia-temporal/'),
        'permanencia-definitiva/', 'residencia-definitiva/'
      )
    FROM unnest(related_slugs) AS r
  )
  WHERE EXISTS (
    SELECT 1 FROM unnest(related_slugs) AS r
    WHERE r = 'visa-temporaria' OR r = 'permanencia-definitiva'
  );

COMMIT;
