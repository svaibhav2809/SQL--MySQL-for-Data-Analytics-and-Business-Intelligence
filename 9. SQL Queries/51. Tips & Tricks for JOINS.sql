use employees;

SELECT 
    departments.dept_name, AVG(salary) AS average_salary
FROM
    departments
        JOIN
    dept_manager ON departments.dept_no = dept_manager.dept_no
        JOIN
    salaries ON dept_manager.emp_no = salaries.emp_no
GROUP BY departments.dept_name
HAVING average_salary > 60000
ORDER BY average_salary DESC;