use bdnilcarlos;
/*Destituir a tots els responsables dels seus càrrecs, és a dir, passar-los de la
relació de “cap” a la relació “assignats”. Potser et sigui necessari fer un petit canvi en el
disseny per tal de poder aconseguir-ho. Si aquest és el vostre cas, escriviu també la
sentència per tal de fer aquest canvi.*/
insert ignore into ordinaris
select  responsable from zona_biocon;
update zona_biocon
set responsable=null;