select * from ProfitData

--TO ADD A NEW COLUMN THAT SHOWS PREVIOUS MONTH'S PROFIT FOR EACH PRODUCT
select *,
lag(Profit) over(partition by product order by monthnumber) [Lag Function]
from ProfitData

--WE DON'T WANT PRODUCT COLUMN IN THE OUTPUT BUT WE WANT EACH MONTH'S TOTAL PROFIT TO BE SHOWN BY MONTHNUMBER & MONTHNAME.
--ALSO A NEW COLUMN SHOULD BE ADDED TO SHOW PREVIOUS MONTH'S TOTAL PROFIT
select MonthNumber,MonthName,sum(profit) [Total Profit for Month],
lag(sum(profit)) over(order by monthnumber) [Previous Month's Total Profit]
from ProfitData
group by MonthNumber,MonthName
order by MonthNumber