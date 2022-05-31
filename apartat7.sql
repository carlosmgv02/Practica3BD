use bdnilcarlos;
/*Obtenir quins són els empleats ordinaris que han estat en més zones de
biocontenció que l’empleat anomenat “Jordi Guasch’.*/
SELECT nom,num_pass
from assignacions,employees
where num_pass=empl_ord
group by  empl_ord
having COUNT(empl_ord)>(select COUNT(empl_ord)
                        from assignacions,employees
                        where nom='Jordi Guasch' and num_pass=empl_ord
                        group by  empl_ord
                        having (count(empl_ord)));