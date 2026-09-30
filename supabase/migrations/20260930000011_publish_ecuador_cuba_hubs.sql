-- Los hubs de Ecuador y Cuba fueron insertados originalmente sin is_published,
-- cuyo valor predeterminado es FALSE. Publicamos solo los hubs ya corregidos;
-- sus subguías antiguas permanecen retiradas por la migración 000010.
BEGIN;

UPDATE articles
SET is_published=TRUE,
    published_at=COALESCE(published_at, NOW()),
    updated_at=NOW()
WHERE slug IN ('ecuador', 'cuba')
  AND type='hub';

COMMIT;
