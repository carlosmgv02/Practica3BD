use bdnilcarlos;

/* Obtenir quines zones tenen més de 3 empleats qualificats. Concretament es
demana el codi de la zona conjuntament amb el nom del laboratori, ordenat per
laboratori i zona.*/
select l.nom,q.zona_assignada
FROM laboratoris l,qualificats q
where l.codi=q.lab
group by q.zona_assignada
having (count(q.zona_assignada)>3);
