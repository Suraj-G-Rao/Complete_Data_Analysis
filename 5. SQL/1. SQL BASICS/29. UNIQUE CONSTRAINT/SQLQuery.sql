--UNIQUE CONSTRAINT
--IT ENSURES THAT A COLUMN CONSISTS OF UNIQUE VALUES

--CASE 1 : WHEN THE TABLE ALREADY EXISTS
alter table test_unique
add unique (lastname)


--CASE 2 : WE NEED TO CREATE THE TABLE
create table test_unique (
SID int unique,
age tinyint not null,
firstname varchar(256) not null unique,
lastname varchar(256)
)

select * from test_unique

insert into test_unique values (1,22,'Mayank','Mehera')

insert into test_unique values (1,24,'Rohit','Singh')  --*****************

insert into test_unique values (null,34,'Akhilesh','Jain')

insert into test_unique values (null,54,'Nitin','Singh') --******************

truncate table test_unique