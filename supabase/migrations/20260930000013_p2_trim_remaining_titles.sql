-- Ajuste final P2: evitar truncamiento de dos títulos en resultados de búsqueda.
BEGIN;

UPDATE articles
SET title='Documentos perdidos: qué hacer si eres extranjero',
    updated_at=NOW()
WHERE slug='problemas-migratorios/documentos-perdidos';

UPDATE articles
SET title='Documentos de Residencia Definitiva según tu situación',
    updated_at=NOW()
WHERE slug='residencia-definitiva/documentos';

COMMIT;
