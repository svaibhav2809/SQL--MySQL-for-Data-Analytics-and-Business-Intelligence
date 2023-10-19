USE employees;

-- Average Salaries of Men & Women in the Company
SELECT employees.gender, AVG(salary) AS average_salary
FROM
employees
JOIN
salaries ON employees.emp_no = salaries.emp_no
GROUP BY gender;