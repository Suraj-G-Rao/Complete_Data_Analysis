select * from EmployeeSales

--1) Write a query to calculate the total sales amount for each department in the EmployeeSales table.
select department, sum(SaleAmount) [ Total Sales Amount] from EmployeeSales
group by department

--2) Write a query to count the number of sales made by each employee.
select EmployeeID, count(SaleID) [No. of Sales] from EmployeeSales
group by EmployeeID

--3) Write a query to calculate the average sale amount for each department.

--4) Write a query to find the total sales amount for each employee, but only include employees who have made more than one sale.

--5) Write a query to find the total sales for each month in 2023.