drop database BDNilCarlos;

create database BDNilCarlos;
use BDNilCarlos;

create table paisos(
    nom varchar(20) PRIMARY KEY,
    pot_desenc boolean,
    -- tractat_signat char(1) check(tractat_signat='S' OR tractat_signat='N');
    tractat_signat char(1),
    constraint chk_tractat check(tractat_signat ='S' OR tractat_signat='N' OR tractat_signat='D')
) engine=innodb;

create table laboratoris(
    codi int PRIMARY KEY,
    nom varchar(20),
    paisos varchar(20),
    constraint fk_paisos foreign key (paisos) REFERENCES paisos(nom)
) engine=innodb;
create table employees (
    num_pass varchar(20) PRIMARY KEY,
    nom varchar(20)
    -- age integer CHECK(age>=18 && age<50)
)engine=innodb;
create table qualificats(
    num_pass varchar(20) PRIMARY KEY,
    titulacio varchar(20),
    zona_assignada varchar(20),
    lab int,
    constraint fk_num_pas foreign key(num_pass)REFERENCES employees(num_pass)
)engine=innodb;
create table zona_biocon(
    codi varchar(20) UNIQUE,
    codiLab int,
    nivell char(1), -- nivell perillositat A, M, B. 
    responsable varchar(20),
    primary key (codi, codiLab),
    constraint chk_level check(nivell='A' OR nivell='B' OR nivell='M'),
    constraint  fk_lab foreign key (codiLab) REFERENCES laboratoris(codi),
    constraint  fk_cl foreign key (responsable) REFERENCES qualificats(num_pass)
) engine=innodb;

create table armesBio(
    nom varchar(20) PRIMARY KEY,
    fecha date,
    potencial int CHECK (potencial<10 AND potencial>1),
    zona varchar(20) not null,
    laboratori int not null,
    constraint fk_zona foreign key(zona, laboratori) REFERENCES zona_biocon(codi, codiLab)
) engine=innodb;


ALTER TABLE qualificats
ADD CONSTRAINT fk_zona_ass
    FOREIGN KEY (zona_assignada,lab) REFERENCES zona_biocon (codi, codiLab) ON DELETE CASCADE; 


create table ordinaris(
    num_pass varchar(20)UNIQUE ,
    constraint fk_num_pass foreign key(num_pass) REFERENCES employees(num_pass)
)engine=innodb;



create table assignacions(
    fecha date,
    empl_ord varchar(20),
    zona varchar(20),
    lab int,
    data_fi date,
    primary key (fecha, empl_ord),
    constraint fk_empl_ord foreign key(empl_ord)references ordinaris(num_pass),
    constraint fk_zonaB foreign key(zona, lab) references zona_biocon(codi, codiLab)
) engine=innodb;






