select * from ProfitData

--TO ADD A NEW COLUMN THAT SHOWS NEXT MONTH'S PROFIT FOR EACH PRODUCT
select *,lead(Profit) over(partition by product order by monthnumber) [Next Month's Profit]
from ProfitData

--WE DON'T WANT PRODUCT COLUMN IN THE OUTPUT BUT WE WANT EACH MONTH'S TOTAL PROFIT TO BE SHOWN BY MONTHNUMBER & MONTHNAME.
--ALSO A NEW COLUMN SHOULD BE ADDED TO SHOW NEXT MONTH'S TOTAL PROFIT
select monthnumber,monthname,sum(profit) [Total Profit],
lead(sum(profit)) over(order by monthnumber asc) [Next Month's Total Profit]
from ProfitData
group by MonthNumber,MonthName
order by MonthNumber 