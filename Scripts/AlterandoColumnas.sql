/*Modificando las tablas
Agregar Campos
Eliminar Campos
Modificar Campos
Agregar nuevas relaciones (Fk)
*/

/*Agregar una nueva columna */
alter table chofer add estado char(1);
/*Agregar una nueva columna */
update chofer set estado=1;
update chofer set estado=0 where nro_licencia=2458;

select * from chofer where estado=1;
select * from chofer where estado=0;

/*eliminar una columna */
alter table chofer drop column estado;
/*eliminar una nueva columna */


/*modificar tipo de datos de columna */
alter table chofer alter column estado varchar(2);
/*modificar una nueva columna */


/*modificar el nombre de la columna */
exec sp_rename  'chofer.estado' ,'est' 
/*modificar una nueva columna */


