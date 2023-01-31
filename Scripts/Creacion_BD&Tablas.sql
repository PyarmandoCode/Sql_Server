

--Link descarga de sql 2022 & 2019
--https://www.microsoft.com/es-es/sql-server/sql-server-downloads https://www.microsoft.com/es-ES/evalcenter/evaluate-sql-server-2019

--Link Enlace de Sql Mannaget
--https://learn.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver16

--Sql ONLINE
--https://sqliteonline.com/

--Configuration Mananger
--SQLServerManager16.msc

/* Entidades Auto Chofer Cliente Viaje */

Create database bdUber; 
use bduber; /* Crear las Tablas */

create table auto ( matricula varchar(12) primary key, modelo varchar(50), marca varchar(100), caracteristicas varchar(200), año date not null );

create table chofer ( nro_licencia int primary key, nombre varchar(100), apellido varchar(200), fecha_ingreso date, telefono bigint);

create table cliente ( codclie int primary key, nombre varchar(100), apellido varchar(200), direccion varchar(80), telefono bigint);

create table viaje ( codviaje int primary key, fecha_hora_inicio datetime, fecha_hora_fin datetime, nro_licencia_chofer int, codclie int , matricula varchar(12), Costo_kms decimal(7,2), foreign key(nro_licencia_chofer) references chofer(nro_licencia), foreign key(codclie) references cliente(codclie), foreign key(matricula) references auto(matricula));