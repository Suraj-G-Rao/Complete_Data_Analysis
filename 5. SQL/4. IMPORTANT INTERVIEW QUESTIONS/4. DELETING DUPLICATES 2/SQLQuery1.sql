CREATE TABLE EmployeeRecords_1 (
    EmployeeID INT,
    Email VARCHAR(100)
);


INSERT INTO EmployeeRecords_1 (EmployeeID, Email) VALUES
(1, 'alice@example.com'),
(2, 'bob@example.com'),
(3, 'carol@example.com'),
(4, 'david@example.com'),
(2, 'bob@example.com'),        -- DUPLICATE ENTRY (same EmployeeID and Email)
(4, 'david@example.com'),      -- DUPLICATE ENTRY (same EmployeeID and Email)
(5, 'shared@example.com'),     -- VALID CASE: Same email, different EmployeeID
(6, 'shared@example.com');     -- VALID CASE: Same email, different EmployeeID