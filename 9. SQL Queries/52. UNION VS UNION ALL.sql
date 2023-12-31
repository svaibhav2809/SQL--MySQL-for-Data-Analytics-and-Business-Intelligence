USE employees;

DROP TABLE if exists employees_dup;
CREATE TABLE employees_dup(emp_no INT(11),birth_date DATE,first_name VARCHAR(14),
last_name VARCHAR(16),gender ENUM('M','F'),hire_date DATE);

INSERT INTO employees_dup SELECT employees.* FROM employees LIMIT 20;

SELECT * FROM employees_dup;

INSERT INTO employees_dup
VALUES ('10001', '1953-09-02', 'Georgi', 'Facello', 'M', '1986-06-26');

-- UNION ALL
SELECT e.emp_no, e.first_name,e.last_name, NULL AS dept_name, NULL AS dept_no
FROM employees_dup e
WHERE e.emp_no = 10001
UNION ALL SELECT
NULL AS emp_no,
NULL AS first_name,
NULL AS last_name,
m.dept_no,
m.from_date
FROM dept_manager m;

-- UNION 
SELECT e.emp_no, e.first_name,e.last_name, NULL AS dept_name, NULL AS dept_no
FROM employees_dup e
WHERE e.emp_no = 10001
UNION SELECT
NULL AS emp_no,
NULL AS first_name,
NULL AS last_name,
m.dept_no,
m.from_date
FROM dept_manager m;