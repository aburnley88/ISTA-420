.echo on
.headers on

-- Arnold Burnley
-- SQL Programming Exercise 01
-- 04 July 2020

drop table if exists books;

create table books(
  Id int NOT NULL PRIMARY KEY,
  Title text,
  Published int,
  pages int,
  Author text,
  weight float,
  cover int
);

insert into books values (1, "Siddhartha", 1922, 118, :"Hermann Hesse", 5.55, 0);
insert into books values (2, "The House of the Spirits", 1985, 433, "Isabel Allende", 12.10, 0);
insert into books values (3, "The Sacred Tarot", 1936, 402, "C.C. Zain", 21.25, 1);
insert into books values (4, "HP and the Prisoner of Azkaban", 1999, 435, "JK Rowling", 33.95, 1);
insert into books values (5, "Sons of Hamas", 2010, 267, "Mosab Hassan Yousef", 13.25, 0);



select * from books;
select title, cover where cover = 0;
select title, cover where cover = 1;
select title where weight > 10.0;
