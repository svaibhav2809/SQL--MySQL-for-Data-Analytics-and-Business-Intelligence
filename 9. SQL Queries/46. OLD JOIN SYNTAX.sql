-- OLD JOIN SYNTAX

USE employees;

SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m,
    department_dup d
WHERE
    m.dept_no = d.dept_no
ORDER BY m.dept_no;