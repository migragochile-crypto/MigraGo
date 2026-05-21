-- ============================================================
-- MigraciónChile — Schema inicial
-- ============================================================

-- Tipos enumerados
CREATE TYPE content_type AS ENUM (
  'pillar',
  'cluster',
  'hub',
  'tool',
  'news',
  'caso'
);

CREATE TYPE schema_markup_type AS ENUM (
  'Article',
  'FAQPage',
  'HowTo',
  'WebPage'
);

-- ============================================================
-- Tabla principal: artículos
-- ============================================================
CREATE TABLE articles (
  id                    UUID         PRIMARY KEY DEFAULT gen_random_uuid(),
  slug                  TEXT         UNIQUE NOT NULL,
  silo                  TEXT         NOT NULL,
  parent_slug           TEXT,
  type                  content_type NOT NULL DEFAULT 'cluster',
  title                 TEXT         NOT NULL,
  h1                    TEXT         NOT NULL,
  meta_description      TEXT         NOT NULL DEFAULT '',
  keyword_primary       TEXT,
  content               TEXT,
  schema_type           schema_markup_type NOT NULL DEFAULT 'Article',
  faq_items             JSONB        NOT NULL DEFAULT '[]'::jsonb,
  howto_steps           JSONB        NOT NULL DEFAULT '[]'::jsonb,
  related_slugs         TEXT[]       NOT NULL DEFAULT '{}',
  country_tags          TEXT[]       NOT NULL DEFAULT '{}',
  reading_time_minutes  INTEGER,
  author                TEXT         NOT NULL DEFAULT 'Equipo Editorial',
  is_published          BOOLEAN      NOT NULL DEFAULT FALSE,
  published_at          TIMESTAMPTZ,
  updated_at            TIMESTAMPTZ  NOT NULL DEFAULT NOW(),
  created_at            TIMESTAMPTZ  NOT NULL DEFAULT NOW()
);

-- ============================================================
-- Tabla: términos del glosario
-- ============================================================
CREATE TABLE glossary_terms (
  id            UUID        PRIMARY KEY DEFAULT gen_random_uuid(),
  slug          TEXT        UNIQUE NOT NULL,
  term          TEXT        NOT NULL,
  definition    TEXT        NOT NULL,
  related_slugs TEXT[]      NOT NULL DEFAULT '{}',
  created_at    TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- ============================================================
-- Índices
-- ============================================================
CREATE INDEX idx_articles_silo         ON articles(silo);
CREATE INDEX idx_articles_type         ON articles(type);
CREATE INDEX idx_articles_published    ON articles(is_published, published_at DESC);
CREATE INDEX idx_articles_slug_prefix  ON articles(slug text_pattern_ops);
CREATE INDEX idx_articles_country_tags ON articles USING GIN(country_tags);
CREATE INDEX idx_glossary_term         ON glossary_terms(term);

-- ============================================================
-- Auto-actualizar updated_at
-- ============================================================
CREATE OR REPLACE FUNCTION trigger_set_updated_at()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = NOW();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER set_articles_updated_at
  BEFORE UPDATE ON articles
  FOR EACH ROW EXECUTE FUNCTION trigger_set_updated_at();

-- ============================================================
-- Row Level Security
-- ============================================================
ALTER TABLE articles       ENABLE ROW LEVEL SECURITY;
ALTER TABLE glossary_terms ENABLE ROW LEVEL SECURITY;

-- Lectura pública de artículos publicados
CREATE POLICY "read_published_articles"
  ON articles FOR SELECT
  USING (is_published = TRUE);

-- Lectura pública del glosario
CREATE POLICY "read_all_glossary"
  ON glossary_terms FOR SELECT
  USING (TRUE);

-- ============================================================
-- Datos de ejemplo para desarrollo
-- ============================================================
INSERT INTO articles (slug, silo, type, title, h1, meta_description, keyword_primary, is_published, published_at)
VALUES
  ('autodenuncia',        'autodenuncia',          'pillar',  'Autodenuncia Migratoria en Chile',          'Autodenuncia Migratoria: Guía Completa 2026',           'Cómo regularizar tu situación migratoria en Chile paso a paso.',              'autodenuncia migratoria',          TRUE, NOW()),
  ('visa-temporaria',     'visa-temporaria',        'pillar',  'Visa Temporaria en Chile',                  'Visa Temporaria Chile: Todos los Tipos y Requisitos',    'Guía completa de visas temporarias en Chile: tipos, requisitos y proceso.',   'visa temporaria chile',            TRUE, NOW()),
  ('permanencia-definitiva','permanencia-definitiva','pillar', 'Permanencia Definitiva en Chile',           'Permanencia Definitiva en Chile: Requisitos y Proceso',  'Todo sobre cómo obtener la permanencia definitiva en Chile.',                 'permanencia definitiva chile',     TRUE, NOW()),
  ('nacionalizacion',     'nacionalizacion',        'pillar',  'Nacionalización Chilena',                   'Cómo Obtener la Nacionalidad Chilena',                   'Requisitos y proceso para naturalizarse en Chile.',                           'nacionalizacion chilena',          TRUE, NOW()),
  ('problemas',           'problemas',              'pillar',  'Problemas Migratorios en Chile',            'Problemas Migratorios en Chile: Qué Hacer',              'Qué hacer ante rechazos, multas y otros problemas migratorios en Chile.',     'problemas migratorios chile',      TRUE, NOW()),
  ('vivir-en-chile',      'vivir-en-chile',         'pillar',  'Vivir en Chile como Extranjero',            'Vivir en Chile: Guía para Extranjeros 2026',             'Todo lo que necesitas para establecerte en Chile: RUT, banco, salud y más.', 'vivir en chile extranjero',        TRUE, NOW()),
  ('venezuela',           'venezuela',              'hub',     'Inmigración en Chile para Venezolanos',     'Chile para Venezolanos: Guía Completa 2026',             'Todo lo que necesita saber un venezolano para inmigrar a Chile.',             'venezolanos en chile',             TRUE, NOW()),
  ('peru',                'peru',                   'hub',     'Inmigración en Chile para Peruanos',        'Chile para Peruanos: Requisitos y Trámites 2026',        'Guía completa para peruanos que desean inmigrar a Chile.',                    'peruanos en chile',                TRUE, NOW()),
  ('colombia',            'colombia',               'hub',     'Inmigración en Chile para Colombianos',     'Chile para Colombianos: Guía Completa 2026',             'Guía completa para colombianos que desean inmigrar a Chile.',                 'colombianos en chile',             TRUE, NOW()),
  ('haiti',               'haiti',                  'hub',     'Inmigración en Chile para Haitianos',       'Chile para Haitianos: Guía Completa 2026',               'Guía completa para haitianos que desean inmigrar a Chile.',                   'haitianos en chile',               TRUE, NOW()),
  ('bolivia',             'bolivia',                'hub',     'Inmigración en Chile para Bolivianos',      'Chile para Bolivianos: Guía Completa 2026',              'Guía completa para bolivianos que desean inmigrar a Chile.',                  'bolivianos en chile',              TRUE, NOW()),
  ('argentina',           'argentina',              'hub',     'Inmigración en Chile para Argentinos',      'Chile para Argentinos: Guía Completa 2026',              'Guía completa para argentinos que desean inmigrar a Chile.',                  'argentinos en chile',              TRUE, NOW()),
  ('republica-dominicana','republica-dominicana',   'hub',     'Inmigración en Chile para Dominicanos',     'Chile para Dominicanos: Guía Completa 2026',             'Guía completa para dominicanos que desean inmigrar a Chile.',                 'dominicanos en chile',             TRUE, NOW());

INSERT INTO glossary_terms (slug, term, definition)
VALUES
  ('autodenuncia',          'Autodenuncia',           'Proceso voluntario por el cual un extranjero que se encuentra en situación migratoria irregular en Chile notifica su situación a la PDI para regularizarse sin ser expulsado.'),
  ('visa-temporaria',       'Visa Temporaria',         'Permiso de residencia en Chile que permite permanecer en el país por un tiempo determinado, generalmente 1 año renovable, con derecho a trabajar.'),
  ('permanencia-definitiva','Permanencia Definitiva',  'Permiso de residencia permanente en Chile que autoriza a vivir y trabajar sin límite de tiempo.'),
  ('sermig',                'SERMIG',                  'Servicio Nacional de Migraciones. Organismo del gobierno chileno encargado de gestionar los trámites migratorios y emitir visas y permisos de residencia.'),
  ('pdi',                   'PDI',                     'Policía de Investigaciones de Chile. Entre otras funciones, controla el ingreso y egreso de personas al país y gestiona la autodenuncia migratoria.'),
  ('rut',                   'RUT',                     'Rol Único Tributario. Número de identificación fiscal en Chile, equivalente al DNI en otros países. Los extranjeros con residencia pueden obtenerlo en el SRCeI.'),
  ('srcei',                 'SRCeI',                   'Servicio de Registro Civil e Identificación de Chile. Emite la cédula de identidad para extranjeros con residencia y tramita la nacionalización.');
