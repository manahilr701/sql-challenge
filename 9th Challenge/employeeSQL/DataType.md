**Data Type:**

**1. Titles Table:**
1. emp_no (INT): The emp_no column stores employee numbers, which are integers with no decimals.
2. title (VARCHAR): The title column stores job titles, which are strings of varying lengths.
3. from_date (DATE): The from_date column is in the format YYYY-MM-DD, making it appropriate to use the DATE data type.
4. to_date (DATE): The to_date column is in the format YYYY-MM-DD, making it appropriate to use the DATE data type.
5. Primary Key: Composite key (emp_no, from_date)
**Explanation:** An employee can have multiple titles over time. The combination of emp_no and from_date uniquely identifies each record (a specific title during a specific period).

**2. Departments Table:**
1. dept_no (VARCHAR): The dept_no column stores department numbers, which consist of a letter followed by digits (e.g., d001), making VARCHAR the appropriate data type.
2. dept_name (VARCHAR): The dept_name column stores department names, which are strings of varying lengths.
3. Primary Key: dept_no
**Explanation:** dept_no is unique for each department. It serves as the primary key by itself, without needing a composite key.

**3. Dept_Manager Table:**
1. dept_no (VARCHAR): The dept_no column stores department numbers, which consist of a letter followed by digits (e.g., d001), making VARCHAR the appropriate data type.
2. emp_no (INT): The emp_no column stores employee numbers, which are integers with no decimals.
3. from_date (DATE): The from_date column is in the format YYYY-MM-DD, making it appropriate to use the DATE data type.
4. to_date (DATE): The to_date column is in the format YYYY-MM-DD, making it appropriate to use the DATE data type.
5. Primary Key: Composite key (dept_no, emp_no)
**Explanation:** A department can have multiple managers over time, but the combination of dept_no and emp_no uniquely identifies a specific manager for a specific department.

**4. Employees Table:**
1. emp_no (INT): The emp_no column stores employee numbers, which are integers with no decimals.
2. birth_date (DATE): The birth_date column is in the format YYYY-MM-DD, making it appropriate to use the DATE data type.
3. first_name (VARCHAR): The first_name column stores strings of varying lengths, so VARCHAR is the suitable data type.
4. last_name (VARCHAR): Similar to first_name, the last_name column also stores strings of varying lengths.
5. sex (CHAR): The sex column typically stores a single character (M or F), so CHAR(1) is an appropriate choice.
6. hire_date (DATE): The hire_date column is in the format YYYY-MM-DD, making it appropriate to use the DATE data type.
7. Primary Key: emp_no
**Explanation:** emp_no is unique for each employee. It serves as the primary key by itself, without needing a composite key.

**5. Salaries Table:**
1. emp_no (INT): The emp_no column stores employee numbers, which are integers with no decimals.
2. salary (INT): The salary column stores salaries, which are whole numbers without decimals.
3. from_date (DATE): The from_date column is in the format YYYY-MM-DD, making it appropriate to use the DATE data type.
4. to_date (DATE): The to_date column is in the format YYYY-MM-DD, making it appropriate to use the DATE data type.
5. Primary Key: Composite key (emp_no, from_date)
**Explanation:** An employee can have multiple salary records over time. The combination of emp_no and from_date uniquely identifies each record (a specific salary during a specific period).

**6. Dept_Emp Table:**
1. emp_no (INT): The emp_no column stores employee numbers, which are integers with no decimals.
2. dept_no (VARCHAR): The dept_no column stores department numbers, which consist of a letter followed by digits (e.g., d001), making VARCHAR the appropriate data type.
3. from_date (DATE): The from_date column is in the format YYYY-MM-DD, making it appropriate to use the DATE data type.
4. to_date (DATE): The to_date column is in the format YYYY-MM-DD, making it appropriate to use the DATE data type.
5. Primary Key: Composite key (emp_no, dept_no)
**Explanation:** An employee can be associated with multiple departments over time. The combination of emp_no and dept_no uniquely identifies each record (an employee’s assignment to a specific department).

**Summary of Composite Keys:**

1. **Titles Table:** Composite key (emp_no, from_date)
2. **Salaries Table:** Composite key (emp_no, from_date)
3. **Dept_Emp Table:** Composite key (emp_no, dept_no)
4. **Dept_Manager Table:** Composite key (dept_no, emp_no)

For the tables where a single column can uniquely identify a record, we use a single primary key. For tables where uniqueness requires a combination of two or more columns, composite keys are used.
