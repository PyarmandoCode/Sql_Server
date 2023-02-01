use [Northwind]

--Ver los pedidos
select * from Orders;
--Ver los detalles
select * from [Order Details] where orderid=10250
--select * from Products where ProductID=41
--ver los productos
select * from Products where ProductID in(41,51,65)
--ver los clientes
select * from Customers where  CustomerID='HANAR'
--ver varios clientes
select * from Customers where CustomerID in('HANAR','VICTE','HILAA')


--Ver alguna columnas
select [CustomerID],[CompanyName],[Address] from [dbo].[Customers];
select * from [dbo].[Customers]
select CustomerID, 
CompanyName, 
ContactName, 
ContactTitle, 
Address, 
City, 
Region, 
PostalCode, 
Country, 
Phone, Fax
from Customers
--Usar Where
select * from Customers where Country in('Argentina','Brazil');
select * from Customers where Country ='Argentina' or Country='Brazil';
select * from Customers where Country ='Brazil' and City='Sao Paulo';
select * from Products where UnitPrice>=10 and UnitPrice<=20;
--Con un rango de valores numericos , fechas
select * from Products where UnitPrice BETWEEN 10 AND 20 order by UnitPrice;
--Filtrar cadenas por un caracter(s) especifico
select * from Products where ProductName like 'C%';
select * from Products where ProductName like '%A%';
--Usar OrderBy para ordenar columnas
select * from Customers where Country in('Argentina','Brazil') order by Country;
--Filtros con fechas
select * from Orders where OrderDate between '1996-07-04' and '1996-07-08'
select * from Orders where year(OrderDate)=1996
select * from Orders where year(OrderDate)=1996 and month(orderdate)=11
select * from Orders where year(OrderDate)=1996 and month(orderdate)=11 and day(OrderDate)=11
---Muestra los pedidos de la fecha actual gracias a la funcion getdate()
select * from orders where OrderDate=getdate()
--Muestra los clientes que no tienen fax
select * from Customers where Fax IS Null
select * from Customers where Region IS Null
--Muestra los clientes que si tienen fax
select * from Customers where not Fax IS Null
--Muestra los clientes que no son del filtro indicado
select * from customers where not country='Germany';
select * from customers where country<>'Germany';
--Estadisticas
--Count - Contar
select count(*) from Customers;
select count(*) from Orders;
select max(unitprice) from Products;
select min(unitprice) from Products;
select sum(unitprice) from Products;
select avg(unitprice) from Products
--Mostrar cuantos clientes hay por pais
select country,count(customerid) cantidad from customers
group by country order by 2 desc;

--Agrupar por un varios campos para realizar totales
select customerid,count(*) from Orders
where CustomerID='SAVEA' --and OrderID='10324'
group by CustomerID order by 2 desc;


--Mostrar la cantidad de empleados por ordenes
select Employeeid,count(*) from Orders
group by EmployeeID order by 2 desc;

--Cual es el producto que mas se ha pedido
select top 1 ProductID,MAX(quantity) as cantidad from [Order Details]
group by ProductID order by 2 desc;

--Total por producto
select ProductID,sum(unitprice*quantity) as total from [Order Details]
group by ProductID order by 2 desc;
