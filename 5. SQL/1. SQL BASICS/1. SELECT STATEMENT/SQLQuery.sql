create database employee_details
use employee_details

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2),
    HireDate DATE
);



INSERT INTO Employees (EmployeeID, FirstName, LastName, Department, Salary, HireDate)
VALUES
(1, 'John', 'Doe', 'HR', 50000.00, '2020-01-15'),
(2, 'Jane', 'Smith', 'Finance', 60000.00, '2019-03-23'),
(3, 'Alice', 'Johnson', 'IT', 75000.00, '2021-07-10'),
(4, 'Bob', 'Brown', 'Marketing', 55000.00, '2018-09-30'),
(5, 'Charlie', 'Davis', 'IT', 70000.00, '2022-02-20');


select * from Employees

select FirstName, LastName from Employees

select EmployeeID, concat(FirstName, ' ', LastName) from Employees

select EmployeeID, concat(FirstName, ' ', LastName) [Full Name] from Employees

select EmployeeID, concat(FirstName, ' ', LastName) as FullName from Employees