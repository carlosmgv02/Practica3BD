USE bdnilcarlos;

/*Obtenir quins són els empleats ordinaris que han estat en més zones de
 biocontenció que l’empleat anomenat “Jordi Guasch’.*/
SELECT
  nom,
  num_pass
FROM
  assignacions,
  employees
WHERE
  num_pass = empl_ord
GROUP BY
  empl_ord
HAVING
  COUNT(empl_ord) > (
    SELECT
      COUNT(empl_ord)
    FROM
      assignacions,
      employees
    WHERE
      nom = 'Jordi Guasch'
      AND num_pass = empl_ord
    GROUP BY
      empl_ord
    HAVING
      (count(empl_ord))
  );