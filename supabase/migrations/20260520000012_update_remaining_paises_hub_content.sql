BEGIN;

-- Venezuela hub
UPDATE articles SET
  content = $content$<h2>Venezolanos en Chile: la comunidad más grande</h2>
<p>Venezuela es el país de origen del mayor número de migrantes en Chile. Según datos del SERMIG, más de 500.000 venezolanos residen en el país, concentrados principalmente en la Región Metropolitana, Antofagasta y Tarapacá.</p>

<h2>Opciones de visa para venezolanos</h2>
<p>Venezuela <strong>no forma parte del Acuerdo de Residencia del MERCOSUR</strong>, por lo que los venezolanos no pueden acogerse a la categoría MERCOSUR. Las principales vías son:</p>
<ul>
  <li><strong>Residencia Temporal por contrato de trabajo:</strong> requiere contrato con empleador chileno. Es la vía más común.</li>
  <li><strong>Residencia Temporal por hijo chileno:</strong> si tienes un hijo/a nacido en Chile.</li>
  <li><strong>Residencia Temporal por pareja chilena:</strong> si tienes cónyuge o conviviente civil chileno/a.</li>
  <li><strong>Residencia Temporal por razones humanitarias:</strong> para situaciones de vulnerabilidad acreditada.</li>
  <li><strong>Autodenuncia PDI:</strong> si estás en situación irregular, permite iniciar el proceso de regularización.</li>
</ul>

<h2>El problema del pasaporte venezolano</h2>
<p>Muchos venezolanos tienen dificultades para obtener o renovar el pasaporte debido a la crisis institucional en Venezuela. Chile ha reconocido este problema:</p>
<ul>
  <li>La cédula de identidad venezolana puede ser aceptada como documento de viaje en algunos contextos.</li>
  <li>El SERMIG puede aceptar documentos alternativos para acreditar identidad — consulta caso a caso.</li>
  <li>Existen organizaciones de la sociedad civil que apoyan a venezolanos con documentación.</li>
</ul>

<h2>Documentos y apostilla</h2>
<p>Venezuela <strong>suspendió el servicio de apostilla en 2017</strong>. Esto complica la autenticación de documentos venezolanos. Las alternativas son:</p>
<ul>
  <li>Legalización vía consulado chileno en Venezuela (cuando opera).</li>
  <li>Proceso alternativo ante la Cancillería venezolana.</li>
  <li>Consultar al SERMIG el procedimiento actualizado aceptado.</li>
</ul>

<h2>Doble nacionalidad</h2>
<p>Venezuela permite la doble nacionalidad. Al naturalizarte chileno, no perderás la ciudadanía venezolana. Ver: <a href="/nacionalizacion/doble-nacionalidad">Doble nacionalidad en Chile</a>.</p>

<h2>Próximos pasos</h2>
<p>Explora las secciones principales: <a href="/residencia-temporal">Residencia Temporal</a>, <a href="/autodenuncia">Autodenuncia</a> y <a href="/vivir-en-chile">Vivir en Chile</a> para guías detalladas sobre cada trámite.</p>$content$,
  title = 'Venezolanos en Chile 2025: Visa, Documentos y Regularización',
  h1 = 'Guía para venezolanos en Chile',
  meta_description = 'Opciones de visa para venezolanos en Chile: residencia temporal, hijo chileno, razones humanitarias. Documentos sin apostilla y cómo regularizarse. 2025.',
  keyword_primary = 'venezolanos en Chile visa'
WHERE slug = 'venezuela';

-- Perú hub
UPDATE articles SET
  content = $content$<h2>Peruanos en Chile: vecinos con historia</h2>
<p>Perú es históricamente uno de los principales países de origen de migrantes en Chile. La comunidad peruana es de las más establecidas, con fuerte presencia en Santiago (especialmente en el centro) y las regiones del norte.</p>

<h2>Opciones de visa para peruanos</h2>
<p>Perú <strong>sí forma parte del Acuerdo de Residencia del MERCOSUR</strong> (junto a Bolivia, Colombia, Ecuador, Argentina, Brasil, Paraguay y Uruguay). Esto significa que los ciudadanos peruanos tienen acceso a la <strong>categoría MERCOSUR</strong>, la vía más sencilla:</p>
<ul>
  <li><strong>Residencia Temporal MERCOSUR:</strong> solo requiere acreditar la nacionalidad peruana (pasaporte o DNI). Sin necesidad de contrato de trabajo. Válida por 2 años.</li>
  <li><strong>Residencia Temporal por contrato de trabajo.</strong></li>
  <li><strong>Residencia Temporal por hijo chileno.</strong></li>
  <li><strong>Residencia Temporal por pareja chilena.</strong></li>
</ul>

<h2>Documentos peruanos</h2>
<p>Perú sí es signatario de la Convención de La Haya, por lo que los documentos pueden apostillarse. La apostilla se obtiene en el Ministerio de Relaciones Exteriores del Perú en Lima (o en algunas oficinas regionales).</p>
<ul>
  <li>Pasaporte peruano vigente o DNI.</li>
  <li>Certificado de antecedentes penales del Registro Nacional de Condenas apostillado.</li>
  <li>Certificado de nacimiento apostillado.</li>
</ul>

<h2>Ingreso sin visa para peruanos</h2>
<p>Los ciudadanos peruanos pueden ingresar a Chile con solo el DNI (documento nacional de identidad) o pasaporte — sin necesidad de visa de turista. Esto facilita el ingreso, pero no autoriza a trabajar: para eso se necesita la Residencia Temporal.</p>

<h2>Doble nacionalidad</h2>
<p>Desde 1995, Perú permite la doble nacionalidad. Al naturalizarte chileno, conservas la ciudadanía peruana.</p>

<h2>Próximos pasos</h2>
<p>Explora <a href="/residencia-temporal">Residencia Temporal</a> (especialmente la categoría MERCOSUR) y <a href="/vivir-en-chile">Vivir en Chile</a> para guías sobre RUT, salud, banco y más.</p>$content$,
  title = 'Peruanos en Chile 2025: Visa MERCOSUR, Documentos y Trámites',
  h1 = 'Guía para peruanos en Chile',
  meta_description = 'Guía completa para peruanos en Chile: visa MERCOSUR sin contrato, apostilla de documentos, antecedentes penales y cómo regularizarse. 2025.',
  keyword_primary = 'peruanos en Chile visa'
WHERE slug = 'peru';

-- Colombia hub
UPDATE articles SET
  content = $content$<h2>Colombianos en Chile: una comunidad en crecimiento</h2>
<p>Colombia es uno de los principales países de origen de migrantes en Chile. Los colombianos se han establecido en múltiples ciudades, con fuerte presencia en Santiago, Valparaíso y las regiones del norte del país.</p>

<h2>Opciones de visa para colombianos</h2>
<p>Colombia <strong>sí forma parte del Acuerdo de Residencia del MERCOSUR</strong>. Los ciudadanos colombianos pueden solicitar la categoría MERCOSUR, la vía más directa:</p>
<ul>
  <li><strong>Residencia Temporal MERCOSUR:</strong> solo requiere acreditar la nacionalidad colombiana. No necesitas contrato de trabajo ni cónyuge chileno. Válida por 2 años, renovable.</li>
  <li><strong>Residencia Temporal por contrato de trabajo.</strong></li>
  <li><strong>Residencia Temporal por hijo chileno.</strong></li>
  <li><strong>Residencia Temporal por pareja chilena.</strong></li>
</ul>

<h2>Ingreso a Chile</h2>
<p>Los ciudadanos colombianos <strong>no requieren visa para ingresar a Chile</strong> como turistas. Pueden ingresar con pasaporte colombiano vigente. Esto facilita el primer contacto con el país, pero la visa turista no autoriza a trabajar.</p>

<h2>Documentos colombianos</h2>
<p>Colombia es signatario de la Convención de La Haya. Los documentos colombianos se apostillan ante la <strong>Cancillería colombiana</strong> (Ministerio de Relaciones Exteriores) o en sus delegaciones regionales.</p>
<ul>
  <li>Pasaporte colombiano vigente.</li>
  <li>Certificado judicial de antecedentes (Policía Nacional) apostillado.</li>
  <li>Registro civil de nacimiento apostillado.</li>
</ul>

<h2>Doble nacionalidad</h2>
<p>La Constitución colombiana protege la nacionalidad de origen. Al naturalizarte chileno, no pierdes la ciudadanía colombiana. Ver: <a href="/nacionalizacion/doble-nacionalidad">Doble nacionalidad en Chile</a>.</p>

<h2>Próximos pasos</h2>
<p>Explora <a href="/residencia-temporal">Residencia Temporal</a> (categoría MERCOSUR) y <a href="/vivir-en-chile">Vivir en Chile</a> para guías sobre RUT, salud y banco.</p>$content$,
  title = 'Colombianos en Chile 2025: Visa MERCOSUR, Trámites y Documentos',
  h1 = 'Guía para colombianos en Chile',
  meta_description = 'Opciones de visa para colombianos en Chile: residencia temporal MERCOSUR, documentos apostillados y cómo establecerse. Guía actualizada 2025.',
  keyword_primary = 'colombianos en Chile visa'
WHERE slug = 'colombia';

-- Argentina hub
UPDATE articles SET
  content = $content$<h2>Argentinos en Chile: el paso de los Andes</h2>
<p>Argentina y Chile comparten la cordillera de los Andes y una historia de migración en ambos sentidos. Los argentinos en Chile se distribuyen por todo el país y se destacan por su integración relativamente fluida dado el idioma compartido y la cercanía cultural.</p>

<h2>Opciones de visa para argentinos</h2>
<p>Argentina <strong>es parte fundadora del Acuerdo de Residencia del MERCOSUR</strong>. Los ciudadanos argentinos tienen acceso directo a la categoría MERCOSUR, la vía más simple y rápida:</p>
<ul>
  <li><strong>Residencia Temporal MERCOSUR:</strong> solo acreditas la nacionalidad argentina (DNI o pasaporte). Sin contrato de trabajo. Válida por 2 años, convertible a Residencia Definitiva.</li>
  <li><strong>Residencia Temporal por contrato de trabajo.</strong></li>
  <li><strong>Residencia Temporal por hijo chileno.</strong></li>
  <li><strong>Residencia Temporal por pareja chilena.</strong></li>
</ul>

<h2>Ingreso a Chile</h2>
<p>Los ciudadanos argentinos pueden ingresar a Chile con el <strong>DNI argentino</strong> — no necesitan pasaporte. El cruce es libre para turismo. Para residir y trabajar, igual deben solicitar la Residencia Temporal.</p>

<h2>Documentos argentinos</h2>
<p>Argentina es signatario de la Convención de La Haya. Los documentos se apostillan ante el <strong>Ministerio de Relaciones Exteriores de Argentina</strong> o en los colegios de escribanos provinciales para ciertos documentos notariales.</p>
<ul>
  <li>DNI argentino vigente o pasaporte.</li>
  <li>Certificado de antecedentes penales del Registro Nacional de Reincidencia apostillado.</li>
  <li>Partida de nacimiento apostillada.</li>
</ul>

<h2>Doble nacionalidad</h2>
<p>Argentina permite la doble nacionalidad por ley. Al naturalizarte chileno, conservas la ciudadanía argentina. Ver: <a href="/nacionalizacion/doble-nacionalidad">Doble nacionalidad en Chile</a>.</p>

<h2>Próximos pasos</h2>
<p>Explora <a href="/residencia-temporal">Residencia Temporal</a> (categoría MERCOSUR es la más directa para argentinos) y <a href="/vivir-en-chile">Vivir en Chile</a> para guías prácticas de establecimiento.</p>$content$,
  title = 'Argentinos en Chile 2025: Visa MERCOSUR y Trámites de Residencia',
  h1 = 'Guía para argentinos en Chile',
  meta_description = 'Cómo residir legalmente en Chile siendo argentino: visa MERCOSUR con solo el DNI, documentos, apostilla y trámites. Guía actualizada 2025.',
  keyword_primary = 'argentinos en Chile residencia'
WHERE slug = 'argentina';

COMMIT;
