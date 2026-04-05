select * from Products


--EXAMPLE1 : ADD A COLUMN TO CATEGORIZE EACH PRODUCT INTO CATEGORIES HIGH, MEDIUM & LOW
select 
*,
case
	when Price > 500 then 'High' 
	when Price<=500 and Price>=200 then 'Medium'
	else 'Low'
end as [High/Medium/Low]
from products
-----------------------------------------------TEST
select 
*,
case
	when Price > 500 then 'High' 
	when Price<=500 and Price>=200 then 'Medium'
end as [High/Medium/Low]
from products

--EXAMPLE2 : PROVIDE PRIORITY TO EACH CATEGORY & SORT THE DATA ACCORDING TO THAT PRIORITY
select * from Products
order by 
case 
	when Category in ('Electronics') then 1
	when Category in ('Furniture') then 2
	else 3
end

-----------------------TEST

select * from Products
order by 
case 
	when Category in ('Electronics') then 1
	when Category in ('Furniture') then 2
	when Category = 'Accessories' then 3
end