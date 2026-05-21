-- ============================================================
-- MigraciónChile — Seed v15d: solo problemas/sin-respuesta-sermig
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'problemas/sin-respuesta-sermig',
  'problemas',
  'problemas',
  'cluster',
  'SERMIG No Responde: Qué Hacer Cuando Tu Trámite No Avanza 2026',
  'SERMIG Sin Respuesta: Cómo Actuar Cuando Tu Trámite Lleva Meses Sin Resolución',
  'Qué hacer cuando el SERMIG no resuelve tu trámite de visa o permanencia definitiva. Recursos, plazos legales, Ley de Transparencia y cuándo buscar asesoría legal.',
  'sermig no responde tramite sin respuesta',
  $t1$
<p>Una de las quejas más frecuentes entre migrantes en Chile es la demora excesiva del SERMIG para resolver trámites. Si llevas meses sin respuesta y el estado no cambia, no eres el único — y existen mecanismos para presionar la resolución.</p>

<h2>¿Cuándo es razonable preocuparse?</h2>
<p>Los plazos legales del SERMIG son 30 días hábiles para cualquier trámite (visa temporaria, Permanencia Definitiva, renovaciones). En la práctica, los tiempos reales son:</p>
<ul>
  <li><strong>Visa temporaria estándar:</strong> 2–4 meses.</li>
  <li><strong>Permanencia Definitiva:</strong> 3–9 meses.</li>
</ul>
<p>Si llevas <strong>más del doble del plazo real habitual</strong> sin ningún cambio de estado (ni observaciones ni aprobación), es momento de actuar.</p>

<h2>Paso 1: Revisar el estado en el portal</h2>
<p>Antes de cualquier acción, verifica en <a href="https://tramitesmigratorios.interior.gob.cl" target="_blank" rel="noopener noreferrer">tramitesmigratorios.interior.gob.cl</a>:</p>
<ul>
  <li>¿El estado dice "Con observaciones"? — revisa el correo (incluyendo spam). Hay un plazo de 10 días hábiles para responder.</li>
  <li>¿El estado dice "En revisión" desde hace meses? — sigue los pasos abajo.</li>
  <li>¿El estado no ha cambiado desde el primer día? — posible problema técnico del sistema o carga extrema.</li>
</ul>

<h2>Paso 2: Ir presencialmente al SERMIG</h2>
<p>La vía más directa es presentarse en la oficina del SERMIG de tu región. Lleva cédula o pasaporte, número de solicitud y comprobante de trámite impreso. En la oficina puedes pedir al funcionario que consulte el estado interno del expediente, que suele tener más detalle que el portal online.</p>

<h2>Paso 3: Solicitud por Ley de Transparencia</h2>
<p>La <strong>Ley 20.285</strong> permite solicitar información a organismos del Estado. Puedes hacer una solicitud formal al SERMIG en <a href="https://www.portaltransparencia.cl" target="_blank" rel="noopener noreferrer">portaltransparencia.cl</a> pidiendo el estado actual, el motivo de la demora y la fecha estimada de resolución. El organismo tiene <strong>20 días hábiles</strong> para responder. No acelera directamente, pero crea un registro formal.</p>

<h2>Paso 4: Recurso por silencio administrativo</h2>
<p>Vencido el plazo legal sin resolución, opera el <strong>silencio administrativo negativo</strong> y puedes interponer:</p>
<ul>
  <li><strong>Recurso de reposición:</strong> ante el propio SERMIG.</li>
  <li><strong>Recurso jerárquico:</strong> ante el Ministerio del Interior.</li>
  <li><strong>Recurso de protección:</strong> ante la Corte de Apelaciones si se afectan derechos fundamentales.</li>
</ul>
<p>Estos recursos son más efectivos con asesoría legal. Ver la guía de <a href="/problemas/recurso-administrativo">recursos administrativos</a>.</p>

<h2>Paso 5: Denuncia ante el INDH o Contraloría</h2>
<p>Si la demora afecta derechos fundamentales (separación familiar, imposibilidad de trabajar), puedes denunciar ante el <strong>Instituto Nacional de Derechos Humanos (INDH)</strong> o la <strong>Contraloría General de la República</strong>. No resuelven el trámite directamente pero generan presión institucional.</p>

<h2>¿Cuándo buscar abogado?</h2>
<ul>
  <li>Llevas más de 12 meses sin respuesta.</li>
  <li>La demora te está causando daños graves (trabajo, familia, salud).</li>
  <li>Tienes antecedentes complejos.</li>
  <li>El SERMIG emitió una denegación sin explicación suficiente.</li>
</ul>
<p>La Corporación de Asistencia Judicial (CAJ) ofrece asesoría gratuita o a bajo costo para quienes no tienen recursos.</p>
  $t1$,
  '[
    {
      "question": "¿Puedo exigir que el SERMIG resuelva en el plazo legal de 30 días?",
      "answer": "Tienes el derecho legal, pero ejercerlo es complejo. El mecanismo del silencio administrativo existe, pero activarlo requiere conocimiento del proceso. La mayoría de los migrantes prefieren presionar por vías administrativas antes de recurrir a acciones legales formales."
    },
    {
      "question": "¿La solicitud de Transparencia acelera mi trámite?",
      "answer": "No directamente, pero crea un registro formal que el SERMIG debe responder. En algunos casos llama la atención sobre expedientes estancados. Como mínimo, te da información oficial sobre el estado real de tu solicitud."
    },
    {
      "question": "¿Qué pasa con mi situación legal mientras espero?",
      "answer": "Mientras tengas el comprobante de trámite activo estás en situación legal en Chile. Puedes trabajar, permanecer en el país y acceder a servicios básicos. La demora del SERMIG no te pone en situación irregular si el trámite sigue activo."
    },
    {
      "question": "¿Puedo contratar un abogado migratorio y cuánto cuesta?",
      "answer": "Sí. Los abogados migratorios cobran desde $50.000 hasta $300.000 CLP por caso según complejidad. Si no tienes recursos, la Corporación de Asistencia Judicial (CAJ) ofrece asesoría gratuita o de bajo costo."
    }
  ]'::jsonb,
  ARRAY[
    'problemas',
    'problemas/recurso-administrativo',
    'permanencia-definitiva/cuanto-demora',
    'autodenuncia',
    'visa-temporaria'
  ]::TEXT[],
  5,
  TRUE,
  NOW()
)
ON CONFLICT (slug) DO NOTHING;
