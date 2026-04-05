select * from EmployeeRecords
order by EmployeeID,EmployeeName,ManagerID

With CTE as (
select *, row_number() over(partition by employeeid,employeename,managerid order by employeeid) [Row Number] from EmployeeRecords
)
--select * from CTE
delete from cte where [Row Number] = 2

-----------------------
select * into emprecords_bkp from EmployeeRecords

select * from emprecords_bkp

select distinct * into #1 from emprecords_bkp

truncate table emprecords_bkp

insert into emprecords_bkp select * from #1

select * from #1