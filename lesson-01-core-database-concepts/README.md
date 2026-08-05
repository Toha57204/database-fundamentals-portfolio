# Lesson 1: Core Database Concepts

## Lesson Overview

This lesson introduced the fundamental concepts used to organise,
manage and represent data in a database system.

The lesson covered databases, Database Management Systems, data
abstraction, database languages, data models, Entity Relationship
diagrams and schemas.

## What Is a Database?

A database is an organised collection of related data.

Databases make information easier to:

- Store
- Access
- Maintain
- Update
- Search
- Analyse

Examples of information that may be stored in databases include:

- Customer records
- Product information
- Financial transactions
- Student information
- Course records
- Employee information

## Database Management System

A Database Management System, or DBMS, is software that allows users
and applications to create, maintain and use databases.

A DBMS supports activities such as:

- Defining the database structure
- Constructing the database
- Storing data
- Retrieving data
- Updating data
- Sharing data between users and applications

## Data Abstraction

Data abstraction allows users to work with a simplified
representation of data without needing to understand every detail
of how the data is physically stored.

For example, a user may view student information through a table
without knowing how the records are organised on the storage device.

Data abstraction helps provide independence between programs,
operations and stored data.

## Database Languages

### Data Definition Language

Data Definition Language, or DDL, is used to define the structure
of a database.

DDL can be used to create database objects such as:

- Tables
- Columns
- Keys
- Relationships
- Constraints

An example of a DDL operation is creating a new table.

### Data Manipulation Language

Data Manipulation Language, or DML, is used to work with the data
stored in database tables.

DML operations include:

- Retrieving data
- Inserting data
- Updating data
- Deleting data

## Data Models

A data model describes the structure of a database, including:

- Data types
- Relationships
- Constraints
- Operations that can be performed on the data

## Categories of Data Models

### Conceptual Data Model

A conceptual data model provides a high-level description of a
database.

It identifies:

- Entities
- Attributes
- Relationships

It focuses on what information the system needs rather than how the
information will be stored.

### Logical Data Model

A logical data model defines the structure of the data elements and
the relationships between them.

It acts as a blueprint for implementing the database in a Database
Management System.

### Physical Data Model

A physical data model describes how data is stored within the
computer system.

It may include:

- Record formats
- File organisation
- Record ordering
- Access paths
- Indexes

An index provides a faster way to locate particular database records.

## Entity Relationship Model

An Entity Relationship model represents data using:

- Entities
- Attributes
- Relationships

### Entity

An entity is a real-world object or concept that has an independent
existence.

Examples include:

- Student
- Employee
- Customer
- Course
- Project
- Company

### Attribute

An attribute is a property that describes an entity.

For example, a Student entity may contain:

- Student ID
- Full name
- Email address
- Date of birth
- Course

### Relationship

A relationship represents an association between entities.

For example:

- A student enrols in a course
- A customer places an order
- An employee works on a project

## Types of Attributes

### Simple Attribute

A simple attribute cannot be divided into smaller meaningful parts.

Example:

- Student ID

### Composite Attribute

A composite attribute can be divided into smaller attributes.

Example:

- Full name may be divided into first name and last name
- Address may be divided into street, city, state and postcode

### Single-Valued Attribute

A single-valued attribute normally contains one value for each entity.

Examples:

- Date of birth
- Tax file number

### Multivalued Attribute

A multivalued attribute may contain multiple values for one entity.

Examples:

- Phone numbers
- Email addresses

### Derived Attribute

A derived attribute is calculated from another attribute.

For example, age can be calculated from date of birth.

## Strong and Weak Entities

### Strong Entity

A strong entity has its own key attribute that can uniquely identify
each occurrence.

For example, Student may use Student ID as its key.

### Weak Entity

A weak entity does not have a sufficient key of its own and depends
on another entity for identification.

## Types of Relationships

### One-to-One

One occurrence of the first entity relates to one occurrence of the
second entity.

Example:

- One student has one student identification card

### One-to-Many

One occurrence of the first entity may relate to multiple occurrences
of the second entity.

Example:

- One customer may place many orders

### Many-to-Many

Multiple occurrences of one entity may relate to multiple occurrences
of another entity.

Example:

- Many students may enrol in many courses

A many-to-many relationship is commonly represented using an
additional entity, such as Enrolment.

## Database Schema

A database schema describes the structure of a database.

It may define:

- Tables
- Columns
- Data types
- Keys
- Relationships
- Constraints

The schema normally changes less frequently than the actual data
stored inside the database.

A schema diagram shows the database structure but does not show all
individual data records.

## Practical Activity: Student–Course Database

For this lesson, I designed a small database with three entities:

### Student

Attributes:

- Student ID
- Full name
- Email address

### Course

Attributes:

- Course ID
- Course name
- Credit points

### Enrolment

Attributes:

- Student ID
- Course ID
- Enrolment date
- Grade

The Enrolment entity connects Student and Course.

One student may have many enrolment records, and one course may have
many enrolment records. This allows the database to represent the
many-to-many relationship between students and courses.

## Skills Demonstrated

- Identifying entities
- Identifying attributes
- Understanding relationships
- Understanding cardinality
- Creating a database schema
- Writing introductory SQL
- Technical documentation
- GitHub project organisation

## Reflection

This lesson helped me understand that a database is more than a
collection of tables.

A database must be carefully designed so that entities, attributes
and relationships represent real-world information correctly.

I also learned the difference between defining a database structure
with DDL and manipulating its stored data with DML.

## Next Steps

- Create the Student–Course SQL script
- Document the database design
- Create an original ER diagram
- Practise basic SQL queries
- Continue documenting future lessons
