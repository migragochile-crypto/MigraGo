-- ============================================================
-- MigraciónChile — Seed 056: reescritura editorial v8
-- visa-temporaria/contrato-trabajo — Fase A: Constitución Editorial
-- Cambios content: apertura Tipo C (la Constitución usa este artículo
--   como ejemplo literal de Tipo C), EEAT (práctica: trabajadores llegan
--   al portal sin que el empleador haya completado su parte),
--   secciones renombradas, URL anchor text corregida,
--   todas las correcciones YMYL de seed 035 preservadas
-- Sin cambios FAQ (ya corregida en seed 035)
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

UPDATE articles
SET content = $$
<p>La visa por contrato de trabajo parece el camino más directo para quien tiene empleo en Chile. Pero hay un punto que sorprende a muchos: el contrato debe estar firmado y los pasos del empleador completados <em>antes</em> de presentar la solicitud — no durante. Sin esa parte, el proceso no puede iniciarse desde el portal del SERMIG.</p>

<p>A diferencia de otras categorías de visa temporaria, esta implica un actor clave fuera del control del migrante: el empleador. Entender bien ese rol es lo primero.</p>

<h2>Quién puede solicitarla</h2>
<p>Puede solicitar esta visa cualquier extranjero que:</p>
<ul>
  <li>Tenga un <strong>contrato de trabajo firmado</strong> con un empleador chileno (persona natural o jurídica con RUT chileno). El empleador no necesita ser una empresa — una persona natural también puede contratar.</li>
  <li>Se encuentre en Chile. Si está en situación irregular, en muchos casos será necesario completar previamente la <a href="/autodenuncia">autodenuncia migratoria</a> en la PDI.</li>
  <li>Los antecedentes penales son evaluados por la autoridad migratoria conforme a la normativa vigente.</li>
</ul>

<h2>Lo que debe hacer el empleador</h2>
<p>El empleador tiene un rol activo antes de que el extranjero pueda presentar la solicitud:</p>
<ol>
  <li>Firmar el contrato de trabajo según las normas del Código del Trabajo chileno.</li>
  <li>Cumplir con las obligaciones laborales y registrales aplicables conforme a la normativa laboral chilena vigente.</li>
  <li>Comprometerse a mantener el contrato vigente mientras dure el proceso.</li>
</ol>
<p>Lo que ocurre frecuentemente en la práctica: muchos trabajadores llegan al portal del SERMIG sin que el empleador haya completado su parte. El incumplimiento de obligaciones documentales puede afectar la evaluación migratoria.</p>

<h2>Documentos necesarios</h2>
<table>
  <thead>
    <tr><th>Documento</th><th>Quién lo obtiene</th></tr>
  </thead>
  <tbody>
    <tr>
      <td>Pasaporte vigente (vigencia conforme a los requisitos del SERMIG)</td>
      <td>El trabajador extranjero</td>
    </tr>
    <tr>
      <td>Contrato de trabajo firmado y en regla</td>
      <td>El empleador</td>
    </tr>
    <tr>
      <td>Certificado de antecedentes penales del país de origen (apostillado)</td>
      <td>El trabajador — vigente conforme a los requisitos del SERMIG</td>
    </tr>
    <tr>
      <td>Certificado de antecedentes del Registro Civil de Chile</td>
      <td>El trabajador — gratis en <a href="https://www.registrocivil.cl" target="_blank" rel="noopener noreferrer">registrocivil.cl</a></td>
    </tr>
    <tr>
      <td>Fotografía reciente fondo blanco</td>
      <td>El trabajador</td>
    </tr>
    <tr>
      <td>Comprobante de domicilio en Chile</td>
      <td>El trabajador</td>
    </tr>
  </tbody>
</table>

<h2>El proceso de solicitud</h2>
<ol>
  <li>El empleador formaliza el contrato de trabajo y cumple con las obligaciones registrales aplicables conforme a la normativa laboral chilena.</li>
  <li>Si estás en situación irregular, completa la <a href="/autodenuncia/pdi-paso-a-paso">autodenuncia en la PDI</a> antes de continuar.</li>
  <li>Reúne los documentos personales con fechas vigentes.</li>
  <li>Ingresa al <a href="https://tramitesmigratorios.interior.gob.cl" target="_blank" rel="noopener noreferrer">Portal de Trámites Migratorios del SERMIG</a>.</li>
  <li>Selecciona la categoría correspondiente a residencia temporal por motivos laborales (contrato de trabajo) conforme a las opciones disponibles en el portal.</li>
  <li>Carga los documentos y paga el arancel de solicitud.</li>
  <li>Guarda el número de trámite para seguimiento.</li>
</ol>

<h2>¿Puedo trabajar mientras espero la resolución?</h2>
<p>El comprobante de solicitud puede habilitar actividades remuneradas cuando incluye la autorización correspondiente conforme a la categoría migratoria y las condiciones del trámite. Los criterios de aceptación pueden variar según el empleador y el caso — conviene verificarlo con el empleador y la autoridad migratoria. La cédula de identidad para extranjeros y los registros definitivos asociados requieren la aprobación de la residencia.</p>

<h2>¿Qué pasa si el empleador cancela el contrato?</h2>
<p>Si el contrato se termina mientras el trámite está en curso, conviene notificar al SERMIG y actualizar la situación. Dependiendo de las circunstancias, puede ser posible presentar un nuevo contrato o la solicitud puede verse afectada. No reportar el cambio puede derivar en complicaciones migratorias futuras.</p>

<h2>Vigencia y camino a la permanencia</h2>
<p>La residencia temporal suele otorgarse por períodos limitados renovables, según la categoría y la resolución emitida. Cumplidos los requisitos de tiempo y continuidad establecidos por la normativa, es posible solicitar la <a href="/permanencia-definitiva">Permanencia Definitiva</a>, que otorga una residencia sin fecha de vencimiento.</p>
$$
WHERE slug = 'visa-temporaria/contrato-trabajo';

-- ============================================================
-- Verificación
-- ============================================================
SELECT slug, updated_at
FROM articles
WHERE slug = 'visa-temporaria/contrato-trabajo';
