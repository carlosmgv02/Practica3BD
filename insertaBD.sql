use BDNilCarlos;
insert into employees(num_pass,nom) values('12345678P','Nil');
insert into employees(num_pass,nom) values('49424598J','Carlos');
insert into employees(num_pass,nom)values('83128731T','Gabriel');
insert into employees(num_pass, nom) VALUES ('3123811T','Genis');
insert into employees(num_pass, nom) VALUES ('77777777','David');
insert into paisos(nom, pot_desenc, tractat_signat) VALUES ('Spain',true,'S');
insert into paisos(nom, pot_desenc, tractat_signat) VALUES ('Germany',true,'N');
insert into paisos(nom, pot_desenc, tractat_signat) VALUES ('France',false,'D');
insert into paisos(nom, pot_desenc, tractat_signat) VALUES ('UK', true, 'N');
insert into laboratoris(codi, nom, paisos) values (123,'Lab1','Spain');
insert into laboratoris(codi,nom,paisos)values (12,'Lab2','Germany');
insert into laboratoris(codi,nom,paisos)values(7,'Lab3','France');
insert into laboratoris(codi, nom, paisos) VALUES (987,'Lab4','UK');
insert into laboratoris(codi, nom, paisos) VALUES (777,'BCN-01','Spain');
insert into laboratoris(codi, nom, paisos) VALUES (975,'BCN-02 ','Spain');

insert into qualificats(num_pass,titulacio)values('49424598J','Informàtic');
insert into qualificats(num_pass,titulacio)values('12345678P','Enginyer');
insert into qualificats(num_pass,titulacio)values('83128731T','Full Stack');
insert into qualificats(num_pass, titulacio) values('3123811T','Magisteri');
insert into qualificats(num_pass, titulacio) VALUES ('77777777','Psicologia');
-- insert into qualificats(num_pass, titulacio, zona_assignada, lab) VALUES ('49424598J','Informático','Barcelona',12);
insert into zona_biocon(codi,codiLab,nivell,responsable) values('32145',123,'A','49424598J');
insert into zona_biocon(codi,codiLab,nivell,responsable) values('12345',12,'M','12345678P');
insert into zona_biocon(codi,codiLab,nivell,responsable) values('54321',7,'B','83128731T');
insert into zona_biocon(codi, codiLab, nivell, responsable) values('65432',987,'A','3123811T');
insert into zona_biocon(codi, codiLab, nivell, responsable) VALUES ('77777',777,'B','77777777');
update qualificats set zona_assignada='12345',lab=12 where num_pass='12345678P';
update qualificats set zona_assignada='12345',lab=12 where num_pass='49424598J';
update qualificats set zona_assignada='12345',lab=12 where num_pass='83128731T';
update qualificats set zona_assignada='12345',lab=12 where num_pass='3123811T';
update qualificats set zona_assignada='77777',lab=777 where num_pass='77777777';
-- insert into qualificats(zona_assignada,lab)values('12345',123);
insert into armesBio(nom,fecha,potencial,zona,laboratori) values('Arma1','2022-05-24',7,'12345',12);
insert into armesBio(nom,fecha,potencial,zona,laboratori) values('Arma2','2022-03-21',7,'32145',123);
insert into armesBio(nom,fecha,potencial,zona,laboratori) values('Arma3','2022-05-03',7,'54321',7);
-- insert into armesBio(nom,fecha,potencial,zona,laboratori) values('Arma4','2021-07-13',7,'54321',5);
insert into ordinaris(num_pass) values('12345678P');
insert into ordinaris(num_pass) values('49424598J');
insert into ordinaris(num_pass)values('83128731T');
insert into ordinaris(num_pass)values ('77777777');
insert into assignacions(fecha,empl_ord,zona,lab,data_fi)values('2020-05-15','12345678P','12345',12,'2022-05-15');
insert into assignacions(fecha, empl_ord, zona, lab, data_fi) VALUES ('2019-06-13','49424598J','54321',7,'2020-06-12');
insert into assignacions(fecha, empl_ord, zona, lab, data_fi) VALUES ('2020-03-15','49424598J','65432',987,'2021-07-12');
insert into assignacions(fecha, empl_ord, zona, lab, data_fi) VALUES ('2018-07-15','83128731T','12345',12,'2021-07-12');
insert into assignacions(fecha, empl_ord, zona, lab, data_fi) VALUES ('2017-02-12','77777777','77777',777,'2018-02-12');