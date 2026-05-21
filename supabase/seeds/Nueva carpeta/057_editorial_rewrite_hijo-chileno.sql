-- ============================================================
-- MigraciónChile — Seed 057: reescritura editorial v9
-- visa-temporaria/hijo-chileno — Fase A: Constitución Editorial
-- Cambios content: apertura Tipo A + EEAT integrado (inscripción RC
--   como punto crítico que retrasa más solicitudes), "buen índice de
--   aprobación" eliminado (prometía resultado), sección irregular
--   movida y renombrada a "Situación irregular: qué hacer primero",
--   URL anchor text corregida, "actúa como documento habilitante para
--   residir" → hedgeado, "Requisitos por país" renombrado a
--   "Documentos del país de origen: la apostilla",
--   tiempos actualizados a 60-150 días (consistente con hub)
-- Sin cambios FAQ (ya corregida en seed 035)
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

UPDATE articles
SET content = $$
<p>Para los padres y madres de hijos chilenos, esta es una de las vías de visa con mayor arraigo — y cuando los documentos están en orden, una de las más sólidas. El punto que más frecuentemente retrasa la solicitud: el hijo o hija debe estar inscrito en el Registro Civil de Chile <em>antes</em> de presentar. Si esa inscripción no está hecha, el proceso no puede iniciarse.</p>

<h2>Quién puede solicitarla</h2>
<p>Puede solicitar esta visa cualquier extranjero que sea <strong>padre o madre</strong> de un hijo o hija que:</p>
<ul>
  <li>Tenga <strong>nacionalidad chilena</strong> por nacimiento o por gracia.</li>
  <li>Sea menor de 18 años, o mayor si está declarado en dependencia del solicitante.</li>
  <li>Esté <strong>debidamente inscrito/a</strong> en el Registro Civil de Chile. Si el hijo nació en Chile pero no fue inscrito, ese paso debe completarse antes de solicitar la visa.</li>
</ul>
<p>También aplica para quienes tengan la <strong>tuición legal</strong> de un menor chileno, acreditada con resolución judicial.</p>

<h2>Situación irregular: qué hacer primero</h2>
<p>Si tu visa de turismo está vencida o ingresaste sin visa, en muchos casos será necesario completar previamente el proceso de <a href="/autodenuncia">autodenuncia migratoria</a> en la PDI. El Certificado de Autodenuncia te habilita para presentar la solicitud de visa aunque estés en situación irregular.</p>

<h2>Documentos necesarios</h2>
<table>
  <thead>
    <tr><th>Documento</th><th>Especificaciones</th></tr>
  </thead>
  <tbody>
    <tr>
      <td>Pasaporte vigente</td>
      <td>Generalmente se solicita pasaporte vigente. Los requisitos de vigencia pueden variar; verifica los criterios actualizados con el SERMIG.</td>
    </tr>
    <tr>
      <td>Certificado de nacimiento del hijo/a chileno</td>
      <td>Emitido por el SRCeI, preferentemente reciente. Los plazos de aceptación pueden variar según los requisitos vigentes del SERMIG. Gratis en <a href="https://www.registrocivil.cl" target="_blank" rel="noopener noreferrer">registrocivil.cl</a>.</td>
    </tr>
    <tr>
      <td>Certificado de antecedentes penales del país de origen</td>
      <td>Apostillado. Si no está en español, debe ir acompañado de traducción oficial. Los plazos de antigüedad aceptable pueden variar según los requisitos del SERMIG.</td>
    </tr>
    <tr>
      <td>Certificado de antecedentes del Registro Civil de Chile</td>
      <td>Gratis en <a href="https://www.registrocivil.cl" target="_blank" rel="noopener noreferrer">registrocivil.cl</a> o en cualquier oficina del SRCeI.</td>
    </tr>
    <tr>
      <td>Fotografía reciente</td>
      <td>Fondo blanco, formato digital.</td>
    </tr>
    <tr>
      <td>Comprobante de domicilio en Chile</td>
      <td>Contrato de arriendo, boleta de servicios básicos o declaración jurada notarial de hospedaje.</td>
    </tr>
  </tbody>
</table>

<h2>El proceso de solicitud</h2>
<ol>
  <li>Verifica que los documentos estén vigentes conforme a los requisitos actualizados del SERMIG al momento de presentar.</li>
  <li>Si estás en situación irregular, completa la <a href="/autodenuncia/pdi-paso-a-paso">autodenuncia en la PDI</a> antes de continuar.</li>
  <li>Ingresa al <a href="https://tramitesmigratorios.interior.gob.cl" target="_blank" rel="noopener noreferrer">Portal de Trámites Migratorios del SERMIG</a>.</li>
  <li>Crea una cuenta o inicia sesión.</li>
  <li>Selecciona la categoría correspondiente a <strong>vínculo con ciudadano chileno (hijo/a)</strong> conforme a las opciones disponibles en el portal.</li>
  <li>Carga los documentos en los formatos y condiciones indicados por el portal al momento de la solicitud.</li>
  <li>Paga el arancel de solicitud y guarda el comprobante.</li>
  <li>Guarda el número de trámite para seguimiento.</li>
</ol>

<h2>Tiempos y qué ocurre mientras esperas</h2>
<p>El tiempo de resolución depende de la carga del SERMIG. En 2025-2026 los plazos han oscilado entre <strong>60 y 150 días hábiles</strong> en la mayoría de los casos. El comprobante de solicitud puede habilitar la permanencia en el país durante la tramitación.</p>
<p>La residencia se otorga generalmente por períodos temporales renovables, según las condiciones establecidas por la autoridad. Cumplidos los requisitos de permanencia y continuidad establecidos por la normativa, es posible solicitar la <a href="/permanencia-definitiva">Permanencia Definitiva</a>, que otorga una residencia sin fecha de vencimiento.</p>

<h2>¿Puedo trabajar mientras espero la resolución?</h2>
<p>El comprobante de solicitud puede habilitar actividades remuneradas cuando incluye la autorización correspondiente conforme a la categoría migratoria. La cédula de identidad para extranjeros y los registros definitivos asociados requieren la aprobación de la residencia. Mientras tanto, el SII puede emitir un <strong>RUT provisorio</strong> para efectos tributarios, previa presentación del comprobante de trámite.</p>

<h2>Documentos del país de origen: la apostilla</h2>
<p>El certificado de antecedentes penales debe estar apostillado en el país de origen. Los mecanismos de apostilla varían según el país y pueden cambiar; consulta el procedimiento vigente en el consulado o la autoridad competente de tu país antes de iniciar ese trámite. Para más detalles, consulta las guías específicas por nacionalidad.</p>
$$
WHERE slug = 'visa-temporaria/hijo-chileno';

-- ============================================================
-- Verificación
-- ============================================================
SELECT slug, updated_at
FROM articles
WHERE slug = 'visa-temporaria/hijo-chileno';
