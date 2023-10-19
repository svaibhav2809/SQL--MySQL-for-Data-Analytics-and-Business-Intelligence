USE employeees;

SELECT employees.first_name, employees.last_name
FROM employees
WHERE EXISTS(
SELECT * FROM dept_manager WHERE dept_manager.emp_no = employees.emp_no
ORDER BY emp_no);