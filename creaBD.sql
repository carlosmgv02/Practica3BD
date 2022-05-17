drop database BDNilCarlos;

create database BDNilCarlos;
use BDNilCarlos;


create table paisos(
    nom varchar(20) PRIMARY KEY,
    pot_desenc boolean,
    tractat_signat boolean
) engine=innodb;

create table laboratoris(
    codi int(20) PRIMARY KEY,
    nom varchar(20),
    paisos VARCHAR(20),
    constraint  fk_paisos foreign key (nom) REFERENCES paisos(nom)

) engine=innodb;

create table zona_biocon(
    codi varchar(20),
    codiLab varchar(20),
    nivell int(1),
    responsable varchar(20),
    primary key (codi, codiLab),
    constraint  fk_polla foreign key (codiLab) REFERENCES laboratoris(codi),
    constraint  fk_cl foreign key (responsable) REFERENCES qualificats(num_pass)

) engine=innodb;



create table armesBio(
    nom varchar(20) PRIMARY KEY,
    fecha date,
    potencial int(1),
    zona varchar(20) not null,
    laboratori varchar(20) not null,
    constraint fk_zona foreign key(zona, laboratori) REFERENCES zona_biocon(codi, codiLab)

) engine=innodb;


create table employees (
    num_pass varchar(11) PRIMARY KEY,
    nom varchar(150)

)engine=innodb;

create table ordinaris(
    num_pass varchar(11),
    constraint fk_num_pass foreign key(num_pass) REFERENCES employees(num_pass)
)engine=innodb;

create table qualificats(
    num_pass varchar(11) PRIMARY KEY,
    titulacio varchar(25),
    zona_assignada varchar(35),
    lab varchar(30),
    constraint fk_num_pas foreign key(num_pass)references employees(num_pass),
    constraint fk_zona_ass foreign key(zona_assignada, lab) references zona_biocon(codi, codiLab)
    
)engine=innodb;

create table assignacions(
    fecha date,
    empl_ord varchar(11),
    zona VARCHAR(20),
    lab varchar(20),
    data_fi date,
    primary key (fecha, empl_ord),
    constraint fk_empl_ord foreign key(empl_ord)references ordinaris(num_pass),
    constraint fk_zonaB foreign key(zona, lab) references zona_biocon(codi, codiLab)
) engine=innodb;






