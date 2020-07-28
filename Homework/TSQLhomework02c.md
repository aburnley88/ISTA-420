# Arnold Burnley
## TSQL Homework02c
###July 15th, 2020


TSQL Homework 02c
Chapter 02c, T-SQL Query Fundamentals
Readings
Read chapter 2, pages 73 – 93 in the T-SQL Query Fundamentals book.
Homework questions

1. List the date/time types in T-SQL.

T-Sql supports six date and time data types: 2 legacy types called DATETIME and
SMALLDATETIME, and 4 later additions called DATE, TIME, DATETIME2, DATETIMEOFFSET

2. How do you express a date/time literal in T-SQL?

TSQL doesn't provide the means to express a date and time literal; instead, you can
specify a literal of a different type that can be converted--explicitly or implicitly.

3. What is the setting DATEFORMAT used for?

The DATEFORMAT determines how SQL Server interprets the literals you enter when they
are converted from a character-string type to a date and time type.

4. Write a T-SQL snippet changing the date format to German. Read the documentation on how to do
this.

SET LANGUAGE German;
Select CAST('02/12/2016' as DATE);

SELECT CONVERT (DATE, '02/12/2016', 4);

5. What is the difference between CAST(), CONVERT(), and PARSE()?

Convert explicitly converts the character-string into the requested type. Parse does the same thing using
culture. Cast just cast the requested data as a requested type.


6. What function returns the current date? This is very useful in a table that maintains a log of events,
such as user logins.

GETDATE//CURRENT_TIMESTAMP

7. How do you add one day to the current date? Add one week? Add one month? Add one year?

SELECT DATEADD(day, 1, '20200715');
SELECT DATEADD(week, 1, '20200715');
SELECT DATEADD(year, 1, '20200715');


8. Write a SQL snippet to return the number of years between your birth date and today’s date.

select datediff(year, '19881121', '20200715');

9. How do you check a string literal to see if it represents a valid date?

ISDATE(string) 1 if it's valid and 0 if it isn't.

10. What does EOMONTH() do? Give an example of why this might be very useful.

EOM accepts an input date and time value and returns the respective end-of-month
date as a DATE typed value. My last job's budget was tracked month-to-month so
end of month sales were performance indicators.

11. Payments are due exactly 30 days from the date of the last function. Write a select query that calculates
the date of the next payment. Pretend we want to update a column in a database that contains the
date of the next payment. We will do this when we write UPDATE queries.



12. Suppose your son or daughter wants to run a query every day that tells them the number of days until
their 16th birthday. Write a select query that does this.
