BEGIN;

-- Consolidate the legacy problemas silo into the public canonical namespace.
UPDATE articles
SET slug = 'problemas-migratorios',
    silo = 'problemas-migratorios',
    parent_slug = NULL,
    updated_at = NOW()
WHERE slug = 'problemas'
  AND NOT EXISTS (
    SELECT 1 FROM articles WHERE slug = 'problemas-migratorios'
  );

UPDATE articles
SET slug = 'problemas-migratorios/sin-respuesta-sermig',
    silo = 'problemas-migratorios',
    parent_slug = 'problemas-migratorios',
    updated_at = NOW()
WHERE slug = 'problemas/sin-respuesta-sermig'
  AND NOT EXISTS (
    SELECT 1 FROM articles WHERE slug = 'problemas-migratorios/sin-respuesta-sermig'
  );

-- Replace the short duplicate guides with the stronger reviewed versions.
WITH content_map(source_slug, target_slug) AS (
  VALUES
    ('problemas/antecedentes-penales', 'problemas-migratorios/antecedentes-penales-chile'),
    ('problemas/expulsion', 'problemas-migratorios/expulsion-administrativa'),
    ('problemas/multa-migracion', 'problemas-migratorios/multas-migratorias'),
    ('problemas/rechazo-visa', 'problemas-migratorios/rechazo-visa'),
    ('problemas/recurso-administrativo', 'problemas-migratorios/recurso-administrativo'),
    ('problemas/visa-vencida', 'problemas-migratorios/visa-vencida')
), source_rows AS (
  SELECT source.*, content_map.target_slug
  FROM articles AS source
  JOIN content_map ON content_map.source_slug = source.slug
)
UPDATE articles AS target
SET title = source_rows.title,
    h1 = source_rows.h1,
    meta_description = source_rows.meta_description,
    keyword_primary = source_rows.keyword_primary,
    content = source_rows.content,
    schema_type = source_rows.schema_type,
    faq_items = source_rows.faq_items,
    howto_steps = source_rows.howto_steps,
    related_slugs = source_rows.related_slugs,
    country_tags = source_rows.country_tags,
    reading_time_minutes = source_rows.reading_time_minutes,
    author = source_rows.author,
    published_at = COALESCE(target.published_at, source_rows.published_at),
    is_published = TRUE,
    updated_at = NOW()
FROM source_rows
WHERE target.slug = source_rows.target_slug;

UPDATE articles
SET is_published = FALSE,
    updated_at = NOW()
WHERE slug = 'problemas/derechos-migrante'
   OR slug LIKE 'problemas/%';

-- Keep one evergreen minimum-wage URL and move the current, sourced content to it.
UPDATE articles AS target
SET title = 'Sueldo Mínimo 2026 en Chile: $553.553 y Cómo Afecta tus Trámites',
    h1 = 'Sueldo mínimo en Chile 2026: $553.553 y su efecto en trámites migratorios',
    meta_description = 'El sueldo mínimo en Chile es de $553.553 desde mayo de 2026. Revisa cómo se relaciona con contratos, sustento económico y trámites migratorios.',
    content = source.content,
    schema_type = source.schema_type,
    faq_items = source.faq_items,
    howto_steps = source.howto_steps,
    related_slugs = source.related_slugs,
    reading_time_minutes = source.reading_time_minutes,
    author = source.author,
    published_at = COALESCE(target.published_at, source.published_at),
    is_published = TRUE,
    updated_at = NOW()
FROM articles AS source
WHERE target.slug = 'actualidad/sueldo-minimo-2026-tramites'
  AND source.slug = 'actualidad/nuevo-sueldo-minimo-553553-mayo-2026';

-- Pages consolidated into a stronger canonical guide remain covered by 308 redirects.
UPDATE articles
SET is_published = FALSE,
    updated_at = NOW()
WHERE slug IN (
  'actualidad/nuevo-sueldo-minimo-553553-mayo-2026',
  'autodenuncia/estado-tramite',
  'autodenuncia/que-es-autodenuncia',
  'nacionalizacion/paso-a-paso',
  'nacionalizacion/proceso-naturalizacion',
  'nacionalizacion/requisitos',
  'residencia-definitiva/como-solicitarla',
  'vivir-en-chile/afp-extranjero',
  'vivir-en-chile/arriendo',
  'vivir-en-chile/fonasa-isapre'
);

-- Rewrite recommendations so cards never point at retired or legacy URLs.
WITH redirect_map(source_slug, target_slug) AS (
  VALUES
    ('actualidad/nuevo-sueldo-minimo-553553-mayo-2026', 'actualidad/sueldo-minimo-2026-tramites'),
    ('autodenuncia/estado-tramite', 'autodenuncia'),
    ('autodenuncia/que-es-autodenuncia', 'autodenuncia'),
    ('nacionalizacion/paso-a-paso', 'nacionalizacion/carta-naturalizacion'),
    ('nacionalizacion/proceso-naturalizacion', 'nacionalizacion/carta-naturalizacion'),
    ('nacionalizacion/requisitos', 'nacionalizacion/requisitos-nacionalidad'),
    ('problemas', 'problemas-migratorios'),
    ('problemas/antecedentes-penales', 'problemas-migratorios/antecedentes-penales-chile'),
    ('problemas/derechos-migrante', 'problemas-migratorios/derechos-migrante'),
    ('problemas/expulsion', 'problemas-migratorios/expulsion-administrativa'),
    ('problemas/multa-migracion', 'problemas-migratorios/multas-migratorias'),
    ('problemas/rechazo-visa', 'problemas-migratorios/rechazo-visa'),
    ('problemas/recurso-administrativo', 'problemas-migratorios/recurso-administrativo'),
    ('problemas/sin-respuesta-sermig', 'problemas-migratorios/sin-respuesta-sermig'),
    ('problemas/visa-vencida', 'problemas-migratorios/visa-vencida'),
    ('problemas-migratorios/antecedentes-penales', 'problemas-migratorios/antecedentes-penales-chile'),
    ('problemas-migratorios/expulsion', 'problemas-migratorios/expulsion-administrativa'),
    ('problemas-migratorios/multa-migracion', 'problemas-migratorios/multas-migratorias'),
    ('residencia-definitiva/como-solicitarla', 'residencia-definitiva'),
    ('residencia-temporal/responsabilidad-democratica', 'residencia-temporal'),
    ('visa-temporaria/responsabilidad-democratica', 'residencia-temporal'),
    ('vivir-en-chile/afp-extranjero', 'vivir-en-chile/pension-afp'),
    ('vivir-en-chile/arriendo', 'vivir-en-chile/arriendo-vivienda'),
    ('vivir-en-chile/fonasa-isapre', 'vivir-en-chile/sistema-salud')
)
UPDATE articles AS article
SET related_slugs = ARRAY(
      SELECT replacement
      FROM (
        SELECT DISTINCT COALESCE(redirect_map.target_slug, related_slug) AS replacement
        FROM unnest(COALESCE(article.related_slugs, ARRAY[]::TEXT[])) AS u(related_slug)
        LEFT JOIN redirect_map ON redirect_map.source_slug = related_slug
      ) AS normalized
      WHERE replacement <> article.slug
      ORDER BY replacement
    ),
    updated_at = NOW()
WHERE EXISTS (
  SELECT 1
  FROM unnest(COALESCE(article.related_slugs, ARRAY[]::TEXT[])) AS u(related_slug)
  JOIN redirect_map ON redirect_map.source_slug = related_slug
);

COMMIT;
