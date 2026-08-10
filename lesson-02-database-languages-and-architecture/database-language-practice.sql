-- =====================================================
-- ITDA1001 - Database Fundamentals
-- Lesson 02 - Database Languages and Architecture
-- SQL Practice
-- =====================================================


-- =====================================================
-- CREATE A DATABASE
-- DDL - Data Definition Language
-- =====================================================

CREATE DATABASE UniversityDB;


-- =====================================================
-- CREATE TABLE
-- =====================================================

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Age INT,
    Course VARCHAR(100)
);


-- =====================================================
-- ALTER TABLE
-- Add a new column
-- =====================================================

ALTER TABLE Students
ADD Department VARCHAR(100);


-- =====================================================
-- DML - Data Manipulation Language
-- =====================================================


-- INSERT DATA

INSERT INTO Students
(StudentID, Name, Email, Age, Course, Department)
VALUES
(1, 'John Smith', 'john@example.com', 20,
'Information Technology', 'Computing');


INSERT INTO Students
(StudentID, Name, Email, Age, Course, Department)
VALUES
(2, 'Sarah Lee', 'sarah@example.com', 21,
'Cyber Security', 'Computing');


INSERT INTO Students
(StudentID, Name, Email, Age, Course, Department)
VALUES
(3, 'Michael Brown', 'michael@example.com', 22,
'Networking', 'Computing');


-- =====================================================
-- SELECT
-- Retrieve all students
-- =====================================================

SELECT *
FROM Students;


-- Retrieve specific columns

SELECT Name, Course
FROM Students;


-- Retrieve one student

SELECT *
FROM Students
WHERE StudentID = 1;


-- =====================================================
-- UPDATE
-- =====================================================

UPDATE Students
SET Age = 21
WHERE StudentID = 1;


-- Change a student's course

UPDATE Students
SET Course = 'Networking'
WHERE StudentID = 1;


-- =====================================================
-- DELETE
-- =====================================================

DELETE FROM Students
WHERE StudentID = 3;


-- =====================================================
-- TCL - Transaction Control Language
-- =====================================================

START TRANSACTION;


UPDATE Students
SET Course = 'Cloud Computing'
WHERE StudentID = 2;


-- Save the current point

SAVEPOINT course_change;


-- Make another change

UPDATE Students
SET Age = 22
WHERE StudentID = 2;


-- Example rollback to savepoint

ROLLBACK TO course_change;


-- Save transaction permanently

COMMIT;


-- =====================================================
-- DCL - Data Control Language
-- =====================================================

-- These are example permission commands.
-- Exact syntax can depend on the DBMS being used.


-- Give SELECT permission

-- GRANT SELECT
-- ON Students
-- TO user1;


-- Remove SELECT permission

-- REVOKE SELECT
-- ON Students
-- FROM user1;


-- =====================================================
-- MORE DDL EXAMPLES
-- =====================================================


-- Remove all rows while keeping the table

-- TRUNCATE TABLE Students;


-- Delete the entire table

-- DROP TABLE Students;


-- =====================================================
-- END OF LESSON 02 PRACTICE
-- =====================================================
