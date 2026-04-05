use employee_details
select * into #temp1 from [dbo].[Employees]
select * from #temp1

select * into ##temp2 from [dbo].[EmployeeRecords]
select * from ##temp2
