CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName NVARCHAR(100)
);


INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES
(101, 'Human Resources'),
(102, 'Finance'),
(103, 'IT');