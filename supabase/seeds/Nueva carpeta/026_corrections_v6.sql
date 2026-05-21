-- ============================================================
-- MigraciónChile — Seed 026: correcciones de calidad v6
-- Corrige FAQ "¿Puedo trabajar después de la autodenuncia?"
-- en artículo autodenuncia: la respuesta actual es demasiado
-- simple y puede inducir a error sobre autorización laboral.
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================================

UPDATE articles
SET faq_items = REPLACE(
  faq_items::text,
  '"answer": "Puedes trabajar con normalidad una vez que tienes la visa temporaria vigente. Durante el período de tramitación, el comprobante de solicitud de visa (no el certificado de autodenuncia en sí) es lo que habilita para trabajar formalmente."',
  '"answer": "La autodenuncia por sí sola no otorga autorización automática para trabajar. El Certificado de Autodenuncia acredita el inicio del proceso migratorio, pero no reemplaza una residencia o permiso laboral vigente. En muchos casos, la posibilidad de trabajar formalmente comienza después de presentar la solicitud de residencia ante el SERMIG y obtener el comprobante o resolución correspondiente que habilite actividades remuneradas, según la categoría migratoria y el estado del trámite. Una vez aprobada la residencia temporaria con autorización laboral, puedes trabajar formalmente conforme a las condiciones establecidas por la autoridad migratoria."'
)::jsonb
WHERE slug = 'autodenuncia';

-- Verificación
SELECT slug, updated_at
FROM articles
WHERE slug = 'autodenuncia';
