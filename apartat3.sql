use BDNilCarlos;

select l.codi,l.nom FROM (laboratoris l
INNER JOIN zona_biocon z ON z.codiLab=l.codi)
WHERE (z.nivell='A')
ORDER BY nom ASC ;

