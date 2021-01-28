-- BRINCADEIRAS COM SQL
-- ====================

/*
Teste de comentário...
...com várias...
...linhas. 
*/

-- Este é um comentário com linha única

USE AdventureWorks2017;


SELECT TOP 20 * FROM Person.Person;


SELECT TOP 5 * FROM Person.BusinessEntityAddress;

SELECT TOP 5 * FROM Person.Address;

SELECT *
FROM Person.BusinessEntityAddress B
	JOIN Person.Address A ON B.AddressID = A.AddressID;



SELECT * FROM Person.Address;

SELECT COUNT(*) FROM Person.Address;

SELECT COUNT (DISTINCT AddressLine1) FROM Person.Address;


SELECT TOP 20 * FROM Person.PersonPhone;

SELECT TOP 20 * FROM Person.EmailAddress;


SELECT TOP 20 
	P.BusinessEntityID,
	P.FirstName, 
	P.LastName, 
	F.PhoneNumber, 
	P.PersonType 
FROM Person.Person P
	JOIN Person.PersonPhone F ON P.BusinessEntityID = F.BusinessEntityID;


SELECT
	P.BusinessEntityID,
	P.FirstName AS Nome, 
	P.LastName AS Sobrenome, 
	F.PhoneNumber AS Telefone, 
	P.PersonType AS TipoPessoa,
	E.EmailAddress
FROM Person.Person P
	JOIN Person.PersonPhone F ON P.BusinessEntityID = F.BusinessEntityID
	JOIN Person.EmailAddress E ON E.BusinessEntityID = P.BusinessEntityID
ORDER BY P.FirstName; --DESC; -- Ou ORDER BY 2 DESC;
-- Falta fazer JOIN com Endereço. Vide tabelas 'Person.BusinessEntityAddress' e 'Person.Address'.


SELECT
	P.BusinessEntityID,
	P.PersonType AS 'Tipo Pessoa',
	P.FirstName AS Nome, 
	P.LastName AS Sobrenome,
	H.Gender AS Sexo,
	H.JobTitle AS Cargo,
	H.BirthDate AS Nascimento,
	H.MaritalStatus AS 'Estado Civil',
	F.PhoneNumber AS Telefone, 
	E.EmailAddress AS 'E-mail'
FROM Person.Person P
	JOIN Person.PersonPhone F ON P.BusinessEntityID = F.BusinessEntityID
	JOIN Person.EmailAddress E ON E.BusinessEntityID = P.BusinessEntityID
	JOIN HumanResources.Employee H ON H.BusinessEntityID = P.BusinessEntityID
--WHERE p.FirstName = 'Peter' AND p.LastName = 'Krebs'
ORDER BY Nome;



SELECT TOP 100 *
FROM Production.Product
ORDER BY SafetyStockLevel;


SELECT TOP 100 *
FROM Production.Product
ORDER BY SafetyStockLevel DESC;


-- SELECT com JOINs monstros para simular o cadastro completo do DB:

SELECT
	P.BusinessEntityID,
	P.PersonType AS 'Tipo Pessoa',
	P.FirstName AS Nome,
	p.MiddleName AS 'Nome do Meio',
	P.LastName AS Sobrenome,
	H.Gender AS Sexo,
	H.JobTitle AS Cargo,
	H.BirthDate AS Nascimento,
	H.MaritalStatus AS 'Estado Civil',
	AT.Name AS 'Tipo Endereço', 
	A.AddressLine1 AS Endereço, 
	A.AddressLine2 AS Complemento, 
	A.PostalCode AS CEP,
	A.City AS Cidade, 
	SP.Name AS Estado,
	SP.CountryRegionCode AS País,
	PNT.Name AS 'Tipo Telefone',
	F.PhoneNumber AS Telefone, 
	E.EmailAddress AS 'E-mail'
FROM Person.Person P
	JOIN Person.PersonPhone F ON P.BusinessEntityID = F.BusinessEntityID
	JOIN Person.PhoneNumberType PNT ON PNT.PhoneNumberTypeID = F.PhoneNumberTypeID
	JOIN Person.EmailAddress E ON E.BusinessEntityID = P.BusinessEntityID
	JOIN HumanResources.Employee H ON H.BusinessEntityID = P.BusinessEntityID
	JOIN Person.BusinessEntityAddress BEA ON P.BusinessEntityID = BEA.BusinessEntityID 
	JOIN Person.Address A ON A.AddressID = BEA.AddressID
	JOIN Person.AddressType AT ON BEA.AddressTypeID = AT.AddressTypeID
	JOIN Person.StateProvince SP ON SP.StateProvinceID = A.StateProvinceID
--WHERE p.FirstName = 'Peter' AND p.LastName = 'Krebs'
--WHERE H.MaritalStatus = 'M'
ORDER BY Nome;

-- O Join Montro, mas testando ISNULL, IS NULL e IS NOT NULL

SELECT
	P.BusinessEntityID,
	P.PersonType AS 'Tipo Pessoa',
	P.FirstName AS Nome,
	ISNULL(p.MiddleName,'HAHA-HOHO-HOHIHA-AHA!!!') AS 'Nome do Meio',
	P.LastName AS Sobrenome,
	H.Gender AS Sexo,
	H.JobTitle AS Cargo,
	H.BirthDate AS Nascimento,
	H.MaritalStatus AS 'Estado Civil',
	AT.Name AS 'Tipo Endereço', 
	A.AddressLine1 AS Endereço, 
	A.AddressLine2 AS Complemento, 
	A.PostalCode AS CEP,
	A.City AS Cidade, 
	SP.Name AS Estado,
	SP.CountryRegionCode AS País,
	PNT.Name AS 'Tipo Telefone',
	F.PhoneNumber AS Telefone, 
	E.EmailAddress AS 'E-mail'
FROM Person.Person P
	JOIN Person.PersonPhone F ON P.BusinessEntityID = F.BusinessEntityID
	JOIN Person.PhoneNumberType PNT ON PNT.PhoneNumberTypeID = F.PhoneNumberTypeID
	JOIN Person.EmailAddress E ON E.BusinessEntityID = P.BusinessEntityID
	JOIN HumanResources.Employee H ON H.BusinessEntityID = P.BusinessEntityID
	JOIN Person.BusinessEntityAddress BEA ON P.BusinessEntityID = BEA.BusinessEntityID 
	JOIN Person.Address A ON A.AddressID = BEA.AddressID
	JOIN Person.AddressType AT ON BEA.AddressTypeID = AT.AddressTypeID
	JOIN Person.StateProvince SP ON SP.StateProvinceID = A.StateProvinceID
--WHERE p.MiddleName IS NOT NULL
WHERE p.MiddleName IS NULL
ORDER BY Nome;


-- Desafios de https://www.youtube.com/watch?v=0ieej-1YqKk&list=PLnNURxKyyLIInBfeGiJ8L314AD015mHkv&index=12

SELECT * 
FROM Production.Product
ORDER BY ListPrice DESC, StandardCost DESC;


SELECT COUNT (*)
--SELECT *
FROM Production.Product
WHERE ListPrice >= 1500


SELECT COUNT (ListPrice)
--SELECT *
FROM Production.Product
WHERE ListPrice >= 1500

--SELECT *
SELECT COUNT(LastName)
FROM Person.Person
WHERE LastName LIKE 'P%';

SELECT TOP 20 * 
FROM Sales.Customer

SELECT COUNT (DISTINCT City) 
FROM PERSON.Address

SELECT DISTINCT City 
FROM PERSON.Address
ORDER BY City;

 SELECT *
-- SELECT COUNT(*)
FROM Production.Product
WHERE Color = 'RED' 
	AND ListPrice BETWEEN 500 AND 1000

SELECT COUNT(*)
FROM Production.Product
WHERE Name LIKE '%Road%';


-- Desafios de https://www.youtube.com/watch?v=vomEiKqLORI&list=PLnNURxKyyLIInBfeGiJ8L314AD015mHkv&index=14

--#1
SELECT MiddleName, COUNT(MiddleName) AS Qtd
FROM Person.Person
GROUP BY MiddleName
ORDER BY MiddleName

SELECT FirstName, COUNT(FirstName) AS Qtd
FROM Person.Person
GROUP BY FirstName
ORDER BY FirstName

--#2
SELECT TOP 10 *
FROM Sales.SalesOrderDetail

SELECT TOP 10 *
FROM Production.Product

SELECT TOP 10 *
FROM Sales.SalesOrderDetail SOD
JOIN Production.Product PRD ON PRD.ProductID = SOD.ProductID;

SELECT PRD.Name, AVG(SOD.OrderQty) AS 'Média Vendas'
FROM Sales.SalesOrderDetail SOD
	JOIN Production.Product PRD ON PRD.ProductID = SOD.ProductID 
GROUP BY PRD.Name;

--#2 (EXPERIMENTOS EXTRAS)

SELECT 
	PRD.Name AS Produto, 
	PRD.Color AS 'Cor do Produto', 
	SOD.OrderQty AS Qtd, 
	SOD.UnitPrice AS 'Preço Unitário', 
	SOD.UnitPriceDiscount AS Desconto, 
	SOD.LineTotal AS 'Total do Pedido'
FROM Sales.SalesOrderDetail SOD
	JOIN Production.Product PRD ON PRD.ProductID = SOD.ProductID
WHERE PRD.Color	IS NOT NULL --OR PRD.Color = 'black'
ORDER BY SOD.OrderQty DESC;

-- #3
SELECT TOP 10
	PRD.Name, 
	SUM(SOD.LineTotal) AS 'Soma'
FROM Sales.SalesOrderDetail SOD
	JOIN Production.Product PRD ON PRD.ProductID = SOD.ProductID
GROUP BY PRD.Name
--ORDER BY Soma DESC; -- Ou também: ORDER BY SUM(SOD.LineTotal) DESC;


--#3 (EXPERIMENTOS EXTRAS)
SELECT TOP 10
	PRD.Name, 
	PRD.Color, 
	SOD.OrderQty, 
	SOD.UnitPrice, 
	SOD.UnitPriceDiscount, 
	SOD.LineTotal
FROM Sales.SalesOrderDetail SOD
	JOIN Production.Product PRD ON PRD.ProductID = SOD.ProductID
ORDER BY SOD.LineTotal DESC;