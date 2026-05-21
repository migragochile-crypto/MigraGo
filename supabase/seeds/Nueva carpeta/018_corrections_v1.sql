-- ============================================================
-- MigraciónChile — Seed 018: correcciones de calidad
-- Corrige 3 puntos identificados en revisión de contenido:
--   1. Comisiones AFP sin disclaimer de actualización
--   2. PGU 20 años sin nota de verificación
--   3. Plazo recurso de reposición sin referencia a lex specialis
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

-- ──────────────────────────────────────────────────────────
-- 1. vivir-en-chile/pension-afp
--    Corrige: comisiones AFP y PGU 20 años
-- ──────────────────────────────────────────────────────────
UPDATE articles
SET content = REPLACE(
  REPLACE(
    content,
    'La cotización obligatoria para pensión es de aproximadamente el <strong>10% del sueldo bruto</strong> mensual, más la comisión de la AFP (varía entre 0,58% y 1,45% según la AFP). El empleador descuenta este monto de tu sueldo y lo deposita directamente en tu cuenta AFP.',
    'La cotización obligatoria para pensión es de aproximadamente el <strong>10% del sueldo bruto</strong> mensual, más la comisión de la AFP, que varía según la AFP elegida. Las comisiones se ajustan periódicamente — consulta la tabla comparativa actualizada en <a href="https://www.spensiones.cl" target="_blank" rel="noopener noreferrer">spensiones.cl</a> antes de elegir o cambiar de AFP.'
  ),
  '<li>Han vivido en Chile de forma continua al menos <strong>20 años</strong> (entre los 20 y 65 años de edad).</li>
  <li>Tienen ingresos inferiores al umbral establecido.</li>
</ul>
<p>El requisito de residencia de 20 años limita el acceso para muchos migrantes recientes, pero si tienes años acumulados en Chile, la PGU puede ser un complemento importante a la pensión AFP.</p>',
  '<li>Han vivido en Chile de forma continua al menos <strong>20 años</strong> (entre los 20 y 65 años de edad, según la Ley 21.419 vigente). <em>Este requisito puede modificarse por ley — verifica los requisitos actualizados en el sitio de la Superintendencia de Pensiones.</em></li>
  <li>Tienen ingresos inferiores al umbral establecido.</li>
</ul>
<p>El requisito de residencia limita el acceso para muchos migrantes recientes, pero si tienes años acumulados en Chile, la PGU puede ser un complemento importante a la pensión AFP. Consulta los requisitos vigentes en <a href="https://www.spensiones.cl" target="_blank" rel="noopener noreferrer">spensiones.cl</a>.</p>'
)
WHERE slug = 'vivir-en-chile/pension-afp';

-- ──────────────────────────────────────────────────────────
-- 2. problemas/recurso-administrativo
--    Corrige: plazo de 5 días hábiles sin referencia a la ley
--    y sin nota de que la Ley 21.325 puede establecer plazos distintos
-- ──────────────────────────────────────────────────────────
UPDATE articles
SET content = REPLACE(
  content,
  '<p><strong>Atención:</strong> el plazo de 5 días hábiles es muy corto. Desde que recibes la notificación de rechazo, debes actuar rápido. La notificación puede llegar por correo electrónico o estar disponible en el portal del SERMIG.</p>',
  '<p><strong>Atención sobre los plazos:</strong> la Ley 19.880 (Bases de los Procedimientos Administrativos) establece 5 días hábiles como plazo general para interponer un recurso de reposición. Sin embargo, la Ley 21.325 (Migración) y la resolución de rechazo específica pueden indicar un plazo diferente. <strong>Lee siempre la resolución de rechazo completa</strong>: el plazo aplicable debe estar indicado en el mismo documento. Si no lo indica, aplica el plazo de 5 días hábiles desde la notificación.</p>'
)
WHERE slug = 'problemas/recurso-administrativo';

-- Corregir también los howto_steps del mismo artículo
UPDATE articles
SET howto_steps = REPLACE(
  howto_steps::text,
  '"text": "Sube el recurso y los documentos al portal del SERMIG o preséntalos en las oficinas. Guarda el comprobante de presentación."}',
  '"text": "Sube el recurso y los documentos al portal del SERMIG o preséntalos en las oficinas antes de que venza el plazo indicado en la resolución de rechazo. Guarda el comprobante de presentación."}'
)::jsonb
WHERE slug = 'problemas/recurso-administrativo';

-- Corregir el FAQ del mismo artículo
UPDATE articles
SET faq_items = REPLACE(
  faq_items::text,
  '"answer": "Legalmente sí, pero en la práctica los plazos suelen excederse. Si el SERMIG no resuelve el recurso de reposición en los 5 días hábiles, se entiende rechazado por silencio administrativo y puedes pasar directamente al recurso jerárquico."',
  '"answer": "Legalmente sí. El plazo para resolver está establecido en la resolución o en la ley aplicable. Si el SERMIG no resuelve el recurso de reposición dentro del plazo correspondiente, se entiende rechazado por silencio administrativo y puedes pasar directamente al recurso jerárquico ante el Ministerio del Interior."'
)::jsonb
WHERE slug = 'problemas/recurso-administrativo';

-- ──────────────────────────────────────────────────────────
-- Verificación: confirmar que los 2 artículos fueron actualizados
-- ──────────────────────────────────────────────────────────
SELECT slug, updated_at
FROM articles
WHERE slug IN (
  'vivir-en-chile/pension-afp',
  'problemas/recurso-administrativo'
)
ORDER BY slug;
