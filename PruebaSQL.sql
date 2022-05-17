drop database BDNilCarlos;

create database BDNilCarlos;
use BDNilCarlos;

create table armesBio(
    nom varchar(20) PRIMARY KEY,
    fecha date,
    potencial int(1),
    zona varchar(20) not null,
    laboratori varchar(20) not null
) engine=innodb;
create table employees (
    num_pass varchar(11),
    nom varchar(150)

)engine=innodb;

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






