--CASE 1 : THE NEW TABLE SIMPLY DOESN'T EXIST
--CASE 2: THE NEW TABLE STRUCTURE/ NEW TABLE EXISTS

--CASE 1 :
select * from Sales 

--ALL COLUMNS ARE COPIED FROM EXISTING TABLE
--THIS STATEMENT WILL RESULT IN THE CREATION OF New_Table_1 WHICH WILL BE HAVING STRUCTURE & RECORDS BOTH SAME AS THAT OF Sales TABLE
select * into New_Table_1 from Sales

-------------------CERTAIN COLUMNS TO BE COPIED
drop table New_Table_1

select productid,quantity into new_table_1 from Sales

select * from new_table_1


--CASE 2 : NEW TABLE STRUCTURE/ TABLE ALREADY EXISTS

select top 0 * into new_table_2 from Sales  

select * from new_table_2

insert into new_table_2 select * from Sales 

------COPYING CERTAIN COLUMNS

select * into new_table_3 from Sales where 1=0  

select * from new_table_3

insert into new_table_3 (ProductID,SaleDate) select productid,saledate from Sales