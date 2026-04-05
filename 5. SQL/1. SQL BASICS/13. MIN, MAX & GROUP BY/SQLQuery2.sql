use [Sales Database]

select * from Sales

select max(TotalAmount) as [Max Amount] from Sales

select max(TotalAmount) [Max Amount] from Sales

select min(TotalAmount) [Min Amount] from Sales

select max(SaleDate) [Max Date] from Sales

select max(PaymentMethod) [Max Payment] from Sales    --IGNORES NULL VALUES


--MAXIMUM QUANTITY SOLD FOR EACH PRODUCT ID
select productid [PRODUCT ID], max(Quantity) [Maximum Quantity] from Sales group by productid

--MAXIMUM TOTAL AMOUNT FOR ALL DISTINCT DATES
select SaleDate, max(TotalAmount) [Max Amount] from Sales group by SaleDate

