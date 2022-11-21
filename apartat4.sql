USE bdnilcarlos;

/* Obtenir els noms dels empleats ordinaris que no han estat mai assignats a cap
 zona de biocontenció de nivell de perillositat Alt.*/
SELECT
  e.nom
FROM
  employees e
  INNER JOIN ordinaris o ON o.num_pass = e.num_pass
WHERE
  NOT EXISTS(
    SELECT
      a.empl_ord
    FROM
      assignacions a
      INNER JOIN zona_biocon z ON a.zona = z.codi
    WHERE
      z.nivell = 'A'
      AND a.empl_ord = o.num_pass
  );