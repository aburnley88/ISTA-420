--Name: Arnold Burnley
--FileName: TSQLExercise05.sql
--August 1st, 2020

use TSQLV4;


DROP TABLE IF EXISTS dbo.usp;

Create Table dbo.usp
(
ID  Varchar(20),
LastName Varchar(50),
FirstName Varchar(50),
MiddleName Varchar(50),
OrderofPresidency Varchar(50),
DateOfBirth Varchar(50),
DateofDeath varchar(50),
PlaceofBirth Varchar(50),
StateofBirth Varchar(50),
HomeState Varchar(50),
Party Varchar(50),
DateTookOffice Varchar(50),
DateLeftOffice Varchar(50),
AssassinationAttemt Varchar(50),
Assasinated Varchar(50),
ReligionAffiliation Varchar(50),
ImagePath Varchar(50),
);

BULK INSERT dbo.usp FROM 'C:\Users\wwstudent\Desktop\usp.csv'
WITH
(
DATAFILETYPE = 'CHAR',
FIELDTERMINATOR = ',', 
ROWTERMINATOR = '\n'
);


ALTER TABLE dbo.usp DROP COLUMN ImagePath;
DELETE Top(1) FROM dbo.usp;


ALTER TABLE dbo.usp
ADD intColumn INT identity not null
constraint PK_intColumn Primary Key;

update dbo.usp
set DateLeftOffice = '1/20/2017'
OUTPUT 
inserted.DateLeftOffice
where id = 44;

update dbo.usp
set AssassinationAttemt  = 'false'
OUTPUT
inserted.AssassinationAttemt
where id = 44;

update dbo.usp
set Assasinated  = 'false'
OUTPUT 
inserted.Assasinated
where id = 44;

INSERT INTO dbo.usp
output 
inserted.*
values
('45', 'Trump', 'Donald', 'John', '45', '6/14/1946', NUll, 'Queens', 'New York', 'New York', 'Republican', '1/20/2017', NULL, 'False', 'False', 'Anti-Christ')

Alter table dbo.usp
ALTER COLUMN DateofBirth DATE;

Alter table dbo.usp
ALTER COLUMN DateofDeath DATE;

Alter table dbo.usp
ALTER COLUMN DateTookOffice DATE;

Alter table dbo.usp
ALTER COLUMN DateLeftOffice DATE;

Select HomeState,Party,
count(*) over(partition by HomeState) As partyCount
from dbo.usp;

select  FirstName, Lastname, DATEDIFF(day, (DateTookOffice), (DateLeftOffice)) as NoOfDays
from dbo.usp
order by Id;

Select Id, FirstName, LastName, DATEDIFF(year, (DateofBirth), (DateTookOffice)) as AgeWhenElected
from dbo.usp;









