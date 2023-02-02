/*Programacion Estructurada */
/*Bucles Procesos repetitivos */
use Northwind;

--declarando la variable para poder usarla
declare @count int;
--asignando un valor a la variable
set @count=1;
  --hacer mientrar
  WHILE @count <=20
  begin
   print(@count)
  --contador
   set @count = @count+1;
  end;
--crear un script que me permita llenar registros de manera dinamica
--a una tabla llamada Cars
create table cars
(id int primary key identity(1,1),
 name varchar(50) not null,
 price int);

 select * from cars;
 truncate table cars;

 declare @count2 int;
 set @count2=1;
 while @count2<=10
 begin
	insert into Cars values('Car-'+cast(@count2 as varchar),@count2*100);
	set @count2=@count2+1;
 end;

 
