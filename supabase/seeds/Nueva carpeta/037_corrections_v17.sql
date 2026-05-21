-- ============================================================
-- MigraciónChile — Seed 037: correcciones de calidad v17
-- visa-temporaria/mercosur       (12 content + 2 FAQ)
-- visa-temporaria/pareja-chilena (10 content + 0 FAQ)
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

-- ============================================================
-- 1a. visa-temporaria/mercosur — content (12 REPLACEs)
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
                        content,
                        -- Fix 1 (innermost): "basta con acreditar" — absoluto
                        'basta con acreditar la nacionalidad y los antecedentes penales.',
                        'generalmente se requiere acreditar la nacionalidad y contar con antecedentes penales aceptables, aunque los documentos exigidos y sus especificaciones pueden variar según el caso y los requisitos vigentes del SERMIG.'
                      ),
                      -- Fix 2: "La visa tiene vigencia de 2 años" — ventajas
                      'La visa tiene vigencia de 2 años (frente al 1 año de otras categorías temporarias).',
                      'La vigencia habitual es de hasta 2 años, según las condiciones de la categoría y la resolución emitida.'
                    ),
                    -- Fix 3: "Después de 2 años puedes solicitar PD" — ventajas
                    'Después de 2 años puedes solicitar la Permanencia Definitiva.',
                    'Cumplidos los requisitos de tiempo y permanencia establecidos por la normativa, es posible solicitar la Permanencia Definitiva.'
                  ),
                  -- Fix 4: pasaporte "al menos 6 meses de vigencia" — tabla
                  'Con al menos 6 meses de vigencia.',
                  'Vigencia conforme a los requisitos del SERMIG.'
                ),
                -- Fix 5: antecedentes país origen "No mayor a 90 días"
                'Apostillado. No mayor a 90 días. En español o con traducción oficial.',
                'Apostillado. En español o con traducción oficial. Los plazos de antigüedad aceptable pueden variar; verifica los requisitos actualizados con el SERMIG.'
              ),
              -- Fix 6: antecedentes Chile "No mayor a 90 días"
              'Gratis en registrocivil.cl. No mayor a 90 días.',
              'Gratis en registrocivil.cl. Vigente conforme a los requisitos del SERMIG.'
            ),
            -- Fix 7: situación irregular "primero debes hacer"
            'primero debes hacer la <a href="/autodenuncia/pdi-paso-a-paso">autodenuncia en la PDI</a>. Con el Certificado de Autodenuncia puedes solicitar la visa MERCOSUR aunque estés en situación irregular.',
            'en muchos casos será necesario completar previamente la <a href="/autodenuncia/pdi-paso-a-paso">autodenuncia en la PDI</a>. Con el Certificado de Autodenuncia, en general podrás presentar la solicitud de residencia.'
          ),
          -- Fix 8: paso 2 "haz la autodenuncia en la PDI primero"
          'Si estás en situación irregular, haz la autodenuncia en la PDI primero.',
          'Si estás en situación irregular, en muchos casos deberás completar previamente la autodenuncia en la PDI.'
        ),
        -- Fix 9: URL cruda como anchor text (paso 4)
        '>tramitesmigratorios.interior.gob.cl</a>.',
        '>Portal de Trámites Migratorios del SERMIG</a>.'
      ),
      -- Fix 10: navegación exacta (paso 5)
      'Selecciona <strong>Visa Temporaria → MERCOSUR</strong>.',
      'Selecciona la categoría correspondiente a <strong>MERCOSUR</strong> conforme a las opciones disponibles en el portal.'
    ),
    -- Fix 11: comprobante trabajo (paso 7)
    'Con el comprobante de trámite puedes permanecer y trabajar en Chile mientras se resuelve.',
    'El comprobante de trámite puede habilitar actividades remuneradas cuando incluye autorización para ello conforme a la categoría migratoria.'
  ),
  -- Fix 12 (outermost): vigencia "2 años renovables" + PD
  'La visa MERCOSUR se otorga por <strong>2 años renovables</strong>. Al vencer, puedes renovarla por otros 2 años o solicitar directamente la <a href="/permanencia-definitiva">Permanencia Definitiva</a> si cumples el tiempo de residencia requerido.',
  'La residencia temporal bajo esta categoría suele otorgarse por períodos de hasta 2 años renovables, según las condiciones establecidas. Cumplidos los requisitos de residencia y permanencia, es posible solicitar la <a href="/permanencia-definitiva">Permanencia Definitiva</a>.'
)
WHERE slug = 'visa-temporaria/mercosur';

-- ============================================================
-- 1b. visa-temporaria/mercosur — faq_items (2 REPLACEs)
-- ============================================================

UPDATE articles
SET faq_items = REPLACE(
  REPLACE(
    faq_items::text,
    -- fq1 (innermost): "te habilita legalmente" + "mayoría de empleadores"
    '"answer": "Sí. El comprobante de solicitud te habilita legalmente para trabajar en Chile mientras el trámite está activo. La mayoría de los empleadores lo aceptan como documento habilitante junto al pasaporte."',
    '"answer": "El comprobante de solicitud puede habilitar actividades remuneradas cuando incluye autorización para ello conforme a la categoría migratoria. Los criterios de aceptación pueden variar según el empleador; verifica la situación directamente."'
  ),
  -- fq2 (outermost): "tienes acceso al sistema de salud" + "puedes acceder a urgencias"
  '"answer": "Sí. Con la visa MERCOSUR aprobada y la cédula de identidad para extranjeros, tienes acceso al sistema de salud público (Fonasa) en el nivel que corresponda según tus ingresos. Con el comprobante de trámite también puedes acceder a atención de urgencias."',
  '"answer": "Con la residencia aprobada y la documentación correspondiente, es posible acceder a determinadas prestaciones del sistema de salud público, conforme a las condiciones y requisitos de cada programa. Consulta con Fonasa los criterios de acceso aplicables a tu situación."'
)::jsonb
WHERE slug = 'visa-temporaria/mercosur';

-- ============================================================
-- 2a. visa-temporaria/pareja-chilena — content (10 REPLACEs)
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
                    content,
                    -- Fix 1 (innermost): "mayor tasa de aprobación" — promesa implícita
                    'Es una de las categorías con mayor tasa de aprobación cuando se acredita correctamente el vínculo.',
                    'Es una de las categorías más habituales para quienes tienen vínculo conyugal documentado con un ciudadano chileno.'
                  ),
                  -- Fix 2: pasaporte "al menos 6 meses de vigencia"
                  'Con al menos 6 meses de vigencia.',
                  'Vigencia conforme a los requisitos del SERMIG.'
                ),
                -- Fix 3: matrimonio/AUC "No mayor a 90 días"
                'Emitido por el SRCeI (si el matrimonio/AUC es chileno) o documento extranjero apostillado y traducido. No mayor a 90 días.',
                'Emitido por el SRCeI (si el matrimonio/AUC es chileno) o documento extranjero apostillado y traducido. Los plazos de antigüedad aceptable pueden variar; verifica con el SERMIG.'
              ),
              -- Fix 4: antecedentes país origen "No mayor a 90 días"
              'Apostillado. No mayor a 90 días. En español o con traducción oficial.',
              'Apostillado. En español o con traducción oficial. Los plazos de antigüedad aceptable pueden variar; verifica los requisitos actualizados con el SERMIG.'
            ),
            -- Fix 5: antecedentes Chile "No mayor a 90 días"
            'Gratis en registrocivil.cl. No mayor a 90 días.',
            'Gratis en registrocivil.cl. Vigente conforme a los requisitos del SERMIG.'
          ),
          -- Fix 6: situación irregular "primero realiza la autodenuncia"
          'Si tu visa venció, primero realiza la <a href="/autodenuncia/pdi-paso-a-paso">autodenuncia en la PDI</a>. Con el Certificado de Autodenuncia puedes presentar la solicitud de visa por pareja chilena aunque estés en situación irregular.',
          'Si tu visa venció o te encuentras en situación irregular, en muchos casos será necesario completar previamente la <a href="/autodenuncia/pdi-paso-a-paso">autodenuncia en la PDI</a>. Con el Certificado de Autodenuncia, en general podrás presentar la solicitud de residencia.'
        ),
        -- Fix 7: paso 2 "completa la autodenuncia en la PDI"
        'Si estás en situación irregular, completa la autodenuncia en la PDI.',
        'Si estás en situación irregular, en muchos casos deberás completar previamente la autodenuncia en la PDI.'
      ),
      -- Fix 8: URL cruda como anchor text (paso 4)
      '>tramitesmigratorios.interior.gob.cl</a>.',
      '>Portal de Trámites Migratorios del SERMIG</a>.'
    ),
    -- Fix 9: navegación exacta (paso 5)
    'Selecciona <strong>Visa Temporaria → Vínculo con ciudadano chileno → Cónyuge / Conviviente civil</strong>.',
    'Selecciona la categoría correspondiente a <strong>vínculo con ciudadano chileno (cónyuge o conviviente civil)</strong> conforme a las opciones disponibles en el portal.'
  ),
  -- Fix 10 (outermost): vigencia "1 año renovable" + "Después de 1 año" + PD
  'La visa se otorga por <strong>1 año renovable</strong>. Después de 1 año con visa vigente puedes solicitar la <a href="/permanencia-definitiva">Permanencia Definitiva</a>.',
  'La residencia temporal suele otorgarse por períodos renovables. Cumplidos los requisitos de permanencia establecidos por la normativa, es posible solicitar la <a href="/permanencia-definitiva">Permanencia Definitiva</a>.'
)
WHERE slug = 'visa-temporaria/pareja-chilena';

-- ============================================================
-- Verificación
-- ============================================================
SELECT slug, updated_at
FROM articles
WHERE slug IN (
  'visa-temporaria/mercosur',
  'visa-temporaria/pareja-chilena'
)
ORDER BY slug;
