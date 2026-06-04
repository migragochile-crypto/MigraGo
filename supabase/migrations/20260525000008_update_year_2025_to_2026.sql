-- Update stale 2025 year references to 2026 in article titles
UPDATE articles
SET title = REPLACE(title, '2025', '2026')
WHERE title LIKE '%2025%'
  AND is_published = TRUE;
