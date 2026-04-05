select * from Sales

--TOTAL SALES, AVG SALES, TOTAL QUANTITY, AVG QUANTITY FOR EACH DISTINCT PRODUCT
select ProductID,
sum(TotalAmount) [Sum of Sales],sum(Quantity) [Total Quantity],
avg(TotalAmount) [Avg Amount],avg(Quantity) [Avg Quantity] from Sales
group by ProductID
having sum(TotalAmount)<700 and sum(Quantity) = 21