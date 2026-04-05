select * from EmployeeSalaries

--INCORRECT QUERY
select * 
,LAST_VALUE(EmployeeName) over(order by salary desc) [Emp with Lowest Salary]
from EmployeeSalaries


--CORRECT QUERY
select * 
,LAST_VALUE(EmployeeName) over(order by salary desc rows between unbounded preceding and unbounded following) [Emp with Lowest Salary]
from EmployeeSalaries


--CORRECT QUERY
select * 
,LAST_VALUE(EmployeeName) over(order by salary desc rows between unbounded preceding and unbounded following) [Emp with Lowest Salary]
,LAST_VALUE(Salary) over(order by salary desc rows between unbounded preceding and unbounded following) [Lowest Salary]
from EmployeeSalaries

--CORRECT QUERY
select * 
,LAST_VALUE(EmployeeName) over(partition by department
order by salary desc rows between unbounded preceding and unbounded following) [Emp with Lowest Salary]

,LAST_VALUE(Salary) over(partition by department order by salary desc rows between unbounded preceding and unbounded following) [Lowest Salary]
from EmployeeSalaries

--CORRECT QUERY [LAST VALUE WINDOW FUNCTION]
select * 
,LAST_VALUE(EmployeeName) over(partition by department
order by salary rows between unbounded preceding and unbounded following) [Emp with Highest Salary]

,LAST_VALUE(Salary) over(partition by department order by salary asc rows between unbounded preceding and unbounded following) [Highest Salary]
from EmployeeSalaries

--CORRECT QUERY [FIRST VALUE WINDOW FUNCTION]
select * 
,first_VALUE(EmployeeName) over(partition by department
order by salary desc) [Emp with Highest Salary]

,first_VALUE(Salary) over(partition by department order by salary desc) [Highest Salary]
from EmployeeSalaries