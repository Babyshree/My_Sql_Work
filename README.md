# My_Sql_Work
Database Queries and Operations

This README file provides an overview of SQL queries and operations performed in the database work file. The script demonstrates table creation, manipulation, querying, and usage of SQL features such as aggregation, filtering, sorting, and altering table structure.

## Database Schema and Table Operations

### Creating and Using Databases

-- Create a new database schema
CREATE SCHEMA dummy;
-- Use the created database
USE dummy;

## Table Creation

### Teacher Table

CREATE TABLE teacher (
    name VARCHAR(50),
    age INT,
    salary INT,
    department VARCHAR(50)
);
-- Adding a new column
ALTER TABLE teacher ADD COLUMN degree VARCHAR(50);
-- Renaming a column
ALTER TABLE teacher CHANGE department dept VARCHAR(50);

### Student Table

CREATE TABLE student (
    name VARCHAR(50),
    department VARCHAR(50),
    marks_scored INT
);
-- Adding and modifying columns
ALTER TABLE student ADD COLUMN city VARCHAR(50);
ALTER TABLE student CHANGE marks_scored age INT;

## Insert and Update Operations

-- Inserting values into the student table
INSERT INTO student VALUES ('john', 'cse', 23);
INSERT INTO student VALUES ('praveen', 'cse', 24);
-- Updating records
UPDATE student SET age = 30 WHERE name = 'john';

## Dropping and Truncating Tables

-- Dropping the student table
DROP TABLE student;
-- Truncating the fruit table
TRUNCATE TABLE fruit;

## Query Examples

### Aggregation Queries

-- Aggregate functions on candidate table
SELECT SUM(mark) AS Total FROM candidate;
SELECT AVG(mark), department FROM candidate GROUP BY department;
SELECT COUNT(name) AS member, department FROM candidate GROUP BY department;

### Conditional Queries

-- Conditional queries on the applicant table
SELECT * FROM applicant WHERE age >= 20 AND final_grade IN ('A', 'B');
SELECT AVG(age), final_grade FROM applicant GROUP BY final_grade HAVING AVG(age) < 22;

### Ordering and Filtering

-- Ordering records in the employee table
SELECT * FROM employee ORDER BY last_name ASC;
-- Filtering employees by department
SELECT * FROM employee WHERE dept = 'IT' ORDER BY salary DESC;

### Altering Tables

-- Modifying the applicant table structure
ALTER TABLE applicant ADD grade VARCHAR(30);
ALTER TABLE applicant CHANGE grade final_grade VARCHAR(30);

### Sample Data and Usage

### Inserting Sample Data

-- Sample data for the fruit table
INSERT INTO fruit VALUES ('apple', 100);
INSERT INTO fruit VALUES ('grape', 60);
-- Updating the fruit table
UPDATE fruit SET price = 150 WHERE name = 'apple';

## Querying Data

-- Selecting specific columns from the customer table
SELECT city, customer_name FROM customer;
-- Filtering records based on conditions
SELECT * FROM customer WHERE state = 'CA';

## Advanced Queries

### Using Group By and Having Clauses

-- Aggregating and filtering data
SELECT AVG(salary), dept FROM employee GROUP BY dept HAVING AVG(salary) < 59000;

## Complex Queries

-- Joining conditions and filtering
SELECT * FROM applicant WHERE age >= 20 AND final_grade IN ('A', 'B') ORDER BY age DESC;
