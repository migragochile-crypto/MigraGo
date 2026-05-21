-- ============================================================
-- MigraciónChile — Seed 051: reescritura editorial v3
-- visa-temporaria (hub) — Fase A: Constitución Editorial
-- Cambios content: apertura Tipo E, título sección categorías,
--   EEAT (error frecuente), YMYL ×3 en documentos
-- Cambios FAQ: fq4 plazo "90 días" absoluto
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

UPDATE articles
SET content = $$
<p>Para la mayoría de los migrantes en Chile, la residencia temporaria marca un antes y un después: el momento en que dejan de ser visitantes y empiezan a construir vida con derechos formales — trabajo, cédula, acceso a servicios y tiempo que acumula hacia la residencia permanente. La Ley 21.325 de 2021 organizó este permiso en categorías según el vínculo familiar, la actividad que se realiza o el origen del solicitante.</p>

<p>La nueva ley reemplazó el antiguo sistema de visas sujetas a contrato, que durante décadas generó dependencia laboral y vulnerabilidad para los migrantes. El nuevo marco es más amplio, aunque también más complejo: elegir la categoría correcta es el primer paso crítico del proceso.</p>

<h2>¿Qué diferencia a la visa temporaria del permiso de turismo?</h2>
<p>El permiso de turismo (90 días) solo autoriza a estar en Chile como visitante: no habilita para trabajar, no acumula tiempo para la permanencia definitiva y no da acceso a servicios públicos en las mismas condiciones que un residente.</p>
<p>La residencia temporal, en cambio:</p>
<ul>
  <li>Puede habilitar actividades remuneradas conforme a la categoría migratoria otorgada y las condiciones establecidas por la autoridad migratoria.</li>
  <li>Puede facilitar el acceso a determinados servicios públicos y de salud, sujeto a las condiciones de cada categoría y la normativa sectorial vigente.</li>
  <li><strong>Acumula tiempo</strong> para solicitar la Permanencia Definitiva.</li>
  <li>Permite obtener la <strong>cédula de identidad para extranjeros y el RUT</strong> definitivo.</li>
</ul>

<h2>Qué categoría aplica a tu situación</h2>
<p>La Ley 21.325 establece múltiples causales de visa. Estas son las principales:</p>

<h3>Por vínculo con ciudadano chileno</h3>
<ul>
  <li><a href="/visa-temporaria/hijo-chileno"><strong>Por hijo/a chileno/a:</strong></a> para padres y madres de hijos con nacionalidad chilena. Sin importar si conviven o no con el menor. Es una de las causales más sólidas.</li>
  <li><a href="/visa-temporaria/pareja-chilena"><strong>Por pareja chilena:</strong></a> para cónyuge o conviviente civil (AUC) de un/a ciudadano/a chileno/a. Requiere matrimonio o AUC formalmente inscrito.</li>
</ul>

<h3>Por acuerdo regional</h3>
<ul>
  <li><a href="/visa-temporaria/mercosur"><strong>Visa MERCOSUR:</strong></a> para ciudadanos de Argentina, Bolivia, Brasil, Colombia, Ecuador, Paraguay, Perú y Uruguay. Es una de las categorías con menores requisitos habituales, si bien los documentos necesarios pueden variar. Generalmente se solicita pasaporte y antecedentes penales (verifica con el SERMIG los requisitos actualizados). La vigencia puede ser de 2 años, según las condiciones de la categoría.</li>
</ul>

<h3>Por trabajo</h3>
<ul>
  <li><a href="/visa-temporaria/contrato-trabajo"><strong>Por contrato de trabajo:</strong></a> requiere contrato firmado con empleador en Chile. El empleador no necesita autorización especial del SERMIG.</li>
</ul>

<h3>Por estudio</h3>
<ul>
  <li><a href="/visa-temporaria/estudiante"><strong>Para estudiantes:</strong></a> requiere carta de aceptación en una institución educacional reconocida por el MINEDUC (universidad, instituto, liceo). No habilita para trabajar por defecto.</li>
</ul>

<h3>Categorías especiales</h3>
<ul>
  <li><a href="/visa-temporaria/responsabilidad-democratica"><strong>Visa de Responsabilidad Democrática (VRD):</strong></a> dirigida a ciudadanos venezolanos, sujeta a condiciones que pueden cambiar. Antes de iniciar el trámite, verifica con el SERMIG el estado vigente de esta categoría y los requisitos actualizados.</li>
  <li><a href="/visa-temporaria/razones-humanitarias"><strong>Por razones humanitarias:</strong></a> para situaciones de vulnerabilidad especial (trata de personas, enfermedad grave, violencia doméstica). Evaluación discrecional del SERMIG.</li>
  <li><a href="/visa-temporaria/jubilado-rentista"><strong>Para jubilados y rentistas:</strong></a> para quienes tienen ingresos regulares del extranjero (pensión, rentas, inversiones) y no necesitan trabajar en Chile.</li>
</ul>
<p>El error más frecuente en este punto es presentar la solicitud en la categoría equivocada. Un rechazo por esa razón puede retrasar el proceso varios meses. Si tienes dudas sobre qué categoría corresponde a tu situación, el SERMIG ofrece orientación antes de presentar.</p>

<h2>Documentos comunes a todas las categorías</h2>
<p>Con independencia de la categoría, comúnmente se solicitan los siguientes documentos de base (los requisitos pueden variar según el caso):</p>
<ul>
  <li><strong>Pasaporte vigente</strong> con vigencia suficiente conforme a los criterios del SERMIG al presentar.</li>
  <li><strong>Certificado de antecedentes penales del país de origen</strong>, apostillado, conforme al plazo de vigencia indicado por el SERMIG.</li>
  <li><strong>Certificado de antecedentes del Registro Civil de Chile</strong> (gratis en registrocivil.cl), conforme al plazo de vigencia indicado por el SERMIG.</li>
  <li><strong>Comprobante de domicilio en Chile</strong>: contrato de arriendo, boleta de servicios o declaración jurada notarial.</li>
  <li><strong>Fotografía reciente</strong> con fondo blanco en formato digital.</li>
</ul>
<p>Cada categoría adiciona sus propios documentos específicos (contrato, certificado de matrimonio, etc.).</p>

<h2>¿Estás en situación irregular? Primero la autodenuncia</h2>
<p>Si tu visa venció o nunca tuviste residencia legal, <strong>en muchos casos no es posible presentar la solicitud de residencia directamente</strong>. El paso previo obligatorio es la <a href="/autodenuncia">autodenuncia migratoria</a> en la PDI. Con el Certificado de Autodenuncia, sí puedes presentar la solicitud.</p>
<p>Si tu visa está vigente o llegaste con permiso de turismo y aún no venció, puedes ir directamente al portal del SERMIG sin pasar por la PDI.</p>

<h2>El proceso de solicitud paso a paso</h2>
<ol>
  <li>Determina qué categoría de visa aplica a tu situación.</li>
  <li>Reúne todos los documentos requeridos con fechas vigentes.</li>
  <li>Si estás en situación irregular, completa primero la autodenuncia en la PDI.</li>
  <li>Ingresa a <a href="https://tramitesmigratorios.interior.gob.cl" target="_blank" rel="noopener noreferrer">Portal de Trámites Migratorios del SERMIG</a>, crea una cuenta o inicia sesión.</li>
  <li>Selecciona la categoría de visa y completa el formulario.</li>
  <li>Sube todos los documentos solicitados en formato PDF o imagen.</li>
  <li>Paga el arancel de solicitud (varía según la categoría y el país de origen).</li>
  <li>Guarda el comprobante de trámite con el número de solicitud.</li>
</ol>

<h2>El comprobante de trámite: tus derechos mientras esperas</h2>
<p>Una vez presentada la solicitud, recibes un comprobante con número de trámite. Este documento es más importante de lo que parece: te habilita legalmente para:</p>
<ul>
  <li>Permanecer en Chile mientras la solicitud está activa.</li>
  <li>Trabajar, en caso de que el comprobante incluya autorización para actividades remuneradas conforme a tu categoría migratoria.</li>
  <li>Acceder a determinadas prestaciones de salud pública, principalmente urgencias y grupos prioritarios, conforme a la normativa vigente.</li>
  <li>Matricular a tus hijos en establecimientos educacionales.</li>
  <li>Solicitar el RUT provisorio en el SII.</li>
</ul>
<p>Lo que aún no puedes hacer con el comprobante: obtener la cédula de identidad para extranjeros (requiere la visa aprobada).</p>

<h2>¿Cuánto demora la resolución?</h2>
<p>La normativa migratoria contempla plazos de tramitación de referencia. En la práctica, los tiempos reales en 2025-2026 han sido:</p>
<table>
  <thead>
    <tr><th>Categoría</th><th>Tiempo real aproximado</th></tr>
  </thead>
  <tbody>
    <tr><td>Visa MERCOSUR</td><td>60–120 días hábiles</td></tr>
    <tr><td>Visa por vínculo familiar</td><td>60–150 días hábiles</td></tr>
    <tr><td>Visa por contrato de trabajo</td><td>60–150 días hábiles</td></tr>
    <tr><td>Visa VRD (venezolanos)</td><td>90–180 días hábiles</td></tr>
  </tbody>
</table>
<p>Para una guía detallada sobre tiempos y qué hacer durante la espera, consulta <a href="/autodenuncia/tiempos-reales">tiempos reales de tramitación SERMIG</a>.</p>

<h2>Vigencia, renovación y camino a la permanencia definitiva</h2>
<p>La residencia temporal se otorga generalmente por <strong>1 año renovable</strong> (2 años para la visa MERCOSUR). Para renovarla, debes presentar nueva solicitud antes del vencimiento con documentos actualizados.</p>
<p>Cumplidos ciertos requisitos de continuidad y tiempo de residencia —que varían según la categoría—, es posible solicitar la <a href="/permanencia-definitiva">Permanencia Definitiva</a>, que otorga una residencia sin fecha de vencimiento y derechos más amplios.</p>

<h2>¿Qué hacer si te rechazan?</h2>
<p>El SERMIG puede rechazar la solicitud por documentación incompleta, antecedentes o no cumplir los requisitos. Ante un rechazo:</p>
<ul>
  <li>Puedes presentar un recurso de reposición dentro del plazo indicado en la notificación de rechazo.</li>
  <li>Puedes presentar una nueva solicitud si corriges los problemas o tu situación cambia.</li>
</ul>
<p>Ver guía completa en <a href="/problemas/rechazo-visa">me rechazaron la visa: qué hacer</a>.</p>
$$
WHERE slug = 'visa-temporaria';

-- ============================================================
-- 2. visa-temporaria (hub) — faq_items (1 REPLACE)
-- ============================================================

UPDATE articles
SET faq_items = REPLACE(
  faq_items::text,
  -- fq4: "el plazo de 90 días vuelve a correr" — plazo absoluto
  '"answer": "Puedes salir del país con el comprobante de trámite. Al reingresar como turista, el plazo de 90 días vuelve a correr, pero la solicitud sigue activa. Si la visa se aprueba mientras estás fuera, necesitarás ingresar para iniciar el proceso de cédula."',
  '"answer": "Puedes salir del país con el comprobante de trámite. Al reingresar como turista, los plazos de estadía como visitante vuelven a correr según las condiciones de ingreso, pero la solicitud sigue activa. Si la visa se aprueba mientras estás fuera, necesitarás ingresar para iniciar el proceso de cédula."'
)::jsonb
WHERE slug = 'visa-temporaria';

-- ============================================================
-- Verificación
-- ============================================================
SELECT slug, updated_at
FROM articles
WHERE slug = 'visa-temporaria';
