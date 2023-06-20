create database horario2
use horario2
create table materia (
id_materia varchar(10) primary key,
materia varchar(30) not null
)
create table seccion (
seccion int primary key
)
create table periodo (
id_periodo varchar(10) primary key
)
create table dia (
id_dia int primary key identity(1,1),
dia varchar(10) not null
)
create table aula (
aula varchar(10) primary key
)
create table horario (
id_horario int primary key identity(1,1),
hora varchar(15) not null,
id_dia int foreign key references dia(id_dia) not null,
turno varchar(1) not null
)
create table detalle_horario (
id_detalle int primary key identity(1,1),
id_materia varchar(10) foreign key references materia(id_materia) not null,
seccion int foreign key references seccion(seccion) null,
periodo varchar(10) foreign key references periodo(id_periodo) null,
aula varchar(10) foreign key references aula(aula) null,
id_horario int foreign key references horario(id_horario) not null
)

insert into dia(dia) values('Lunes')
insert into dia(dia) values('Martes')
insert into dia(dia) values('Miercoles')
insert into dia(dia) values('Jueves')
insert into dia(dia) values('Viernes')
insert into dia(dia) values('Sabado')
insert into aula(aula) values('119')
insert into materia(id_materia,materia) values('ACT221','Actividades Complementarías')
insert into materia(id_materia,materia) values('ESD233','Estructura de Datos')
insert into materia(id_materia,materia) values('INT222','Ingles para Tecnología')
insert into materia(id_materia,materia) values('LEP265','Lenguaje de Programación I')
insert into materia(id_materia,materia) values('MAT244','Matematica II')
insert into materia(id_materia,materia) values('ORM233','Organización y Metodos')
insert into materia(id_materia,materia) values('SII233','Sistemas de Información')
insert into periodo(id_periodo) values ('2023-B')
insert into seccion(seccion) values ('1201')

insert into horario(hora,id_dia,turno) values('07:40-08:20','1','m')
insert into horario(hora,id_dia,turno) values('08:20-09:00','1','m')
insert into horario(hora,id_dia,turno) values('09:00-09:40','1','m')
insert into horario(hora,id_dia,turno) values('09:45-10:25','1','m')
insert into horario(hora,id_dia,turno) values('10:25-11:05','1','m')
insert into horario(hora,id_dia,turno) values('11:05-11:45','1','m')
insert into horario(hora,id_dia,turno) values('11:45-12:05','1','m')
insert into horario(hora,id_dia,turno) values('12:25-01:05','1','m')
insert into horario(hora,id_dia,turno) values('01:05-01:45','1','m')

insert into horario(hora,id_dia,turno) values('07:40-08:20','2','m')
insert into horario(hora,id_dia,turno) values('08:20-09:00','2','m')
insert into horario(hora,id_dia,turno) values('09:00-09:40','2','m')
insert into horario(hora,id_dia,turno) values('09:45-10:25','2','m')
insert into horario(hora,id_dia,turno) values('10:25-11:05','2','m')
insert into horario(hora,id_dia,turno) values('11:05-11:45','2','m')
insert into horario(hora,id_dia,turno) values('11:45-12:05','2','m')
insert into horario(hora,id_dia,turno) values('12:25-01:05','2','m')
insert into horario(hora,id_dia,turno) values('01:05-01:45','2','m')

insert into horario(hora,id_dia,turno) values('07:40-08:20','3','m')
insert into horario(hora,id_dia,turno) values('08:20-09:00','3','m')
insert into horario(hora,id_dia,turno) values('09:00-09:40','3','m')
insert into horario(hora,id_dia,turno) values('09:45-10:25','3','m')
insert into horario(hora,id_dia,turno) values('10:25-11:05','3','m')
insert into horario(hora,id_dia,turno) values('11:05-11:45','3','m')
insert into horario(hora,id_dia,turno) values('11:45-12:05','3','m')
insert into horario(hora,id_dia,turno) values('12:25-01:05','3','m')
insert into horario(hora,id_dia,turno) values('01:05-01:45','3','m')

insert into horario(hora,id_dia,turno) values('07:40-08:20','4','m')
insert into horario(hora,id_dia,turno) values('08:20-09:00','4','m')
insert into horario(hora,id_dia,turno) values('09:00-09:40','4','m')
insert into horario(hora,id_dia,turno) values('09:45-10:25','4','m')
insert into horario(hora,id_dia,turno) values('10:25-11:05','4','m')
insert into horario(hora,id_dia,turno) values('11:05-11:45','4','m')
insert into horario(hora,id_dia,turno) values('11:45-12:05','4','m')
insert into horario(hora,id_dia,turno) values('12:25-01:05','4','m')
insert into horario(hora,id_dia,turno) values('01:05-01:45','4','m')

insert into horario(hora,id_dia,turno) values('07:40-08:20','5','m')
insert into horario(hora,id_dia,turno) values('08:20-09:00','5','m')
insert into horario(hora,id_dia,turno) values('09:00-09:40','5','m')
insert into horario(hora,id_dia,turno) values('09:45-10:25','5','m')
insert into horario(hora,id_dia,turno) values('10:25-11:05','5','m')
insert into horario(hora,id_dia,turno) values('11:05-11:45','5','m')
insert into horario(hora,id_dia,turno) values('11:45-12:05','5','m')
insert into horario(hora,id_dia,turno) values('12:25-01:05','5','m')
insert into horario(hora,id_dia,turno) values('01:05-01:45','5','m')

insert into horario(hora,id_dia,turno) values('07:40-08:20','6','m')
insert into horario(hora,id_dia,turno) values('08:20-09:00','6','m')
insert into horario(hora,id_dia,turno) values('09:00-09:40','6','m')
insert into horario(hora,id_dia,turno) values('09:45-10:25','6','m')
insert into horario(hora,id_dia,turno) values('10:25-11:05','6','m')
insert into horario(hora,id_dia,turno) values('11:05-11:45','6','m')
insert into horario(hora,id_dia,turno) values('11:45-12:05','6','m')
insert into horario(hora,id_dia,turno) values('12:25-01:05','6','m')
insert into horario(hora,id_dia,turno) values('01:05-01:45','6','m')

insert into horario(hora,id_dia,turno) values('01:45-02:25','1','t')
insert into horario(hora,id_dia,turno) values('02:25-03:05','1','t')
insert into horario(hora,id_dia,turno) values('03:10-03:50','1','t')
insert into horario(hora,id_dia,turno) values('03:50-04:30','1','t')
insert into horario(hora,id_dia,turno) values('04:30-05:10','1','t')
insert into horario(hora,id_dia,turno) values('05:10-05:50','1','t')

insert into horario(hora,id_dia,turno) values('01:45-02:25','2','t')
insert into horario(hora,id_dia,turno) values('02:25-03:05','2','t')
insert into horario(hora,id_dia,turno) values('03:10-03:50','2','t')
insert into horario(hora,id_dia,turno) values('03:50-04:30','2','t')
insert into horario(hora,id_dia,turno) values('04:30-05:10','2','t')
insert into horario(hora,id_dia,turno) values('05:10-05:50','2','t')

insert into horario(hora,id_dia,turno) values('01:45-02:25','3','t')
insert into horario(hora,id_dia,turno) values('02:25-03:05','3','t')
insert into horario(hora,id_dia,turno) values('03:10-03:50','3','t')
insert into horario(hora,id_dia,turno) values('03:50-04:30','3','t')
insert into horario(hora,id_dia,turno) values('04:30-05:10','3','t')
insert into horario(hora,id_dia,turno) values('05:10-05:50','3','t')

insert into horario(hora,id_dia,turno) values('01:45-02:25','4','t')
insert into horario(hora,id_dia,turno) values('02:25-03:05','4','t')
insert into horario(hora,id_dia,turno) values('03:10-03:50','4','t')
insert into horario(hora,id_dia,turno) values('03:50-04:30','4','t')
insert into horario(hora,id_dia,turno) values('04:30-05:10','4','t')
insert into horario(hora,id_dia,turno) values('05:10-05:50','4','t')

insert into horario(hora,id_dia,turno) values('01:45-02:25','5','t')
insert into horario(hora,id_dia,turno) values('02:25-03:05','5','t')
insert into horario(hora,id_dia,turno) values('03:10-03:50','5','t')
insert into horario(hora,id_dia,turno) values('03:50-04:30','5','t')
insert into horario(hora,id_dia,turno) values('04:30-05:10','5','t')
insert into horario(hora,id_dia,turno) values('05:10-05:50','5','t')

insert into horario(hora,id_dia,turno) values('01:45-02:25','6','t')
insert into horario(hora,id_dia,turno) values('02:25-03:05','6','t')
insert into horario(hora,id_dia,turno) values('03:10-03:50','6','t')
insert into horario(hora,id_dia,turno) values('03:50-04:30','6','t')
insert into horario(hora,id_dia,turno) values('04:30-05:10','6','t')
insert into horario(hora,id_dia,turno) values('05:10-05:50','6','t')

insert into horario(hora,id_dia,turno) values('05:50-06:30','1','n')
insert into horario(hora,id_dia,turno) values('06:30-07:10','1','n')
insert into horario(hora,id_dia,turno) values('07:10-07:50','1','n')
insert into horario(hora,id_dia,turno) values('07:50-08:30','1','n')

insert into horario(hora,id_dia,turno) values('05:50-06:30','2','n')
insert into horario(hora,id_dia,turno) values('06:30-07:10','2','n')
insert into horario(hora,id_dia,turno) values('07:10-07:50','2','n')
insert into horario(hora,id_dia,turno) values('07:50-08:30','2','n')

insert into horario(hora,id_dia,turno) values('05:50-06:30','3','n')
insert into horario(hora,id_dia,turno) values('06:30-07:10','3','n')
insert into horario(hora,id_dia,turno) values('07:10-07:50','3','n')
insert into horario(hora,id_dia,turno) values('07:50-08:30','3','n')

insert into horario(hora,id_dia,turno) values('05:50-06:30','4','n')
insert into horario(hora,id_dia,turno) values('06:30-07:10','4','n')
insert into horario(hora,id_dia,turno) values('07:10-07:50','4','n')
insert into horario(hora,id_dia,turno) values('07:50-08:30','4','n')

insert into horario(hora,id_dia,turno) values('05:50-06:30','5','n')
insert into horario(hora,id_dia,turno) values('06:30-07:10','5','n')
insert into horario(hora,id_dia,turno) values('07:10-07:50','5','n')
insert into horario(hora,id_dia,turno) values('07:50-08:30','5','n')

insert into horario(hora,id_dia,turno) values('05:50-06:30','6','n')
insert into horario(hora,id_dia,turno) values('06:30-07:10','6','n')
insert into horario(hora,id_dia,turno) values('07:10-07:50','6','n')
insert into horario(hora,id_dia,turno) values('07:50-08:30','6','n')

insert into detalle_horario(aula,id_horario,id_materia,periodo,seccion) values('119','10','ORM233','2023-B','1201')
insert into detalle_horario(aula,id_horario,id_materia,periodo,seccion) values('119','11','ORM233','2023-B','1201')
insert into detalle_horario(aula,id_horario,id_materia,periodo,seccion) values('119','12','ORM233','2023-B','1201')
insert into detalle_horario(aula,id_horario,id_materia,periodo,seccion) values('119','13','LEP265','2023-B','1201')
insert into detalle_horario(aula,id_horario,id_materia,periodo,seccion) values('119','14','LEP265','2023-B','1201')
insert into detalle_horario(aula,id_horario,id_materia,periodo,seccion) values('119','15','LEP265','2023-B','1201')
insert into detalle_horario(aula,id_horario,id_materia,periodo,seccion) values('119','19','INT222','2023-B','1201')
insert into detalle_horario(aula,id_horario,id_materia,periodo,seccion) values('119','20','INT222','2023-B','1201')
insert into detalle_horario(aula,id_horario,id_materia,periodo,seccion) values('119','21','SII233','2023-B','1201')
insert into detalle_horario(aula,id_horario,id_materia,periodo,seccion) values('119','22','SII233','2023-B','1201')
insert into detalle_horario(aula,id_horario,id_materia,periodo,seccion) values('119','23','SII233','2023-B','1201')
insert into detalle_horario(aula,id_horario,id_materia,periodo,seccion) values('119','24','ACT221','2023-B','1201')
insert into detalle_horario(aula,id_horario,id_materia,periodo,seccion) values('119','25','ACT221','2023-B','1201')
insert into detalle_horario(aula,id_horario,id_materia,periodo,seccion) values('119','29','LEP265','2023-B','1201')
insert into detalle_horario(aula,id_horario,id_materia,periodo,seccion) values('119','30','LEP265','2023-B','1201')
insert into detalle_horario(aula,id_horario,id_materia,periodo,seccion) values('119','31','LEP265','2023-B','1201')
insert into detalle_horario(aula,id_horario,id_materia,periodo,seccion) values('119','32','MAT244','2023-B','1201')
insert into detalle_horario(aula,id_horario,id_materia,periodo,seccion) values('119','33','MAT244','2023-B','1201')
insert into detalle_horario(aula,id_horario,id_materia,periodo,seccion) values('119','34','MAT244','2023-B','1201')
insert into detalle_horario(aula,id_horario,id_materia,periodo,seccion) values('119','35','MAT244','2023-B','1201')
insert into detalle_horario(aula,id_horario,id_materia,periodo,seccion) values('119','38','ESD233','2023-B','1201')
insert into detalle_horario(aula,id_horario,id_materia,periodo,seccion) values('119','39','ESD233','2023-B','1201')
insert into detalle_horario(aula,id_horario,id_materia,periodo,seccion) values('119','40','ESD233','2023-B','1201')

select b.hora,c.dia,d.materia,a.aula
from detalle_horario a, horario b, dia c, materia d
where d.id_materia=a.id_materia
and a.id_horario=b.id_horario
and a.id_materia=d.id_materia
and c.id_dia=b.id_dia
