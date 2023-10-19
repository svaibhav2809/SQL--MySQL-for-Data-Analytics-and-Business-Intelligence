USE employees;

SELECT * FROM department_dup ORDER BY dept_no;

-- Fill up NULL Values
SELECT dept_no, IFNULL(dept_name,'Department name not provided') AS dept_name
FROM department_dup;

-- IFNULL with more parameters (n parameters)
SELECT dept_no, COALESCE(dept_name,'Department name not provided') AS dept_name
FROM department_dup;

SELECT dept_no,dept_name, COALESCE(dept_name,dept_manager, 'N/A') AS dept_manager
FROM department_dup;