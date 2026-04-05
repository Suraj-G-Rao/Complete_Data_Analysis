select * from Products

--WE NEED TO GROUP THE DATA BASED ON COLUMNS CATEGORY & PRICE INTO DIFFERENT CATEGORIES i.e., AFFORDABLE & PREMIUM
select 
*,
case 
	when Category = 'Electronics' then
		case when Price>=300 then 'Premium Electronics'
		else 'Affordable Electronics'
		end 
	when Category = 'Furniture' then
		case when Price>=250 then 'Premium Furniture'
		else 'Affordable Furniture'
		end 
else 
		case when Price>=25 then 'Premium Accessories'
		else 'Affordable Accessories'
		end
end as [Groups]
from products


--------------TEST

select 
*,
case 
	when Category = 'Electronics' then
		case when Price>=300 then 'Premium Electronics'
		else 'Affordable Electronics'
		end 
	when Category = 'Furniture' then
		case when Price>=250 then 'Premium Furniture'
		else 'Affordable Furniture'
		end 
    when Category in ('Accessories') then
		case when Price>=25 then 'Premium Accessories'
		else 'Affordable Accessories'
		end
end as [Groups]
from products