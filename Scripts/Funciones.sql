--Funciones 
--Matematicas
--Retorna el Valor de PI
SELECT PI();  
GO
--
--Me permite generar un valor al azar
DECLARE @counter SMALLINT;  
SET @counter = 1;  
WHILE @counter < 5  
   BEGIN  
      SELECT RAND() Random_Number  
      SET @counter = @counter + 1  
   END;  
GO  
--
--Me permite redondear un numero decimal
SELECT ROUND(150.75, 1);  
GO  

--Funciones de String
--Convierte a Mayusculas y Minusculas
SELECT LOWER('SQL SERVER')
SELECT UPPER('sql server')
--Substrae caracteres de una cadena
SELECT SUBSTRING('SQL SERVER BASICO', 1, 3)
SELECT SUBSTRING('SQL SERVER BASICO', 5, 6)
SELECT SUBSTRING('SQL SERVER BASICO', 12, 6)
SELECT REPLACE('abcdefghicde','cde','xxx');  




