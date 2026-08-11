BEGIN;

-- Estas guías describen una categoría que ya no aparece entre las
-- subcategorías vigentes publicadas por SERMIG. Las rutas web conservan
-- redirecciones permanentes para no romper enlaces existentes.
UPDATE articles
SET is_published = FALSE,
    updated_at = NOW()
WHERE slug IN (
  'residencia-temporal/responsabilidad-democratica',
  'visa-temporaria/responsabilidad-democratica',
  'venezuela/visa-vrd'
);

-- Evita que tarjetas y módulos de relacionados sigan recomendando esas URLs.
UPDATE articles
SET related_slugs = ARRAY(
      SELECT related_slug
      FROM unnest(COALESCE(related_slugs, ARRAY[]::TEXT[])) AS u(related_slug)
      WHERE related_slug NOT IN (
        'residencia-temporal/responsabilidad-democratica',
        'visa-temporaria/responsabilidad-democratica',
        'venezuela/visa-vrd'
      )
    ),
    updated_at = NOW()
WHERE COALESCE(related_slugs, ARRAY[]::TEXT[]) && ARRAY[
  'residencia-temporal/responsabilidad-democratica',
  'visa-temporaria/responsabilidad-democratica',
  'venezuela/visa-vrd'
]::TEXT[];

-- Corrige el año que todavía aparecía en la navegación del silo.
UPDATE articles
SET title = REPLACE(title, '2025', '2026'),
    h1 = REPLACE(h1, '2025', '2026'),
    meta_description = REPLACE(meta_description, '2025', '2026'),
    updated_at = NOW()
WHERE slug IN (
  'residencia-temporal/cuanto-demora',
  'visa-temporaria/cuanto-demora'
);

-- Unifica enlaces al portal de trámites que SERMIG publica actualmente.
UPDATE articles
SET content = REPLACE(
      REPLACE(content, 'tramitesmigratorios.interior.gob.cl', 'tramites.serviciomigraciones.cl'),
      'tramites.extranjeria.gob.cl',
      'tramites.serviciomigraciones.cl'
    ),
    updated_at = NOW()
WHERE content LIKE '%tramitesmigratorios.interior.gob.cl%'
   OR content LIKE '%tramites.extranjeria.gob.cl%';

COMMIT;
