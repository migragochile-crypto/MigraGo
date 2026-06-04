-- ─────────────────────────────────────────────────────────────────────────────
-- 1. residencia-definitiva/como-calcular-plazo
-- Diferenciado de requisitos (general) y reduccion-plazo (casos especiales)
-- Este artículo explica la mecánica de cálculo: qué días cuentan, interrupciones, etc.
-- ─────────────────────────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description, content,
  schema_type, author, reading_time_minutes, published_at, updated_at,
  faq_items, howto_steps, related_slugs, is_published
) VALUES (
  'residencia-definitiva/como-calcular-plazo',
  'residencia-definitiva',
  'residencia-definitiva',
  'cluster',
  'Cómo Calcular el Plazo de 2 Años para la Residencia Definitiva en Chile',
  'Cómo calcular el plazo de 2 años para la Residencia Definitiva en Chile',
  'Cómo se calculan los 2 años de residencia para pedir la Residencia Definitiva en Chile: qué días cuentan, si los viajes al exterior interrumpen el plazo y casos especiales.',
  $content$<h2>¿Desde cuándo empieza a correr el plazo?</h2>
<p>El plazo de 2 años (o 1 año en casos con reducción) para solicitar la Residencia Definitiva comienza a contarse desde la <strong>fecha de notificación de aprobación de tu primera Residencia Temporal</strong> — no desde la fecha en que obtuviste la cédula de extranjero.</p>

<h2>¿Qué días cuentan para el plazo?</h2>
<p>Cuentan los días de <strong>residencia legal continua en Chile</strong>. Esto incluye:</p>
<ul>
  <li>Los días que permaneciste en Chile con Residencia Temporal vigente.</li>
  <li>Los días que permaneciste en Chile durante la tramitación de la renovación (con prórroga o comprobante de radicación).</li>
  <li>El período entre la aprobación de la visa y la obtención de la cédula también cuenta.</li>
</ul>

<h2>¿Las salidas al exterior interrumpen el plazo?</h2>
<p>Este es uno de los puntos que más confusión genera. La respuesta es: <strong>depende</strong>.</p>
<ul>
  <li><strong>Salidas breves y ocasionales</strong> (menos de 90 días en total por año) generalmente <strong>no interrumpen</strong> el plazo — se considera que la residencia habitual es Chile.</li>
  <li><strong>Ausencias prolongadas</strong> (más de 180 días continuos fuera de Chile) pueden considerarse una <strong>interrupción de residencia</strong> — lo que podría reiniciar el conteo.</li>
  <li>El SERMIG evalúa caso a caso. No existe un criterio automático de días exactos publicado en la normativa.</li>
</ul>
<p><strong>Recomendación práctica:</strong> si planeas estar fuera de Chile por más de 3 meses seguidos, consulta con el SERMIG o un abogado migratorio antes de viajar. Ver también: <a href="/residencia-definitiva/prorroga-fuera-chile">Prórroga por ausencia prolongada de Chile</a></p>

<h2>¿Qué pasa si mi visa venció mientras tramitaba la renovación?</h2>
<p>Si presentaste la renovación antes de que venciera tu visa y tienes el comprobante de radicación, los días de tramitación <strong>sí cuentan</strong> para el plazo — tu residencia no se interrumpe. Lo que sí interrumpe el plazo es haber estado en situación irregular (sin visa vigente ni trámite en curso).</p>

<h2>Casos que reducen el plazo a 1 año</h2>
<p>En estos casos, el plazo se reduce de 2 años a 1 año:</p>
<ul>
  <li>Cónyuge o conviviente civil de ciudadano chileno.</li>
  <li>Padre o madre de hijo chileno.</li>
  <li>Haber cumplido cotizaciones previsionales continuas durante 12 meses.</li>
  <li>Otros casos contemplados en la normativa (refugiados, apátridas, casos de vulnerabilidad).</li>
</ul>
<p>Ver detalle: <a href="/residencia-definitiva/reduccion-plazo-12-meses">Reducción del plazo a 12 meses</a></p>

<h2>¿Cómo demuestro el plazo al SERMIG?</h2>
<p>Para acreditar los 2 años de residencia continua debes presentar:</p>
<ul>
  <li>Copia de tu cédula de identidad de extranjero vigente.</li>
  <li>Historial de visas/permisos (el portal del SERMIG lo registra automáticamente).</li>
  <li>En algunos casos: registro de entradas y salidas de PDI (se solicita a la PDI).</li>
</ul>

<h2>Ejemplo práctico de cálculo</h2>
<p>Situación: visa aprobada el 15 de marzo de 2024 → puedes presentar la Residencia Definitiva a partir del 15 de marzo de 2026 (2 años exactos), siempre que hayas mantenido residencia continua en Chile sin interrupciones significativas.</p>
<p>Si en ese período saliste 45 días en total por vacaciones, no hay problema. Si saliste 7 meses consecutivos, el SERMIG podría descontar ese período.</p>$content$,
  'FAQPage',
  'MigraGo',
  5,
  NOW(),
  NOW(),
  '[
    {"q": "¿Desde cuándo se cuentan los 2 años para la Residencia Definitiva?", "a": "Desde la fecha de notificación de aprobación de tu primera Residencia Temporal, no desde la fecha en que sacaste la cédula."},
    {"q": "¿Los viajes al exterior interrumpen el plazo para la Residencia Definitiva?", "a": "Las salidas breves (menos de 90 días en total por año) generalmente no interrumpen el plazo. Las ausencias prolongadas de más de 180 días continuos pueden ser consideradas una interrupción. El SERMIG evalúa caso a caso."},
    {"q": "¿Puedo pedir la Residencia Definitiva antes de los 2 años?", "a": "Sí, si cumples una de las condiciones de reducción de plazo: ser cónyuge de chileno, padre/madre de hijo chileno, o haber cotizado 12 meses continuos en AFP. En estos casos el plazo se reduce a 1 año."},
    {"q": "¿Qué pasa si mi visa venció durante el trámite de renovación?", "a": "Si presentaste la renovación antes del vencimiento y tienes el comprobante de radicación, esos días sí cuentan para el plazo. No hay interrupción de residencia mientras el trámite está en curso."}
  ]'::jsonb,
  '[]'::jsonb,
  ARRAY['residencia-definitiva/requisitos', 'residencia-definitiva/reduccion-plazo-12-meses', 'residencia-definitiva/prorroga-fuera-chile', 'residencia-definitiva/como-solicitarla'],
  TRUE
),

-- ─────────────────────────────────────────────────────────────────────────────
-- 2. ecuador/trabajar-en-chile
-- Diferenciado de vivir-en-chile/trabajar-en-chile (genérico)
-- Este artículo es específico para ecuatorianos: MERCOSUR, sectores, documentos
-- ─────────────────────────────────────────────────────────────────────────────
(
  'ecuador/trabajar-en-chile',
  'ecuador',
  'ecuador',
  'cluster',
  'Trabajar en Chile siendo Ecuatoriano 2026: Visa, Sectores y Derechos',
  'Trabajar en Chile siendo ecuatoriano: guía completa 2026',
  'Cómo trabajar en Chile siendo ecuatoriano: visa MERCOSUR sin contrato previo, sectores que más contratan ecuatorianos, derechos laborales y primeros pasos.',
  $content$<h2>¿Pueden los ecuatorianos trabajar en Chile?</h2>
<p><strong>Sí.</strong> Ecuador es parte del Acuerdo de Residencia del MERCOSUR, lo que significa que los ecuatorianos tienen acceso a la <strong>Residencia Temporal MERCOSUR</strong> — la vía más directa para trabajar legalmente en Chile sin necesitar un contrato previo.</p>

<h2>Ventaja MERCOSUR: no necesitas contrato para empezar</h2>
<p>A diferencia de países fuera del MERCOSUR (como Cuba o Haití), los ecuatorianos pueden solicitar la Residencia Temporal solo acreditando su nacionalidad:</p>
<ul>
  <li>Pasaporte ecuatoriano vigente.</li>
  <li>Certificado de nacimiento apostillado.</li>
  <li>Certificado de antecedentes penales apostillado.</li>
</ul>
<p>No necesitas tener trabajo al momento de solicitar. Puedes llegar a Chile, buscar trabajo y regularizarte al mismo tiempo.</p>
<p>→ Ver guía completa: <a href="/residencia-temporal/mercosur">Residencia Temporal MERCOSUR en Chile</a></p>

<h2>Proceso para trabajar legalmente como ecuatoriano</h2>
<ol>
  <li>Ingresa a Chile con pasaporte ecuatoriano (sin visa de turista requerida).</li>
  <li>Presenta solicitud de Residencia Temporal MERCOSUR en <strong>tramites.extranjeria.gob.cl</strong>.</li>
  <li>Con el comprobante de radicación, busca trabajo — muchos empleadores ya aceptan este documento.</li>
  <li>Cuando el SERMIG apruebe (2–5 meses), saca tu cédula de extranjero en el Registro Civil.</li>
  <li>Con la cédula, firma contrato formal con tu empleador.</li>
</ol>

<h2>Sectores que más contratan ecuatorianos en Chile</h2>
<ul>
  <li><strong>Construcción:</strong> alta demanda de operarios, albañiles y maestros. No siempre requiere estudios formales.</li>
  <li><strong>Gastronomía y hotelería:</strong> cocineros, garzones, personal de limpieza. Fuerte demanda en Santiago y ciudades turísticas.</li>
  <li><strong>Agricultura:</strong> temporada de cosecha (octubre–marzo) en regiones del Maule, O'Higgins y Los Lagos. Trabajo estacional con contrato.</li>
  <li><strong>Comercio:</strong> vendedores, promotores, reponedores en supermercados y tiendas.</li>
  <li><strong>Cuidado de personas:</strong> cuidadores de adultos mayores y de niños — alta demanda y posibilidad de vivir en el lugar de trabajo.</li>
  <li><strong>Tecnología:</strong> si tienes formación en IT, Chile tiene un mercado tech en crecimiento con buenas remuneraciones.</li>
</ul>

<h2>Apostilla de documentos ecuatorianos</h2>
<p>Ecuador es miembro del Convenio de La Haya. Los documentos se apostillan ante el <strong>Ministerio de Relaciones Exteriores de Ecuador</strong> (cancilleria.gob.ec). El proceso tiene opción en línea y tarda 3–5 días hábiles.</p>
<p>→ Ver: <a href="/ecuador/apostilla-ecuador">Apostilla de documentos ecuatorianos para Chile</a></p>

<h2>Tus derechos laborales en Chile</h2>
<p>Con contrato de trabajo tienes exactamente los mismos derechos que un trabajador chileno:</p>
<ul>
  <li>Sueldo mínimo: $500.000 CLP mensual (2026).</li>
  <li>Máximo 40 horas semanales.</li>
  <li>AFP, Fonasa/Isapre, seguro de cesantía.</li>
  <li>15 días hábiles de vacaciones anuales.</li>
</ul>
<p>→ Ver: <a href="/vivir-en-chile/trabajar-en-chile">Derechos laborales para extranjeros en Chile</a></p>

<h2>Doble nacionalidad</h2>
<p>Ecuador permite la doble nacionalidad. Si en el futuro te naturalizas chileno, conservas la ciudadanía ecuatoriana. Ver: <a href="/nacionalizacion/doble-nacionalidad">Doble nacionalidad en Chile</a></p>$content$,
  'FAQPage',
  'MigraGo',
  6,
  NOW(),
  NOW(),
  '[
    {"q": "¿Los ecuatorianos necesitan contrato de trabajo previo para entrar a Chile?", "a": "No. Ecuador es parte del MERCOSUR, por lo que los ecuatorianos pueden solicitar Residencia Temporal MERCOSUR solo con su pasaporte y documentos básicos apostillados — sin necesitar contrato previo."},
    {"q": "¿Cuánto demora la visa MERCOSUR para ecuatorianos en Chile?", "a": "Entre 2 y 5 meses desde la presentación de la solicitud completa. Es una de las categorías más rápidas del SERMIG."},
    {"q": "¿Puedo trabajar mientras espero la resolución de la visa?", "a": "En muchos casos sí, con el comprobante de radicación. Algunos empleadores informales y pequeñas empresas lo aceptan. Grandes empresas y el sector público suelen exigir la cédula de extranjero vigente."},
    {"q": "¿Qué sectores contratan más a ecuatorianos en Chile?", "a": "Construcción, gastronomía, agricultura estacional, comercio y cuidado de personas son los sectores con mayor demanda. Para profesionales, tecnología y salud ofrecen buenas oportunidades con títulos convalidados."}
  ]'::jsonb,
  '[]'::jsonb,
  ARRAY['residencia-temporal/mercosur', 'ecuador/opciones-visa', 'ecuador/apostilla-ecuador', 'vivir-en-chile/trabajar-en-chile', 'vivir-en-chile/costo-de-vida'],
  TRUE
);
