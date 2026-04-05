--CHECK CONSTRAINT
--IT CHECKS FOR A CERTAIN CONDITION THAT CAN BE APPLIED ON THE COLUMNS OF A TABLE, IF THIS CONDITION IS NOT FULFILLED, WE WILL NOT BE ABLE TO INSERT THE RECORDS INTO THE TABLE

--CASE 1 : TABLE DOESN'T EXIST
create table test_check (
EID int,
firstname varchar(256),
age tinyint check(age>=10)
)

select * from test_check

insert into test_check values (1,'Mayank','20')

insert into test_check values (2,'Raj',9)

update test_check set EID = 11 where EID = 1

--CASE 2 : TABLE EXISTS
alter table test_check
add check (eid>5)

insert into test_check values(3,'Nitin',34)

insert into test_check values(30,'Nitin',34)