-- Cross JOIN

USE employees;

SELECT dm.*, d.*
FROM dept_manager dm
CROSS JOIN 
departments d
ORDER BY dm.emp_no, d.dept_no;

-- 
SELECT dept_manager.*, departments.*
FROM dept_manager
JOIN 
departments
ORDER BY dept_manager.emp_no, departments.dept_no;