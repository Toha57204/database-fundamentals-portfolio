# Database Languages and Architecture

## 1. Database Languages

A Database Management System (DBMS) provides languages and interfaces that allow users to interact with a database.

Database languages can be used to read, store and update data.

The four main database language categories are:

| Language | Full Name | Purpose |
|---|---|---|
| DDL | Data Definition Language | Defines database structure |
| DML | Data Manipulation Language | Accesses and manipulates data |
| DCL | Data Control Language | Controls user privileges |
| TCL | Transaction Control Language | Controls transactions |

---

# 2. Data Definition Language – DDL

DDL stands for **Data Definition Language**.

It is used to define the structure of a database.

DDL can be used with:

- Schemas
- Tables
- Indexes
- Constraints
- Database objects

## CREATE

Used to create a database or database object.

```sql
CREATE DATABASE university;

CREATE TABLE Students (
    StudentID INT,
    Name VARCHAR(100),
    Age INT
);
```

## ALTER

Used to modify the structure of a database object.

```sql
ALTER TABLE Students
ADD Email VARCHAR(100);
```

## DROP

Used to delete a database or schema object.

```sql
DROP TABLE Students;
```

## TRUNCATE

Used to remove all records from a table.

```sql
TRUNCATE TABLE Students;
```

## RENAME

Used to rename a table or database object.

```sql
RENAME Students TO UniversityStudents;
```

## COMMENT

Used to add comments about database objects into the data dictionary.

---

# 3. Data Manipulation Language – DML

DML stands for **Data Manipulation Language**.

It is used to access and manipulate data stored in database objects.

Main DML operations include:

- SELECT
- INSERT
- UPDATE
- DELETE
- MERGE
- CALL

## SELECT

Used to retrieve data.

```sql
SELECT * FROM Students;
```

## INSERT

Used to add a new row.

```sql
INSERT INTO Students
VALUES (1, 'John', 20);
```

## UPDATE

Used to update existing data.

```sql
UPDATE Students
SET Age = 21
WHERE StudentID = 1;
```

## DELETE

Used to delete one or more rows.

```sql
DELETE FROM Students
WHERE StudentID = 1;
```

## MERGE

MERGE combines operations such as:

- INSERT
- UPDATE
- DELETE

It can merge data from a source table with a target table based on a condition.

## CALL

CALL can be used to call a SQL function or procedure.

---

# 4. Data Control Language – DCL

DCL stands for **Data Control Language**.

It is used to control user privileges in a database system.

The main commands are:

- GRANT
- REVOKE

## GRANT

Used to give a user access privileges.

```sql
GRANT SELECT ON Students TO user1;
```

## REVOKE

Used to take permissions back from a user.

```sql
REVOKE SELECT ON Students FROM user1;
```

---

# 5. Transaction Control Language – TCL

TCL stands for **Transaction Control Language**.

TCL is used to control changes made by DML statements.

Important commands include:

- COMMIT
- ROLLBACK
- SAVEPOINT

## COMMIT

Used to save a transaction.

```sql
COMMIT;
```

## ROLLBACK

Used to restore the database to the state before changes were committed.

```sql
ROLLBACK;
```

## SAVEPOINT

Used to create a point inside a transaction.

```sql
SAVEPOINT savepoint1;
```

A rollback can also return to a savepoint.

```sql
ROLLBACK TO savepoint1;
```

---

# 6. DBMS Architecture

DBMS architecture describes how users connect to a database and how their requests are processed.

There are three main architectures:

1. 1-Tier Architecture
2. 2-Tier Architecture
3. 3-Tier Architecture

---

# 7. 1-Tier Architecture

In 1-Tier Architecture, the database is directly available to the user.

```text
User
 |
 v
Database
```

The user directly communicates with the DBMS.

It can be used for local application development where programmers directly work with the database.

---

# 8. 2-Tier Architecture

2-Tier Architecture follows a basic client-server model.

```text
User
 |
 v
Client Application
 |
 v
Database Server
```

The user interface and application programs operate on the client side.

The server side handles functions such as:

- Query processing
- Transaction management

The client application communicates directly with the database server.

---

# 9. 3-Tier Architecture

3-Tier Architecture adds another layer between the client and the database.

```text
User
 |
 v
Client Application
 |
 v
Application Server
 |
 v
Database
```

The client does not directly communicate with the database.

Instead:

```text
Client → Application Server → Database
```

The application server communicates with the database system.

3-Tier Architecture can be used for large web applications.

---

# 10. Three-Schema Architecture

The Three-Schema Architecture is also known as:

**ANSI/SPARC Architecture**

or:

**Three-Level Architecture**

It separates user applications from the physical database.

The three levels are:

1. External Level
2. Conceptual Level
3. Internal Level

```text
External Level
      |
      v
Conceptual Level
      |
      v
Internal Level
      |
      v
Database
```

---

# 11. External Schema

The External Schema is also known as a:

**View Schema**

It represents the part of the database that a particular user or user group is interested in.

Different users can have different views of the database.

Example:

```text
User View 1

StudentID
Name
```

Another user could have:

```text
User View 2

StudentID
Name
Course
Department
```

The external level describes how end users interact with the database.

---

# 12. Conceptual Schema

The Conceptual Schema describes the database at the conceptual level.

It is also known as the:

**Logical Level**

It describes:

- What data is stored
- Relationships between the data

Example:

```text
STUDENT

StudentID
Name
Age
Course
Department
```

Physical implementation details are hidden at this level.

Programmers and database administrators can work at this level.

---

# 13. Internal Schema

The Internal Schema describes the physical storage structure of the database.

It is also known as the:

**Physical Schema**

It describes:

- How data is physically stored
- Data blocks
- Files
- Low-level data structures

```text
Internal Schema
      |
      v
Files / Data Structures
      |
      v
Physical Database
```

---

# 14. Mapping Between Views

The three schema levels are connected through mappings.

There are two main types:

1. External / Conceptual Mapping
2. Conceptual / Internal Mapping

---

## External / Conceptual Mapping

Connects:

```text
External Level
      |
      v
Conceptual Level
```

It defines the correspondence between a particular external view and the conceptual view.

---

## Conceptual / Internal Mapping

Connects:

```text
Conceptual Level
      |
      v
Internal Level
```

It defines the correspondence between records and fields at the conceptual level and files and data structures at the internal level.

---

# Quick Revision

## Database Languages

```text
DDL → Database Structure

DML → Database Data

DCL → User Privileges

TCL → Transactions
```

## DBMS Architecture

```text
1-Tier

User → Database
```

```text
2-Tier

User → Client Application → Database Server
```

```text
3-Tier

User → Client → Application Server → Database
```

## Three-Schema Architecture

```text
External Schema
User View
      ↓
Conceptual Schema
Logical Design
      ↓
Internal Schema
Physical Storage
      ↓
Database
```

---

# What I Learned

In this lesson I learned:

- The difference between DDL, DML, DCL and TCL
- The commands used by each database language
- The difference between 1-Tier, 2-Tier and 3-Tier architecture
- How External Schema represents user views
- How Conceptual Schema represents the logical database design
- How Internal Schema represents physical database storage
- How mappings connect the three levels of database architecture
