select * from EmployeeSalaries

select *
,FIRST_VALUE(Salary) over(order by salary asc) [Minimum Salary]
from EmployeeSalaries

select *
,FIRST_VALUE(EmployeeName) over(order by salary asc) [Emp with Minimum Salary]
,FIRST_VALUE(Salary) over(order by salary asc) [Minimum Salary]
from EmployeeSalaries


select * 
,FIRST_VALUE(EmployeeID) over(partition by department order by salary) [First Value]
from EmployeeSalaries

select * 
,FIRST_VALUE(EmployeeID) over(partition by department order by salary desc) [First Value EID]
,FIRST_VALUE(EmployeeName) over(partition by department order by salary desc) [First Value EName]
from EmployeeSalaries