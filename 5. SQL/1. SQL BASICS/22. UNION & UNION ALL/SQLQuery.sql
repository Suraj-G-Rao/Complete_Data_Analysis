select * from appendd1

select * from appendd2

select c1,c2,c3 from appendd1
union all
select c1,c2,c3 from appendd2

select c1,c2,c3 from appendd1
union 
select c1,c2,c3 from appendd2

--NUMBER OF COLUMNS PRESENT IN THE SELECT LIST HAVE TO BE SAME
--DATA TYPES OF THE COLUMNS HAVE TO BE SAME
--ORDER IN WHICH COLUMNS ARE WRITTEN HAS TO BE SAME

select c1,c2,c3 from append1 --C1 IS int, C2 IS nvarchar, C3 IS int
union 
select c1,c3,C2 from append2

---ALIAS NAMES WHICH ARE SPECIFIED IN 1ST SELECT STATEMENT WILL BE ASSIGNED TO THE COLUMNS

select c1 [Column1],c2 [Column2],c3 [Column3] from append1
union
select c1 [Col1],c2 [Col2],c3 [Col3] from append2