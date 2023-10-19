INSERT INTO employees.employees
(emp_no,birth_date,first_name,last_name,gender,hire_date)
VALUES
(999901,'1996-09-28','John','Wick','M','2021-11-17');

-- Checking Data Insertion
SELECT 
    *
FROM
    employees.employees
ORDER BY emp_no DESC
LIMIT 10;