-- Name: Arnold Burnley
--FileName: TSQLprogrammingExercise04
--Date: July 25th 2020


--1. Use a derived table to build a query that returns the number of distinct products per year that each
--customer ordered. Use internal aliasing. Use a variable to set the customer number. For example, if
--the customer ID is 1234, the query should report the number of distinct products ordered by customer
--1234 for the years 2014, 2015, and 2016.



DECLARE @custid AS INT = 63;

WITH C AS
(
SELECT YEAR(orderdate) AS orderyear, custid, orderid
From Sales.Orders 
WHERE custid = @custid
)
SELECT @custid AS custid, orderyear, COUNT(DISTINCT orderid) AS productCount
FROM C
GROUP BY orderyear;

--.2 Use multiple common table expressions to build a query that returns the number of distinct products
--per year that each country's customers ordered. Use external aliasing. Use a variable to set the country
--name. For example, if the country name is France, the query should report the number of distinct
--products ordered by French customers for the years 2014, 2015, and 2016


Declare @country AS VARCHAR(20);
SET @country = 'Spain';

WITH C AS
(
SELECT YEAR(orderdate) AS orderyear, shipcountry, orderid
From Sales.Orders 
WHERE shipcountry = @country
)
SELECT @country AS country, orderyear, COUNT(DISTINCT orderid) AS productCount
FROM C
GROUP BY orderyear;


--3. Create a view that shows, for each year, the total dollar amount spent by customers in each country
--for all the years in the database.--5. Use the CROSS APPLY operator to create a query showing the top three products shipped to customers
--in each country. Your report should contain the name of the country, the product id, the product name,
--and the number of products shipped to customers in that country

