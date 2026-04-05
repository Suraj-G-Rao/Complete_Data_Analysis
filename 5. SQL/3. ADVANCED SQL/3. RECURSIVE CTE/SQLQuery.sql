--RECURSIVE CTE
--FACTORIAL OF A GIVEN NUMBER (5)

with [R CTE] as (
select 1 as n                           --ANCHOR QUERY
union all
select n+1 from [R CTE] where n<=4      --RECURSIVE QUERY

)
select exp(sum(log(n))) [Factorial] from [R CTE]



--3*2*1
--5*4*3*2*1
----------------
with [R CTE] as (
select 1 as n                               --ANCHOR QUERY
union all
select n+1 from [R CTE] where n<=4          --RECURSIVE QUERY
)
select * from [r cte]