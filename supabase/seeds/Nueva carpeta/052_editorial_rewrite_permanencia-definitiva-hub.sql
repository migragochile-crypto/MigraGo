-- ============================================================
-- MigraciónChile — Seed 052: reescritura editorial v4
-- permanencia-definitiva (hub) — Fase A: Constitución Editorial
-- Cambios content: apertura Tipo E, secciones renombradas,
--   EEAT ×2 (error frecuente año desde aprobación + nota docs),
--   YMYL costos (verificar portal), "Si te rechazan" con lista
-- Sin cambios FAQ (ya corregida en seed 044)
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

UPDATE articles
SET content = $$
<p>Para muchos migrantes en Chile, la Permanencia Definitiva es el momento en que el proceso deja de sentirse provisional. No es la visa que se renueva cada año: es el permiso sin fecha de vencimiento. Ese cambio —de residente temporal a residente permanente— tiene consecuencias prácticas concretas: mayor estabilidad laboral, acceso más amplio a servicios del Estado, y el punto de partida formal para quienes quieran naturalizarse en el futuro.</p>

<p>Fue establecida y regulada por la <strong>Ley 21.325 de Migración y Extranjería</strong> de 2021, que simplificó los tiempos mínimos de residencia respecto al sistema anterior. Aunque el requisito principal es uno solo —1 año de residencia continua con visa temporaria vigente—, hay causales adicionales y errores frecuentes en el cálculo que vale la pena conocer antes de presentar.</p>

<h2>¿Puedes solicitarla ya?</h2>
<p>La vía más común es haber residido en Chile con <strong>visa temporaria vigente durante 1 año continuo</strong>. Ese plazo empieza a contar desde la fecha de <em>aprobación</em> de la visa, no desde la fecha de solicitud. Otras causales que pueden modificar este requisito:</p>
<ul>
  <li>Cónyuge o conviviente civil de ciudadano/a chileno/a con residencia acreditada.</li>
  <li>Padre o madre de hijo/a chileno/a menor de 18 años.</li>
  <li>Hijo/a de residente permanente.</li>
  <li>Titulares de visa MERCOSUR con 2 años de residencia continua.</li>
</ul>
<p>Un error frecuente es calcular el año desde la fecha en que se presentó la solicitud de visa temporaria, en vez de desde la aprobación. Esa diferencia puede ser de varios meses y derivar en un rechazo por tiempo insuficiente.</p>

<h2>Documentos que se solicitan</h2>
<p>Con independencia de la causal, los documentos base son:</p>
<ul>
  <li><strong>Pasaporte vigente</strong> con vigencia suficiente conforme a los requisitos del SERMIG al presentar.</li>
  <li><strong>Visa temporaria vigente</strong> o cédula de identidad para extranjeros vigente.</li>
  <li><strong>Certificado de antecedentes del Registro Civil de Chile</strong>, conforme al plazo de vigencia indicado por el SERMIG.</li>
  <li><strong>Certificado de antecedentes penales del país de origen</strong>, apostillado, conforme al plazo de vigencia indicado por el SERMIG.</li>
  <li><strong>Comprobante de domicilio</strong> en Chile vigente.</li>
  <li><strong>Acreditación de medios de vida lícitos</strong>: contrato de trabajo, boletas de honorarios, declaración de renta u otro documento que pruebe actividad económica o ingresos.</li>
  <li><strong>Fotografía reciente</strong> con fondo blanco.</li>
</ul>
<p>Si solicitas por vínculo familiar (hijo chileno, pareja chilena), se agregan los documentos que acreditan ese vínculo. La vigencia de los certificados es uno de los puntos donde el SERMIG suele hacer observaciones: los documentos deben estar vigentes no solo al subirse al portal, sino en el momento en que se evalúan.</p>

<h2>El proceso de solicitud</h2>
<p>La solicitud se presenta en el <a href="https://tramitesmigratorios.interior.gob.cl" target="_blank" rel="noopener noreferrer">Portal de Trámites Migratorios del SERMIG</a>. Los pasos son:</p>
<ol>
  <li>Verifica que cumples el tiempo mínimo de residencia con visa temporaria vigente.</li>
  <li>Reúne todos los documentos con fechas vigentes conforme a los plazos de vigencia indicados por el SERMIG.</li>
  <li>Ingresa al portal, selecciona <strong>Permanencia Definitiva</strong> y completa el formulario.</li>
  <li>Sube los documentos en formato PDF o imagen de buena calidad.</li>
  <li>Paga el arancel de solicitud.</li>
  <li>Guarda el comprobante de trámite con número de solicitud.</li>
</ol>

<h2>Cuánto demora y qué ocurre mientras esperas</h2>
<p>El SERMIG tiene plazos legales de referencia, pero en la práctica los tiempos registrados han sido:</p>
<table>
  <thead>
    <tr><th>Situación</th><th>Tiempo real aproximado 2025-2026</th></tr>
  </thead>
  <tbody>
    <tr><td>Caso estándar sin observaciones</td><td>60–120 días hábiles</td></tr>
    <tr><td>Caso con observaciones o documentación incompleta</td><td>90–180 días hábiles</td></tr>
    <tr><td>Recurso administrativo por rechazo</td><td>30–90 días hábiles adicionales</td></tr>
  </tbody>
</table>
<p>Durante la espera, el comprobante de trámite puede habilitar la permanencia en el país y, en la medida en que incluya la autorización correspondiente, ciertas actividades laborales. Para una guía sobre qué hacer en ese período, consulta <a href="/permanencia-definitiva/cuanto-demora">tiempos reales del SERMIG para la permanencia definitiva</a>.</p>

<h2>Costos</h2>
<p>El arancel varía según el país de origen (principio de reciprocidad). Para la mayoría de los ciudadanos latinoamericanos oscila entre $50.000 y $100.000 CLP. Algunas categorías por vínculo familiar pueden tener aranceles reducidos. Verifica el valor actualizado en el portal del SERMIG antes de pagar.</p>

<h2>Qué cambia en la práctica</h2>
<p>La diferencia más importante frente a la visa temporaria es la <strong>estabilidad</strong>: ya no hay que renovar el permiso cada año. Los cambios concretos:</p>
<table>
  <thead>
    <tr><th>Aspecto</th><th>Visa temporaria</th><th>Permanencia definitiva</th></tr>
  </thead>
  <tbody>
    <tr><td>Vigencia del permiso</td><td>1–2 años, renovable</td><td>Indefinida</td></tr>
    <tr><td>Renovación obligatoria</td><td>Cada 1–2 años</td><td>Solo cédula cada 5 años</td></tr>
    <tr><td>Autorización de trabajo</td><td>Vigente con la visa</td><td>Sin restricciones</td></tr>
    <tr><td>Acceso a cargos públicos</td><td>Limitado</td><td>Ampliado (salvo ciudadanía requerida)</td></tr>
    <tr><td>Base para naturalización</td><td>No directamente</td><td>Sí, es requisito previo</td></tr>
  </tbody>
</table>
<p>Consulta la guía completa de beneficios en <a href="/permanencia-definitiva/beneficios">beneficios de la permanencia definitiva</a>.</p>

<h2>Ausencias del país</h2>
<p>Con la Permanencia Definitiva puedes salir y entrar a Chile libremente. Hay un punto que conviene tener claro antes de hacer un viaje largo:</p>
<ul>
  <li>Ausencias de <strong>más de 1 año continuo</strong> sin notificar al SERMIG pueden poner en riesgo el permiso.</li>
  <li>Si necesitas ausentarte por más de 1 año (trabajo, familia, salud), notifica al SERMIG antes de salir.</li>
</ul>

<h2>El camino hacia la naturalización</h2>
<p>La Permanencia Definitiva es el requisito previo para solicitar la ciudadanía chilena. El camino típico:</p>
<ol>
  <li>Visa temporaria (mínimo 1 año).</li>
  <li>Permanencia Definitiva (sin vencimiento).</li>
  <li>Con 5 años de residencia legal total: solicitud de <a href="/nacionalizacion/carta-naturalizacion">Carta de Naturalización</a>.</li>
  <li>Nacionalidad chilena.</li>
</ol>
<p>Ver guía completa de requisitos en <a href="/permanencia-definitiva/requisitos">requisitos de la permanencia definitiva</a>.</p>

<h2>Si te rechazan</h2>
<p>El SERMIG puede rechazar la solicitud por documentación incompleta, antecedentes penales graves o no cumplir el tiempo de residencia requerido. Ante un rechazo:</p>
<ul>
  <li>Puedes interponer un <a href="/problemas/recurso-administrativo">recurso de reposición</a> dentro del plazo indicado en la notificación de rechazo.</li>
  <li>Si se rechaza el recurso, puedes presentar recurso jerárquico ante el Ministerio del Interior.</li>
  <li>También puedes presentar nueva solicitud si corriges los problemas o tu situación cambia.</li>
</ul>
<p>Ver guía en <a href="/problemas/rechazo-visa">me rechazaron la visa: qué hacer</a>.</p>
$$
WHERE slug = 'permanencia-definitiva';

-- ============================================================
-- Verificación
-- ============================================================
SELECT slug, updated_at
FROM articles
WHERE slug = 'permanencia-definitiva';
