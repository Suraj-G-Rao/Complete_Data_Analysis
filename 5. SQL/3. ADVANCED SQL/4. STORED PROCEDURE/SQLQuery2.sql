select * from Employees


Create procedure sp_test
as
begin
	select * from Employees
end

sp_test

exec sp_test

execute sp_test
----

--Example 2

Create proc sp_test_1
as
begin
	select firstname,lastname from Employees
end

sp_test_1

-------------------

Alter proc sp_test_1
as
begin
	select employeeid,firstname,lastname from Employees
end