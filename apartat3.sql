use BDNilCarlos;
/*Obtenir el codi i nom dels laboratoris que tenen alguna zona de
biocontenció d’alt nivell de perillositat. Mostreu el resultat ordenat en ordre alfabètic
segons el nom del laboratori.*/
select l.codi,l.nom FROM (laboratoris l
INNER JOIN zona_biocon z ON z.codiLab=l.codi)
WHERE (z.nivell='A')
ORDER BY nom ASC ;

