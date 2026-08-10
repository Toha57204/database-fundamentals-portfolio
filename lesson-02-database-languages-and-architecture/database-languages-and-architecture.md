# Database Languages and Architecture

## 1. Database Languages

A Database Management System (DBMS) provides languages and interfaces that allow users to interact with a database.

Database languages can be used to:

- Read data
- Store data
- Update data
- Control access
- Manage transactions

The four main database language categories are:

| Language | Full Name | Main Purpose |
|---|---|---|
| DDL | Data Definition Language | Defines database structure |
| DML | Data Manipulation Language | Works with data |
| DCL | Data Control Language | Controls user permissions |
| TCL | Transaction Control Language | Controls transactions |

---

# 2. Data Definition Language – DDL

DDL stands for **Data Definition Language**.

It is used to define and modify the structure of a database.

DDL can be used to create:

- Databases
- Schemas
- Tables
- Indexes
- Constraints

## Common DDL Commands

### CREATE

Used to create a database or database object.

```sql
CREATE DATABASE university;

CREATE TABLE Students (
    StudentID INT,
    Name VARCHAR(100),
    Age INT
);
```

### ALTER

Used to modify the structure of an existing database object.

```sql
ALTER TABLE Students
ADD Email VARCHAR(100);
```

### DROP

Used to delete a database or database object.

```sql
DROP TABLE Students;
```

### TRUNCATE

Used to remove all records from a table.

```sql
TRUNCATE TABLE Students;
```

### RENAME

Used to rename a table or database object.

```sql
RENAME old_table_name TO new_table_name;
```

### COMMENT

Used to add comments about database objects to the data dictionary.

---

# 3. Data Manipulation Language – DML

DML stands for **Data Manipulation Language**.

It is used to access and manipulate data stored in existing database objects.

Common DML commands include:

- SELECT
- INSERT
- UPDATE
- DELETE
- MERGE
- CALL

## SELECT

Used to retrieve data from a database.

```sql
SELECT * FROM Students;
```

## INSERT

Used to insert a new row.

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

MERGE can combine:

- INSERT
- UPDATE
- DELETE

It can merge data from a source table into a target table based on a condition.

## CALL

CALL is used to call a SQL function, procedure, or Java subprogram.

---

# 4. Data Control Language – DCL

DCL stands for **Data Control Language**.

It is used to control user privileges in a database system.

The main commands are:

- GRANT
- REVOKE

## GRANT

Used to give access privileges to a user.

```sql
GRANT SELECT ON Students TO user1;
```

## REVOKE

Used to remove permissions from a user.

```sql
REVOKE SELECT ON Students FROM user1;
```

---

# 5. Transaction Control Language – TCL

TCL stands for **Transaction Control Language**.

It is used to control changes made by DML statements.

Important TCL commands include:

- COMMIT
- ROLLBACK
- SAVEPOINT

## COMMIT

Used to save a transaction in the database.

```sql
COMMIT;
```

## ROLLBACK

Used to restore the database to its previous state since the last COMMIT.

```sql
ROLLBACK;
```

## SAVEPOINT

Used to create a save point inside a transaction.

```sql
SAVEPOINT savepoint1;
```

---

# 6. DBMS Architecture

DBMS architecture describes how users are connected to a database.

There are three main types:

1. 1-Tier Architecture
2. 2-Tier Architecture
3. 3-Tier Architecture

---

# 7. 1-Tier Architecture

In **1-Tier Architecture**, the database is directly available to the user.

```text
User
 |
 v
Database
```

The user directly interacts with the DBMS.

It can be used for local application development where programmers directly communicate with the database.

---

# 8. 2-Tier Architecture

2-Tier Architecture follows a basic **client-server model**.

```text
User
 |
 v
Client Application
 |
 v
Database Server
```

The user interface and application programs run on the client side.

The server side is responsible for functions such as:

- Query processing
- Transaction management

The client application directly communicates with the database server.

---

# 9. 3-Tier Architecture

3-Tier Architecture introduces another layer between the client and database server.

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

The client cannot directly communicate with the database.

Instead:

```text
Client → Application Server → Database
```

The client communicates with the application server, and the application server communicates with the database.

3-Tier Architecture is used for large web applications.

---

# 10. Three-Schema Architecture

The Three-Schema Architecture is also called:

**ANSI/SPARC Architecture**

or

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

The External Schema is also known as the:

**View Schema**

At the external level, a database can contain several schemas or subschemas.

Each external schema represents the part of the database that a particular user or group is interested in.

It hides the remaining parts of the database.

Example:

```text
User View

StudentID
Name
```

Another user may have a different view:

```text
User View

StudentID
Name
Salary
Department
```

The external level represents end-user interaction with the database.

---

# 12. Conceptual Schema

The Conceptual Schema describes the overall design of the database at the conceptual level.

The conceptual level is also known as the:

**Logical Level**

It describes:

- What data is stored
- Relationships between data

Example:

```text
STUDENT

StudentID
Name
Age
Course
Email
```

At this level, physical implementation details are hidden.

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
Physical Storage
      |
      v
Database
```

---

# 14. Mapping Between Database Levels

The three levels of database architecture do not exist independently.

Mappings connect the different database levels.

There are two main types:

1. External / Conceptual Mapping
2. Conceptual / Internal Mapping

---

## External / Conceptual Mapping

This mapping exists between the:

```text
External Level
      |
      v
Conceptual Level
```

Its role is to define the correspondence between a particular external view and the conceptual view.

---

## Conceptual / Internal Mapping

This mapping exists between the:

```text
Conceptual Level
      |
      v
Internal Level
```

Its role is to define the correspondence between records and fields at the conceptual level and files and data structures at the internal level.

---

# Quick Revision

## Database Languages

```text
DDL → Defines database structure

DML → Accesses and manipulates data

DCL → Controls user privileges

TCL → Controls transactions
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
- Common commands used by each database language
- The difference between 1-Tier, 2-Tier and 3-Tier architecture
- How the External Schema represents user views
- How the Conceptual Schema represents logical database design
- How the Internal Schema represents physical database storage
- How External/Conceptual and Conceptual/Internal mappings connect the database levels
