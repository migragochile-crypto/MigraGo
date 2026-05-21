-- ============================================================
-- MigraciónChile — Seed 035: correcciones de calidad v15
-- Dos artículos YMYL:
--   visa-temporaria/hijo-chileno     (12 content + 2 FAQ)
--   visa-temporaria/contrato-trabajo (12 content + 1 FAQ)
-- Patrón general: plazos exactos → referenciales, absolutos → condicionales,
--   navegación exacta → orientativa, RUT/visa → terminología institucional.
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

-- ============================================================
-- 1a. visa-temporaria/hijo-chileno — content (12 REPLACEs)
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
                        -- h1 (innermost): pasaporte "al menos 6 meses" — absoluto
                        'Con al menos 6 meses de vigencia. Si está por vencer, renuévalo antes de solicitar.',
                        'Generalmente se solicita pasaporte vigente. Los requisitos de vigencia pueden variar; verifica los criterios actualizados con el SERMIG.'
                      ),
                      -- h2: certificado nacimiento "no más de 90 días"
                      'Emitido por el SRCeI, con no más de 90 días de antigüedad.',
                      'Emitido por el SRCeI, preferentemente reciente. Los plazos de aceptación pueden variar según los requisitos vigentes del SERMIG.'
                    ),
                    -- h3: antecedentes penales "No mayor a 90 días"
                    'Apostillado. Si no está en español, debe ir traducido por traductor oficial. No mayor a 90 días.',
                    'Apostillado. Si no está en español, debe ir acompañado de traducción oficial. Los plazos de antigüedad aceptable pueden variar según los requisitos del SERMIG.'
                  ),
                  -- h4: step 1 "90 días de antigüedad"
                  'Verifica que ningún certificado supere los 90 días de antigüedad al momento de presentar.',
                  'Verifica que los documentos estén vigentes conforme a los requisitos actualizados del SERMIG al momento de presentar.'
                ),
                -- h5: irregular "primero debes completar"
                'Si tu visa de turismo está vencida o ingresaste sin visa, primero debes completar el proceso de <a href="/autodenuncia">autodenuncia migratoria</a> en la PDI.',
                'Si tu visa de turismo está vencida o ingresaste sin visa, en muchos casos será necesario completar previamente el proceso de <a href="/autodenuncia">autodenuncia migratoria</a> en la PDI.'
              ),
              -- h6: navegación exacta del portal
              'Selecciona <strong>Solicitud de visa → Visa Temporaria → Vínculo con ciudadano chileno → Hijo/a</strong>.',
              'Selecciona la categoría correspondiente a <strong>vínculo con ciudadano chileno (hijo/a)</strong> conforme a las opciones disponibles en el portal.'
            ),
            -- h7: "máximo 5 MB por archivo" — especificación cambiante
            'Carga los documentos en formato PDF o JPG (máximo 5 MB por archivo).',
            'Carga los documentos en los formatos y condiciones indicadas por el portal al momento de la solicitud.'
          ),
          -- h8: "1 año calendario y es renovable"
          'Una vez aprobada, la visa se otorga por <strong>1 año calendario</strong> y es renovable.',
          'Una vez aprobada, la residencia se otorga generalmente por períodos temporales renovables, según las condiciones establecidas por la autoridad.'
        ),
        -- h9: "Después de completar 1 año con visa temporaria vigente"
        'Después de completar 1 año con visa temporaria vigente, puedes solicitar la <a href="/permanencia-definitiva">Permanencia Definitiva</a>, que no tiene límite de tiempo.',
        'Cumplidos los requisitos de permanencia y continuidad establecidos por la normativa, es posible solicitar la <a href="/permanencia-definitiva">Permanencia Definitiva</a>, que otorga una residencia sin fecha de vencimiento.'
      ),
      -- h10: comprobante trabajo "suficiente para trabajar en la mayoría"
      'Sí. El comprobante de solicitud en curso es suficiente para trabajar en la mayoría de los empleadores chilenos.',
      'El comprobante de solicitud puede habilitar actividades remuneradas cuando incluye autorización para ello conforme a la categoría migratoria.'
    ),
    -- h11: "RUT definitivo en el SRCeI"
    'Sin embargo, para obtener tu <a href="/vivir-en-chile/rut-extranjero">RUT definitivo</a> en el SRCeI, deberás esperar a que la visa sea aprobada.',
    'La cédula de identidad para extranjeros y los registros definitivos asociados requieren la aprobación de la residencia.'
  ),
  -- h12 (outermost): apostilla Venezuela — organismo extranjero específico
  'Si eres venezolano, la apostilla puede obtenerse en el Ministerio del Poder Popular para Relaciones Exteriores.',
  'Los mecanismos de apostilla varían según el país de origen y pueden cambiar; consulta el procedimiento vigente en el consulado o autoridad competente de tu país.'
)
WHERE slug = 'visa-temporaria/hijo-chileno';

-- ============================================================
-- 1b. visa-temporaria/hijo-chileno — faq_items (2 REPLACEs)
-- ============================================================

UPDATE articles
SET faq_items = REPLACE(
  REPLACE(
    faq_items::text,
    -- hf1: "La visa temporaria incluye permiso de trabajo / habilitante en muchos"
    '"answer": "Sí. La visa temporaria incluye permiso de trabajo. Una vez aprobada puedes trabajar de forma dependiente o independiente. Durante el trámite, el comprobante de solicitud también sirve como habilitante en muchos empleadores."',
    '"answer": "La residencia temporal por hijo/a chileno/a puede incluir habilitación para trabajar conforme a las condiciones de la categoría. Durante el trámite, el comprobante de solicitud puede servir como documento habilitante en la medida en que incluya autorización para actividades remuneradas. Verifica las condiciones con el SERMIG o tu empleador."'
  ),
  -- hf2: "1 año continuo" y "plazo puede ser inmediato"
  '"answer": "Después de completar 1 año continuo con la visa temporaria vigente puedes solicitar la Permanencia Definitiva. En casos especiales (hijo menor de 18 años), el plazo puede ser inmediato."',
  '"answer": "Cumplidos los requisitos de tiempo, continuidad y permanencia establecidos por la normativa, es posible solicitar la Permanencia Definitiva. Los plazos y condiciones pueden variar según la categoría y las circunstancias del caso; consulta con el SERMIG los requisitos actualizados."'
)::jsonb
WHERE slug = 'visa-temporaria/hijo-chileno';

-- ============================================================
-- 2a. visa-temporaria/contrato-trabajo — content (12 REPLACEs)
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
                        -- c1 (innermost): "antecedentes penales graves" — subjetivo
                        'No tenga antecedentes penales graves en Chile ni en su país de origen.',
                        'Los antecedentes penales son evaluados por la autoridad migratoria conforme a la normativa vigente.'
                      ),
                      -- c2: irregular "debe completar primero"
                      'Se encuentre en Chile — si está en situación irregular, debe completar primero la <a href="/autodenuncia">autodenuncia migratoria</a>.',
                      'Se encuentre en Chile — si está en situación irregular, en muchos casos será necesario completar previamente la <a href="/autodenuncia">autodenuncia migratoria</a>.'
                    ),
                    -- c3: rol empleador — registrar contrato en DT (con link)
                    'Registrar el contrato en la <strong>Dirección del Trabajo</strong> a través del portal <a href="https://www.dt.gob.cl" target="_blank" rel="noopener noreferrer">dt.gob.cl</a>.',
                    'Cumplir con las obligaciones laborales y registrales aplicables conforme a la normativa laboral chilena vigente.'
                  ),
                  -- c3b: paso a paso step 1 — misma lógica (texto plano)
                  'El empleador firma el contrato de trabajo y lo registra en la Dirección del Trabajo.',
                  'El empleador formaliza el contrato de trabajo y cumple con las obligaciones registrales aplicables conforme a la normativa laboral chilena.'
                ),
                -- c4: "contrato no registrado puede ser rechazado"
                'Un contrato no registrado en la Dirección del Trabajo puede ser rechazado por el SERMIG.',
                'El incumplimiento de obligaciones laborales o documentales puede afectar la evaluación migratoria.'
              ),
              -- c5a: tabla — pasaporte "mín. 6 meses de vigencia"
              'Pasaporte vigente (mín. 6 meses de vigencia)',
              'Pasaporte vigente (vigencia conforme a los requisitos del SERMIG)'
            ),
            -- c5b: tabla — antecedentes "no mayor a 90 días"
            'El trabajador — no mayor a 90 días',
            'El trabajador — vigente conforme a los requisitos del SERMIG'
          ),
          -- c6: navegación exacta del portal
          'Selecciona <strong>Solicitud de visa → Visa Temporaria → Trabajo → Contrato de trabajo</strong>.',
          'Selecciona la categoría correspondiente a <strong>residencia temporal por motivos laborales (contrato de trabajo)</strong> conforme a las opciones disponibles en el portal.'
        ),
        -- c7: comprobante trabajo "Sí. Desde el momento / No debes esperar"
        'Sí. Desde el momento en que presentas la solicitud, el comprobante de trámite te habilita para trabajar con el empleador que firmó el contrato. No debes esperar a que el SERMIG resuelva para comenzar a trabajar.',
        'El comprobante de solicitud puede habilitar actividades remuneradas cuando incluye autorización para ello conforme a la categoría migratoria y las condiciones del trámite. Los criterios de aceptación pueden variar, por lo que se recomienda verificar la situación con el empleador y la autoridad migratoria.'
      ),
      -- c8: "RUT definitivo en el Registro Civil"
      'Sin embargo, para obtener tu <strong>RUT definitivo</strong> en el Registro Civil deberás esperar a que la visa sea aprobada.',
      'La cédula de identidad para extranjeros y los registros definitivos asociados requieren la aprobación de la residencia.'
    ),
    -- c9: "La visa se otorga inicialmente por 1 año"
    'La visa se otorga inicialmente por <strong>1 año</strong> y es renovable mientras mantengas la relación laboral.',
    'La residencia temporal suele otorgarse por períodos limitados renovables, según la categoría y la resolución emitida.'
  ),
  -- c10 (outermost): "Después de 1 año continuo con la visa vigente"
  'Después de 1 año continuo con la visa vigente puedes solicitar la <a href="/permanencia-definitiva">Permanencia Definitiva</a>.',
  'Cumplidos los requisitos de tiempo y continuidad establecidos por la normativa, es posible solicitar la <a href="/permanencia-definitiva">Permanencia Definitiva</a>.'
)
WHERE slug = 'visa-temporaria/contrato-trabajo';

-- ============================================================
-- 2b. visa-temporaria/contrato-trabajo — faq_items (1 REPLACE)
-- ============================================================

UPDATE articles
SET faq_items = REPLACE(
  faq_items::text,
  -- cf1: "máximo 5 MB por archivo" — especificación cambiante del portal
  '"answer": "El portal del SERMIG acepta documentos en formato PDF o JPG (máximo 5 MB por archivo). No es necesario presentar documentos físicos salvo que se te indique lo contrario en la resolución."',
  '"answer": "El portal del SERMIG acepta documentos en los formatos indicados al momento de la solicitud. No es necesario presentar documentos físicos salvo que se te indique lo contrario en la resolución."'
)::jsonb
WHERE slug = 'visa-temporaria/contrato-trabajo';

-- ============================================================
-- Verificación
-- ============================================================
SELECT slug, updated_at
FROM articles
WHERE slug IN (
  'visa-temporaria/hijo-chileno',
  'visa-temporaria/contrato-trabajo'
)
ORDER BY slug;
