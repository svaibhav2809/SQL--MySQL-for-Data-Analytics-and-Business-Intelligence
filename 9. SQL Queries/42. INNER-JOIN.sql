USE employees;

SELECT * FROM dept_manager_dup ORDER BY dept_no;
SELECT * FROM department_dup ORDER BY dept_no;

-- INNER JOIN M = dept_manager_dup, d = department_dup
SELECT m.dept_no, m.emp_no, d.dept_name
FROM dept_manager_dup m
INNER JOIN
department_dup d ON m.dept_no = d.dept_no
ORDER BY m.dept_no;

-- 
SELECT m.dept_no, m.emp_no,m.from_date,m.to_date, d.dept_name
FROM dept_manager_dup m
INNER JOIN
department_dup d ON m.dept_no = d.dept_no
ORDER BY m.dept_no;