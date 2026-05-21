-- ============================================================
-- MigraciónChile — Seed 053: reescritura editorial v5
-- problemas/expulsion — Fase A: Constitución Editorial
-- Cambios content: apertura Tipo A (angustia/confusión → claridad),
--   secciones renombradas, EEAT ×2 (error frecuente irregular≠expulsión
--   + arraigo familiar como argumento de descargos),
--   fix bullet truncado de seed 041 (prohibición reingreso),
--   YMYL: "no hay rango fijo" para prohibición
-- Sin cambios FAQ (ya correcta en seed 009)
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

UPDATE articles
SET content = $$
<p>Una notificación de expulsión es el escenario que más angustia genera en el proceso migratorio. También es el que más confusión produce: muchos migrantes temen la expulsión cuando están en situación irregular por visa vencida — pero la simple irregularidad no es causal de expulsión bajo la Ley 21.325. La expulsión aplica para situaciones distintas y más graves. Esta guía sirve para los dos escenarios: entender cuándo hay riesgo real y qué hacer cuando ya llegó una notificación.</p>

<h2>Quién puede ordenar una expulsión</h2>
<p>La expulsión es una resolución administrativa — no una detención automática ni una consecuencia inmediata de la irregularidad. La dictan el <strong>SERMIG</strong> o el <strong>Ministerio del Interior</strong> en la mayoría de los casos. Cuando hay condena penal de por medio, también puede disponerla un tribunal.</p>

<h2>Causales de expulsión</h2>
<p>La Ley 21.325 establece qué situaciones pueden derivar en expulsión. Las más frecuentes son:</p>
<ul>
  <li>Ingreso clandestino al país (por paso no habilitado).</li>
  <li>Uso de documentos falsos para ingresar o solicitar visa.</li>
  <li>Condena por delitos graves (narcotráfico, trata de personas, delitos contra la integridad física, entre otros).</li>
  <li>Haber sido objeto de una expulsión previa que no fue cumplida.</li>
  <li>Representar una amenaza grave al orden público o la seguridad nacional.</li>
  <li>Incumplimiento reiterado y grave de las obligaciones migratorias.</li>
</ul>
<p>La irregularidad por visa vencida no está en esta lista. Es sancionada con multa a través de la <a href="/autodenuncia">autodenuncia migratoria</a>, no con expulsión.</p>

<h2>Cómo funciona el proceso</h2>
<p>La expulsión no ocurre de un día para otro. El proceso administrativo incluye:</p>
<ol>
  <li>Notificación al afectado de la intención de expulsión y sus motivos.</li>
  <li>Plazo para presentar descargos — generalmente 10 días hábiles según lo indicado en la notificación.</li>
  <li>Resolución final de expulsión (o desistimiento si los descargos son aceptados).</li>
  <li>Posibilidad de impugnar la resolución mediante recursos administrativos y judiciales.</li>
</ol>
<p>La expulsión no puede ejecutarse mientras el afectado tenga recursos pendientes de resolución. Eso da tiempo real para actuar.</p>

<h2>Prohibición de reingreso</h2>
<p>La orden de expulsión puede incluir una <strong>prohibición de reingreso</strong>. El plazo depende de la gravedad de la causa y lo establecido en la resolución concreta: puede ir desde períodos acotados hasta prohibición de larga duración en casos de delitos graves. Lo que señale la resolución específica es lo que determina el plazo — no hay un rango fijo que aplique a todos los casos por igual.</p>

<h2>Cómo impugnar una orden de expulsión</h2>
<p>Si recibes una notificación de expulsión, las vías disponibles son:</p>

<h3>1. Presentar descargos</h3>
<p>Si la notificación es de intención de expulsión (no resolución final), tienes derecho a presentar descargos por escrito dentro del plazo indicado. Es la primera oportunidad para demostrar que no concurren las causales. El arraigo familiar — hijos chilenos, pareja chilena, tiempo de residencia legal — son argumentos relevantes que la autoridad debe considerar en esta etapa.</p>

<h3>2. Recurso de reposición</h3>
<p>Si ya existe resolución final de expulsión, puedes presentar recurso de reposición ante el SERMIG dentro del plazo indicado en la notificación.</p>

<h3>3. Recurso de amparo (habeas corpus)</h3>
<p>Si la expulsión implica privación de libertad (detención para expulsión), puedes interponer recurso de amparo ante la Corte de Apelaciones correspondiente. Este recurso tiene tramitación urgente — no esperes.</p>

<h3>4. Recurso contencioso-administrativo</h3>
<p>Agotados los recursos administrativos, puedes recurrir a los tribunales ordinarios. Este proceso requiere un abogado.</p>

<h2>Busca asesoría legal de inmediato</h2>
<p>Si recibes una notificación de expulsión, los plazos son cortos y las consecuencias pueden ser graves. Organismos que ofrecen ayuda:</p>
<ul>
  <li><strong>Servicio Jesuita a Migrantes (SJM):</strong> asesoría jurídica gratuita en varias ciudades.</li>
  <li><strong>Clínicas jurídicas universitarias:</strong> en distintas ciudades del país (Universidad de Chile, PUC, UDP y otras).</li>
  <li><strong>Defensoría Penal Pública:</strong> si hay imputación penal asociada al proceso.</li>
</ul>
<p><em>Esta guía es orientativa y no reemplaza la consulta con un abogado especialista en derecho migratorio, especialmente ante una expulsión activa.</em></p>
$$
WHERE slug = 'problemas/expulsion';

-- ============================================================
-- Verificación
-- ============================================================
SELECT slug, updated_at
FROM articles
WHERE slug = 'problemas/expulsion';
