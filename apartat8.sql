drop view llista_empleats;
CREATE VIEW llista_empleats AS
    select E.nom, A.zona
        from employees E
        INNER JOIN assignacions A
            ON E.num_pass=A.empl_ord
                WHERE A.data_fi ="NULL"
UNION ALL
SELECT E.nom,Z.codi
    FROM employees E
        INNER JOIN zona_biocon Z
            ON E.num_pass=Z.responsable;
select * from llista_empleats;