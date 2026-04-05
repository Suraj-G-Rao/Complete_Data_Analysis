Select * from EmployeeRecords where LastName = 'Miller'

Select * from EmployeeRecords where LastName = 'Miller' and EmployeeID = 3

Select * from EmployeeRecords where LastName = 'Miller' and EmployeeID = '3'

Select * from EmployeeRecords where Department = 'HR' OR Department = 'Finance'

Select * from EmployeeRecords where (Department = 'HR' OR Department = 'Finance') and Salary = 60000.00

Select distinct FirstName, LastName, Department, Salary 
from EmployeeRecords where (Department = 'HR' OR Department = 'Finance') and Salary = 60000.00