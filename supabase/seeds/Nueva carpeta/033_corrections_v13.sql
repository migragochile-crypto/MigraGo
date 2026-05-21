-- ============================================================
-- MigraciónChile — Seed 033: correcciones de calidad v13
-- Ajustes finos en autodenuncia/errores-comunes
--   1. "La PDI necesita tu pasaporte vigente" → idealmente / alternativas
--   2. "exclusivamente en una comisaría" → unidades habilitadas
--   3. "multa se paga al momento en la PDI" → instrucciones de la autoridad
--   4. "situación irregular continúa hasta que apruebe la visa" → más preciso
--   5. "vigencia de 90 días" → vigencia limitada (no universalizar)
--   6. "visa adecuada" / "tipo de visa" → categoría de residencia o visa (×3)
-- Ejecutar en: Supabase Dashboard → SQL Editor
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
                content,
                -- Fix 1: párrafo de error #1 — pasaporte "necesita" absoluto
                --        (consolida también la oración de seed 028 que quedó redundante)
                'El error más común. La PDI necesita tu pasaporte vigente. Si tu pasaporte venció mientras estabas en Chile, primero debes renovarlo en el consulado de tu país antes de presentarte a la autodenuncia. Si tu pasaporte está vencido, consulta previamente con la PDI o con el consulado de tu país sobre los documentos alternativos que podrían aceptarse en tu situación específica.',
                'El error más común. Idealmente debes presentar un pasaporte vigente o un documento de identidad válido y legible. En algunos casos, especialmente para ciertas nacionalidades o situaciones particulares, la PDI puede aceptar documentación alternativa, por lo que se recomienda consultar previamente con la autoridad migratoria o con el consulado correspondiente.'
              ),
              -- Fix 2: "exclusivamente en una comisaría" → unidades habilitadas
              'La autodenuncia se hace exclusivamente en una comisaría de la PDI.',
              'La autodenuncia se realiza en unidades habilitadas de la PDI para atención migratoria.'
            ),
            -- Fix 3: primer párrafo error #3 — multa "se paga al momento en la PDI"
            'La multa por permanencia irregular se paga al momento en la PDI. El monto varía según el tiempo de irregularidad. Aunque algunas comisarías pueden aceptar pagos electrónicos, es recomendable llevar efectivo en pesos chilenos para evitar problemas.',
            'El pago de la multa migratoria se realiza conforme a las instrucciones entregadas por la autoridad durante el procedimiento. Dependiendo de la unidad y del momento, el pago puede requerir medios electrónicos, entidades externas o comprobantes específicos.'
          ),
          -- Fix 4: primer párrafo error #6 — "situación irregular continúa"
          'Obtener el Certificado de Autodenuncia no regulariza tu situación: solo te habilita para solicitarla. La situación irregular continúa hasta que el SERMIG apruebe la visa. Cuanto antes presentes la solicitud en el SERMIG, antes comienza el trámite.',
          'Obtener el Certificado de Autodenuncia no equivale por sí solo a una residencia aprobada. La situación migratoria puede cambiar una vez presentada la solicitud ante el SERMIG y emitidos los comprobantes correspondientes, según la categoría y el estado del trámite. Cuanto antes presentes la solicitud en el SERMIG, antes comienza el proceso.'
        ),
        -- Fix 5: "vigencia de 90 días" — no universalizar el plazo
        'los documentos de respaldo (antecedentes penales, certificado de domicilio) tienen vigencia de 90 días.',
        'muchos documentos de respaldo (antecedentes penales, certificado de domicilio) tienen vigencia limitada.'
      ),
      -- Fix 6a: H2 sección 7 — "visa adecuada" → categoría de residencia o visa
      '<h2>7. No informarse sobre la visa adecuada antes de la autodenuncia</h2>',
      '<h2>7. No informarse sobre la categoría de residencia o visa antes de la autodenuncia</h2>'
    ),
    -- Fix 6b: oración intro sección 7 — "qué tipo de visa"
    'saber qué tipo de visa vas a solicitar después.',
    'saber qué categoría de residencia o visa vas a solicitar después.'
  ),
  -- Fix 6c: checklist final — "qué visa"
  '<li>Saber qué visa vas a solicitar después.</li>',
  '<li>Saber qué categoría de residencia o visa vas a solicitar después.</li>'
)
WHERE slug = 'autodenuncia/errores-comunes';

-- Verificación
SELECT slug, updated_at
FROM articles
WHERE slug = 'autodenuncia/errores-comunes';
