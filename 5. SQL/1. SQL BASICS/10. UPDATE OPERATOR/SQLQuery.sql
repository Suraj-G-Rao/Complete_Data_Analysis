select * into #1 from Employees

select * from #1

update #1 set Department = 'HR' where Department is NULL

update #1 set Salary = 88000, HireDate = '2019-11-26' where EmployeeID = 7


select * into #2 from Employees

select * from #2

update #2 set Department = 'HR'