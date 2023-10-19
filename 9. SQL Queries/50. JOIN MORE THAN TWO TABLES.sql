USE employees;

SELECT 
    employees.first_name,
    employees.last_name,
    employees.hire_date,
    dept_manager.from_date,
    departments.dept_name
FROM
    employees
        JOIN
    dept_manager ON employees.emp_no = dept_manager.emp_no
        JOIN
    departments ON dept_manager.dept_no = departments.dept_no;