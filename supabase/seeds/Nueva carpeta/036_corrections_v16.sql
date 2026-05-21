-- ============================================================
-- MigraciónChile — Seed 036: correcciones de calidad v16
-- visa-temporaria/responsabilidad-democratica
-- 12 content REPLACEs + 3 FAQ REPLACEs
-- Patrón principal: vigencia activa "Sí. La VRD continúa disponible"
--   → verificar con SERMIG (mayor riesgo editorial del cluster),
--   absolutos → condicionales, organismos venezolanos específicos
--   → institucional, plazos → referenciales.
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

-- ============================================================
-- 1. content (12 REPLACEs anidados)
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
                        -- Fix 1 (innermost): antecedentes penales — lista absoluta tripartita
                        'No tener <strong>antecedentes penales</strong> en Chile ni en Venezuela (ni en ningún país donde hayan residido).',
                        'Los antecedentes penales pueden influir en la evaluación migratoria conforme a la normativa vigente.'
                      ),
                      -- Fix 2: "es necesario completar primero" → condicional
                      'es necesario completar primero la <a href="/autodenuncia">autodenuncia migratoria</a>.',
                      'en muchos casos será necesario completar previamente la <a href="/autodenuncia">autodenuncia migratoria</a>.'
                    ),
                    -- Fix 3: Step 1 "realiza primero" → condicional
                    'Si tu visa está vencida, realiza primero la <a href="/autodenuncia/pdi-paso-a-paso">autodenuncia en la PDI</a> para obtener el Certificado de Autodenuncia.',
                    'Si tu visa está vencida o te encuentras en situación irregular, en muchos casos deberás completar previamente la <a href="/autodenuncia/pdi-paso-a-paso">autodenuncia en la PDI</a> para obtener el Certificado de Autodenuncia.'
                  ),
                  -- Fix 4: "Es de carácter humanitario" — interpretativo/político
                  'Es de carácter humanitario.',
                  'Fue creada en el contexto de la situación política y migratoria venezolana.'
                ),
                -- Fix 5: H2 vigencia — afirma vigencia activa como hecho estable (mayor riesgo)
                'Sí. La VRD continúa disponible para venezolanos en Chile. Sin embargo, su vigencia ha estado sujeta a renovaciones periódicas y el gobierno chileno puede establecer condiciones adicionales o plazos de presentación. Verifica siempre el estado actualizado en el <a href="https://tramitesmigratorios.interior.gob.cl" target="_blank" rel="noopener noreferrer">portal oficial del SERMIG</a> antes de presentar.',
                'La situación y disponibilidad de esta categoría migratoria ha cambiado en distintos períodos y ha estado sujeta a modificaciones, restricciones y ajustes administrativos. Antes de iniciar cualquier trámite, verifica directamente en el <a href="https://tramitesmigratorios.interior.gob.cl" target="_blank" rel="noopener noreferrer">Portal de Trámites Migratorios del SERMIG</a> o en el consulado chileno correspondiente si esta categoría se encuentra disponible y bajo qué condiciones vigentes.'
              ),
              -- Fix 6: Tabla pasaporte "al menos 6 meses" → criterio SERMIG
              'Con al menos 6 meses de vigencia. Si está vencido, consulta el procedimiento con pasaporte caducado más abajo.',
              'Vigencia conforme a los requisitos del SERMIG. Si está vencido, consulta el procedimiento con pasaporte caducado más abajo.'
            ),
            -- Fix 7: Tabla antecedentes venezolanos — organismos específicos + "90 días"
            'Emitido por el CICPC o el Ministerio del Poder Popular para Relaciones Interiores. Apostillado. No mayor a 90 días.',
            'Apostillado cuando corresponda. Los organismos emisores, plazos de antigüedad y demás requisitos pueden variar; verifica los criterios actualizados con el SERMIG.'
          ),
          -- Fix 8: Navegación exacta del portal → orientativa
          'Selecciona <strong>Solicitud de visa → Visa Temporaria → Razones humanitarias → Responsabilidad Democrática</strong>.',
          'Selecciona la categoría correspondiente a <strong>Responsabilidad Democrática</strong> conforme a las opciones disponibles en el portal.'
        ),
        -- Fix 9: "máximo 5 MB por archivo" — especificación cambiante del portal
        'Carga los documentos (PDF o JPG, máximo 5 MB por archivo) y paga el arancel.',
        'Carga los documentos en los formatos y condiciones indicados por el portal, y paga el arancel correspondiente.'
      ),
      -- Fix 10: URL cruda como anchor text en paso 3
      '>tramitesmigratorios.interior.gob.cl</a> y crea una cuenta.',
      '>Portal de Trámites Migratorios del SERMIG</a> y crea una cuenta.'
    ),
    -- Fix 11: Vigencia y renovación — "1 año calendario" + "1 año continuo" + "residir y trabajar sin límite"
    'La VRD se otorga por <strong>1 año calendario</strong> y es renovable. Después de 1 año continuo con la VRD vigente, puedes solicitar la <a href="/permanencia-definitiva">Permanencia Definitiva</a>. Esto te permite residir y trabajar en Chile sin límite de tiempo.',
    'La residencia temporal suele otorgarse por períodos limitados renovables, según las condiciones de la categoría y la resolución emitida. Cumplidos los requisitos de permanencia establecidos por la normativa vigente, es posible solicitar la <a href="/permanencia-definitiva">Permanencia Definitiva</a>.'
  ),
  -- Fix 12 (outermost): Trabajo — "permiso de trabajo en todas sus categorías" + "aceptado por muchos"
  'Sí. La Visa de Responsabilidad Democrática incluye <strong>permiso de trabajo</strong> en todas sus categorías. Puedes trabajar de forma dependiente o independiente desde que la visa está aprobada. Durante el trámite, el comprobante de solicitud también es aceptado por muchos empleadores.',
  'Las condiciones para realizar actividades remuneradas dependen de la resolución otorgada y de las autorizaciones vigentes asociadas al trámite migratorio. Algunos empleadores aceptan el comprobante de solicitud cuando este incluye autorización para actividades remuneradas; verifica la situación con tu empleador.'
)
WHERE slug = 'visa-temporaria/responsabilidad-democratica';

-- ============================================================
-- 2. faq_items (3 REPLACEs)
-- ============================================================

UPDATE articles
SET faq_items = REPLACE(
  REPLACE(
    REPLACE(
      faq_items::text,
      -- fq1 (innermost): "primero debes hacer la autodenuncia" → condicional
      '"answer": "Sí. Si ingresaste sin visa o tu visa venció, primero debes hacer la autodenuncia migratoria en la PDI. Con el Certificado de Autodenuncia puedes presentar la solicitud de VRD aunque hayas estado en situación irregular."',
      '"answer": "Si te encuentras en situación irregular, en muchos casos será necesario completar previamente la autodenuncia migratoria en la PDI y obtener el Certificado correspondiente. Los requisitos específicos pueden variar según la situación; verifica con el SERMIG."'
    ),
    -- fq2: "plazo legal de 30 días hábiles" + "es suficiente para trabajar"
    '"answer": "El SERMIG tiene plazo legal de 30 días hábiles, pero el tiempo real suele estar entre 60 y 180 días hábiles dependiendo de la carga del servicio. Durante ese período, el comprobante de solicitud es suficiente para trabajar."',
    '"answer": "Los plazos de tramitación son de referencia y pueden extenderse considerablemente según la carga del servicio, la categoría y la documentación presentada. Durante el período de tramitación, el comprobante de solicitud puede habilitar actividades remuneradas cuando incluye la autorización correspondiente."'
  ),
  -- fq3 (outermost): "1 año continuo con la VRD vigente"
  '"answer": "Sí. Después de completar 1 año continuo con la VRD vigente, puedes solicitar la Permanencia Definitiva, que no tiene límite de tiempo y te otorga residencia permanente en Chile."',
  '"answer": "Cumplidos los requisitos de tiempo, continuidad y permanencia establecidos por la normativa vigente, es posible solicitar la Permanencia Definitiva. Los plazos y condiciones pueden variar; consulta con el SERMIG los requisitos actualizados."'
)::jsonb
WHERE slug = 'visa-temporaria/responsabilidad-democratica';

-- ============================================================
-- Verificación
-- ============================================================
SELECT slug, updated_at
FROM articles
WHERE slug = 'visa-temporaria/responsabilidad-democratica';
