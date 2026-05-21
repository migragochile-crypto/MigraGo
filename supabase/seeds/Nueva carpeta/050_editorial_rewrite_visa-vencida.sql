-- ============================================================
-- MigraciónChile — Seed 050: reescritura editorial v2
-- problemas/visa-vencida — Fase A: Constitución Editorial
-- Cambios: typo "calico"→"califico", EEAT (nota práctica PDI)
-- Usa UPDATE directo con $$ para evitar saltos de línea en REPLACE
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

UPDATE articles
SET content = $$
<p>Si tu visa de turismo o visa temporaria venció y sigues en Chile, estás en situación migratoria irregular. No entrar en pánico: hay un camino legal para regularizarte y en la mayoría de los casos no implica salir del país.</p>

<h2>¿Qué tipo de visa venció?</h2>
<p>El procedimiento varía según qué tipo de visa está vencida:</p>
<ul>
  <li><strong>Visa de turismo vencida:</strong> si entraste como turista y se venció el plazo de 90 días (o el que te asignaron en frontera), en muchos casos deberás completar la <a href="/autodenuncia">autodenuncia migratoria</a> en la PDI y luego solicitar una visa temporaria.</li>
  <li><strong>Visa temporaria vencida:</strong> si tu visa de residencia temporal venció sin renovarla, también puedes autodenunciarte. La multa puede ser mayor dependiendo del tiempo.</li>
  <li><strong>Permiso de turista prorrogado y vencido:</strong> si pediste prórroga y también venció, mismo procedimiento.</li>
</ul>

<h2>Paso 1 — Evalúa cuánto tiempo llevas en situación irregular</h2>
<p>La multa migratoria depende del tiempo desde que venció tu visa:</p>
<table>
  <thead>
    <tr><th>Tiempo irregular</th><th>Multa aproximada</th></tr>
  </thead>
  <tbody>
    <tr><td>Hasta 30 días</td><td>1 UTM (~$66.000 CLP)</td></tr>
    <tr><td>31 a 90 días</td><td>2 UTM (~$132.000 CLP)</td></tr>
    <tr><td>91 días a 1 año</td><td>3 UTM (~$198.000 CLP)</td></tr>
    <tr><td>Más de 1 año</td><td>Hasta 5 UTM (~$330.000 CLP)</td></tr>
  </tbody>
</table>
<p>Los montos son referenciales. El valor exacto de la UTM lo puedes ver en <a href="https://www.sii.cl" target="_blank" rel="noopener noreferrer">sii.cl</a>.</p>

<h2>Paso 2 — Autodenuncia en la PDI</h2>
<p>La autodenuncia es el mecanismo legal para regularizarse. Consiste en presentarte voluntariamente a la PDI, declarar tu situación irregular y pagar la multa. A cambio, en la mayoría de los casos recibes el <strong>Certificado de Autodenuncia</strong>, que puede contribuir a la suspensión de procedimientos de expulsión y habilitar para tramitar una visa temporaria.</p>
<p>Necesitarás:</p>
<ul>
  <li>Pasaporte (idealmente vigente)</li>
  <li>Comprobante de domicilio en Chile</li>
  <li>Fotografía tamaño carné</li>
  <li>Documentos que acrediten tus vínculos en Chile (si tienes hijo o pareja chilena, etc.)</li>
</ul>
<p>Consulta la guía detallada en <a href="/autodenuncia/pdi-paso-a-paso">Autodenuncia en la PDI: paso a paso</a>.</p>
<p>Lo que suele ocurrir en la práctica: la mayoría de quienes se presentan voluntariamente no enfrenta problemas de detención durante el trámite. La PDI distingue entre quien llega por decisión propia y quien es detectado en un operativo — esa diferencia puede tener peso en el proceso posterior, aunque cada caso se evalúa según sus circunstancias.</p>

<h2>Paso 3 — Solicitar la visa temporaria</h2>
<p>Con el Certificado de Autodenuncia, puedes solicitar la visa que corresponde a tu situación personal. Las más frecuentes cuando se viene de visa vencida son:</p>
<ul>
  <li><a href="/visa-temporaria/hijo-chileno">Visa por hijo/a chileno</a> — si tienes un hijo con nacionalidad chilena.</li>
  <li><a href="/visa-temporaria/responsabilidad-democratica">Visa de Responsabilidad Democrática</a> — si eres venezolano/a.</li>
  <li><a href="/visa-temporaria/contrato-trabajo">Visa por contrato de trabajo</a> — si tienes o puedes conseguir un empleador formal.</li>
  <li><a href="/visa-temporaria/pareja-chilena">Visa por pareja chilena</a> — si estás casado/a o tienes AUC con un/a ciudadano/a chileno/a.</li>
</ul>

<h2>¿Y si no califico para ninguna visa?</h2>
<p>Si no tienes una causal clara para visa temporaria, el SERMIG puede orientarte sobre otras categorías. También puedes optar por salir voluntariamente del país antes de que se inicie un procedimiento de expulsión, lo que es menos gravoso que una expulsión forzada en el historial migratorio.</p>

<h2>¿Puedo seguir trabajando con la visa vencida?</h2>
<p>Técnicamente no. Con visa vencida no tienes permiso de trabajo vigente y el empleador puede enfrentar sanciones. Sin embargo, una vez que presentes la autodenuncia y obtengas el comprobante de solicitud de visa, este puede habilitar la actividad laboral en la medida en que incluya la autorización correspondiente.</p>
$$
WHERE slug = 'problemas/visa-vencida';

-- ============================================================
-- Verificación
-- ============================================================
SELECT slug, updated_at
FROM articles
WHERE slug = 'problemas/visa-vencida';
