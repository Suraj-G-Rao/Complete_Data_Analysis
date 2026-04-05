--FOREIGN KEY CONSTRAINT

--CASE 1 : TABLE DOESN'T EXIST
create table test_Primary_key (
ID int primary key,
name varchar(256)
)

insert into test_primary_key values (1,'Mayank'),(2,'Raj'),(3,'Jayant')

select * from test_Primary_key

create table test_foreign_key (
ID int foreign key references test_primary_key(id),
course varchar(256)
)

insert into test_foreign_key values (1,'A')

select * from test_foreign_key

insert into test_foreign_key values (null,'B')

INSERT INTO test_foreign_key VALUES (5,'C')

--CASE 2 : TABLE ALREADY EXISTS
create table test_foreign_key_2 (ID int, course varchar(256))

alter table test_foreign_key_2
add foreign key (id) references test_primary_key(id)