USE bdnilcarlos;

/*Assignar el nivell de perillositat a ‘A’ (=alt) a aquelles zones de biocontenció
 que desenvolupin alguna arma de potencial superior a 5.*/
/* Nivell de les zones:
 12345- M
 32145- A
 54321- B
 65432- A
 77777- B*/
UPDATE
  zona_biocon
SET
  nivell = 'A'
WHERE
  codi IN (
    SELECT
      zona
    FROM
      armesbio
    WHERE
      potencial > 5
  );