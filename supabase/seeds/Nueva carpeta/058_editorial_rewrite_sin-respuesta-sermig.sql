-- ============================================================
-- MigraciónChile — Seed 058: reescritura editorial v10
-- problemas/sin-respuesta-sermig — Fase A: Constitución Editorial
-- ÚLTIMO artículo de Fase A
-- Cambios content: apertura Tipo H + EEAT integrado ("Con observaciones"
--   como primer punto de verificación antes de actuar),
--   sección "¿Cuándo es razonable preocuparse?" renombrada,
--   todas las correcciones YMYL de seed 043 preservadas
-- Cambios FAQ: fq3 REPLACE — comprobante + trabajo → hedgeados
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

-- ============================================================
-- 1. sin-respuesta-sermig — content (reescritura estructural)
-- ============================================================

UPDATE articles
SET content = $$
<p>El SERMIG lleva meses sin resolver tu trámite y el portal no cambia. Antes de recurrir a los mecanismos de presión que existen, hay una verificación que muchos pasan por alto: si el estado dice <strong>Con observaciones</strong> en lugar de <em>En revisión</em>, el SERMIG está esperando una respuesta tuya. Puede llevar semanas sin que llegue notificación al correo — o haber caído al spam. Si ya lo verificaste y el problema es realmente la inacción, los pasos que siguen son los que corresponden.</p>

<h2>Los plazos reales: cuándo la espera es excesiva</h2>
<p>Los plazos legales del SERMIG son 30 días hábiles para la mayoría de los trámites. En la práctica, los tiempos reales aproximados han sido, como referencia orientativa:</p>
<ul>
  <li><strong>Visa temporaria estándar:</strong> 2–4 meses.</li>
  <li><strong>Permanencia Definitiva:</strong> 3–9 meses.</li>
</ul>
<p>Si llevas <strong>más del doble del plazo real habitual</strong> sin ningún cambio de estado (ni observaciones ni aprobación), es momento de actuar.</p>

<h2>Paso 1: Verifica el estado real en el portal</h2>
<p>Antes de cualquier acción, revisa en el <a href="https://tramitesmigratorios.interior.gob.cl" target="_blank" rel="noopener noreferrer">Portal de Trámites Migratorios del SERMIG</a>:</p>
<ul>
  <li>¿El estado dice <strong>Con observaciones</strong>? — revisa el correo, incluyendo la carpeta de spam. Generalmente hay un plazo para responder; verifica el plazo indicado en la notificación del SERMIG.</li>
  <li>¿El estado dice <strong>En revisión</strong> desde hace meses? — sigue los pasos abajo.</li>
  <li>¿El estado no ha cambiado desde que ingresaste la solicitud? — posible carga extrema del sistema o problema técnico.</li>
</ul>

<h2>Paso 2: Ir presencialmente al SERMIG</h2>
<p>La vía más directa es presentarse en la oficina del SERMIG de tu región y solicitar información sobre el estado del trámite. Lleva:</p>
<ul>
  <li>Cédula de identidad o pasaporte.</li>
  <li>Número de solicitud del trámite.</li>
  <li>Comprobante de trámite impreso.</li>
</ul>
<p>En la oficina puedes solicitar al funcionario que consulte el estado interno del expediente, que puede tener más detalle que el portal online.</p>

<h2>Paso 3: Solicitud de información por Ley de Transparencia</h2>
<p>La <strong>Ley 20.285 de Transparencia y Acceso a la Información Pública</strong> permite solicitar información formal a organismos del Estado. Puedes pedir al SERMIG:</p>
<ul>
  <li>Estado actual de tu expediente.</li>
  <li>Motivo de la demora.</li>
  <li>Fecha estimada de resolución.</li>
</ul>
<p>La solicitud se hace online en <a href="https://www.portaltransparencia.cl" target="_blank" rel="noopener noreferrer">portaltransparencia.cl</a>. El organismo tiene 20 días hábiles para responder. No garantiza que acelere el trámite, pero crea un registro formal que el SERMIG debe atender.</p>

<h2>Paso 4: Recurso por silencio administrativo</h2>
<p>Si el SERMIG no resuelve dentro del plazo legal, puede operar el <strong>silencio administrativo negativo</strong> — la solicitud se considera denegada por inacción. Esto abre la posibilidad de:</p>
<ul>
  <li><strong>Recurso de reposición:</strong> ante el propio SERMIG, solicitando que reconsidere la inacción.</li>
  <li><strong>Recurso jerárquico:</strong> ante el Ministerio del Interior.</li>
  <li><strong>Recurso de protección:</strong> ante la Corte de Apelaciones, si la inacción afecta derechos fundamentales (como el derecho a residir con la familia).</li>
</ul>
<p>Estos recursos son más efectivos con asesoría legal. Ver guía de <a href="/problemas/recurso-administrativo">recursos administrativos</a>.</p>

<h2>Paso 5: Denuncia ante organismos de control</h2>
<p>Si la demora está afectando derechos fundamentales (separación familiar, imposibilidad de trabajar, acceso a salud), puedes acudir a:</p>
<ul>
  <li><strong>Instituto Nacional de Derechos Humanos (INDH):</strong> recibe denuncias por vulneración de derechos. No resuelve el trámite directamente pero genera presión institucional.</li>
  <li><strong>Contraloría General de la República:</strong> fiscaliza la actuación de los organismos públicos.</li>
</ul>

<h2>Cuándo buscar asesoría legal</h2>
<p>Considera buscar asesoría legal cuando:</p>
<ul>
  <li>Llevas más de 12 meses sin respuesta.</li>
  <li>La demora te está causando daños concretos (trabajo, familia, salud).</li>
  <li>Tienes antecedentes complejos que podrían estar complicando la resolución.</li>
  <li>El SERMIG emitió una denegación sin explicación suficiente.</li>
</ul>
$$
WHERE slug = 'problemas/sin-respuesta-sermig';

-- ============================================================
-- 2. sin-respuesta-sermig — faq_items (1 REPLACE)
-- ============================================================

UPDATE articles
SET faq_items = REPLACE(
  faq_items::text,
  -- fq3: "estás en situación legal" + "Puedes trabajar" — absolutos
  '"answer": "Mientras tengas el comprobante de trámite activo, estás en situación legal en Chile. Puedes trabajar, permanecer en el país y acceder a servicios básicos. La demora del SERMIG no te pone en situación irregular si el trámite sigue activo."',
  '"answer": "Mientras tengas el comprobante de trámite activo, el documento puede habilitar tu permanencia en el país. La situación migratoria concreta depende de las condiciones del trámite y la categoría migratoria. La demora del SERMIG, por sí sola, no genera irregularidad si el trámite sigue formalmente activo — pero los derechos específicos que habilita el comprobante pueden variar según el caso."'
)::jsonb
WHERE slug = 'problemas/sin-respuesta-sermig';

-- ============================================================
-- Verificación
-- ============================================================
SELECT slug, updated_at
FROM articles
WHERE slug = 'problemas/sin-respuesta-sermig';
