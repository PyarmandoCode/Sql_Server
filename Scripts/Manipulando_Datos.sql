use bduber;

/*Insertar valores en la tabla chofer */
insert into chofer (nro_licencia, nombre, apellido, fecha_ingreso, telefono)
values(2456,'Armando','Ruiz','2023-01-31',  95454656);
insert into chofer (nro_licencia, nombre, apellido, fecha_ingreso, telefono)
values(2457,'Clauida','Perez','2023-01-31',  85454656);
insert into chofer (nro_licencia, nombre, apellido, fecha_ingreso, telefono)
values(2458,'Felipe','Solis','2022-02-20',  45454656);
insert into chofer (nro_licencia, nombre, apellido, fecha_ingreso, telefono)
values(2459,'Miguel','Perez','2022-02-20',null );
insert into chofer values(2460,'Maria','Gonzales','2022-02-20',null );
insert into chofer(nro_licencia, nombre, apellido) 
values(2461,'Oscar','Rodriguez');
select * from chofer;
/*Insertar valores en la tabla chofer */
/*Insertar valores en la tabla autos */
insert into auto values('A34-56','MODELO NISSAN','NISSAN','NISSAN ROJO','2020-02-20');
insert into auto values('A34-57','MODELO TOYOTA','TOYOTA','TOYOTA ROJO','2020-02-20');
insert into auto values('A44-58','MODELO TICO','TICO','TICO ROJO','2020-02-20');
insert into auto values('A34-59','MODELO PEUGEOUT','PEUGEOUT','PEUGEOUT ROJO','2020-02-20');
insert into auto values('A24-10','MODELO NISSAN','NISSAN','NISSAN BLANCO','2020-02-20');
select * from auto;
/*Insertar valores en la tabla autos */
/*Insertar valores en la tabla clientes */
insert into cliente values(100,'PEDRO','PALMA','JR ZEPITA 234',8345678);
insert into cliente values(200,'MARIA','GONZALES','JR LUGO 1334',9345678);
insert into cliente values(300,'OSCAR','RAMOS','AV LIMA 445',83885678);
insert into cliente values(400,'FELIPE','SOLIS','AV LAS ROSAS 1234',89045678);
select * from cliente;
/*Insertar valores en la tabla clientes */
/*Insertar valores en la tabla viajes */
insert into viaje(codviaje, fecha_hora_inicio, fecha_hora_fin, nro_licencia_chofer, codclie, matricula, Costo_kms)
values(100,'2023-01-31','2023-01-31',2456,100,'A24-10',50.00)
insert into viaje
values(200,'2023-01-31','2023-01-31',2459,200,'A24-10',50.00)
insert into viaje
values(300,'2023-01-31','2023-01-31',2461,400,'A34-59',50.00)
/*Insertar valores en la tabla viajes */
select * from viaje
/*Eliminar todos los registros de la tabla*/
TRUNCATE TABLE viaje;

/*Ejemplo de identity */

create table localidad(
 codlocalidad int identity(1000,2)primary key,
 nombre varchar(10),
 descripcion varchar(max))

 insert into localidad(nombre,descripcion) values('Los Flores',
 'La sintaxis b�sica es: INSERT, nombre de tabla, lista de columnas, VALUES y, a 
 continuaci�n, una lista de los valores que se van a insertar. Los dos guiones dobles 
 antes de cada l�nea indican que la l�nea es un comentario y el compilador ignorar� el texto.
 En este caso, el comentario describe una variaci�n permitida de la sintaxis.');

 delete from localidad;
 truncate table localidad;
 select * from localidad;

/*Eliminar registros de una tabla */
delete from viaje where codviaje=300;

/*Actualizar registros de una tabla */
select * from chofer;
select * from viaje;

UPDATE chofer
    SET nombre = 'Claudia'
    WHERE nro_licencia= 2457;

/*Integridad referencial */
/*Eliminar el Hijo*/
/* Eliminacion en Cascada */
delete from viaje where codviaje=200;
/*Eliminar el Padre*/
delete from chofer where nro_licencia=2459;