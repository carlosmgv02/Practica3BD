-- 9. Assignar el nivell de perillositat a ‘A’ (=alt) a aquelles zones de biocontenció 
-- que desenvolupin alguna arma de potencial superior a 5
use bdnilcarlos;
update zona_biocon
set nivell = 'A'
where codi in (select zona
				 from armesBio
                 where potencial > 5);
 
 -- 10. Destituir a tots els responsables dels seus càrrecs, és a dir, passar-los de la 
-- relació de “cap” a la relació “assignats”. Potser et sigui necessari fer un petit canvi en el 
-- disseny per tal de poder aconseguir-ho. Si aquest és el vostre cas, escriviu també la 
-- sentència per tal de fer aquest canvi.

-- insertamos en la tabla ordinaris a los que son responsables de una zona
-- en la tabla ordinaris tenemos que añadir valores de la tabla empleats.
-- los responsables se obtienen de la tabla qualificats y ésta a su vez de la tabla empleats,
-- por tanto, se pueden insertar sin realizar ningun cambio en el diseño.
insert into ordinaris
select responsable from zona_biocon;

-- elimino la relación entre zona de biocontenció y responsable
update zona_biocon
set responsable = null;
