select sum(Quantity) [Total Quantity] from Sales

select sum(Quantity) [Total Quantity], sum(TotalAmount) [Sum of Amount] from Sales

select avg(Quantity) [Avg Quantity], avg(TotalAmount) [Avg of Amount] from Sales


--SHOW SUM OF QUANTITY, SUM OF TOTAL AMOUNT, AVG OF QUANTITY AND AVG OF TOTAL AMOUNT FOR EACH DISTINCT PRODUCT ID
select ProductID,
sum(Quantity) [Total Quantity],
sum(TotalAmount) [Sum of Amount],
avg(Quantity) [Avg Quantity],
avg(TotalAmount) [Avg Amount]
from Sales group by ProductID


--SHOW SUM OF QUANTITY, SUM OF TOTAL AMOUNT, AVG OF QUANTITY AND AVG OF TOTAL AMOUNT FOR DISTINCT COMBINATIONS OF PRODUCT ID AND STOREID
select ProductID,StoreID,
sum(Quantity) [Total Quantity],
sum(TotalAmount) [Sum of Amount],
avg(Quantity) [Avg Quantity],
avg(TotalAmount) [Avg Amount]
from Sales group by ProductID, StoreID

select * from Sales

select count(*) [Number of Rows] from Sales

select count(Paymentmethod) [No. of Records] from Sales    -- IGNORES NULL

select count(distinct ProductID) [Distinct Products] from Sales

select count(distinct PaymentMethod) [Distinct Payment Methods] from Sales

select PaymentMethod,count(distinct PaymentMethod) [Distinct Payment Methods] from Sales
group by PaymentMethod

select PaymentMethod,count(PaymentMethod) [Distinct Payment Methods] from Sales
group by PaymentMethod

select PaymentMethod,count(*) [Distinct Payment Methods] from Sales
group by PaymentMethod

select ProductID, PaymentMethod, sum(TotalAmount) [Sum of Sales] from Sales 
group by ProductID, PaymentMethod
order by ProductID