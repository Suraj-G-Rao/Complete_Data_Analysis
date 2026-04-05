create database [Profit DB]

use [profit db]


CREATE  TABLE ProfitData (
    MonthNumber INT,
    MonthName VARCHAR(3),
    Product VARCHAR(50),
    Profit INT
);

INSERT INTO ProfitData (MonthNumber, MonthName, Product, Profit) VALUES
(1, 'Jan', 'Product A', 1000),
(2, 'Feb', 'Product A', 1500),
(3, 'Mar', 'Product A', 1200),
(4, 'Apr', 'Product A', 1700),
(5, 'May', 'Product A', 1300),
(6, 'Jun', 'Product A', 1600),
(1, 'Jan', 'Product B', 2000),
(2, 'Feb', 'Product B', 2500),
(3, 'Mar', 'Product B', 2200),
(4, 'Apr', 'Product B', 2700),
(5, 'May', 'Product B', 2300),
(6, 'Jun', 'Product B', 2600);