-- Normaliza las claves de faq_items: {"question","answer"} → {"q","a"}
-- La DB quedó con dos formatos mezclados; el frontend renderiza q/a.

UPDATE articles
SET faq_items = (
  SELECT jsonb_agg(
    CASE
      WHEN item ? 'question'
        THEN jsonb_build_object('q', item->>'question', 'a', item->>'answer')
      ELSE item
    END
  )
  FROM jsonb_array_elements(faq_items) AS item
)
WHERE faq_items IS NOT NULL
  AND jsonb_array_length(faq_items) > 0
  AND faq_items::text LIKE '%"question"%';
