--Joins--
use Northwind

select * from Categories;
select * from Products;
--Crear un Script que me permita mostrar los siguientes campos
--Products: Productid,ProductName
--Categories: CategoryName
--De los productos que pertenecen a la categoria Beverages

select P.Productid,P.ProductName,
C.CategoryName
from  Products P  INNER JOIN Categories C on P.CategoryID=C.CategoryID
where C.CategoryName='Beverages'

--Crear un Script que me permita mostrar cuantos productos existen
--por Categoria
Select c.CategoryName ,count(p.productid) cantidadproductos from Categories c
inner join Products p on c.CategoryID=p.CategoryID
group by c.CategoryName order by 2

--Crear un Script que me permita mostar cuantos pedidos han atendido los empleados
--hasta la fecha

select e.LastName+' '+ e.FirstName NombreCompleto,
count(o.orderid) total 
--Uniendo las Tablas 
from Employees e inner join Orders o 
--Relacionadolo por un campom en comun
on e.EmployeeID=o.EmployeeID
--agrupandolo por los campos que estoy seleccioandolo
group by e.LastName,e.FirstName order by 2


--obtener el Nombre del cliente,Nombre del Proveedor,Nombre del empleado y el
--nombre de los productos que estan en la orden 10794*/
--Customers
--Order
--Order Detail
--Employees
--Prodcuts
--Suppliers

select  c.CompanyName,s.CompanyName,e.FirstName,p.ProductName
from Customers as c inner join Orders as o on c.CustomerID=o.CustomerID
inner join Employees as e on o.EmployeeID=e.EmployeeID
inner join [Order Details] as od on o.OrderID=od.OrderID
inner join Products as p on p.ProductID=od.ProductID
inner join Suppliers as s on s.SupplierID=p.SupplierID
where o.OrderID=10794

