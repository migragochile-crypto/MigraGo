-- Fix: ensure cuanto-demora article is published and has parent_slug set
UPDATE articles SET
  is_published = TRUE,
  parent_slug = 'residencia-temporal'
WHERE slug = 'residencia-temporal/cuanto-demora';
