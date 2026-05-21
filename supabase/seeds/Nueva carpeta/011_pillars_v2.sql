-- ============================================================
-- MigraciónChile — Seed v11: expansión pillars permanencia-definitiva,
-- vivir-en-chile, nacionalizacion, problemas
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

-- ──────────────────────────────────────────────────────────
-- 1. PILLAR expandido: permanencia-definitiva
-- ──────────────────────────────────────────────────────────
UPDATE articles SET
  content = $m1$
<p>La <strong>Permanencia Definitiva</strong> es el permiso de residencia de carácter indefinido que Chile otorga a extranjeros que han residido en el país de forma continua y legal. Es el nivel más alto de residencia disponible antes de la nacionalización, y marca el paso de "residente temporal" a "residente permanente" con derechos casi equivalentes a los de un ciudadano chileno.</p>

<p>Está regulada por la <strong>Ley 21.325 de Migración y Extranjería</strong> de 2021. A diferencia del antiguo sistema, la ley vigente simplificó los requisitos y redujo los tiempos mínimos de residencia para solicitarla.</p>

<h2>¿Quiénes pueden solicitar la Permanencia Definitiva?</h2>
<p>Puede solicitarla todo extranjero que cumpla <strong>al menos uno</strong> de estos requisitos:</p>
<ul>
  <li>Haber residido en Chile con <strong>visa temporaria vigente durante 1 año continuo</strong> (la mayoría de los casos).</li>
  <li>Cónyuge o conviviente civil de ciudadano/a chileno/a con residencia acreditada.</li>
  <li>Padre o madre de hijo/a chileno/a menor de 18 años.</li>
  <li>Hijo/a de residente permanente.</li>
  <li>Titulares de visa MERCOSUR con 2 años de residencia continua.</li>
</ul>
<p>El plazo de 1 año comienza a contar desde la fecha de aprobación de la visa temporaria, no desde la solicitud.</p>

<h2>Requisitos documentales</h2>
<p>Para presentar la solicitud de Permanencia Definitiva se requiere:</p>
<ul>
  <li><strong>Pasaporte vigente</strong> con al menos 6 meses de vigencia.</li>
  <li><strong>Visa temporaria vigente</strong> o cédula de identidad para extranjeros vigente.</li>
  <li><strong>Certificado de antecedentes del Registro Civil de Chile</strong>, no mayor a 90 días.</li>
  <li><strong>Certificado de antecedentes penales del país de origen</strong>, apostillado, no mayor a 90 días.</li>
  <li><strong>Comprobante de domicilio</strong> en Chile vigente.</li>
  <li><strong>Acreditación de medios de vida lícitos</strong>: contrato de trabajo, boletas de honorarios, declaración de renta u otro documento que pruebe actividad económica o ingresos.</li>
  <li><strong>Fotografía reciente</strong> con fondo blanco.</li>
</ul>
<p>Si solicitas por vínculo familiar (hijo chileno, pareja chilena), también se requieren los documentos que acreditan ese vínculo.</p>

<h2>El proceso de solicitud</h2>
<p>La solicitud se presenta en el portal online del SERMIG: <a href="https://tramitesmigratorios.interior.gob.cl" target="_blank" rel="noopener noreferrer">tramitesmigratorios.interior.gob.cl</a>. Los pasos son:</p>
<ol>
  <li>Verifica que cumples el tiempo mínimo de residencia con visa temporaria vigente.</li>
  <li>Reúne todos los documentos con fechas vigentes (máximo 90 días de antigüedad).</li>
  <li>Ingresa al portal, selecciona <strong>Permanencia Definitiva</strong> y completa el formulario.</li>
  <li>Sube los documentos en formato PDF o imagen de buena calidad.</li>
  <li>Paga el arancel de solicitud.</li>
  <li>Guarda el comprobante de trámite con número de solicitud.</li>
</ol>

<h2>¿Cuánto demora la resolución?</h2>
<p>El SERMIG tiene plazo legal de 30 días hábiles, pero en la práctica los tiempos han sido:</p>
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
<p>Durante la espera, el comprobante de trámite actúa como habilitante de residencia y trabajo.</p>

<h2>¿Cuánto cuesta?</h2>
<p>El arancel varía según el país de origen (principio de reciprocidad). Para la mayoría de los ciudadanos latinoamericanos oscila entre $50.000 y $100.000 CLP. Algunas categorías por vínculo familiar pueden tener aranceles reducidos.</p>

<h2>Qué cambia cuando obtienes la Permanencia Definitiva</h2>
<p>La diferencia más importante es la <strong>estabilidad</strong>: ya no tienes que renovar tu permiso cada año. Los cambios concretos son:</p>
<table>
  <thead>
    <tr><th>Aspecto</th><th>Visa temporaria</th><th>Permanencia definitiva</th></tr>
  </thead>
  <tbody>
    <tr><td>Vigencia del permiso</td><td>1–2 años, renovable</td><td>Indefinida</td></tr>
    <tr><td>Renovación obligatoria</td><td>Cada 1–2 años</td><td>Solo cédula cada 5 años</td></tr>
    <tr><td>Autorización de trabajo</td><td>Vigente con la visa</td><td>Sin restricciones</td></tr>
    <tr><td>Acceso a cargos públicos</td><td>Limitado</td><td>Ampliado (salvo ciudadanía requerida)</td></tr>
    <tr><td>Base para nacionalización</td><td>No directamente</td><td>Sí, es requisito previo</td></tr>
  </tbody>
</table>
<p>Consulta la guía completa de beneficios en <a href="/permanencia-definitiva/beneficios">beneficios de la permanencia definitiva</a>.</p>

<h2>Ausencias de Chile y su efecto</h2>
<p>Con la Permanencia Definitiva puedes salir y entrar a Chile libremente. Sin embargo:</p>
<ul>
  <li>Ausencias de <strong>más de 1 año continuo</strong> sin notificar al SERMIG pueden poner en riesgo el permiso.</li>
  <li>Si necesitas ausentarte por más de 1 año (trabajo, familia, salud), notifica al SERMIG antes de salir para proteger tu permiso.</li>
</ul>

<h2>El camino completo: de migrante a ciudadano</h2>
<p>La Permanencia Definitiva es el requisito previo para la naturalización. El camino típico es:</p>
<ol>
  <li>Visa temporaria (mínimo 1 año).</li>
  <li>Permanencia Definitiva (indefinida).</li>
  <li>Con 5 años de residencia total: solicitud de <a href="/nacionalizacion/carta-naturalizacion">Carta de Naturalización</a>.</li>
  <li>Nacionalidad chilena.</li>
</ol>
<p>Ver guía completa de requisitos en <a href="/permanencia-definitiva/requisitos">requisitos de la permanencia definitiva</a>.</p>

<h2>¿Qué hacer si te rechazan?</h2>
<p>El rechazo de la Permanencia Definitiva puede apelarse mediante <a href="/problemas/recurso-administrativo">recurso administrativo</a> dentro de los 5 días hábiles desde la notificación. Las causas más comunes de rechazo son documentación incompleta o antecedentes penales graves.</p>
  $m1$,
  faq_items = '[
    {
      "question": "¿Necesito renovar la Permanencia Definitiva?",
      "answer": "No se renueva el permiso en sí. Solo debes renovar la cédula de identidad para extranjeros cada 5 años. La cédula vigente es el documento que acredita tu permanencia definitiva ante cualquier institución."
    },
    {
      "question": "¿Puedo solicitar la permanencia definitiva antes del año?",
      "answer": "No. La Ley 21.325 establece 1 año continuo de residencia con visa temporaria vigente como plazo mínimo. No hay excepciones a este requisito temporal, aunque sí existen causales por vínculo familiar que pueden tener condiciones distintas."
    },
    {
      "question": "¿La permanencia definitiva me da derecho a voto?",
      "answer": "No. El derecho a voto en Chile requiere ciudadanía chilena. La permanencia definitiva no otorga sufragio. Para votar debes naturalizarte como ciudadano chileno, lo que requiere 5 años de residencia."
    },
    {
      "question": "¿Puedo perder la Permanencia Definitiva?",
      "answer": "Sí, en casos extremos: obtenerla con documentos falsos, condena por delito grave, ausencia prolongada sin notificación, o representar una amenaza al orden público. En circunstancias normales, cumpliendo la ley, la revocación es muy rara."
    },
    {
      "question": "¿El tiempo con visa de estudiante cuenta para el año mínimo?",
      "answer": "Sí. El tiempo de residencia con cualquier visa temporaria vigente acumula para el año mínimo requerido, incluyendo la visa de estudiante."
    },
    {
      "question": "¿Puedo trabajar en el sector público con la Permanencia Definitiva?",
      "answer": "Puedes acceder a una amplia gama de empleos en el Estado. Sin embargo, algunos cargos específicos requieren ciudadanía chilena (jueces, fiscales, fuerzas armadas, determinados cargos de elección). Para la mayoría de los empleos públicos, la permanencia definitiva es suficiente."
    }
  ]'::jsonb,
  reading_time_minutes = 8,
  updated_at = NOW()
WHERE slug = 'permanencia-definitiva';

-- ──────────────────────────────────────────────────────────
-- 2. PILLAR expandido: vivir-en-chile
-- ──────────────────────────────────────────────────────────
UPDATE articles SET
  content = $m2$
<p>Vivir en Chile como extranjero va mucho más allá de obtener la visa. Una vez regularizada tu situación migratoria, el desafío práctico es integrarte: conseguir el RUT, abrir una cuenta bancaria, acceder al sistema de salud, matricular a tus hijos, entender el sistema tributario y establecer tu vida cotidiana. Esta guía cubre los trámites y aspectos más importantes.</p>

<h2>Lo primero: el RUT y la cédula de identidad</h2>
<p>El <strong>RUT</strong> (Rol Único Tributario) es el número de identificación fiscal que te permite hacer casi todo en Chile: trabajar formalmente, abrir cuentas bancarias, contratar servicios, acceder a beneficios del Estado y pagar impuestos.</p>
<p>Existen dos vías para obtenerlo:</p>
<ul>
  <li><strong>RUT provisorio en el SII:</strong> disponible desde que tienes el comprobante de solicitud de visa activo. Permite trabajar y facturar mientras esperas la visa aprobada.</li>
  <li><strong>RUT definitivo (cédula de identidad para extranjeros):</strong> se obtiene en el Registro Civil (SRCeI) una vez que el SERMIG aprueba tu visa. Es el documento de identificación principal.</li>
</ul>
<p>Ver guía completa en <a href="/vivir-en-chile/rut-extranjero">cómo obtener el RUT en Chile</a>.</p>

<h2>Sistema de salud: Fonasa e Isapre</h2>
<p>Chile tiene un sistema de salud mixto: público (Fonasa) y privado (Isapres). Como extranjero con visa vigente o en trámite tienes acceso a ambos.</p>
<ul>
  <li><strong>Fonasa</strong> es el Fondo Nacional de Salud público. Te afilia automáticamente si cotizas en el sistema previsional o si eres beneficiario del Estado. Ofrece atención gratuita o a bajo costo según el tramo de ingresos.</li>
  <li><strong>Isapres</strong> son aseguradoras privadas de salud. Ofrecen más opciones y tiempos de atención más cortos, pero tienen costos más altos.</li>
</ul>
<p>Si trabajas con contrato, tu empleador descuenta automáticamente el 7% de cotización de salud. Si trabajas a honorarios, debes cotizar de forma independiente.</p>
<p>Con solo el comprobante de trámite de visa puedes acceder a atención de urgencia en cualquier hospital público. La afiliación completa a Fonasa se activa con la cédula.</p>

<h2>Sistema previsional (AFP)</h2>
<p>Al trabajar en Chile con contrato, quedas afiliado automáticamente al sistema de pensiones (AFP). Se descuenta aproximadamente un 10% de tu sueldo bruto para la cuenta individual de pensiones. Este dinero es tuyo y puede recuperarse si sales del país de forma definitiva mediante el proceso de "retiro de fondos previsionales por cambio de residencia".</p>

<h2>Educación: cómo matricular a tus hijos</h2>
<p>Los hijos de extranjeros tienen derecho a educación pública en Chile en las mismas condiciones que los niños chilenos, independientemente del estatus migratorio de los padres.</p>
<ul>
  <li>Los establecimientos públicos <strong>no pueden negar la matrícula</strong> por razones migratorias.</li>
  <li>Para la matrícula se acepta el comprobante de solicitud de visa o el certificado de autodenuncia como documento de identidad si no tienen cédula.</li>
  <li>Los hijos que no hablan español pueden acceder a programas de apoyo a la integración.</li>
</ul>
<p>Las universidades también admiten extranjeros. Para convalidar estudios secundarios extranjeros, consulta el proceso de homologación en el MINEDUC.</p>

<h2>Apertura de cuenta bancaria</h2>
<p>Abrir una cuenta bancaria en Chile como extranjero requiere:</p>
<ul>
  <li>Cédula de identidad para extranjeros vigente (la mayoría de los bancos la exige).</li>
  <li>Algunos bancos y fintechs aceptan el pasaporte más el comprobante de residencia durante el trámite de visa.</li>
</ul>
<p>Las fintechs como Mercado Pago, MACH o Prepago Los Héroes son más flexibles y pueden ser una alternativa mientras obtienes la cédula. Para abrir cuenta corriente en un banco tradicional, generalmente se requiere tener RUT definitivo y acreditar ingresos.</p>

<h2>Licencia de conducir</h2>
<p>Si tienes licencia de conducir de otro país, puedes usarla mientras seas turista (hasta 90 días). Una vez que tienes residencia en Chile, tienes <strong>6 meses para canjear</strong> la licencia extranjera por una chilena en el municipio de tu domicilio.</p>
<p>El canje generalmente no requiere examen teórico ni práctico, pero sí un examen médico-psicotécnico. Ver guía completa en <a href="/vivir-en-chile/licencia-conducir">cómo canjear la licencia de conducir</a>.</p>

<h2>Homologación de títulos profesionales</h2>
<p>Para la mayoría de las profesiones, puedes trabajar en Chile con tu título extranjero sin trámite adicional. La homologación obligatoria aplica solo a <strong>profesiones reguladas</strong>: medicina, odontología, derecho, docencia formal.</p>
<p>Para el resto de profesiones (ingeniería, economía, diseño, programación, psicología, etc.), el empleador evalúa directamente tu título extranjero. Ver guía completa en <a href="/vivir-en-chile/homologacion-titulos">homologación de títulos en Chile</a>.</p>

<h2>Impuestos: el SII y la declaración anual</h2>
<p>Si trabajas en Chile, tienes obligaciones tributarias:</p>
<ul>
  <li><strong>Trabajadores con contrato:</strong> el impuesto a la renta se descuenta automáticamente en la liquidación de sueldo (retención en la fuente). La declaración anual en abril es generalmente automática.</li>
  <li><strong>Trabajadores independientes (honorarios):</strong> emites boletas de honorarios, se retiene un porcentaje como anticipo de impuesto y declaras en abril.</li>
  <li><strong>Residencia fiscal:</strong> si llevas más de 6 meses en Chile en un año calendario, eres considerado residente fiscal y debes tributar por tus ingresos globales (incluyendo los del extranjero).</li>
</ul>

<h2>Acceso a beneficios sociales del Estado</h2>
<p>Con la Permanencia Definitiva tienes acceso a los mismos beneficios sociales que un ciudadano chileno, siempre que cumplas los demás requisitos (ingresos, composición familiar, puntaje en instrumentos de focalización). Los más relevantes para migrantes son:</p>
<ul>
  <li>Subsidios habitacionales (cuando llevas al menos 5 años de residencia legal continua).</li>
  <li>Bono de invierno y otros beneficios del Estado.</li>
  <li>Sistema de protección a la infancia (Chile Crece Contigo) para familias con hijos menores.</li>
</ul>
  $m2$,
  faq_items = '[
    {
      "question": "¿Necesito el RUT para trabajar en Chile?",
      "answer": "Sí. Para trabajar con contrato formal y emitir boletas de honorarios necesitas RUT. Puedes obtener un RUT provisorio en el SII con el comprobante de trámite de visa mientras esperas la resolución del SERMIG."
    },
    {
      "question": "¿Puedo matricular a mis hijos en la escuela sin cédula?",
      "answer": "Sí. Los establecimientos educacionales públicos no pueden negar la matrícula por razones migratorias. Aceptan el comprobante de trámite de visa o el certificado de autodenuncia como documentos habilitantes."
    },
    {
      "question": "¿Puedo acceder al sistema de salud público sin cédula?",
      "answer": "Con el comprobante de trámite de visa puedes acceder a atención de urgencia en cualquier hospital público. Para afiliarte formalmente a Fonasa necesitas la cédula de identidad para extranjeros."
    },
    {
      "question": "¿Qué pasa con mi AFP si vuelvo a mi país?",
      "answer": "Si te vas de Chile de forma definitiva, puedes solicitar el retiro de tus fondos de AFP mediante el proceso de ''retiro por cambio de residencia''. Se puede gestionar en persona o mediante apoderado y los fondos se transfieren a tu cuenta en el extranjero."
    },
    {
      "question": "¿Tengo que declarar impuestos en Chile por ingresos del extranjero?",
      "answer": "Si eres residente fiscal en Chile (más de 6 meses en el año), en principio debes tributar por tus ingresos globales. Sin embargo, Chile tiene convenios para evitar la doble tributación con varios países. Consulta a un contador para tu situación específica."
    },
    {
      "question": "¿Cuándo puedo acceder a subsidios habitacionales?",
      "answer": "Para acceder a subsidios de vivienda en Chile generalmente se requiere al menos 5 años de residencia legal continua en el país, además de cumplir con los requisitos de ingresos y postulación específicos de cada programa."
    }
  ]'::jsonb,
  reading_time_minutes = 9,
  updated_at = NOW()
WHERE slug = 'vivir-en-chile';

-- ──────────────────────────────────────────────────────────
-- 3. PILLAR expandido: nacionalizacion
-- ──────────────────────────────────────────────────────────
UPDATE articles SET
  content = $m3$
<p>La <strong>nacionalización chilena</strong> es el proceso mediante el cual un extranjero obtiene la ciudadanía chilena. Es el punto de llegada del camino migratorio: después de años de residencia legal, es posible convertirse en ciudadano con todos los derechos que eso implica, incluyendo el pasaporte chileno y el derecho a voto.</p>

<p>En Chile, la naturalización se regula por la <strong>Constitución Política</strong> (artículo 10) y la <strong>Ley 21.325 de Migración y Extranjería</strong>. El proceso está a cargo del <strong>Ministerio del Interior y Seguridad Pública</strong>, no del SERMIG.</p>

<h2>Vías para obtener la nacionalidad chilena</h2>

<h3>Por nacimiento o filiación</h3>
<p>Estas vías no requieren trámite de naturalización:</p>
<ul>
  <li><strong>Ius soli:</strong> haber nacido en territorio chileno (con excepciones para hijos de extranjeros en tránsito o representantes diplomáticos).</li>
  <li><strong>Ius sanguinis:</strong> ser hijo/a de padre o madre chileno/a, aunque el nacimiento haya ocurrido en el extranjero, si se cumple el proceso de inscripción en el consulado.</li>
</ul>

<h3>Por naturalización (la vía para migrantes)</h3>
<p>Es el proceso formal que permite a un extranjero residente adquirir la ciudadanía chilena. Existen dos modalidades:</p>
<ul>
  <li><strong>Carta de Nacionalización ordinaria:</strong> la vía estándar. Requiere cumplir con los requisitos de tiempo de residencia y conducta.</li>
  <li><strong>Carta de Nacionalización por Gracia:</strong> otorgada discrecionalmente por el Presidente de la República a personas que han prestado servicios extraordinarios a Chile. No tiene requisito de tiempo de residencia.</li>
</ul>

<h2>Requisitos para la Carta de Nacionalización ordinaria</h2>
<p>Para solicitar la naturalización, debes cumplir simultáneamente:</p>

<h3>1. Tiempo de residencia</h3>
<p>Al menos <strong>5 años de residencia continua y legal</strong> en Chile. El cómputo incluye:</p>
<ul>
  <li>Tiempo con visa temporaria de cualquier categoría.</li>
  <li>Tiempo con Permanencia Definitiva.</li>
  <li>Las ausencias del país que no superen los 6 meses en cualquier período de 12 meses no interrumpen la continuidad.</li>
</ul>
<p>El tiempo en situación irregular no cuenta para el cómputo.</p>

<h3>2. Permanencia Definitiva vigente al momento de solicitar</h3>
<p>Aunque los 5 años pueden acumularse con visa temporaria, al momento de presentar la solicitud de naturalización debes tener la <a href="/permanencia-definitiva">Permanencia Definitiva</a> aprobada. Sin ella, no puedes iniciar el proceso.</p>

<h3>3. Idioma</h3>
<p>Saber leer y escribir en castellano. Se verifica durante el proceso de evaluación.</p>

<h3>4. Medios de vida lícitos</h3>
<p>Demostrar que tienes una actividad económica o fuente de ingresos que te permite sustentarte en Chile.</p>

<h3>5. Buena conducta</h3>
<p>No tener condenas penales vigentes por delitos graves. Las condenas cumplidas o de baja gravedad se evalúan caso a caso.</p>

<h2>El proceso de solicitud</h2>
<p>A diferencia de las visas, la solicitud de naturalización se presenta ante el <strong>Ministerio del Interior</strong>, no ante el SERMIG. El proceso incluye:</p>
<ol>
  <li>Reunir todos los antecedentes: pasaporte, cédula de identidad para extranjeros, certificado de Permanencia Definitiva, certificados de antecedentes, comprobante de actividad económica, declaración de domicilio.</li>
  <li>Presentar la solicitud ante el Ministerio del Interior (presencial o a través del portal correspondiente).</li>
  <li>Investigación de antecedentes: el Ministerio verifica toda la información declarada.</li>
  <li>Posible entrevista personal para verificar el idioma y los antecedentes.</li>
  <li>Resolución del Ministerio: aprobación o rechazo con fundamentos.</li>
  <li>Si se aprueba: ceremonia de entrega de la Carta de Naturalización y juramento de fidelidad a Chile.</li>
  <li>Inscripción en el Servicio Electoral e inicio del ejercicio de la ciudadanía.</li>
</ol>

<h2>¿Cuánto demora?</h2>
<p>El proceso de naturalización es el más largo de todos los trámites migratorios. Los plazos históricos han sido de <strong>1 a 3 años</strong> desde la presentación de la solicitud. No existe un plazo legal fijo establecido para esta resolución.</p>

<h2>¿Implica renunciar a la otra ciudadanía?</h2>
<p>No necesariamente desde el lado chileno: Chile reconoce la doble ciudadanía en la mayoría de los casos. Sin embargo, algunos países de origen sí exigen renunciar a la ciudadanía original al naturalizarse en otro país. Verifica las leyes de tu país antes de iniciar el proceso.</p>

<h2>Qué derechos otorga la ciudadanía chilena</h2>
<ul>
  <li><strong>Pasaporte chileno:</strong> uno de los más poderosos de América Latina en acceso sin visa a terceros países.</li>
  <li><strong>Derecho a voto</strong> en elecciones presidenciales, parlamentarias, municipales y plebiscitos.</li>
  <li>Acceso a <strong>cargos públicos que requieren ciudadanía</strong> (jueces, fiscales, fuerzas armadas, cargos de elección popular).</li>
  <li>Residencia <strong>permanente e irrevocable</strong> en Chile.</li>
  <li>Posibilidad de transmitir la <strong>ciudadanía chilena a los hijos</strong> nacidos en el extranjero.</li>
</ul>

<h2>El camino completo en números</h2>
<table>
  <thead>
    <tr><th>Etapa</th><th>Tiempo mínimo</th><th>Tiempo típico</th></tr>
  </thead>
  <tbody>
    <tr><td>Visa temporaria</td><td>1 año</td><td>1–2 años</td></tr>
    <tr><td>Permanencia definitiva (trámite)</td><td>—</td><td>4–8 meses</td></tr>
    <tr><td>Permanencia definitiva (acumulación de residencia)</td><td>4 años adicionales</td><td>Variable</td></tr>
    <tr><td>Solicitud de naturalización (resolución)</td><td>—</td><td>1–3 años</td></tr>
    <tr><td><strong>Total desde visa temporaria a ciudadanía</strong></td><td><strong>~5 años</strong></td><td><strong>6–10 años</strong></td></tr>
  </tbody>
</table>

<p>Ver requisitos detallados en <a href="/nacionalizacion/requisitos-nacionalidad">requisitos para la nacionalidad chilena</a> y el proceso de la carta en <a href="/nacionalizacion/carta-naturalizacion">carta de naturalización paso a paso</a>.</p>
  $m3$,
  faq_items = '[
    {
      "question": "¿Puedo solicitar la nacionalidad con solo visa temporaria?",
      "answer": "No. Al momento de presentar la solicitud debes tener la Permanencia Definitiva vigente. Los 5 años de residencia pueden incluir tiempo con visa temporaria, pero la solicitud requiere la permanencia definitiva aprobada."
    },
    {
      "question": "¿Los hijos nacidos en Chile de padres extranjeros son chilenos?",
      "answer": "Sí, en la mayoría de los casos. Los hijos nacidos en Chile son chilenos por ius soli, salvo que ambos padres sean extranjeros en tránsito o representantes diplomáticos. No necesitan naturalizarse."
    },
    {
      "question": "¿La naturalización puede ser revocada?",
      "answer": "La Constitución chilena establece causales muy limitadas de pérdida de nacionalidad. Una vez obtenida por naturalización, la ciudadanía chilena es prácticamente irrevocable en condiciones normales."
    },
    {
      "question": "¿Hay una vía más rápida que los 5 años?",
      "answer": "La Carta de Naturalización por Gracia (otorgada por el Presidente) no tiene requisito de tiempo, pero se otorga solo en casos excepcionales de servicios destacados a Chile. Para la gran mayoría, los 5 años son el requisito mínimo."
    },
    {
      "question": "¿El tiempo con visa de estudiante cuenta para los 5 años?",
      "answer": "Sí. El tiempo con cualquier visa de residencia legal (temporaria, incluyendo estudiante) acumula para los 5 años, siempre que sea residencia continua y legal."
    }
  ]'::jsonb,
  reading_time_minutes = 9,
  updated_at = NOW()
WHERE slug = 'nacionalizacion';

-- ──────────────────────────────────────────────────────────
-- 4. PILLAR expandido: problemas
-- ──────────────────────────────────────────────────────────
UPDATE articles SET
  content = $m4$
<p>Los problemas migratorios son más frecuentes de lo que parece: visas vencidas, solicitudes rechazadas, órdenes de expulsión, documentos perdidos, empleadores que no cumplen. Saber qué derechos tienes y qué opciones existen marca la diferencia entre resolver la situación o quedar atrapado en ella.</p>

<p>Esta sección recoge los problemas más comunes que enfrentan los migrantes en Chile y las vías para resolverlos, basadas en la <strong>Ley 21.325 de Migración y Extranjería</strong> y la <strong>Ley 19.880 de Bases de Procedimientos Administrativos</strong>.</p>

<h2>Los problemas más frecuentes</h2>

<h3>1. Visa vencida: la situación irregular</h3>
<p>Es el problema más común. Si tu visa venció o tu permiso de turismo expiró, estás en situación irregular. La solución es la <a href="/autodenuncia">autodenuncia migratoria</a> en la PDI: te presentas voluntariamente, pagas la multa correspondiente y obtienes el Certificado de Autodenuncia para regularizarte.</p>
<p>La irregularidad no se resuelve sola con el tiempo: cada día adicional aumenta la multa y puede complicar futuras solicitudes. Ver guía completa en <a href="/problemas/visa-vencida">qué hacer si tu visa venció</a>.</p>

<h3>2. Rechazo de visa</h3>
<p>El SERMIG puede rechazar una solicitud de visa por múltiples razones: documentación incompleta, antecedentes penales, inconsistencias en la información declarada o no cumplir los requisitos de la categoría. Ante un rechazo:</p>
<ul>
  <li>Tienes <strong>5 días hábiles</strong> desde la notificación para presentar un recurso de reposición.</li>
  <li>Si el recurso también es rechazado, puedes interponer recurso jerárquico ante el Ministerio del Interior.</li>
  <li>También puedes presentar una nueva solicitud si corriges los problemas o si tu situación ha cambiado.</li>
</ul>
<p>Ver guía completa en <a href="/problemas/rechazo-visa">me rechazaron la visa: qué hacer</a>.</p>

<h3>3. Solicitud sin respuesta o con exceso de plazo</h3>
<p>El SERMIG tiene un plazo legal de 30 días hábiles para resolver solicitudes. En la práctica, los tiempos son mucho mayores (60–180 días). Si llevas más de 6 meses sin respuesta:</p>
<ul>
  <li>Puedes presentar una solicitud de información invocando la <strong>Ley de Transparencia</strong>.</li>
  <li>Puedes acudir personalmente a las oficinas del SERMIG en tu región.</li>
  <li>En casos extremos, el silencio administrativo puede dar lugar a recurso jerárquico.</li>
</ul>

<h3>4. Expulsión</h3>
<p>La expulsión es la medida más grave. Puede ser decretada por el SERMIG o el Ministerio del Interior por causales graves (ingreso clandestino, documentos falsos, condenas penales graves). Ante una notificación de expulsión:</p>
<ul>
  <li>Tienes derecho a presentar <strong>descargos</strong> dentro del plazo indicado (generalmente 10 días hábiles).</li>
  <li>Si ya hay resolución de expulsión, tienes 5 días hábiles para recurso de reposición.</li>
  <li>Si hay privación de libertad, tienes derecho a recurso de amparo (habeas corpus) de tramitación urgente.</li>
</ul>
<p>Ver guía completa en <a href="/problemas/expulsion">expulsión de Chile: causas y cómo impugnarla</a>.</p>

<h2>Tus derechos como migrante en Chile</h2>
<p>La Ley 21.325 establece derechos explícitos para los migrantes, independientemente de su situación migratoria:</p>
<ul>
  <li><strong>Acceso a atención de urgencia</strong> en el sistema de salud público, sin importar la situación migratoria.</li>
  <li><strong>Acceso a la educación</strong> para los hijos, sin que se pueda denegar la matrícula por razones migratorias.</li>
  <li><strong>Derecho a conocer los motivos</strong> de cualquier resolución que te afecte.</li>
  <li><strong>Derecho a interponer recursos</strong> ante cualquier resolución administrativa.</li>
  <li><strong>Prohibición de discriminación</strong> por nacionalidad en la gestión migratoria.</li>
  <li><strong>Acceso a asistencia consular</strong> de tu país de origen ante una detención.</li>
</ul>

<h2>Los recursos administrativos disponibles</h2>
<p>Ante cualquier resolución del SERMIG o del Ministerio del Interior que te perjudique, la Ley 19.880 reconoce:</p>
<table>
  <thead>
    <tr><th>Recurso</th><th>Ante quién</th><th>Plazo para presentar</th><th>Plazo de resolución</th></tr>
  </thead>
  <tbody>
    <tr><td>Reposición</td><td>El mismo SERMIG</td><td>5 días hábiles</td><td>5 días hábiles</td></tr>
    <tr><td>Jerárquico</td><td>Ministerio del Interior</td><td>5 días hábiles</td><td>30 días hábiles</td></tr>
    <tr><td>Aclaración / rectificación</td><td>El mismo SERMIG</td><td>Sin plazo específico</td><td>5 días hábiles</td></tr>
  </tbody>
</table>
<p>Ver guía completa en <a href="/problemas/recurso-administrativo">recurso administrativo ante el SERMIG</a>.</p>

<h2>Cuándo buscar asesoría legal</h2>
<p>Para la mayoría de los trámites rutinarios (visa vencida, documentación incompleta) no necesitas un abogado. Pero hay situaciones en las que la asesoría legal es muy recomendable:</p>
<ul>
  <li>Rechazo de visa por antecedentes penales.</li>
  <li>Notificación de expulsión.</li>
  <li>Detención por motivos migratorios.</li>
  <li>Situaciones de trata de personas o violencia.</li>
  <li>Rechazos reiterados de solicitudes de visa.</li>
</ul>
<p>Organismos que ofrecen asesoría jurídica gratuita o a bajo costo:</p>
<ul>
  <li><strong>Servicio Jesuita a Migrantes (SJM):</strong> asesoría jurídica gratuita en varias ciudades.</li>
  <li><strong>Clínicas jurídicas universitarias</strong> (Universidad de Chile, PUC, Universidad Diego Portales, entre otras).</li>
  <li><strong>Defensoría de los Derechos Ciudadanos:</strong> para quejas contra organismos del Estado.</li>
  <li><strong>OIM</strong> (Organización Internacional para las Migraciones): para situaciones de vulnerabilidad.</li>
</ul>
  $m4$,
  faq_items = '[
    {
      "question": "¿Cuál es lo primero que debo hacer si tengo un problema migratorio?",
      "answer": "Identifica el tipo de problema: si es visa vencida, ve a la PDI para la autodenuncia. Si es un rechazo del SERMIG, revisa los plazos para interponer recurso (5 días hábiles desde la notificación). Si hay detención, solicita asistencia consular y contacta al Servicio Jesuita a Migrantes."
    },
    {
      "question": "¿Pueden deportarme si no tengo visa?",
      "answer": "La simple irregularidad por visa vencida no es causal de expulsión bajo la Ley 21.325. La vía para regularizarse es la autodenuncia voluntaria en la PDI. La expulsión aplica para causales más graves como ingreso clandestino, uso de documentos falsos o condenas penales."
    },
    {
      "question": "¿Mis hijos pueden ir a la escuela si tengo problemas migratorios?",
      "answer": "Sí. Los hijos tienen derecho a educación pública independientemente de la situación migratoria de los padres. Los establecimientos no pueden negar la matrícula por razones migratorias."
    },
    {
      "question": "¿Qué pasa si el SERMIG no responde mi solicitud en el plazo legal?",
      "answer": "El incumplimiento del plazo de 30 días hábiles te habilita para invocar el silencio administrativo y presentar recurso jerárquico ante el Ministerio del Interior. En la práctica, la vía más efectiva suele ser ir presencialmente a las oficinas del SERMIG y presentar una solicitud formal de información."
    },
    {
      "question": "¿Tengo derecho a un intérprete si no hablo español?",
      "answer": "En procedimientos formales (como una audiencia o detención), tienes derecho a que te asistan. Para trámites administrativos regulares, el SERMIG opera en español. Las organizaciones de ayuda humanitaria pueden asistirte con interpretación si la necesitas."
    }
  ]'::jsonb,
  reading_time_minutes = 9,
  updated_at = NOW()
WHERE slug = 'problemas';
