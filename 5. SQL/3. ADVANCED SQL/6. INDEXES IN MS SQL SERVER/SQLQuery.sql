--INDEX

select * from Employees

create index IX_1 on employees(salary desc)

create index IX_2 on employees(firstname,lastname)

drop index dbo.employees.IX_1