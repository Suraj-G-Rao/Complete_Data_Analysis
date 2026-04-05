select * from Employees

select * into emp_bkp from Employees

select * from emp_bkp


--A VIEW IS A VIRTUAL TABLE,IT IS A STORED SQL QUERY
--IT HELPS IN REDUCING THE COMPLEXITY OF THE CODE
--IT HELPS IN IMPLEMENTING THE SECURITY

create view View_1 as (
select * from emp_bkp
)

select * from View_1
--**
update View_1
set EmployeeID = 100



Create view View_2 as (
select EmployeeID,FirstName,LastName,Email,DepartmentID,HireDate from emp_bkp
)

select * from View_2

----------

drop view View_2