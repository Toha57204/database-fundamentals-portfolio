-- =====================================================
-- ITDA1001 - Database Fundamentals
-- Lesson 02 - Database Languages and Architecture
-- SQL Practice
-- =====================================================


-- =====================================================
-- DDL - DATA DEFINITION LANGUAGE
-- =====================================================


-- CREATE DATABASE

CREATE DATABASE UniversityDB;


-- CREATE TABLE

CREATE TABLE Students (
    StudentID INT,
    Name VARCHAR(100),
    Age INT
);


-- ALTER TABLE

ALTER TABLE Students
ADD Email VARCHAR(100);


-- =====================================================
-- DML - DATA MANIPULATION LANGUAGE
-- =====================================================


-- INSERT

INSERT INTO Students
VALUES (1, 'John Smith', 20, 'john@example.com');


INSERT INTO Students
VALUES (2, 'Sarah Lee', 21, 'sarah@example.com');


INSERT INTO Students
VALUES (3, 'Michael Brown', 22, 'michael@example.com');


-- SELECT ALL DATA

SELECT *
FROM Students;


-- SELECT SPECIFIC COLUMNS

SELECT Name, Email
FROM Students;


-- UPDATE

UPDATE Students
SET Age = 21
WHERE StudentID = 1;


-- DELETE

DELETE FROM Students
WHERE StudentID = 3;


-- VIEW DATA AFTER CHANGES

SELECT *
FROM Students;


-- =====================================================
-- TCL - TRANSACTION CONTROL LANGUAGE
-- =====================================================


-- CREATE SAVEPOINT

SAVEPOINT student_savepoint;


-- UPDATE DATA

UPDATE Students
SET Age = 22
WHERE StudentID = 2;


-- EXAMPLE ROLLBACK TO SAVEPOINT

ROLLBACK TO student_savepoint;


-- SAVE TRANSACTION

COMMIT;


-- =====================================================
-- DCL - DATA CONTROL LANGUAGE
-- =====================================================


-- GIVE USER SELECT PRIVILEGE

GRANT SELECT
ON Students
TO user1;


-- REMOVE USER SELECT PRIVILEGE

REVOKE SELECT
ON Students
FROM user1;


-- =====================================================
-- MORE DDL EXAMPLES
-- =====================================================


-- REMOVE ALL RECORDS FROM TABLE

-- TRUNCATE TABLE Students;


-- DELETE TABLE

-- DROP TABLE Students;


-- =====================================================
-- END OF LESSON 02 PRACTICE
-- =====================================================
