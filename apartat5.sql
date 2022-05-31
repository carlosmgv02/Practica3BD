use bdnilcarlos;

select l.nom,q.zona_assignada
FROM laboratoris l,qualificats q
where l.codi=q.lab
group by q.zona_assignada
having (count(q.zona_assignada)>3);