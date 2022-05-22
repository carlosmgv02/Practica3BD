use BDNilCarlos;
insert into employees(num_pass,nom) values('12345678P','Nil');
insert into employees(num_pass,nom) values('49424598J','Carlos');
insert into employees(num_pass,nom)values('83128731T','Gabriel');
insert into employees(num_pass, nom) VALUES ('3123811T','Genis');
insert into paisos(nom, pot_desenc, tractat_signat) VALUES ('Spain',true,'S');
insert into paisos(nom, pot_desenc, tractat_signat) VALUES ('Germany',true,'N');
insert into paisos(nom, pot_desenc, tractat_signat) VALUES ('France',false,'D');

insert into laboratoris(codi, nom, paisos) values (123,'Lab1','Spain');
insert into laboratoris(codi,nom,paisos)values (12,'Lab2','Germany');
insert into laboratoris(codi,nom,paisos)values(7,'Lab3','France');
insert into qualificats(num_pass,titulacio)values('49424598J','Informàtic');
insert into qualificats(num_pass,titulacio)values('12345678P','Enginyer');
insert into qualificats(num_pass,titulacio)values('83128731T','Fonambulista');
insert into qualificats(num_pass, titulacio) values('3123811T','Magisteri');
-- insert into qualificats(num_pass, titulacio, zona_assignada, lab) VALUES ('49424598J','Informático','Barcelona',12);
insert into zona_biocon(codi,codiLab,nivell,responsable) values('32145',123,'A','49424598J');
insert into zona_biocon(codi,codiLab,nivell,responsable) values('12345',12,'M','12345678P');
insert into zona_biocon(codi,codiLab,nivell,responsable) values('54321',7,'B','83128731T');
insert into zona_biocon(codi, codiLab, nivell, responsable) values('65432',7,'A','3123811T');
update qualificats set zona_assignada='12345',lab=12 where num_pass='12345678P';
update qualificats set zona_assignada='32145',lab=123 where num_pass='49424598J';
update qualificats set zona_assignada='54321',lab=7 where num_pass='83128731T';
update qualificats set zona_assignada='65432',lab=7 where num_pass='3123811T';
-- insert into qualificats(zona_assignada,lab)values('12345',123);
insert into armesBio(nom,fecha,potencial,zona,laboratori) values('Arma1','2022-05-24',7,'12345',12);
insert into armesBio(nom,fecha,potencial,zona,laboratori) values('Arma2','2022-03-21',7,'32145',123);
insert into armesBio(nom,fecha,potencial,zona,laboratori) values('Arma3','2022-05-03',7,'54321',7);
-- insert into armesBio(nom,fecha,potencial,zona,laboratori) values('Arma4','2021-07-13',7,'54321',5);
insert into ordinaris(num_pass) values('12345678P');

insert into assignacions(fecha,empl_ord,zona,lab,data_fi)values('2020-05-15','12345678P','32145',123,'2022-05-15');

