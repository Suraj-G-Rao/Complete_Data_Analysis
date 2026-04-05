select * from EmployeeRecords where not FirstName = 'John'

select * from EmployeeRecords where not FirstName = 'Michael' and not Department = 'IT'

select * from EmployeeRecords where not FirstName = 'Michael' and not Department = 'Finance'

select * from EmployeeRecords where not LastName = 'Miller' or not Department = 'HR'


select * from EmployeeRecords where Salary between 75000 and 85000

select * from EmployeeRecords where Salary >= 75000 and Salary <= 85000

select * from EmployeeRecords where Salary not between 75000 and 85000

select * from EmployeeRecords where not Salary between 75000 and 85000


select * from EmployeeRecords where Department in ('HR', 'IT')

select * from EmployeeRecords where Department not in ('HR', 'IT')