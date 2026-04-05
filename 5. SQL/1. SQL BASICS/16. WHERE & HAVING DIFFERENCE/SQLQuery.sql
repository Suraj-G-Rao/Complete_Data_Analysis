select * from dbo.Sales where TotalAmount>=161

select * from Sales

select productid, sum(totalamount) [Sum of sales] from Sales
group by ProductID
having sum(totalamount)<700

select productid,sum(totalamount) [Sum of sales] from Sales
where TotalAmount>=161
group by productid
having sum(totalamount)>=250
order by PRODUCTid desc

select productid,sum(totalamount) [Sum of sales] from Sales
where TotalAmount>=161
group by productid
having sum(totalamount)>=250
order by sum(totalamount) asc