-- Barre referencias "2025" restantes en meta_description y content.
-- La migración 20260525000008 solo actualizó title; el audit detectó 2025
-- vigente en descripciones y cuerpos (ej: "Situación por banco (referencial 2025)").
-- El sitio nació en 2026 — no hay menciones históricas legítimas de 2025.

UPDATE articles
SET meta_description = REPLACE(meta_description, '2025', '2026')
WHERE meta_description LIKE '%2025%'
  AND is_published = TRUE;

UPDATE articles
SET content = REPLACE(content, '2025', '2026')
WHERE content LIKE '%2025%'
  AND is_published = TRUE;
