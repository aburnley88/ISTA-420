.headers on
.echo on


--Arnold Burnley
--SQLProgrammingexercise03.sql
--7/18/2020

--1. Using SQLite and the Northwind database, create a line item report that contains a line for each
--product in the order with the following columns: the order id, the product id, the unit price, the
--quantity sold, the line item price, and the percent of that line item constitutes of the total amount of
--the order.

SELECT od.orderid, p.productid, od.unitprice, od.quantity, sum(od.unitprice*od.quantity) AS LineTotal, sum(od.unitprice *od.quantity)*.01 from order_details od join products p on p.productid = od.productid group by od.orderid limit 10;

--I want to know the unique (distinct) cities, regions, and postal codes: (a) where we have both customers
--and employees, (b) where we have customers but no employees AND both customers and employees,
--and (c) where we have employees but no customers AND both customers and employees. Write three
--queries, using inner and outer joins. Report the results of the queries. There is no need for any further
--Part a: customers and employees

SELECT DISTINCT e.firstname, e.lastname, c.customerid, e.region, e.city, e. postalcode FROM employees e JOIN customers c ON e.region LIKE c.region GROUP BY e.city;

--Part b: customers but no employees AND both customers and employees

SELECT DISTINCT e.employeeid, e.lastname, e.region, e.city, e.Postalcode, c.customerid, c.region, c.city, c.postalcode from customers c LEFT JOIN employees e on c.city like e.city;

--Part c: employees but no customers AND both customers and employees

SELECT DISTINCT e.employeeid, e.lastname, e.region, e.city, e.Postalcode, c.customerid, c.region, c.city, c.postalcode from employees e LEFT JOIN customers c on c.region like e.region;