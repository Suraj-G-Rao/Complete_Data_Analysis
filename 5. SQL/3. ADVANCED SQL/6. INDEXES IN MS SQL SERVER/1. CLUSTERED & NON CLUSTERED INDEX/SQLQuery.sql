create database Test_Index

use test_index

create table Students ( id int, name nvarchar(50), age int, gender varchar(20))

insert into Students values
(1,'Raj',23,'M'),
(4,'Nitin',25,'M'),
(3,'Priya',21,'F'),
(2,'Nikita',20,'F'),
(5,'Monica',20,'F')

select * from Students

create clustered index ix_1 on students (id)

create clustered index ix_2 on students (id desc)

drop index ix_1 on students

create clustered index ix_3 on students (gender desc, age asc)

drop index ix_2 on students


create nonclustered index ix_2 on students (ID)

create nonclustered index ix_4 on students (gender desc, age asc)
drop index ix_1 on students

drop index ix_3 on students