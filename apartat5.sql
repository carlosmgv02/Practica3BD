USE bdnilcarlos;

/* Obtenir quines zones tenen més de 3 empleats qualificats. Concretament es
 demana el codi de la zona conjuntament amb el nom del laboratori, ordenat per
 laboratori i zona.*/
SELECT
  l.nom,
  q.zona_assignada
FROM
  laboratoris l,
  qualificats q
WHERE
  l.codi = q.lab
GROUP BY
  q.zona_assignada
HAVING
  (count(q.zona_assignada) > 3);