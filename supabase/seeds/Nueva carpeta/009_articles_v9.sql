-- ============================================================
-- MigraciónChile — Seed v9: clusters problemas, visa-temporaria, nacionalizacion
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

-- ──────────────────────────────────────────────────────────
-- 1. CLUSTER: problemas/expulsion
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'problemas/expulsion',
  'problemas',
  'problemas',
  'cluster',
  'Expulsión de Chile: Causas, Proceso y Cómo Impugnarla 2026',
  'Expulsión de Chile: Qué Es, Causas, Proceso y Cómo Impugnarla',
  'Todo sobre la expulsión migratoria en Chile: qué causas la generan, cómo funciona el proceso, qué derechos tienes y cómo impugnar una orden de expulsión.',
  'expulsion migratoria chile como impugnar',
  $k1$
<p>La <strong>expulsión migratoria</strong> es la medida más grave que puede tomar el Estado chileno en materia migratoria. Implica la obligación de abandonar el territorio nacional y puede conllevar una prohibición de reingreso. Es importante conocer las causas, el proceso y los derechos disponibles ante una orden de expulsión.</p>

<h2>¿Qué es la expulsión y quién la ordena?</h2>
<p>La expulsión es una resolución administrativa emitida por el <strong>Ministerio del Interior</strong> o el <strong>SERMIG</strong>, que ordena a un extranjero abandonar el país. Existen dos modalidades:</p>
<ul>
  <li><strong>Expulsión administrativa:</strong> decretada por el SERMIG o el Ministerio del Interior. Es la más común.</li>
  <li><strong>Expulsión judicial:</strong> ordenada por un tribunal como consecuencia de una condena penal.</li>
</ul>

<h2>Causas de expulsión</h2>
<p>La Ley 21.325 establece las causales de expulsión. Las más frecuentes son:</p>
<ul>
  <li>Ingreso clandestino al país (no por paso habilitado).</li>
  <li>Uso de documentos falsos para ingresar o solicitar visa.</li>
  <li>Condena por delitos graves (narcotráfico, trata de personas, delitos contra la integridad física, etc.).</li>
  <li>Haber sido objeto de una expulsión previa que no fue cumplida.</li>
  <li>Representar una amenaza grave al orden público o la seguridad nacional.</li>
  <li>Incumplimiento reiterado y grave de las obligaciones migratorias.</li>
</ul>
<p><strong>Importante:</strong> la simple irregularidad migratoria (visa vencida) <strong>no es causal de expulsión</strong> por sí sola bajo la Ley 21.325. La irregularidad se sanciona con la autodenuncia y la multa, no con la expulsión.</p>

<h2>El proceso de expulsión</h2>
<p>El proceso administrativo de expulsión incluye:</p>
<ol>
  <li>Notificación al afectado de la intención de expulsión y sus motivos.</li>
  <li>Plazo para presentar descargos (generalmente 10 días hábiles).</li>
  <li>Resolución final de expulsión (o desistimiento si los descargos son aceptados).</li>
  <li>Derecho a impugnar la resolución mediante recursos administrativos y judiciales.</li>
</ol>
<p>La expulsión no puede ejecutarse mientras el afectado tenga recursos pendientes de resolución.</p>

<h2>Prohibición de reingreso</h2>
<p>La orden de expulsión puede incluir una <strong>prohibición de reingreso</strong>. La duración varía según la gravedad de la causa:</p>
<ul>
  <li>Para irregularidad grave: entre 1 y 5 años de prohibición.</li>
  <li>Para delitos graves: hasta prohibición permanente.</li>
</ul>

<h2>¿Cómo impugnar una orden de expulsión?</h2>
<p>Ante una notificación de expulsión, las opciones son:</p>

<h3>1. Presentar descargos en el plazo establecido</h3>
<p>Si recibes una notificación de intención de expulsión, tienes derecho a presentar descargos por escrito dentro del plazo indicado. Es la primera oportunidad para demostrar que no concurren las causales.</p>

<h3>2. Recurso de reposición ante el SERMIG</h3>
<p>Si la resolución final de expulsión ya fue dictada, tienes 5 días hábiles para presentar recurso de reposición.</p>

<h3>3. Recurso de amparo (habeas corpus)</h3>
<p>Si la expulsión implica privación de libertad (detención para expulsión), puedes interponer un recurso de amparo ante la Corte de Apelaciones correspondiente. Este recurso tiene tramitación urgente.</p>

<h3>4. Recurso contencioso-administrativo</h3>
<p>Agotados los recursos administrativos, puedes recurrir a los tribunales ordinarios. Este proceso requiere un abogado.</p>

<h2>Asistencia legal urgente</h2>
<p>Si recibes una notificación de expulsión, busca asesoría legal de inmediato. Los plazos son cortos y las consecuencias son graves. Organismos que pueden ayudar:</p>
<ul>
  <li><strong>Servicio Jesuita a Migrantes (SJM):</strong> asesoría jurídica gratuita.</li>
  <li><strong>Clínicas jurídicas universitarias:</strong> en varias ciudades del país.</li>
  <li><strong>Defensoría Penal Pública:</strong> si hay imputación penal asociada.</li>
</ul>
  $k1$,
  '[
    {
      "question": "¿Me pueden expulsar por tener la visa vencida?",
      "answer": "No directamente. La irregularidad por visa vencida no es causal de expulsión bajo la Ley 21.325. La vía para regularizarla es la autodenuncia en la PDI. La expulsión aplica para causales más graves como ingreso clandestino, uso de documentos falsos o condenas penales."
    },
    {
      "question": "¿Puedo quedarme en Chile mientras impugno la expulsión?",
      "answer": "Sí. La expulsión no puede ejecutarse mientras existan recursos pendientes de resolución. Si presentaste un recurso dentro del plazo, tienes derecho a permanecer en Chile hasta que se resuelva."
    },
    {
      "question": "¿Qué pasa si me expulsan y luego quiero volver a Chile?",
      "answer": "Si la orden de expulsión incluye una prohibición de reingreso, no puedes ingresar durante el período establecido. Intentar ingresar durante la prohibición agrava la situación y puede resultar en medidas más graves."
    },
    {
      "question": "¿Los hijos nacidos en Chile protegen a los padres de la expulsión?",
      "answer": "La Ley 21.325 establece que se debe considerar el arraigo familiar, incluyendo hijos menores en Chile, al evaluar una expulsión. Tener hijos chilenos no impide absolutamente la expulsión, pero es un factor que el SERMIG debe ponderar y que fortalece los descargos."
    },
    {
      "question": "¿Puedo ser expulsado si tengo una solicitud de visa pendiente?",
      "answer": "Una solicitud de visa activa es un factor de arraigo que el SERMIG debe considerar. No impide absolutamente la expulsión, pero hace más difícil justificarla mientras el trámite esté activo."
    }
  ]'::jsonb,
  ARRAY[
    'problemas',
    'problemas/recurso-administrativo',
    'problemas/rechazo-visa',
    'autodenuncia/pdi-paso-a-paso',
    'autodenuncia'
  ]::TEXT[],
  6,
  TRUE,
  NOW()
);

-- ──────────────────────────────────────────────────────────
-- 2. CLUSTER: visa-temporaria/jubilado-rentista
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, schema_type, howto_steps, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'visa-temporaria/jubilado-rentista',
  'visa-temporaria',
  'visa-temporaria',
  'cluster',
  'Visa de Jubilado o Rentista en Chile: Requisitos 2026',
  'Visa Temporaria de Jubilado o Rentista en Chile: Quién Aplica y Cómo Solicitarla',
  'Cómo obtener la visa temporaria de jubilado o rentista en Chile. Requisitos de ingresos, documentos necesarios y proceso de solicitud 2026.',
  'visa jubilado rentista chile requisitos',
  $k2$
<p>Chile ofrece una visa temporaria para <strong>jubilados y rentistas</strong>: personas que tienen ingresos fijos y estables provenientes de pensiones, rentas, inversiones u otras fuentes que no requieren trabajar en Chile. Es una visa atractiva para quienes quieren vivir en el país sin necesidad de emplearse.</p>

<h2>¿Quién puede solicitarla?</h2>
<p>Pueden solicitar esta visa las personas que acrediten:</p>
<ul>
  <li><strong>Jubilados:</strong> personas que reciben una pensión de jubilación de su país de origen o de un organismo internacional, y que no necesitan trabajar en Chile.</li>
  <li><strong>Rentistas:</strong> personas con ingresos regulares provenientes de rentas de propiedades, inversiones, dividendos, intereses u otras fuentes similares.</li>
</ul>
<p>El requisito central es demostrar que tienes ingresos suficientes para mantenerte en Chile sin trabajar.</p>

<h2>¿Cuánto ingreso se necesita?</h2>
<p>La Ley 21.325 no establece un monto fijo. El SERMIG evalúa si el ingreso es "suficiente" para vivir en Chile de forma autosuficiente. Como referencia orientativa:</p>
<ul>
  <li>Para una persona sola: se sugiere acreditar ingresos equivalentes a al menos 2 salarios mínimos chilenos mensuales (~$900.000 pesos o ~USD 1.000 aproximadamente en 2026).</li>
  <li>Si traes carga familiar: el ingreso acreditado debe ser proporcionalmente mayor.</li>
</ul>
<p>Estos montos son referenciales. El SERMIG puede aprobar con montos menores o exigir más según el caso.</p>

<h2>Documentos necesarios</h2>
<table>
  <thead>
    <tr><th>Documento</th><th>Especificaciones</th></tr>
  </thead>
  <tbody>
    <tr>
      <td>Pasaporte vigente</td>
      <td>Con al menos 6 meses de vigencia.</td>
    </tr>
    <tr>
      <td>Certificado de pensión o renta</td>
      <td>Emitido por la entidad pagadora (AFP, organismo de pensiones, banco). Apostillado. No mayor a 90 días.</td>
    </tr>
    <tr>
      <td>Extractos bancarios</td>
      <td>Últimos 3-6 meses, que acrediten depósitos regulares de la pensión o renta.</td>
    </tr>
    <tr>
      <td>Certificado de antecedentes penales del país de origen</td>
      <td>Apostillado. No mayor a 90 días. En español o con traducción oficial.</td>
    </tr>
    <tr>
      <td>Certificado de antecedentes del Registro Civil de Chile</td>
      <td>Gratis en registrocivil.cl. No mayor a 90 días.</td>
    </tr>
    <tr>
      <td>Comprobante de domicilio en Chile</td>
      <td>Contrato de arriendo, boleta de servicios o declaración jurada notarial.</td>
    </tr>
    <tr>
      <td>Fotografía reciente</td>
      <td>Fondo blanco, formato digital.</td>
    </tr>
  </tbody>
</table>

<h2>¿Puedo trabajar con esta visa?</h2>
<p>La visa de jubilado/rentista <strong>no autoriza a trabajar</strong> en Chile. Si decides ejercer una actividad remunerada, deberás solicitar una visa distinta (temporaria por contrato de trabajo) o una autorización especial. Trabajar sin la autorización correspondiente puede resultar en el rechazo de futuras solicitudes.</p>

<h2>Vigencia y renovación</h2>
<p>La visa se otorga por <strong>1 año renovable</strong>. Para renovarla, debes acreditar que sigues recibiendo los ingresos declarados. Después de 2 años continuos con esta visa puedes solicitar la <a href="/permanencia-definitiva">Permanencia Definitiva</a>.</p>
  $k2$,
  'HowTo',
  '[
    {"name": "Reunir los documentos que acrediten los ingresos", "text": "Certificado oficial de pensión o renta emitido por la entidad pagadora, apostillado, y extractos bancarios que muestren los depósitos regulares de los últimos 3-6 meses."},
    {"name": "Apostillar todos los documentos extranjeros", "text": "El certificado de pensión, antecedentes penales y cualquier otro documento extranjero deben estar apostillados. La apostilla se obtiene en el Ministerio de Relaciones Exteriores del país de origen."},
    {"name": "Obtener el certificado de antecedentes del Registro Civil de Chile", "text": "Gratis en registrocivil.cl. Válido por 90 días desde su emisión."},
    {"name": "Presentar la solicitud en el portal del SERMIG", "text": "Ingresa a tramitesmigratorios.interior.gob.cl, selecciona Visa Temporaria → Jubilado o Rentista, carga los documentos y paga el arancel."},
    {"name": "Conservar el comprobante de trámite", "text": "El comprobante te habilita para permanecer en Chile durante la tramitación."},
    {"name": "Con la visa aprobada, obtener la cédula en el SRCeI", "text": "Solicita tu cédula de identidad para extranjeros y RUT en cualquier oficina del Registro Civil."}
  ]'::jsonb,
  '[
    {
      "question": "¿Cuenta una renta de alquileres en mi país para esta visa?",
      "answer": "Sí. Los ingresos por arrendamiento de propiedades en tu país de origen cuentan como renta para esta visa. Debes acreditarlos con contratos de arriendo vigentes y extractos bancarios que muestren los ingresos regulares."
    },
    {
      "question": "¿Puedo usar esta visa si recibo una pensión de un organismo internacional?",
      "answer": "Sí. Las pensiones de organismos internacionales (ONU, OEA, etc.) son válidas para esta categoría. Los documentos deben estar en español o con traducción oficial."
    },
    {
      "question": "¿Mis ingresos deben venir de Chile o pueden ser del extranjero?",
      "answer": "Los ingresos pueden venir del extranjero. De hecho, esta visa está diseñada principalmente para personas cuyos ingresos provienen de pensiones o inversiones fuera de Chile. Lo importante es que sean regulares y suficientes."
    },
    {
      "question": "¿Puedo traer a mi cónyuge e hijos con esta visa?",
      "answer": "Sí. Tu cónyuge e hijos menores de 18 años pueden ser incluidos como carga familiar. Deberán presentar sus propios documentos de identidad y los que acrediten el vínculo familiar, apostillados."
    },
    {
      "question": "¿Qué pasa si mis ingresos disminuyen después de obtener la visa?",
      "answer": "Si tus ingresos bajan de forma significativa, podría afectar la renovación de la visa. No hay obligación de reportar cambios durante la vigencia, pero al momento de renovar deberás volver a acreditar los ingresos."
    }
  ]'::jsonb,
  ARRAY[
    'visa-temporaria',
    'permanencia-definitiva',
    'vivir-en-chile/rut-extranjero',
    'vivir-en-chile',
    'autodenuncia/pdi-paso-a-paso'
  ]::TEXT[],
  5,
  TRUE,
  NOW()
);

-- ──────────────────────────────────────────────────────────
-- 3. CLUSTER: nacionalizacion/requisitos-nacionalidad
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'nacionalizacion/requisitos-nacionalidad',
  'nacionalizacion',
  'nacionalizacion',
  'cluster',
  'Requisitos para la Nacionalidad Chilena por Naturalización 2026',
  'Requisitos para Obtener la Nacionalidad Chilena: Guía Completa 2026',
  'Cuáles son los requisitos para obtener la nacionalidad chilena por naturalización o carta de nacionalidad en 2026. Tiempo de residencia, condiciones y proceso.',
  'requisitos nacionalidad chilena naturalizacion',
  $k3$
<p>La <strong>nacionalidad chilena</strong> puede obtenerse por nacimiento, por filiación (hijo de chilenos) o por <strong>naturalización</strong> — esta última es la vía para extranjeros que han residido en Chile y quieren convertirse en ciudadanos chilenos. A continuación se detallan los requisitos y el proceso.</p>

<h2>Vías de naturalización</h2>
<p>Existen dos vías para obtener la nacionalidad chilena como extranjero:</p>

<h3>1. Carta de Nacionalización (vía ordinaria)</h3>
<p>Es la vía más común. La solicita el propio extranjero cumpliendo los requisitos de tiempo de residencia y conducta.</p>

<h3>2. Carta de Nacionalización por Gracia</h3>
<p>La otorga el Presidente de la República a personas que hayan prestado servicios relevantes a Chile o al país de forma extraordinaria. Es excepcional y discrecional.</p>

<h2>Requisitos para la Carta de Nacionalización ordinaria</h2>
<p>Para solicitar la carta de nacionalización, debes cumplir:</p>

<h3>Tiempo de residencia</h3>
<ul>
  <li><strong>5 años de residencia continua</strong> en Chile con permiso de residencia (visa temporaria o permanencia definitiva).</li>
  <li>Se descuentan del cómputo las ausencias del país que superen los 6 meses en cualquier período de 12 meses.</li>
  <li>Los 5 años deben ser de residencia legal: el tiempo en situación irregular no cuenta.</li>
</ul>

<h3>Permanencia definitiva vigente</h3>
<p>Al momento de solicitar la carta, debes tener la <a href="/permanencia-definitiva">Permanencia Definitiva</a> vigente. No basta con la visa temporaria.</p>

<h3>Saber leer y escribir castellano</h3>
<p>Se verifica en el proceso de evaluación.</p>

<h3>No tener condenas penales graves vigentes</h3>
<p>Las condenas cumplidas o de baja gravedad no necesariamente impiden la solicitud, pero las condenas vigentes por delitos graves sí.</p>

<h3>Tener medios de vida lícitos</h3>
<p>Demostrar que tienes ingresos o actividad que te permite sustentarte en Chile.</p>

<h2>El proceso de solicitud</h2>
<p>La solicitud de carta de nacionalización se presenta ante el <strong>Ministerio del Interior y Seguridad Pública</strong>, no ante el SERMIG. El proceso incluye:</p>
<ol>
  <li>Presentación de la solicitud con todos los antecedentes.</li>
  <li>Investigación de antecedentes por parte del Ministerio.</li>
  <li>Entrevista (en algunos casos).</li>
  <li>Resolución del Ministerio (aprobación o rechazo).</li>
  <li>Si se aprueba: ceremonia de entrega de la carta y juramento.</li>
</ol>
<p>Los plazos de resolución pueden extenderse entre <strong>1 y 3 años</strong> desde la presentación de la solicitud.</p>

<h2>¿La nacionalización implica renunciar a la otra ciudadanía?</h2>
<p>No necesariamente. Chile reconoce la doble ciudadanía en varios casos, especialmente con países con los que tiene convenios. Sin embargo, algunos países de origen no permiten la doble ciudadanía y requieren renuncia a la ciudadanía original al naturalizarse en otro país. Consulta las leyes de tu país de origen.</p>

<h2>¿Qué derechos adquiero con la nacionalidad chilena?</h2>
<ul>
  <li>Pasaporte chileno (uno de los más fuertes de América Latina en términos de acceso sin visa).</li>
  <li>Derecho a voto.</li>
  <li>Acceso a cargos públicos que requieren ciudadanía chilena.</li>
  <li>Residencia permanente e irrevocable en Chile.</li>
</ul>
  $k3$,
  '[
    {
      "question": "¿Puedo solicitar la nacionalidad con solo 5 años de visa temporaria sin permanencia definitiva?",
      "answer": "No. Al momento de solicitar la carta de nacionalización debes tener la Permanencia Definitiva vigente. Los 5 años de residencia pueden incluir tiempo con visa temporaria, pero al presentar la solicitud necesitas ya tener la permanencia definitiva."
    },
    {
      "question": "¿Los hijos nacidos en Chile tienen que naturalizarse?",
      "answer": "No. Los hijos de extranjeros nacidos en Chile son chilenos por nacimiento (ius soli), salvo excepciones muy específicas. La naturalización aplica para los propios extranjeros, no para sus hijos nacidos en Chile."
    },
    {
      "question": "¿Hay alguna vía más rápida para la nacionalidad?",
      "answer": "La carta de nacionalización por gracia no tiene requisito de tiempo de residencia, pero es discrecional del Presidente de la República y se otorga en casos excepcionales de servicios destacados al país. Para la mayoría de los residentes extranjeros, la vía ordinaria de 5 años es la única disponible."
    },
    {
      "question": "¿Puedo perder la nacionalidad chilena una vez obtenida?",
      "answer": "La Constitución chilena establece causales muy limitadas de pérdida de nacionalidad. Una vez obtenida por naturalización, la nacionalidad chilena es en la práctica muy difícil de perder."
    },
    {
      "question": "¿El tiempo con visa de estudiante cuenta para los 5 años?",
      "answer": "Sí. El tiempo con cualquier visa de residencia legal (temporaria, incluida la de estudiante) acumula para los 5 años requeridos, siempre que sea residencia continua y legal."
    }
  ]'::jsonb,
  ARRAY[
    'nacionalizacion',
    'nacionalizacion/carta-naturalizacion',
    'permanencia-definitiva',
    'vivir-en-chile/rut-extranjero',
    'visa-temporaria'
  ]::TEXT[],
  5,
  TRUE,
  NOW()
);

-- ──────────────────────────────────────────────────────────
-- 4. CLUSTER: permanencia-definitiva/beneficios
-- ──────────────────────────────────────────────────────────
INSERT INTO articles (
  slug, silo, parent_slug, type, title, h1, meta_description,
  keyword_primary, content, faq_items,
  related_slugs, reading_time_minutes, is_published, published_at
) VALUES (
  'permanencia-definitiva/beneficios',
  'permanencia-definitiva',
  'permanencia-definitiva',
  'cluster',
  'Permanencia Definitiva en Chile: Qué Derechos Te Da 2026',
  'Beneficios y Derechos de la Permanencia Definitiva en Chile',
  'Qué derechos y beneficios te da la permanencia definitiva en Chile: trabajo, salud, educación, viajes y diferencias con la visa temporaria.',
  'beneficios permanencia definitiva chile',
  $k4$
<p>La <strong>Permanencia Definitiva</strong> es el permiso de residencia más completo que existe en Chile para extranjeros. A diferencia de las visas temporarias, no tiene fecha de vencimiento anual y otorga derechos más amplios. Esta guía explica qué cambia cuando obtienes la permanencia definitiva.</p>

<h2>¿Qué es exactamente la Permanencia Definitiva?</h2>
<p>La Permanencia Definitiva es un permiso de residencia de carácter indefinido. Una vez otorgado, no necesitas renovarlo anualmente: basta con mantener la cédula de identidad para extranjeros vigente (que se renueva cada 5 años) y no ausentarte de Chile por más de un año sin notificar.</p>

<h2>Principales beneficios frente a la visa temporaria</h2>
<table>
  <thead>
    <tr><th>Aspecto</th><th>Visa temporaria</th><th>Permanencia definitiva</th></tr>
  </thead>
  <tbody>
    <tr>
      <td>Vigencia</td>
      <td>1-2 años, renovable</td>
      <td>Indefinida</td>
    </tr>
    <tr>
      <td>Autorización de trabajo</td>
      <td>Con la visa vigente</td>
      <td>Sin restricciones</td>
    </tr>
    <tr>
      <td>Trabajo por cuenta propia</td>
      <td>Generalmente permitido</td>
      <td>Sin restricciones</td>
    </tr>
    <tr>
      <td>Acceso a cargos públicos</td>
      <td>Limitado</td>
      <td>Ampliado (salvo cargos que requieren ciudadanía)</td>
    </tr>
    <tr>
      <td>Renovación obligatoria</td>
      <td>Cada 1-2 años</td>
      <td>No (solo cédula cada 5 años)</td>
    </tr>
    <tr>
      <td>Base para nacionalización</td>
      <td>No directamente</td>
      <td>Sí (requisito previo)</td>
    </tr>
  </tbody>
</table>

<h2>Trabajo y actividad económica</h2>
<p>Con la Permanencia Definitiva puedes:</p>
<ul>
  <li>Trabajar para cualquier empleador sin necesidad de autorización especial.</li>
  <li>Trabajar de forma independiente (boleta de honorarios) sin restricciones.</li>
  <li>Crear y administrar empresas en Chile con los mismos derechos que un chileno.</li>
  <li>Acceder a concursos públicos para empleos en el Estado (con algunas excepciones).</li>
</ul>

<h2>Salud y educación</h2>
<ul>
  <li><strong>Salud:</strong> acceso al sistema de salud público (Fonasa) en los mismos términos que un ciudadano chileno, según el tramo de ingresos. También puedes contratar Isapre (salud privada).</li>
  <li><strong>Educación:</strong> acceso a establecimientos educacionales públicos en igualdad de condiciones. Los hijos acceden a la educación pública sin restricciones.</li>
  <li><strong>Beneficios sociales:</strong> acceso a subsidios y beneficios del Estado en igualdad de condiciones con los chilenos, siempre que cumplas los demás requisitos (tiempo de residencia, puntaje en la Ficha de Protección Social, etc.).</li>
</ul>

<h2>Viajes y ausencias de Chile</h2>
<p>Con la Permanencia Definitiva puedes salir y entrar a Chile sin restricciones. Sin embargo, debes tener cuidado con las ausencias prolongadas:</p>
<ul>
  <li>Ausencia de más de <strong>1 año</strong> sin comunicar al SERMIG puede poner en riesgo la permanencia definitiva.</li>
  <li>Ausencias de más de 1 año que debas hacer (por trabajo, familia, salud) deben ser notificadas al SERMIG para que no afecten el permiso.</li>
</ul>

<h2>Camino a la ciudadanía</h2>
<p>La Permanencia Definitiva es el requisito previo obligatorio para solicitar la <a href="/nacionalizacion/carta-naturalizacion">Carta de Naturalización</a>. Una vez que tienes la permanencia definitiva y completas 5 años de residencia total en Chile, puedes iniciar el proceso de naturalización.</p>

<h2>¿Se puede revocar la Permanencia Definitiva?</h2>
<p>Sí. Las causales de revocación incluyen: obtenerla con documentos falsos, condena por delito grave, ausencia prolongada sin notificación o representar una amenaza al orden público. En condiciones normales y cumpliendo la ley, la revocación es muy rara.</p>
  $k4$,
  '[
    {
      "question": "¿Necesito renovar la Permanencia Definitiva?",
      "answer": "No se renueva el permiso en sí, pero sí debes renovar la cédula de identidad para extranjeros cada 5 años. La cédula es el documento que acredita tu permanencia definitiva vigente."
    },
    {
      "question": "¿Puedo votar en Chile con la Permanencia Definitiva?",
      "answer": "No. El derecho a voto en Chile requiere ciudadanía chilena. La Permanencia Definitiva no otorga el derecho a sufragio. Para votar, necesitas naturalizarte como ciudadano chileno."
    },
    {
      "question": "¿La Permanencia Definitiva se hereda o transfiere a los hijos?",
      "answer": "No. La Permanencia Definitiva es personal e intransferible. Los hijos menores que tengas en Chile como residente permanente pueden incluirse como carga, pero cuando sean mayores deberán tramitar su propio permiso de residencia (a menos que sean chilenos por nacimiento)."
    },
    {
      "question": "¿Puedo tener propiedades en Chile con visa temporaria o solo con permanencia definitiva?",
      "answer": "Puedes adquirir propiedades en Chile con cualquier tipo de visa o incluso como turista. La ley chilena no restringe la compra de bienes raíces por extranjeros en función de su estatus migratorio."
    },
    {
      "question": "¿Qué pasa con mi Permanencia Definitiva si me voy a vivir a otro país?",
      "answer": "Si te ausentas de Chile por más de 1 año de forma continuada sin notificar al SERMIG, tu Permanencia Definitiva puede quedar en riesgo. Si planeas vivir fuera por un período extendido, informa al SERMIG antes de irte para proteger tu permiso."
    }
  ]'::jsonb,
  ARRAY[
    'permanencia-definitiva',
    'permanencia-definitiva/requisitos',
    'nacionalizacion',
    'nacionalizacion/carta-naturalizacion',
    'vivir-en-chile/rut-extranjero'
  ]::TEXT[],
  5,
  TRUE,
  NOW()
);
