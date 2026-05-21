-- ============================================================
-- MigraciónChile — Seed 024: correcciones de calidad v4
-- Corrige autodenuncia (artículo hub) — segunda ronda:
--   1. "diseñado para facilitar la regularización sin expulsión" → matiz correcto
--   2. Typo "autodenuenciarse" → "autodenunciarse"
--   3. Condición "No tenga condenas" → nota informativa (no es requisito)
--   4. "cualquier comisaría PDI" → "unidades habilitadas"
--   5. "salud pública se restringe a urgencias" → garantías para grupos prioritarios
--   6. "No puedes abrir cuenta bancaria" → suavizar a "puede dificultar"
--   7. Agrega sección "Fuentes y recursos oficiales" al final
-- Nota: la fecha "Actualizado" se actualiza sola vía updated_at en el frontend
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

UPDATE articles
SET content = REPLACE(
  REPLACE(
    REPLACE(
      REPLACE(
        REPLACE(
          REPLACE(
            REPLACE(
              content,

              -- 1. "diseñado para facilitar la regularización sin expulsión"
              'diseñado para facilitar la regularización sin expulsión.',
              'diseñado para permitir que la autoridad migratoria conozca la situación irregular y evalúe eventuales vías de regularización conforme a la normativa vigente.'
            ),

            -- 2. Typo: "autodenuenciarse" → "autodenunciarse"
            'Puede autodenuenciarse cualquier extranjero mayor de edad que:',
            'Puede autodenunciarse cualquier extranjero mayor de edad que:'
          ),

          -- 3. Condición "No tenga condenas" → nota informativa
          '<li>No tenga condenas vigentes por delitos graves en Chile o en el extranjero.</li>',
          '<li>La existencia de antecedentes penales no impide la autodenuncia, pero puede afectar las etapas posteriores de residencia o regularización — el SERMIG evaluará el caso concreto.</li>'
        ),

        -- 4. "cualquier comisaría de la PDI" → "unidades habilitadas"
        'presencialmente en cualquier comisaría de la PDI',
        'presencialmente en unidades de la PDI habilitadas para trámites migratorios'
      ),

      -- 5. "El acceso al sistema de salud pública se restringe a urgencias"
      '<li>El acceso al sistema de salud pública se restringe a urgencias.</li>',
      '<li>La situación irregular puede dificultar el acceso a ciertas prestaciones, aunque existen garantías de atención en salud para grupos prioritarios (menores, embarazadas, urgencias) independientemente de la situación migratoria.</li>'
    ),

    -- 6. "No puedes abrir cuenta bancaria ni acceder a créditos"
    '<li>No puedes abrir cuenta bancaria ni acceder a créditos.</li>',
    '<li>Puede dificultar la apertura de cuentas bancarias y el acceso a productos financieros, según el banco, la documentación disponible y el RUT.</li>'
  ),

  -- 7. Agrega sección de fuentes oficiales al final del artículo
  'Delitos graves pueden resultar en rechazo de la visa, pero no impiden el proceso de autodenuncia en sí.</p>',
  'Delitos graves pueden resultar en rechazo de la visa, pero no impiden el proceso de autodenuncia en sí.</p>

<h2>Fuentes y recursos oficiales</h2>
<ul>
  <li><a href="https://www.serviciomigraciones.cl" target="_blank" rel="noopener noreferrer"><strong>SERMIG</strong></a> — Servicio Nacional de Migraciones: trámites en línea, formularios y normativa vigente.</li>
  <li><a href="https://www.pdichile.cl" target="_blank" rel="noopener noreferrer"><strong>PDI Chile</strong></a> — Policía de Investigaciones: información sobre el proceso presencial de autodenuncia.</li>
  <li><a href="https://www.bcn.cl/leychile/navegar?idNorma=1169243" target="_blank" rel="noopener noreferrer"><strong>Ley 21.325 — texto completo</strong></a> — Biblioteca del Congreso Nacional.</li>
</ul>
<p><em>Esta guía es orientativa y no constituye asesoría legal. Para situaciones específicas, consulta con un abogado especialista en derecho migratorio.</em></p>'
)
WHERE slug = 'autodenuncia';

-- Verificación
SELECT slug, updated_at
FROM articles
WHERE slug = 'autodenuncia';
