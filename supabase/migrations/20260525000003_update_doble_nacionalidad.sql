-- Agrega Ecuador y Cuba a la lista de países en doble-nacionalidad
UPDATE articles SET
  content = REPLACE(
    content,
    '<li><strong>Haití:</strong> la ley haitiana es ambigua — consulta con el consulado.</li>',
    '<li><strong>Ecuador:</strong> permite la doble nacionalidad. Sin restricciones para naturalizarse en Chile.</li>
  <li><strong>Cuba:</strong> Cuba no reconoce la doble nacionalidad en general — considera a sus nacionales como cubanos exclusivamente. Consulta con el consulado antes de naturalizarte.</li>
  <li><strong>Haití:</strong> la ley haitiana es ambigua — consulta con el consulado.</li>'
  ),
  updated_at = NOW()
WHERE slug = 'nacionalizacion/doble-nacionalidad';
