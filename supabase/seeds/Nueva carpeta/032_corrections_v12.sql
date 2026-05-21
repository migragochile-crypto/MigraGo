-- ============================================================
-- MigraciónChile — Seed 032: correcciones de calidad v12
-- Ajustes finos en autodenuncia/empadronamiento-biometrico
--   1. "sin completarlo, no se emite el Certificado" → habitual, no absoluto
--   2. "estos datos quedan registrados" → lenguaje institucional
--   3. "La PDI puede retener a la persona" → facultades legales, sin "retener"
--   4. "Delitos menores raramente son obstáculo" → técnico, no interpretativo
--   5. "No existe un proceso automático de eliminación" → derechos relativos
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

UPDATE articles
SET content = REPLACE(
  REPLACE(
    REPLACE(
      REPLACE(
        REPLACE(
          content,
          -- Fix 1: "sin completarlo, no se emite" → habitual, no absoluto
          'Es un paso obligatorio del proceso: sin completarlo, no se emite el Certificado de Autodenuncia.',
          'El registro biométrico forma parte habitual del proceso de autodenuncia migratoria y, en la práctica, suele ser necesario para completar el procedimiento y la emisión del Certificado de Autodenuncia.'
        ),
        -- Fix 2: "estos datos quedan registrados" → institucional
        'Estos datos quedan registrados en el sistema de control migratorio de la PDI.',
        'Los antecedentes recopilados pasan a formar parte de los registros utilizados por las autoridades migratorias y policiales conforme a la normativa vigente.'
      ),
      -- Fix 3: "La PDI puede retener a la persona" → facultades legales
      'Si la verificación arroja alertas de seguridad, la PDI puede retener a la persona o derivarla a otras instancias.',
      'Si durante la verificación aparecen órdenes judiciales vigentes, alertas internacionales u otras situaciones relevantes de seguridad, la PDI puede adoptar medidas conforme a sus facultades legales y derivar el caso a las autoridades competentes.'
    ),
    -- Fix 4: "Delitos menores raramente son obstáculo" → técnico
    'Delitos menores o condenas cumplidas raramente son un obstáculo para el proceso de autodenuncia.',
    'La evaluación depende del tipo de antecedente, su gravedad, antigüedad y situación judicial.'
  ),
  -- Fix 5: "No existe un proceso automático de eliminación" → derechos relativos
  'No existe un proceso automático de eliminación una vez que se regulariza la situación. Si deseas solicitar la eliminación de datos, puedes hacerlo invocando la Ley de Protección de Datos Personales (Ley 19.628), aunque las excepciones de seguridad pública pueden limitar este derecho.',
  'Los datos biométricos y migratorios pueden mantenerse en registros administrativos utilizados por las autoridades competentes conforme a la legislación vigente. Los derechos de acceso, rectificación o eliminación de datos pueden estar sujetos a limitaciones legales relacionadas con funciones de seguridad y control migratorio.'
)
WHERE slug = 'autodenuncia/empadronamiento-biometrico';

-- Verificación
SELECT slug, updated_at
FROM articles
WHERE slug = 'autodenuncia/empadronamiento-biometrico';
