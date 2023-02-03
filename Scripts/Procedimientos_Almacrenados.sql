use Northwind
--Crear Procedure
Create procedure usp_clientes_pais
as
Select * from Customers WHERE Country='Germany'

--Eliminar  el Procedure
Drop Procedure usp_clientes_pais

--Executar el procedure
Exec usp_clientes_pais 'Brazil'

--Modificar el Procedure
--Ver el contenido
sp_helptext usp_clientes_pais;
--Modificar el Procedure
Alter procedure usp_clientes_pais  @pais varchar(20) 
as  
Select * from Customers WHERE Country=@pais;


--Crear un procedimiento almacenado que me permita mostrar
--los pedidos de un cliente por un rango de fecha
alter procedure usp_ordenes_clientes @clie varchar(10),
@desde varchar(20),@hasta varchar(20)
as
select * from orders where CustomerID=@clie
and OrderDate between @desde and @hasta

exec usp_ordenes_clientes 'BOLID','1996-07-04','1996-07-04'


--obtener el Nombre del cliente,Nombre del Proveedor,Nombre del empleado y el
--nombre de los productos que estan en la orden 10794*/
--Customers
--Order
--Order Detail
--Employees
--Prodcuts
--Suppliers

create procedure usp_pedidos @pedido int
as
select  c.CompanyName,s.CompanyName,e.FirstName,p.ProductName
from Customers as c inner join Orders as o on c.CustomerID=o.CustomerID
inner join Employees as e on o.EmployeeID=e.EmployeeID
inner join [Order Details] as od on o.OrderID=od.OrderID
inner join Products as p on p.ProductID=od.ProductID
inner join Suppliers as s on s.SupplierID=p.SupplierID
where o.OrderID=@pedido

exec usp_pedidos 10796

--Procedimientos con Funciones

--Seleccioanr las ordenes de compras , realizadas por el empleado
--con codigo 2 y 5 ademas de los clientes con codigo que comienzen con las 
--letras A hasta la G del 31 de julio de cualquier año
alter procedure usp_ordenes_fecha
--El Siguiente procedimiento realiza lo siguiente
--Seleccioanr las ordenes de compras , realizadas por el empleado
--con codigo 2 y 5 ademas de los clientes con codigo que comienzen con las 
--letras A hasta la G del 31 de julio de cualquier año
--Fecha : Se modifico la linea tal porque trae confilictos 
--con la tabla tal saul 
as
select * from Orders 
where EmployeeID between 2 and 5 and
CustomerID like ('[a-g]%') and
--DATEPART(dd,orderdate)=31 and DATEPART(mm,orderdate)=7
day(orderdate)=31 and month(orderdate)=7
