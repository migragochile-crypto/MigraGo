-- ============================================================
-- MigraciónChile — Seed 027: correcciones de calidad v7
-- Corrige FAQ "¿Puedo hacer la autodenuncia si mi pasaporte está vencido?"
-- La respuesta actual afirma que "el proceso no puede completarse"
-- como absoluto — reemplaza por versión que refleja la práctica real
-- (caso a caso) sin inducir a error.
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

UPDATE articles
SET faq_items = REPLACE(
  faq_items::text,
  '"answer": "Idealmente debes presentar pasaporte vigente. Si está vencido, debes renovarlo en el consulado de tu país antes de presentarte a la PDI. Sin pasaporte vigente el proceso no puede completarse en la mayoría de los casos."',
  '"answer": "Idealmente debes presentar un pasaporte vigente o un documento de identificación válido y legible. En muchos casos, contar con el pasaporte actualizado facilita el proceso y evita observaciones o retrasos durante la atención en la PDI. Si tu pasaporte está vencido, es recomendable consultar previamente con tu consulado y con las autoridades migratorias sobre los documentos alternativos que podrían aceptarse en tu situación particular. Dependiendo del caso, la PDI puede solicitar antecedentes adicionales o pedir que regularices primero tu documentación de identidad antes de completar ciertos trámites migratorios."'
)::jsonb
WHERE slug = 'autodenuncia';

-- Verificación
SELECT slug, updated_at
FROM articles
WHERE slug = 'autodenuncia';
