use master
create database streamingplay
use streamingplay

create table videojuego(
id int not null identity(1,1) primary key,
titulo varchar(100) not null,
languaje varchar(5) not null,
resumen varchar(max),
nota decimal(3,1),
total_jugadores int default 0);

insert into videojuego values('Mortal Komban','es','???????????????',20,120);
insert into videojuego values('Pokemon Go','en','???????????????',20,120);
insert into videojuego values('Striget Figther','es','???????????????',20,120);
insert into videojuego values('Mario Bross','es','???????????????',20,120);
insert into videojuego values('Fenix','en','???????????????',20,120);

select * from videojuego;

create table jugador(
id int not null identity(1,1) primary key,
nombre varchar(80) not null,
edad int not null,
es_famoso int not null default 0,
id_videojuego int not null,
foreign key(id_videojuego) references videojuego(id));

insert into jugador values('Armando Ruiz',46,0,1);
insert into jugador values('Pedro Lopez',23,1,1);
insert into jugador values('Maria Francis',17,0,2);
insert into jugador values('Oscar Lopez',16,1,2);
insert into jugador values('Lorena Lujan',16,0,3);

select * from jugador

--Crear un subconsulta para
--Recuperar todos los juegos en los que menos juega 1 jugador
--Hacer uso de la expresion IN O not antes de la subcosulta
select *
from videojuego
where id in(select id_videojuego from jugador);

select *
from videojuego
where id =ANY(select id_videojuego from jugador);

--Crear un subconsulta que nos muestre todos los jugadores
--que jueguen a un juego en español

select nombre,es_famoso
from jugador
where id_videojuego in(select id from videojuego where languaje='es');

--Crear una subconsulta que nosmuestre todos los jugadores que
--juegan Pokemon Go


select nombre,es_famoso
from jugador 
where id_videojuego in
(select id from videojuego where titulo='Pokemon Go')

--Crear uan subconsulta para seleccionar los jugadores que tienen
--la mayor edad
select nombre  from jugador
where edad =(select max(edad) from jugador)