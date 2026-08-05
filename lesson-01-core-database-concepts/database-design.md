# Student–Course Database Design

## Purpose

This database stores information about students, courses and
student enrolments.

## Entities

### Student

| Attribute | Description |
|---|---|
| student_id | Uniquely identifies a student |
| full_name | Stores the student's full name |
| email | Stores the student's email address |

### Course

| Attribute | Description |
|---|---|
| course_id | Uniquely identifies a course |
| course_name | Stores the name of the course |
| credit_points | Stores the course credit value |

### Enrolment

| Attribute | Description |
|---|---|
| student_id | Identifies the enrolled student |
| course_id | Identifies the selected course |
| enrolment_date | Stores the enrolment date |
| grade | Stores the student's result |

## Relationships

- One Student can have many Enrolments.
- One Course can have many Enrolments.
- Students and Courses therefore have a many-to-many relationship.
- The Enrolment entity resolves the many-to-many relationship.

## Text-Based ER Diagram

```text
+------------------+
|     STUDENT      |
+------------------+
| student_id (PK)  |
| full_name        |
| email            |
+------------------+
         |
         | 1
         |
         | M
+----------------------+
|      ENROLMENT       |
+----------------------+
| student_id (PK, FK)  |
| course_id  (PK, FK)  |
| enrolment_date       |
| grade                |
+----------------------+
         |
         | M
         |
         | 1
+------------------+
|      COURSE      |
+------------------+
| course_id (PK)   |
| course_name      |
| credit_points    |
+------------------+


Key
PK: Primary key
FK: Foreign key
1: One
M: Many
