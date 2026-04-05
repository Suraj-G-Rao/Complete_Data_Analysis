select * from Customers

select * from Orders


select * from Customers
where customer_id in (
select distinct customer_id from Orders where order_date between '2024-08-01' and '2024-08-31'
)


select * from Customers
where customer_id in (
select distinct customer_id from Orders where order_date not between '2024-08-01' and '2024-08-31'
)


select * from Employees

--FETCH THE DATA FROM EMPLOYEES TABLE WHERE SALARY > AVERAGE SALARY

select * from Employees where Salary > (
select avg(salary) from Employees
)

select avg(salary) from Employees