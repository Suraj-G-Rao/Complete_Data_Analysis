select * from Employees

--2ND HIGHEST SALARY
select max(salary) [2nd Highest Salary] from employees where salary<
(select max(salary) from Employees)

--3RD HIGHEST SALARY
select max(salary) [3rd Highest Salary] from employees where salary< (
select max(salary) from employees where salary<
(select max(salary) from Employees))

--CTE
with cte as(
select *,DENSE_RANK() over(order by salary desc) [DR] from Employees
)

select salary [2nd Highest Salary] from cte where DR = 2

--3RD HIGHEST SALARY
with cte as(
select *,DENSE_RANK() over(order by salary desc) [DR] from Employees
)

select salary [3rd Highest Salary] from cte where DR = 3

--SUB QUERY ALONG WITH DENSE_RANK()

select salary as [2nd highest salary] from
(select *, DENSE_RANK() over(order by salary desc) [DR] from Employees) x
where DR = 2


select salary as [3rd highest salary] from
(select *, DENSE_RANK() over(order by salary desc) [DR] from Employees) x
where DR = 3

--SUB QUERY
select top 1 salary [2nd Highest Salary] from 
(select distinct top 2 salary from Employees order by Salary desc) x
order by Salary asc


--3RD HIGHEST SALARY
select top 1 salary [3rd Highest Salary] from 
(select distinct top 3 salary from Employees order by salary desc) y
order by Salary asc