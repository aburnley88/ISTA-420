.echo on
.headers on

--Arnold Burnley
--lab02b-Burnley.TSQL
--July 9th 2020

--1. Who are our customers in North America?

select customerid, companyname, country from customers where country in ('USA', 'Mexico', 'Canada');

--2. What orders were placed in April, 1998?

 select orderid, orderdate from orders where orderdate like "1998-04%";

--3. What sauces do well?

select productid, productname, categoryid, unitsinstock from products where categoryid = 2 and unitsinstock <15;

--4. You sell some kind of dried fruit that I like wo much. What is its name?

select productid, productname from products where productname like "%dried%";

--5. What employees ship products to Germany in December?

SELECT EmployeeID, ShippedDate, strftime('%m', shippeddate) as "Month", ShipCountry from Orders WHERE ShipCountry like 'Germany' AND month = '12';

--6. We have an issue with product 19. I need to know the total amount and the net amount of all orders
--for product 19 where the customer took a discount.

 select productid, unitprice, discount from order_details where productid = 19 and discount > 0;

--7. I need a list of employees by title, first name, amd last name, with the employee's position
--under their names, and a line separating each employee.

select firstname || ' ' || lastname || '
 '|| title || '
 ' from employees;

--8. I need a list of our customers and the first name only of the customer representative.

select companyname || '
' || substr(contactname, 1, instr(contactname, " ")) from customers;

--9. Give me a list of our customer contacts alphabetically by last name.

select substr(contactname, instr(contactname, " ")+1) from customers order by substr(contactname, instr(contactname, " ")+1);

--10. 'I need a report telling me the most common pairing of customers and employees with
--the greatest order volume (by the number of orders placed)Exclude pairings with minimal orders.'

--11. I need a report listing the highest average selling product by product id. The average is determined
--by the total sales of each product id divided by the quantity of the product sold. Include only the highest 20 products.

select productid, sum(unitprice * quantity) as total_price, sum(quantity) as total_quantity, (sum(unitprice*quantity)/sum(quantity)) as average from order_details group by productid order by average desc limit 21;
