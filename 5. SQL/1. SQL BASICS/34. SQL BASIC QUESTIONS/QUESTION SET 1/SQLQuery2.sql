

--1) How do you select all columns from the Employees table?
select * from Employees


--2) How do you select only the FirstName and Last Name columns from the Employees table?
select FirstName,LastName from Employees


--3) How do you find all employees who work in the 'IT' department?
select * from Employees where Department = 'IT'

--OR

select * from Employees where Department like 'IT'


--4) How do you select employees with a salary greater than 70,000?
select * from Employees where Salary>70000


--5) How do you sort the results by Last Name in ascending order?
select * from Employees order by LastName asc
--OR
select * from Employees order by LastName


--6) How do you select distinct departments from the Employees table?
select distinct Department from Employees


--7) How do you count the number of employees in each department?
select Department,count(*) [Number of Employees] from Employees group by Department
--OR
select department,count(employeeid) [Number of Employees] from Employees group by Department


--8) How do you find the maximum salary in the Employees table?
select max(salary) [Maximum salary] from Employees

--9) How do you find the average salary of employees in the 'Finance' department?
select avg(Salary) [Finance Average] from Employees where Department like 'Finance'


--10) How do you select employees whose last name starts with 'M'?
select * from Employees where LastName like 'm%'