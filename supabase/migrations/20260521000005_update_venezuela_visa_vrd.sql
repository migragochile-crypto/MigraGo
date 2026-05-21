BEGIN;

UPDATE articles SET
  title = 'Visa VRD Venezuela: Ya No Está Vigente — Alternativas en 2025',
  h1 = 'La Visa de Responsabilidad Democrática (VRD) ya no está vigente',
  meta_description = 'La Visa de Responsabilidad Democrática (VRD) para venezolanos fue discontinuada por el SERMIG en febrero de 2022. Ya no se aceptan nuevas solicitudes ni renovaciones. Conoce las alternativas vigentes en 2025.',
  keyword_primary = 'visa VRD venezolanos Chile discontinuada',
  content = $content$<div class="bg-red-50 border border-red-200 rounded-lg p-4 mb-6">
  <p class="font-semibold text-red-800">⚠ La VRD ya no está disponible</p>
  <p class="text-red-700 mt-1">El SERMIG dejó de emitir la Visa de Responsabilidad Democrática y de recibir solicitudes desde <strong>febrero de 2022</strong>. Esta página explica las alternativas vigentes.</p>
</div>

<h2>¿Qué fue la Visa de Responsabilidad Democrática?</h2>
<p>La <strong>Visa de Responsabilidad Democrática (VRD)</strong> fue una categoría de visa creada por Chile en 2018, exclusiva para ciudadanos venezolanos, en reconocimiento de la crisis política y humanitaria en Venezuela. Permitió regularizar a decenas de miles de venezolanos entre 2018 y 2022.</p>
<p>En <strong>febrero de 2022</strong>, el Servicio Nacional de Migraciones (SERMIG) discontinuó completamente esta categoría: dejó de recibir nuevas solicitudes y dejó de emitir nuevas VRD.</p>

<h2>¿Qué hago si tenía una VRD y venció?</h2>
<p>Si tu VRD venció y no pudiste renovarla antes de que la categoría fuera discontinuada, debes regularizar tu situación a través de las vías vigentes:</p>
<ol>
  <li><strong>Autodenuncia ante la PDI</strong> (si estás en situación irregular): es el primer paso obligatorio antes de cualquier trámite. Ver: <a href="/autodenuncia">Autodenuncia Migratoria paso a paso</a>.</li>
  <li><strong>Solicitar Residencia Temporal</strong> en la categoría que corresponda a tu situación (contrato de trabajo, hijo chileno, pareja chilena, etc.).</li>
</ol>

<h2>Alternativas vigentes para venezolanos en 2025</h2>
<p>Los venezolanos pueden solicitar <strong>Residencia Temporal</strong> por las siguientes vías:</p>

<ul>
  <li>
    <strong>Contrato de trabajo:</strong> la vía más común. Requiere contrato firmado con empleador chileno.
    Ver: <a href="/residencia-temporal/contrato-trabajo">Residencia por Contrato de Trabajo →</a>
  </li>
  <li>
    <strong>Hijo nacido en Chile:</strong> si tienes un hijo con nacionalidad chilena.
    Ver: <a href="/residencia-temporal/hijo-chileno">Residencia por Hijo Chileno →</a>
  </li>
  <li>
    <strong>Pareja o cónyuge chileno/a:</strong> unión civil o matrimonio con ciudadano/a chileno/a.
    Ver: <a href="/residencia-temporal/pareja-chilena">Residencia por Pareja Chilena →</a>
  </li>
  <li>
    <strong>Razones humanitarias:</strong> para situaciones de vulnerabilidad acreditada.
    Ver: <a href="/residencia-temporal/razones-humanitarias">Residencia por Razones Humanitarias →</a>
  </li>
  <li>
    <strong>Oferta laboral:</strong> si tienes una oferta de trabajo formal pero aún no tienes contrato.
    Ver: <a href="/residencia-temporal/oferta-laboral">Residencia por Oferta Laboral →</a>
  </li>
</ul>

<p><strong>Nota:</strong> Venezuela no es parte del MERCOSUR — los venezolanos no pueden acogerse a la categoría MERCOSUR.</p>

<h2>¿Puedo solicitar Residencia Definitiva si tuve VRD?</h2>
<p>Sí. Si acumulaste <strong>2 años continuos de residencia legal en Chile</strong> (incluyendo el tiempo con VRD vigente), puedes solicitar directamente la Residencia Definitiva. El plazo se reduce a <strong>1 año</strong> si tienes cónyuge chileno/a o hijos chilenos.</p>
<p>Ver guía completa: <a href="/residencia-definitiva">Residencia Definitiva en Chile →</a></p>

<h2>¿Dónde hacer los trámites?</h2>
<p>Todos los trámites de Residencia Temporal se realizan en el portal oficial del SERMIG: <strong>tramitesmigratorios.interior.gob.cl</strong>. Verifica en la plataforma cuál es la categoría disponible para tu situación.</p>$content$,
  faq_items = $faq$[
    {
      "question": "¿La Visa de Responsabilidad Democrática (VRD) sigue disponible?",
      "answer": "No. El SERMIG discontinuó la VRD en febrero de 2022 y ya no acepta nuevas solicitudes ni renovaciones. Los venezolanos deben regularizarse por otras vías: contrato de trabajo, hijo chileno, pareja chilena o razones humanitarias."
    },
    {
      "question": "Tenía una VRD que venció. ¿Qué hago ahora?",
      "answer": "Si tu VRD venció y estás en situación irregular, el primer paso es la autodenuncia ante la PDI. Luego puedes solicitar Residencia Temporal en la categoría que corresponda a tu situación actual (contrato de trabajo, hijo chileno, pareja chilena, etc.)."
    },
    {
      "question": "¿Puedo pedir Residencia Definitiva si tuve VRD?",
      "answer": "Sí, si acumulaste 2 años continuos de residencia legal en Chile (el tiempo con VRD vigente cuenta). El plazo se reduce a 1 año si tienes cónyuge chileno/a o hijos chilenos. Solicita en tramitesmigratorios.interior.gob.cl."
    },
    {
      "question": "¿Los venezolanos pueden usar la visa MERCOSUR?",
      "answer": "No. Venezuela no forma parte del Acuerdo de Residencia del MERCOSUR. Las vías disponibles para venezolanos son: contrato de trabajo, hijo chileno, pareja chilena, razones humanitarias y oferta laboral."
    },
    {
      "question": "¿Desde cuándo no existe la VRD?",
      "answer": "El SERMIG dejó de emitir la VRD y de recibir nuevas solicitudes desde febrero de 2022."
    }
  ]$faq$,
  related_slugs = ARRAY[
    'venezuela',
    'venezuela/pasaporte',
    'venezuela/antecedentes-penales',
    'residencia-temporal/contrato-trabajo',
    'residencia-temporal/hijo-chileno',
    'residencia-temporal/razones-humanitarias',
    'autodenuncia',
    'residencia-definitiva'
  ]
WHERE slug = 'venezuela/visa-vrd';

COMMIT;
