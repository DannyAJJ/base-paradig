create database dbg
use dbg

create table carrera(
id_carrera int primary key identity(1,1),
nomb_carrera varchar(30) not null
)

create table pais (
id_pais int primary key identity(1,1),
nomb_pais varchar(30) not null,
)
create table ciudad (
id_ciudad int primary key identity(1,1),
nomb_ciudad varchar(30) not null,
id_pais int foreign key references pais(id_pais) not null
)
create table cursos (
id_curso int primary key identity(1,1),
nomb_curso varchar(30) not null,
)
create table estudiantes (
matricula int primary key identity(100,1),
nombre_1 int not null,
nombre_2 int null,
apellido_1 int not null,
apellido_2 int null,
id_pais int foreign key references pais(id_pais) not null,
id_ciudad int foreign key references ciudad(id_ciudad) not null 
)
create table est_carrera (
matricula int,
id_carrera int,
primary key (id_carrera,matricula),
constraint matricula foreign key (matricula) references estudiantes(matricula) on update cascade on delete no action,
constraint id_carrera foreign key (id_carrera) references carrera(id_carrera) on update cascade on delete no action,
)
create table est_cursos (
matricula int,
id_curso int,
primary key (id_curso),
constraint matricula foreign key (matricula) references estudiantes(matricula) on update cascade on delete no action,
constraint id_curso foreign key (id_curso) references cursos(id_curso) on update cascade on delete no action,
)
create table est_tlf (
telefono varchar(20) primary key,
matricula int foreign key references estudiantes(matricula) not null
)

insert into pais(nomb_pais) values('Venezuela')
insert into pais(nomb_pais) values('Chile')
insert into pais(nomb_pais) values('Colombia')
insert into pais(nomb_pais) values('Argentina')
insert into pais(nomb_pais) values('Mexico')
insert into pais(nomb_pais) values('Bolibia')
insert into ciudad(id_pais,nomb_ciudad) values('1','Maracay')
insert into ciudad(id_pais,nomb_ciudad) values('1','Valencia')
insert into ciudad(id_pais,nomb_ciudad) values('1','Ciudad Bolivar')
insert into ciudad(id_pais,nomb_ciudad) values('3','Cucuta')
insert into ciudad(id_pais,nomb_ciudad) values('3','Medellin')
insert into ciudad(id_pais,nomb_ciudad) values('2','Lote')
insert into ciudad(id_pais,nomb_ciudad) values('2','Plata')
insert into ciudad(id_pais,nomb_ciudad) values('4','Santiago')
insert into ciudad(id_pais,nomb_ciudad) values('4','Ciudad Capital')
insert into ciudad(id_pais,nomb_ciudad) values('5','Dc')
insert into ciudad(id_pais,nomb_ciudad) values('5','Tijuana')
insert into ciudad(id_pais,nomb_ciudad) values('6','Mar')
insert into ciudad(id_pais,nomb_ciudad) values('6','Oceano')
insert into estudiantes(nombre_1,nombre_2,apellido_1,apellido_2,id_ciudad) values ('Danny','Alejandro','Jardim','Jardim','2')
insert into estudiantes(nombre_1,apellido_1,,id_ciudad) values ('Samuel','Algo','11')

select a.nomb_ciudad,b.nomb_pais 
from ciudad a,pais b
where a.id_pais=b.id_pais
select * from estudiantes
