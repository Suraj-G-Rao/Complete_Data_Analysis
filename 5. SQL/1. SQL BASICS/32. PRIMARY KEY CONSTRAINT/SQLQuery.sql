--PRIMARY KEY CONSTRAINT

--CASE 1 : THE TABLE DOESN'T EXIST
create table test_pk_1 (
eid int primary key,
gender char(1),
age tinyint,
firstname varchar(256)
)

insert into test_pk_1 values(1,'M',23,'Mayank')

select * from test_pk_1

insert into test_pk_1 values (1,'F',19,'Priya')

insert into test_pk_1 values (null,'M',25,'Raj')

truncate table test_pk_1


--CASE 2 : THE TABLE ALREADY EXISTS
alter table test_pk_1
add primary key (age)

drop table test_pk_2

create table test_pk_2 (
SID int not null unique,
firstname nvarchar(256),
age tinyint not null
)

alter table test_pk_2
add primary key (sid,age)

alter table test_pk_2
add primary key (sid)