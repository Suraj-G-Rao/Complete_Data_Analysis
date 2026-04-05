create database constraints

use constraints


-- CONSTRAINTS ARE CONDITIONS THAT CAN BE APPLIED ON COLUMNS OF A TABLE & THESE CONDITIONS ARE TO BE FOLLOWED WHILE INSERTING RECORDS INTO THE TABLE


--NOT NULL CONSTRAINT

--CASE 1 : WE WILL HAVE TO CREATE A NEW TABLE
create table test_not_null ( 
EID int not null,
age tinyint,
firstname varchar(256)
)

select * from test_not_null

select * from INFORMATION_SCHEMA.columns 
where TABLE_NAME like 'test_not_null'

insert into test_not_null values (1,23,'Mayank')

insert into test_not_null values (null,23,'Mayank')

insert into test_not_null values(2,null,'Raj')


--CASE 2 : THE TABLE ALREADY EXISTS
--WE WANT TO MAKE Firstname COLUMN NULLABLE

alter table test_not_null
alter column firstname varchar(256) not null

insert into test_not_null values (21,34,null)

alter table test_not_null
alter column age tinyint not null

select * from test_not_null
