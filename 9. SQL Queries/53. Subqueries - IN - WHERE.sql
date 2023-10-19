USE employees;

SELECT * FROM dept_manager;

-- Select the first & last name from the Employees Table for the same
-- Employee number that can be found in the Department Manager Table

SELECT employees.first_name, employees.last_name
FROM employees
WHERE employees.emp_no IN (
SELECT dept_manager.emp_no FROM dept_manager);