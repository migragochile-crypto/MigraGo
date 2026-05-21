-- ============================================================
-- MigraciónChile — Seed 034: correcciones de calidad v14
-- Artículo pillar: visa-temporaria (hub principal)
-- 12 problemas detectados → 14 REPLACEs content + 1 FAQ
--
--   1a.  Frase apertura: "visa temporaria autoriza a trabajar" → residencia temporal
--   1bcd. "La visa temporaria" × 3 instancias → residencia temporal
--   2.   "trabaje en cualquier empleador" → condicional según categoría
--   3.   "Da acceso a beneficios sociales" → acceso sujeto a condiciones
--   4.   MERCOSUR "solo pasaporte y antecedentes" → sin absolutos
--   5.   VRD "exclusiva / solo requiere" → estado vigente, verificar
--   6.   "todas las solicitudes requieren" → comúnmente se solicitan
--   7.   "no puedes presentar la solicitud" → en muchos casos
--   8+9. Comprobante "Trabajar: la mayoría de empleadores" → condicional
--   10.  "Fonasa en nivel de urgencia" → prestaciones según normativa
--   11.  "1 año continuo → puedes solicitar PD" → requisitos que varían
--   12.  "5 días hábiles" plazo recursivo → plazo de la notificación
--   13.  "Ley 21.325 fija 30 días hábiles" → plazos de referencia
--   14.  URL cruda del portal → texto institucional
--   FAQ. "la mayoría de empleadores lo aceptan" → condicional
--
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

-- ============================================================
-- Bloque 1: content (14 REPLACEs anidados)
-- ============================================================

UPDATE articles
SET content = REPLACE(
  REPLACE(
    REPLACE(
      REPLACE(
        REPLACE(
          REPLACE(
            REPLACE(
              REPLACE(
                REPLACE(
                  REPLACE(
                    REPLACE(
                      REPLACE(
                        REPLACE(
                          REPLACE(
                            content,
                            -- Fix 1a (innermost): frase apertura — elimina "trabajar legalmente"
                            --   y migra a "residencia temporal"
                            'La <strong>visa temporaria</strong> es el permiso de residencia que autoriza a un extranjero a vivir y trabajar legalmente en Chile por un período determinado.',
                            'La <strong>residencia temporal</strong> (comúnmente llamada visa temporaria) es el permiso que autoriza a un extranjero a vivir en Chile por un período determinado, con derechos y condiciones que varían según la categoría otorgada.'
                          ),
                          -- Fix 1bcd: "La visa temporaria" genérico × 3 instancias
                          --   (distinto al 1a que tiene <strong> entre medio)
                          'La visa temporaria',
                          'La residencia temporal'
                        ),
                        -- Fix 2: "Autoriza a trabajar en cualquier empleador"
                        'Autoriza a <strong>trabajar</strong> en cualquier empleador sin necesidad de autorización especial.',
                        'Puede habilitar actividades remuneradas conforme a la categoría migratoria otorgada y las condiciones establecidas por la autoridad migratoria.'
                      ),
                      -- Fix 3: "Da acceso a beneficios sociales" — demasiado amplio
                      'Da acceso al sistema de salud pública (<strong>Fonasa</strong>) y a beneficios sociales.',
                      'Puede facilitar el acceso a determinados servicios públicos y de salud, sujeto a las condiciones de cada categoría y la normativa sectorial vigente.'
                    ),
                    -- Fix 4: MERCOSUR "solo pasaporte y antecedentes penales" — absoluto
                    'Es la categoría con menos requisitos: solo pasaporte y antecedentes penales. Vigencia de 2 años.',
                    'Es una de las categorías con menores requisitos habituales, si bien los documentos necesarios pueden variar. Generalmente se solicita pasaporte y antecedentes penales (verifica con el SERMIG los requisitos actualizados). La vigencia puede ser de 2 años, según las condiciones de la categoría.'
                  ),
                  -- Fix 5: VRD "exclusiva / solo requiere" — status inestable
                  'exclusiva para ciudadanos venezolanos. Solo requiere pasaporte venezolano vigente o vencido (menos de 5 años) y antecedentes penales.',
                  'dirigida a ciudadanos venezolanos, sujeta a condiciones que pueden cambiar. Antes de iniciar el trámite, verifica con el SERMIG el estado vigente de esta categoría y los requisitos actualizados.'
                ),
                -- Fix 6: "todas las solicitudes de visa temporaria requieren" — absoluto
                'Independientemente de la causal, todas las solicitudes de visa temporaria requieren:',
                'Con independencia de la categoría, comúnmente se solicitan los siguientes documentos de base (los requisitos pueden variar según el caso):'
              ),
              -- Fix 7: "no puedes presentar la solicitud de visa directamente" — absoluto
              '<strong>no puedes presentar la solicitud de visa directamente</strong>',
              '<strong>en muchos casos no es posible presentar la solicitud de residencia directamente</strong>'
            ),
            -- Fix 8+9: comprobante trabajo — "mayoría de empleadores" y generalización
            'Trabajar: la mayoría de los empleadores lo aceptan junto al pasaporte.',
            'Trabajar, en caso de que el comprobante incluya autorización para actividades remuneradas conforme a tu categoría migratoria.'
          ),
          -- Fix 10: "Fonasa en nivel de urgencia" — simplificado de forma peligrosa
          'Acceder a atención en salud pública (Fonasa en nivel de urgencia).',
          'Acceder a determinadas prestaciones de salud pública, principalmente urgencias y grupos prioritarios, conforme a la normativa vigente.'
        ),
        -- Fix 11: "1 año continuo → puedes solicitar PD" — lineal sin matices
        'Después de <strong>1 año continuo</strong> con visa temporaria vigente (o 2 años para algunas categorías), puedes solicitar la <a href="/permanencia-definitiva">Permanencia Definitiva</a>, que no tiene fecha de vencimiento y otorga derechos más amplios.',
        'Cumplidos ciertos requisitos de continuidad y tiempo de residencia —que varían según la categoría—, es posible solicitar la <a href="/permanencia-definitiva">Permanencia Definitiva</a>, que otorga una residencia sin fecha de vencimiento y derechos más amplios.'
      ),
      -- Fix 12: "5 días hábiles" — plazo recursivo sin validar
      'Tienes <strong>5 días hábiles</strong> para presentar un recurso de reposición.',
      'Puedes presentar un recurso de reposición dentro del plazo indicado en la notificación de rechazo.'
    ),
    -- Fix 13: "Ley 21.325 fija 30 días hábiles" — consistencia con tiempos-reales
    'La Ley 21.325 fija un plazo legal de 30 días hábiles. En la práctica, los tiempos reales en 2025-2026 han sido:',
    'La normativa migratoria contempla plazos de tramitación de referencia. En la práctica, los tiempos reales en 2025-2026 han sido:'
  ),
  -- Fix 14 (outermost): URL cruda del portal → texto institucional
  '>tramitesmigratorios.interior.gob.cl</a>',
  '>Portal de Trámites Migratorios del SERMIG</a>'
)
WHERE slug = 'visa-temporaria';

-- ============================================================
-- Bloque 2: faq_items
-- ============================================================

UPDATE articles
SET faq_items = REPLACE(
  faq_items::text,
  -- FAQ trabajo: "la mayoría de empleadores lo aceptan" → condicional
  '"answer": "Con el comprobante de solicitud activo puedes trabajar: la mayoría de los empleadores lo aceptan como habilitante junto al pasaporte. Sin embargo, algunos empleadores o instituciones pueden ser más estrictos y pedir la visa aprobada."',
  '"answer": "Con el comprobante de solicitud activo puedes trabajar si la categoría incluye autorización para actividades remuneradas. Los criterios de aceptación pueden variar según el empleador, por lo que se recomienda verificar la situación directamente."'
)::jsonb
WHERE slug = 'visa-temporaria';

-- ============================================================
-- Verificación
-- ============================================================
SELECT slug, updated_at
FROM articles
WHERE slug = 'visa-temporaria';
