USE bdnilcarlos;

/*Creeu una vista que obtingui el llistat d’empleats amb el codi de la zona que té
 assignada. Tingueu en compte que també volem que els responsables de zona
 apareguin com a empleats assignats, i que no volem que cap empleat aparegui més
 d’una vegada.*/
DROP view llista_empleats;

CREATE VIEW llista_empleats AS
SELECT
  E.nom,
  A.zona
FROM
  employees E
  INNER JOIN assignacions A ON E.num_pass = A.empl_ord
WHERE
  A.data_fi IS NULL
UNION ALL
SELECT
  E.nom,
  Z.codi
FROM
  employees E
  INNER JOIN zona_biocon Z ON E.num_pass = Z.responsable;

SELECT
  *
FROM
  llista_empleats;