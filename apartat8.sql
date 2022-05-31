use bdnilcarlos;
/*Creeu una vista que obtingui el llistat d’empleats amb el codi de la zona que té
assignada. Tingueu en compte que també volem que els responsables de zona
apareguin com a empleats assignats, i que no volem que cap empleat aparegui més
d’una vegada.*/
drop view llista_empleats;
CREATE VIEW llista_empleats AS
    select E.nom, A.zona
        from employees E
        INNER JOIN assignacions A
            ON E.num_pass=A.empl_ord
                WHERE A.data_fi is NULL
UNION ALL
SELECT E.nom,Z.codi
    FROM employees E
        INNER JOIN zona_biocon Z
            ON E.num_pass=Z.responsable;
select * from llista_empleats;