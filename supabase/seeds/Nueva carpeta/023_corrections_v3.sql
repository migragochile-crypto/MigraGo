-- ============================================================
-- MigraciónChile — Seed 023: correcciones de calidad v3
-- Corrige autodenuncia (artículo hub):
--   1. "enfoque más humanitario" → redacción objetiva y equilibrada
--   2. Tabla de multas → disclaimer de que es referencial
--   3. "Suspende cualquier procedimiento de expulsión" → lenguaje preciso
--   4. VRD → agrega nota de verificar vigencia actual
--   5. FAQ "¿Pueden expulsarme?" → respuesta jurídicamente correcta
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

UPDATE articles
SET content = REPLACE(
  REPLACE(
    REPLACE(
      REPLACE(
        content,
        -- 1. "enfoque más humanitario" → descripción equilibrada
        'La nueva ley adoptó un enfoque más humanitario: en lugar de perseguir y expulsar a quienes estaban en situación irregular, creó un camino ordenado para regularizarse.',
        'La nueva ley modernizó el sistema migratorio e incorporó mecanismos de regularización voluntaria, entre ellos la autodenuncia. Sin embargo, la Ley 21.325 también fortaleció los procedimientos de expulsión y endureció controles en otros aspectos — no fue solo una apertura: fue una reforma integral con consecuencias en ambos sentidos.'
      ),
      -- 2. Nota al pie de la tabla → disclaimer de que es referencial
      '<p>Verifica el valor actual de la UTM en el sitio del <a href="https://www.sii.cl" target="_blank" rel="noopener noreferrer">SII</a>. Se recomienda llevar efectivo en pesos chilenos.</p>',
      '<p><em><strong>Importante:</strong> esta tabla es orientativa. La Ley 21.325 establece un rango de 1 a 5 UTM para infracciones de permanencia irregular, pero el monto exacto lo determina la autoridad migratoria caso a caso, según la duración, las circunstancias y el historial. El valor real puede diferir. Consulta el valor actualizado de la UTM en el <a href="https://www.sii.cl" target="_blank" rel="noopener noreferrer">SII</a>.</em></p>'
    ),
    -- 3. "Suspende cualquier procedimiento de expulsión" → lenguaje preciso
    '<li><strong>Suspende cualquier procedimiento de expulsión</strong> mientras el trámite de visa está activo.</li>',
    '<li><strong>Puede influir favorablemente en procedimientos migratorios activos</strong>, incluyendo la posible suspensión de procesos de expulsión no ejecutoriados mientras el trámite de visa está en curso. <em>No suspende de forma automática toda expulsión en todos los casos: depende de la etapa del procedimiento, si existe resolución firme y la decisión de la autoridad competente.</em></li>'
  ),
  -- 4. VRD → agrega nota de verificar vigencia
  '<li><a href="/visa-temporaria/responsabilidad-democratica"><strong>Visa de Responsabilidad Democrática (VRD):</strong></a> exclusiva para ciudadanos venezolanos.</li>',
  '<li><a href="/visa-temporaria/responsabilidad-democratica"><strong>Visa de Responsabilidad Democrática (VRD):</strong></a> fue diseñada para ciudadanos venezolanos. <em>Sus condiciones de operación han cambiado desde su creación — verifica disponibilidad actual directamente en el SERMIG antes de planificar tu solicitud.</em></li>'
)
WHERE slug = 'autodenuncia';

-- 5. FAQ "¿Pueden expulsarme si me autodenego?" → corrección crítica
UPDATE articles
SET faq_items = REPLACE(
  faq_items::text,
  '"answer": "No. Al presentar la autodenuncia, se suspende cualquier procedimiento de expulsión mientras tramitas tu visa. El Certificado de Autodenuncia es el documento que acredita esta suspensión ante cualquier autoridad."',
  '"answer": "No de forma automática ni absoluta. La autodenuncia voluntaria demuestra buena fe y puede influir favorablemente en procedimientos migratorios activos, pero no garantiza la suspensión de toda expulsión en todos los casos. Si existe un proceso de expulsión en curso, el certificado es un elemento importante, pero la suspensión depende de la etapa del proceso, si hay resolución firme, y la decisión de la autoridad competente. Si tienes un proceso de expulsión activo, consulta a un abogado migratorio antes de actuar."'
)::jsonb
WHERE slug = 'autodenuncia';

-- Verificación
SELECT slug, updated_at
FROM articles
WHERE slug = 'autodenuncia';
