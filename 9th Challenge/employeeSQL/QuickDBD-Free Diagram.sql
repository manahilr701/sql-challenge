-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/Pcmai3
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Employees" (
    "emp_no" (INT):   NOT NULL,
    "birth_date" (DATE):   NOT NULL,
    "first_name" (VARCHAR):   NOT NULL,
    "last_name" (VARCHAR):   NOT NULL,
    "sex" (CHAR):   NOT NULL,
    "hire_date" (DATE):   NOT NULL
);

CREATE TABLE "Salaries" (
    "emp_no" (INT):   NOT NULL,
    "salary" (INT):   NOT NULL,
    "from_date" (DATE):   NOT NULL,
    "to_date" (DATE):   NOT NULL
);

CREATE TABLE "Titles" (
    "emp_no" (INT):   NOT NULL,
    "title" (VARCHAR):   NOT NULL,
    "from_date" (DATE):   NOT NULL,
    "to_date" (DATE):   NOT NULL
);

CREATE TABLE "Dept_Emp" (
    "emp_no" (INT):   NOT NULL,
    "dept_no" (VARCHAR):   NOT NULL,
    "from_date" (DATE):   NOT NULL,
    "to_date" (DATE):   NOT NULL
);

CREATE TABLE "Departments" (
    "dept_no" (VARCHAR):   NOT NULL,
    "dept_name" (VARCHAR):   NOT NULL
);

CREATE TABLE "Dept_Manager" (
    "dept_no" (VARCHAR):   NOT NULL,
    "emp_no" (INT):   NOT NULL,
    "from_date" (DATE):   NOT NULL,
    "to_date" (DATE):   NOT NULL
);

