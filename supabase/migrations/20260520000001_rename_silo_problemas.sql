-- Migración: Renombrar silo "problemas" → "problemas-migratorios"
-- Mejora SEO: el slug es ahora más descriptivo y keyword-rich.

BEGIN;

-- 1. Actualizar campo silo
UPDATE articles SET silo = 'problemas-migratorios' WHERE silo = 'problemas';

-- 2. Actualizar slugs de clusters
UPDATE articles
  SET slug = REPLACE(slug, 'problemas/', 'problemas-migratorios/')
  WHERE slug LIKE 'problemas/%';

-- 3. Actualizar slug del pilar
UPDATE articles SET slug = 'problemas-migratorios' WHERE slug = 'problemas';

-- 4. Actualizar parent_slug
UPDATE articles SET parent_slug = 'problemas-migratorios' WHERE parent_slug = 'problemas';

-- 5. Actualizar referencias en related_slugs
UPDATE articles
  SET related_slugs = ARRAY(
    SELECT REPLACE(r, 'problemas/', 'problemas-migratorios/')
    FROM unnest(related_slugs) AS r
  )
  WHERE EXISTS (
    SELECT 1 FROM unnest(related_slugs) AS r
    WHERE r LIKE 'problemas/%' OR r = 'problemas'
  );

-- 6. Actualizar related_slugs en glossary_terms
UPDATE glossary_terms
  SET related_slugs = ARRAY(
    SELECT REPLACE(r, 'problemas/', 'problemas-migratorios/')
    FROM unnest(related_slugs) AS r
  )
  WHERE EXISTS (
    SELECT 1 FROM unnest(related_slugs) AS r
    WHERE r LIKE 'problemas/%' OR r = 'problemas'
  );

COMMIT;
