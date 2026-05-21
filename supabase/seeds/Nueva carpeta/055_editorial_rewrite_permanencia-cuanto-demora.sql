-- ============================================================
-- MigraciónChile — Seed 055: reescritura editorial v7
-- permanencia-definitiva/cuanto-demora — Fase A: Constitución Editorial
-- Cambios content: apertura Tipo G (cifra real vs. plazo legal — ejemplo
--   literal de la Constitución Editorial), secciones renombradas,
--   EEAT (observaciones = punto donde más solicitudes se estancan),
--   YMYL: comprobante bullets hedgeados, URL anchor text,
--   "8 meses" → período prolongado, removed "90 días" turista
-- Cambios FAQ: fq3 REPLACE "90 días" → plazo según condiciones de ingreso
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

-- ============================================================
-- 1. cuanto-demora — content (reescritura estructural)
-- ============================================================

UPDATE articles
SET content = $$
<p>Entre 3 y 9 meses. Ese es el rango en que se ubica la mayoría de las resoluciones de Permanencia Definitiva en Chile en 2025-2026, según los tiempos observados. El plazo legal del SERMIG son 30 días hábiles — una cifra que en la práctica no refleja los tiempos reales en la mayoría de los casos. Entender qué factores influyen en la espera ayuda a prepararse mejor y a saber cuándo hay razones reales para actuar.</p>

<h2>Plazos reales por tipo de caso</h2>
<p>Los tiempos varían según la completitud de los documentos y la complejidad del historial:</p>
<table>
  <thead>
    <tr><th>Situación</th><th>Tiempo real aproximado 2025-2026</th></tr>
  </thead>
  <tbody>
    <tr><td>Solicitud completa, sin observaciones, caso estándar</td><td>60–120 días hábiles (~3–6 meses)</td></tr>
    <tr><td>Solicitud con observaciones o documentación subsanada</td><td>90–180 días hábiles (~5–9 meses)</td></tr>
    <tr><td>Solicitud con antecedentes complejos (penales, múltiples visas anteriores)</td><td>120–240 días hábiles (~6–12 meses)</td></tr>
  </tbody>
</table>
<p>Estos rangos son referenciales y pueden variar según la carga del SERMIG en cada período y región.</p>

<h2>Lo que alarga o acorta la espera</h2>
<ul>
  <li><strong>Completitud de la documentación:</strong> una solicitud con todos los documentos en regla y vigentes se procesa más rápido que una que requiere subsanación.</li>
  <li><strong>Meses de mayor demanda:</strong> enero–marzo y julio–agosto tienden a tener tiempos más largos por el volumen de solicitudes.</li>
  <li><strong>Complejidad del historial migratorio:</strong> múltiples visas anteriores, irregularidades pasadas o antecedentes penales requieren más tiempo de evaluación.</li>
  <li><strong>Región:</strong> algunas regiones fuera de la Metropolitana procesan con menor carga y pueden resolver más rápido.</li>
</ul>

<h2>Qué puedes hacer mientras esperas</h2>
<p>Con el comprobante de solicitud activo, y en la medida en que incluya la autorización correspondiente, es posible:</p>
<ul>
  <li>Habilitar la permanencia en el país durante la tramitación.</li>
  <li>Realizar actividades laborales, si el comprobante incluye la autorización correspondiente.</li>
  <li>Renovar el RUT provisorio en el SII si es necesario.</li>
  <li>Acceder a atención en salud pública de urgencia.</li>
</ul>
<p>Lo que <strong>no puedes hacer</strong> con solo el comprobante: renovar la cédula de identidad para extranjeros — eso requiere la resolución aprobada.</p>

<h2>Cómo consultar el estado de tu solicitud</h2>
<ol>
  <li>Ingresa al <a href="https://tramitesmigratorios.interior.gob.cl" target="_blank" rel="noopener noreferrer">Portal de Trámites Migratorios del SERMIG</a>.</li>
  <li>Inicia sesión con tu cuenta.</li>
  <li>Ve a <strong>Mis trámites</strong> y busca la solicitud de Permanencia Definitiva.</li>
  <li>Los estados posibles son: <strong>En revisión, Con observaciones, Aprobado, Rechazado</strong>.</li>
</ol>
<p>Si aparece <strong>Con observaciones</strong>, el SERMIG detectó un problema con algún documento. Es el punto donde más solicitudes se estancan: tienes un plazo indicado en la notificación para subsanar. Si no respondes dentro de ese plazo, la solicitud puede ser rechazada.</p>

<h2>Cuándo actuar si no hay respuesta</h2>
<p>Si llevas un período prolongado desde la fecha de solicitud sin resolución y el estado sigue en "En revisión" sin observaciones, las opciones disponibles son:</p>
<ul>
  <li>Ir presencialmente a las oficinas del SERMIG de tu región y solicitar información sobre el estado.</li>
  <li>Presentar una solicitud formal de información invocando la <strong>Ley de Transparencia</strong> (Ley 20.285).</li>
  <li>En esperas muy prolongadas (más de un año sin respuesta), consultar con un abogado migratorio sobre el silencio administrativo.</li>
</ul>

<h2>¿Qué pasa si mi visa temporaria vence mientras espero?</h2>
<p>Si tu visa temporaria vence mientras tienes la solicitud de Permanencia Definitiva activa, el comprobante de solicitud puede habilitar la permanencia en el país durante la espera. La situación migratoria concreta puede depender del tipo de visa y las condiciones del caso. Para renovar la cédula de identidad para extranjeros necesitarás, en todo caso, la resolución aprobada.</p>
$$
WHERE slug = 'permanencia-definitiva/cuanto-demora';

-- ============================================================
-- 2. cuanto-demora — faq_items (1 REPLACE)
-- ============================================================

UPDATE articles
SET faq_items = REPLACE(
  faq_items::text,
  -- fq3: "reingresarías como turista (90 días)" — plazo absoluto
  '"answer": "Sí, puedes salir del país. Si tu visa temporaria sigue vigente, reingresas con ella. Si ya venció, reingresarías como turista (90 días). La solicitud de Permanencia Definitiva sigue activa mientras estás fuera, pero si reingresarás como turista puede haber complicaciones. Consulta con el SERMIG antes de viajar."',
  '"answer": "Sí, puedes salir del país. Si tu visa temporaria sigue vigente, reingresas con ella. Si ya venció, reingresarías en las condiciones que correspondan según tu situación de ingreso. La solicitud de Permanencia Definitiva sigue activa mientras estás fuera. Consulta con el SERMIG antes de viajar si tienes dudas sobre cómo afecta tu situación específica."'
)::jsonb
WHERE slug = 'permanencia-definitiva/cuanto-demora';

-- ============================================================
-- Verificación
-- ============================================================
SELECT slug, updated_at
FROM articles
WHERE slug = 'permanencia-definitiva/cuanto-demora';
