USE employees;

SELECT * FROM dept_manager_dup ORDER BY dept_no;
SELECT * FROM department_dup ORDER BY dept_no;

# Right JOIN M = dept_manager_dup, d = department_dup
SELECT d.dept_no, m.emp_no, d.dept_name
FROM dept_manager_dup m
RIGHT JOIN
department_dup d ON m.dept_no = d.dept_no
-- GROUP BY m.dept_no, m.emp_no, d.dept_name
ORDER BY dept_no;

# Right JOIN == Inverted table order LEFT JOIN 
SELECT d.dept_no, m.emp_no, d.dept_name
FROM  department_dup d
LEFT JOIN
dept_manager_dup m ON m.dept_no = d.dept_no
-- GROUP BY m.dept_no, m.emp_no, d.dept_name
ORDER BY dept_no;  