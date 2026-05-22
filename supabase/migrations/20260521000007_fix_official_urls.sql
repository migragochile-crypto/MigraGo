-- Corrige URLs de portales oficiales en el contenido de artículos.
-- Las URLs incorrectas estaban embebidas en el campo content (HTML/markdown).

UPDATE articles
SET content = REPLACE(
  REPLACE(
    REPLACE(
      REPLACE(
        REPLACE(
          content,
          'tramitesmigratorios.interior.gob.cl',
          'tramites.extranjeria.gob.cl'
        ),
        'www.srcei.cl',
        'www.registrocivil.cl'
      ),
      'comisaria.pdichile.cl',
      'www.pdichile.cl/tramites-online/denuncia-por-ingreso-clandestino'
    ),
    'www.sermig.gob.cl',
    'serviciomigraciones.cl'
  ),
  'idNorma=1177286',
  'idNorma=1158549'
)
WHERE
  content LIKE '%tramitesmigratorios.interior.gob.cl%'
  OR content LIKE '%www.srcei.cl%'
  OR content LIKE '%comisaria.pdichile.cl%'
  OR content LIKE '%www.sermig.gob.cl%'
  OR content LIKE '%idNorma=1177286%';
