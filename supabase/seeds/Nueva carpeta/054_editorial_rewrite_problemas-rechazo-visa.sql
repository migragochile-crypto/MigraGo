-- ============================================================
-- MigraciónChile — Seed 054: reescritura editorial v6
-- problemas/rechazo-visa — Fase A: Constitución Editorial
-- Cambios content: apertura Tipo B (urgencia del plazo),
--   EEAT (error frecuente: esperar días antes de actuar),
--   subsecciones renombradas (eliminado "Opción X"),
--   reordenación: plazo → causa → opciones,
--   "recurso jerárquico" deja de citar "5 días hábiles" adicionales,
--   sección salir/reingresar simplificada
-- Sin cambios FAQ (ya correcta)
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

UPDATE articles
SET content = $$
<p>El rechazo de una solicitud de visa no cierra el proceso, pero cambia sus reglas. Desde la notificación del rechazo, los días hábiles empiezan a correr: si no actúas dentro del plazo indicado en esa misma resolución, las opciones de impugnación se cierran. Lo primero no es entender por qué ocurrió — lo primero es verificar cuándo vence el plazo.</p>

<p>La causa del rechazo es el segundo paso. El SERMIG está obligado a fundamentarlo, y ese motivo es lo que determina qué camino conviene tomar.</p>

<h2>Por qué rechazan las visas</h2>
<p>Las causas más frecuentes son:</p>
<ul>
  <li><strong>Documentación incompleta o vencida:</strong> falta algún documento requerido o alguno expiró antes de que el SERMIG lo evaluara.</li>
  <li><strong>Inconsistencias en la información declarada:</strong> datos que no coinciden entre documentos o con el sistema migratorio.</li>
  <li><strong>Antecedentes penales graves:</strong> condenas por delitos graves, especialmente recientes.</li>
  <li><strong>Expulsión anterior incumplida.</strong></li>
  <li><strong>No cumplir los requisitos de la categoría solicitada:</strong> por ejemplo, solicitar visa MERCOSUR con un pasaporte de un país que no aplica.</li>
  <li><strong>Motivos de orden público o seguridad:</strong> causales amplias y discrecionales del SERMIG.</li>
</ul>

<h2>La causa del rechazo determina el camino</h2>
<p>Antes de elegir qué hacer, lee la resolución completa:</p>
<ul>
  <li>Si el rechazo es por <strong>documentación</strong>: el recurso de reposición acompañado de los documentos correctos puede tener mayor posibilidad de éxito.</li>
  <li>Si es por <strong>antecedentes penales</strong>: el recurso es más complejo y en general requiere asesoría legal.</li>
  <li>Si es por <strong>no cumplir los requisitos de la categoría</strong>: puede ser más eficiente presentar por otra categoría que sí aplique a tu situación.</li>
</ul>
<p>Un error frecuente es esperar varios días para entender bien el motivo antes de actuar. Esos días hábiles corren desde la notificación — si el plazo vence antes de que presentes el recurso, esa opción se cierra.</p>

<h2>Las opciones disponibles</h2>

<h3>Recurso de reposición</h3>
<p>Se presenta ante el mismo SERMIG dentro del plazo indicado en la notificación de rechazo — generalmente 5 días hábiles. Es la vía más ágil y la primera que conviene evaluar. Ver guía completa en <a href="/problemas/recurso-administrativo">recurso administrativo ante el SERMIG</a>.</p>

<h3>Nueva solicitud por la misma o diferente categoría</h3>
<p>Si el rechazo fue por documentación que ya tienes corregida, o si tu situación cambió (conseguiste empleo formal, surgió una causal familiar, etc.), puedes presentar una nueva solicitud. En general no hay impedimento para hacerlo, aunque el historial del rechazo anterior queda registrado y puede influir en la evaluación.</p>

<h3>Recurso jerárquico ante el Ministerio del Interior</h3>
<p>Si el recurso de reposición fue rechazado o no respondido en plazo, puedes presentar el recurso jerárquico ante el Ministerio del Interior. El plazo viene indicado en la resolución del SERMIG. Es el segundo nivel de impugnación administrativa.</p>

<h3>Acción judicial</h3>
<p>Agotados los recursos administrativos, puedes recurrir a los tribunales mediante recurso contencioso-administrativo. Es un proceso más largo, costoso y que requiere representación legal, pero es una opción disponible ante rechazos con causas graves o arbitrarias.</p>

<h2>¿Qué ocurre mientras los recursos están activos?</h2>
<p>Mientras un recurso esté formalmente presentado y activo, el comprobante puede habilitar la permanencia en el país. La situación migratoria durante ese período puede depender del tipo de recurso y las condiciones específicas del caso.</p>

<h2>¿Puedo salir de Chile después de un rechazo?</h2>
<p>Técnicamente puedes salir del país. Sin embargo, el historial del rechazo queda registrado y puede influir en evaluaciones futuras. No hay prohibición automática de reingreso por un rechazo, pero no es una situación neutral — al reingresar como turista, cualquier nueva solicitud que presentes será evaluada con ese antecedente.</p>
$$
WHERE slug = 'problemas/rechazo-visa';

-- ============================================================
-- Verificación
-- ============================================================
SELECT slug, updated_at
FROM articles
WHERE slug = 'problemas/rechazo-visa';
