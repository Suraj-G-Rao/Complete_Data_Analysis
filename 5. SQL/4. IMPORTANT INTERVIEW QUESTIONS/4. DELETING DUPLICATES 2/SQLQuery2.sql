select * from EmployeeRecords_1
order by Employeeid,email

------
select distinct * into #1 from EmployeeRecords_1

truncate table EmployeeRecords_1

insert into EmployeeRecords_1 select * from #1

select * from EmployeeRecords_1 order by email


--RECORD WITH LOWER EMPLOYEE ID SHOULD REMAIN
with cte as (
select *, DENSE_RANK() over(partition by email order by employeeid) [DR] from EmployeeRecords_1

)

delete from cte where dr = 2


---
select * into employeerecords_2 from #1

select * from employeerecords_2 order by email


--RECORD WITH HIGHER EMPLOYEE ID SHOULD REMAIN
with cte as (
select *, DENSE_RANK() over(partition by email order by employeeid desc) [DR] from employeerecords_2
)
--select * from cte
delete from cte where DR = 2

-------------------------


select * from employeerecords_1 --Employeeid = 5 WAS RETAINED

select * from employeerecords_2 --Employeeid = 6 WAS RETAINED