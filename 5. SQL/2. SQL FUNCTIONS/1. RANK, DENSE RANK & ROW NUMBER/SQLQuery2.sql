select * from Students
--ROW NUMBER -> IN CASE OF A TIE, ROW NUMBERS ARE ASSIGNED RANDOMLY
select *,ROW_NUMBER() over(order by marks desc) as [Row Number]
from Students

--RANK -> IF THERE'S A TIE, NEXT RANK/RANKS WILL BE SKIPPED
select *,rank() over(order by marks desc) as [Rank Function]
from Students

--DENSE_RANK -> IF THERE'S A TIE, RANKS WILL NOT BE SKIPPED
select *,DENSE_RANK() over(order by marks desc) [Dense Rank]
from Students

-----------------------------

--ROW NUMBER -> IN CASE OF A TIE, ROW NUMBERS ARE ASSIGNED RANDOMLY
select *,ROW_NUMBER() over(order by marks) as [Row Number]
from Students

--RANK -> IF THERE'S A TIE, NEXT RANK/RANKS WILL BE ASSIGNED
select *,rank() over(order by marks) as [Rank Function]
from Students

--DENSE_RANK -> IF THERE'S A TIE, RANKS WILL NOT BE SKIPPED
select *,DENSE_RANK() over(order by marks) [Dense Rank]
from Students

-----------------------------------------

--ROW NUMBER -> IN CASE OF A TIE, ROW NUMBERS ARE ASSIGNED RANDOMLY
select *,ROW_NUMBER() over(order by marks asc) as [Row Number]
from Students

--RANK -> IF THERE'S A TIE, NEXT RANK/RANKS WILL BE ASSIGNED
select *,rank() over(order by marks asc) as [Rank Function]
from Students

--DENSE_RANK -> IF THERE'S A TIE, RANKS WILL NOT BE SKIPPED
select *,DENSE_RANK() over(order by marks asc) [Dense Rank]
from Students