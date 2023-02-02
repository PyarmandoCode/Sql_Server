
/*Procesos condicionaes */
--Utilizando IF
use Northwind;

--DECLARANDO LA VARIABLE
declare @tabla int;
--ASIGNANDO UN VALOR
set @tabla=2;
--COMENZAMOS A EVALUAR DE ACUERDO A LA CONDICION DE LA VARIABLE
IF (@tabla = 2)
   --SI TRUE
   SELECT * FROM [dbo].[Products]
ELSE
   --SI FALSE
   SELECT * FROM [dbo].[Employees]
   
--Condicionales Multiples
declare @dato int
set @dato=6
IF (@dato =1)
	SELECT * FROM [dbo].[Products]
ELSE IF(@dato=2)
	SELECT * FROM [dbo].[Employees]
ELSE
	SELECT * FROM [dbo].[Customers]

--Utilizando Case

select * from Categories;

select CategoryID,CategoryName ,
    CASE CategoryID
		WHEN 1 THEN 'BEBIDAS'
		WHEN 2 THEN 'CONDIMENTOS'
		WHEN 3 THEN 'POSTRES'
		ELSE 'TODOS LOS PRODUCTOS' END AS NUEVOCAMPO
from Categories 
 
select * from Products
--crear un campo calculado "alerta" que me permita mostrar si un producto
--esta por agotarse su stock
--si el campo unitsinstock <=2  'Abasterce de Stock pronto'
--unitsinstock =0 'sin stock te lo adverti'
---en caso contrario aun existe  stock
select 
ProductName,UnitsInStock,
CASE
  WHEN UnitsInStock =0 THEN 'SIN STOCK TE LO ADVERTI JAJAJA'
  WHEN UnitsInStock <=2 THEN 'ABASTECER DE STOCK PRONTO'
  ELSE 'AUN EXISTE STOCK' END AS alerta
from Products