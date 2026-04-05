CREATE DATABASE Student_Details

USE Student_Details

CREATE TABLE Students (
    student_name VARCHAR(100),
    subject VARCHAR(100),
    marks INT
);


INSERT INTO Students (student_name, subject, marks)
VALUES 
-- MARKS FOR ALICE
('Alice', 'Math', 85),
('Alice', 'Science', 88),
('Alice', 'English', 92),

-- MARKS FOR BOB
('Bob', 'Math', 90),
('Bob', 'Science', 78),
('Bob', 'English', 85),

-- MARKS FOR CHARLIE
('Charlie', 'Math', 85),
('Charlie', 'Science', 82),
('Charlie', 'English', 80),

-- MARKS FOR DAVID
('David', 'Math', 92),
('David', 'Science', 91),
('David', 'English', 89),

-- MARKS FOR EVE
('Eve', 'Math', 90),
('Eve', 'Science', 85),
('Eve', 'English', 87),

-- MARKS FOR FRANK
('Frank', 'Math', 75),
('Frank', 'Science', 72),
('Frank', 'English', 78),

-- MARKS FOR GRACE
('Grace', 'Math', 85),
('Grace', 'Science', 89),
('Grace', 'English', 90);