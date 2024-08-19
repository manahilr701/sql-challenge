# Employee Database

## Project Overview

This project involves setting up a PostgreSQL database using CSV files that contain employee data from the 1980s and 1990s. The database includes information such as employee details, departments, salaries, and titles. The project involves three main parts:
1. **Data Modeling**: Designing the database schema using an Entity-Relationship Diagram (ERD).
2. **Data Engineering**: Creating the database and tables, setting primary and foreign keys, and importing data from CSV files.
3. **Data Analysis**: Writing and executing SQL queries to extract meaningful insights from the data.

## Database Schema

The database consists of six tables:
1. **employees**: Stores employee personal information.
2. **departments**: Stores department information.
3. **titles**: Stores the job titles held by employees.
4. **salaries**: Stores employee salary information.
5. **dept_emp**: Stores the relationship between employees and departments.
6. **dept_manager**: Stores the relationship between department managers and departments.

### ERD Diagram

Below is the Entity-Relationship Diagram for this project:

![QuickDBD-Free Diagram](https://github.com/user-attachments/assets/fd273461-42f4-4b2b-afe8-f93a9fe17dd8)


## Database Schema Details

### Employees Table
- **emp_no** (INT, `NOT NULL`, Primary Key)
- **birth_date** (DATE, `NOT NULL`)
- **first_name** (VARCHAR, `NOT NULL`)
- **last_name** (VARCHAR, `NOT NULL`)
- **sex** (CHAR(1), `NOT NULL`)
- **hire_date** (DATE, `NOT NULL`)

### Departments Table
- **dept_no** (VARCHAR, `NOT NULL`, Primary Key)
- **dept_name** (VARCHAR, `NOT NULL`)

### Titles Table
- **emp_no** (INT, `NOT NULL`, Foreign Key)
- **title** (VARCHAR, `NOT NULL`)
- **from_date** (DATE, `NOT NULL`, Part of Composite Primary Key)
- **to_date** (DATE, `NOT NULL`)

### Salaries Table
- **emp_no** (INT, `NOT NULL`, Foreign Key)
- **salary** (INT, `NOT NULL`)
- **from_date** (DATE, `NOT NULL`, Part of Composite Primary Key)
- **to_date** (DATE, `NOT NULL`)

### Dept_Emp Table
- **emp_no** (INT, `NOT NULL`, Foreign Key)
- **dept_no** (VARCHAR, `NOT NULL`, Foreign Key)
- **from_date** (DATE, `NOT NULL`, Part of Composite Primary Key)
- **to_date** (DATE, `NOT NULL`)

### Dept_Manager Table
- **dept_no** (VARCHAR, `NOT NULL`, Foreign Key)
- **emp_no** (INT, `NOT NULL`, Foreign Key)
- **from_date** (DATE, `NOT NULL`, Part of Composite Primary Key)
- **to_date** (DATE, `NOT NULL`)

## Conclusion
The queries demonstrate various ways to analyze the employee dataset, offering insights into salary distribution, departmental structure, hiring trends, and more. With this data, companies can make informed decisions regarding employee management, organizational structure, and business strategy.

