use BDNilCarlos;

select laboratoris.codi,laboratoris.nom FROM (laboratoris 
INNER JOIN zona_biocon ON zona_biocon.codiLab=laboratoris.codi)
WHERE (zona_biocon.nivell='A')
ORDER BY nom ASC ;
