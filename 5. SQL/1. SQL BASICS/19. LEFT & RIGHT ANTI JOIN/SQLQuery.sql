select * from table1

select * from table2

--LEFT ANTI JOIN
select * from table1 left join table2 
on table1.C1 = table2.C1 
where table2.C1 is null

--RIGHT ANTI JOIN
select * from table1 right join table2 
on table1.C1 = table2.C1
where table1.C2 is null

