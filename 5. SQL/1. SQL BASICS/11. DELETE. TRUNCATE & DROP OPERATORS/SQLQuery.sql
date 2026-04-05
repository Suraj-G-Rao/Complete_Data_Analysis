select * into #3 from Employees

select * from #3

delete from #3 where LastName = '' or Department is NULL

select * into #4 from Employees

select * from #4

delete from #4

truncate table #3

drop table #3