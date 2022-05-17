drop database BDNilCarlos;

create database BDNilCarlos;
use BDNilCarlos;

create table armesBio(
    nom varchar(20) not null,
    fecha date,
    potencial int(1),
    zona varchar(20) not null,
    laboratori varchar(20) not null,
    constraint  pk_armesBio primary key (nom)
) engine=innodb;
create table employees (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    branch_id BIGINT UNSIGNED,
    dni VARCHAR(20) UNIQUE,
    name VARCHAR(150),
    email VARCHAR(100),
    birth_date DATE,
    created_at TIMESTAMP NULL,
    updated_at TIMESTAMP NULL  
)engine=innodb;
insert into employees(id)values(123);

insert into armesBio(nom,fecha,potencial,zona,laboratori) values('Arma1','2022-05-24',7,'Vila-seca','Lab prova');
insert into armesBio(nom,fecha,potencial,zona,laboratori) values('Arma2','2022-03-21',7,'Guatemala','Lab guatemailano');
insert into armesBio(nom,fecha,potencial,zona,laboratori) values('Arma3','2022-05-1997',7,'Paraguai','Lab de paraguais');
insert into armesBio(nom,fecha,potencial,zona,laboratori) values('Arma4','2021-07-13',7,'CanyadaReal','Lab de coca');

