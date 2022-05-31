use BDNilCarlos;

insert into employees(num_pass,nom) values('12345678P','Nil'),
                                          ('49424598J','Carlos'),
                                          ('83128731T','Gabriel'),
                                          ('3123811T','Genis'),
                                          ('77777777','David'),
                                          ('135794K','Jordi Guasch');

insert into paisos(nom, pot_desenc, tractat_signat) VALUES ('Spain',true,'S'),
                                                           ('Germany',true,'N'),
                                                           ('France',false,'D'),
                                                           ('UK', true, 'N');

insert into laboratoris(codi, nom, paisos) values (123,'Lab1','Spain'),
                                                  (12,'Lab2','Germany'),
                                                  (7,'Lab3','France'),
                                                  (987,'Lab4','UK'),
                                                  (777,'BCN-01','Spain'),
                                                  (975,'BCN-02 ','Spain');

insert into qualificats(num_pass,titulacio)values('49424598J','Informàtic'),
                                                 ('83128731T','Full Stack'),
                                                 ('12345678P','Enginyer'),
                                                 ('3123811T','Magisteri'),
                                                 ('77777777','Psicologia');

insert into zona_biocon(codi,codiLab,nivell,responsable) values('32145',123,'A','49424598J'),
                                                               ('12345',12,'M','12345678P'),
                                                               ('54321',7,'B','83128731T'),
                                                               ('65432',987,'A','3123811T'),
                                                               ('77777',777,'B','77777777');

update qualificats set zona_assignada='12345',lab=12 where num_pass='12345678P';
update qualificats set zona_assignada='12345',lab=12 where num_pass='49424598J';
update qualificats set zona_assignada='12345',lab=12 where num_pass='83128731T';
update qualificats set zona_assignada='12345',lab=12 where num_pass='3123811T';
update qualificats set zona_assignada='77777',lab=777 where num_pass='77777777';
-- insert into qualificats(zona_assignada,lab)values('12345',123);
insert into armesBio(nom,fecha,potencial,zona,laboratori) values('Arma1','2022-05-24',7,'12345',12),
                                                                ('Arma2','2022-03-21',3,'32145',123),
                                                                ('Arma3','2022-05-03',2,'54321',7),
                                                                ('Arma4','2021-02-12',7,'77777',777);
insert into ordinaris(num_pass) values('12345678P'),
                                      ('49424598J'),
                                      ('83128731T'),
                                      ('77777777');

insert into assignacions(fecha,empl_ord,zona,lab,data_fi)values('2020-05-15','12345678P','12345',12,'2022-05-15'),
                                                               ('2019-06-13','49424598J','54321',7,'2020-06-12'),
                                                               ('2020-03-15','49424598J','65432',987,'2021-07-12'),
                                                               ('2018-07-15','83128731T','12345',12,'2021-07-12'),
                                                               ('2017-02-12','77777777','77777',777,'2018-02-12');
