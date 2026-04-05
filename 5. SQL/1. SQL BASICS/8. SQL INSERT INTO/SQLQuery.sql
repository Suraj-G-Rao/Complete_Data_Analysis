select * from Employees

insert into Employees(EmployeeID, FirstName, LastName, Department, Salary, HireDate)
values(6, 'Raj', 'Singh', 'IT', 55000, '2023-04-28')

insert into Employees(EmployeeID, FirstName, LastName)
values(7, 'Krish', 'Dsouza')

insert into Employees values(8, 'Karthik', 'Narang', 'Marketing', 75000, '2021-06-13')


select * from INFORMATION_SCHEMA.COLUMNS where table_name = 'Employees'