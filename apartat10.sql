use bdnilcarlos;
insert ignore into ordinaris
select  responsable from zona_biocon;
update zona_biocon
set responsable=null;