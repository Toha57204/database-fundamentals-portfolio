-- ITDA1001 Database Fundamentals
-- Lesson 1: Core Database Concepts
-- Student-Course Database Practice

-- ==========================================
-- DDL: CREATE THE DATABASE TABLES
-- ==========================================

CREATE TABLE students (
    student_id INTEGER PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE
);

CREATE TABLE courses (
    course_id INTEGER PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    credit_points INTEGER NOT NULL
);

CREATE TABLE enrolments (
    student_id INTEGER NOT NULL,
    course_id INTEGER NOT NULL,
    enrolment_date DATE NOT NULL,
    grade VARCHAR(2),

    PRIMARY KEY (student_id, course_id),

    FOREIGN KEY (student_id)
        REFERENCES students(student_id),

    FOREIGN KEY (course_id)
        REFERENCES courses(course_id)
);

-- ==========================================
-- DML: INSERT DATA
-- ==========================================

INSERT INTO students (student_id, full_name, email)
VALUES
    (1001, 'Amina Rahman', 'amina@example.com'),
    (1002, 'Daniel Lee', 'daniel@example.com'),
    (1003, 'Sara Ahmed', 'sara@example.com');

INSERT INTO courses (course_id, course_name, credit_points)
VALUES
    (201, 'Database Fundamentals', 12),
    (202, 'Computer Systems', 12),
    (203, 'Introduction to Programming', 12);

INSERT INTO enrolments (
    student_id,
    course_id,
    enrolment_date,
    grade
)
VALUES
    (1001, 201, '2026-08-03', NULL),
    (1001, 202, '2026-08-03', NULL),
    (1002, 201, '2026-08-03', NULL),
    (1003, 203, '2026-08-03', NULL);

-- ==========================================
-- DML: RETRIEVE DATA
-- ==========================================

SELECT *
FROM students;

SELECT *
FROM courses;

SELECT
    students.full_name,
    courses.course_name,
    enrolments.enrolment_date,
    enrolments.grade
FROM enrolments
JOIN students
    ON enrolments.student_id = students.student_id
JOIN courses
    ON enrolments.course_id = courses.course_id;

-- ==========================================
-- DML: UPDATE DATA
-- ==========================================

UPDATE enrolments
SET grade = 'A'
WHERE student_id = 1001
  AND course_id = 201;

-- ==========================================
-- DML: DELETE DATA
-- ==========================================

DELETE FROM enrolments
WHERE student_id = 1003
  AND course_id = 203;
