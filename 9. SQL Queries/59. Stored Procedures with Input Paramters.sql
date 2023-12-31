USE employees;

DROP PROcedure IF exists emp_avg_salary;

DELIMITER $$
USE employees $$
CREATE PROCEDURE emp_salary(IN p_emp_no INTEGER)
BEGIN
SELECT e.first_name,e.last_name,s.salary,s.from_date,s.to_date
FROM employees e
JOIN
salaries s ON e.emp_no = s.emp_no
WHERE 
e.emp_no = p_emp_no;
END $$

DELIMITER ;


DELIMITER $$
USE employees $$
CREATE PROCEDURE emp_avg_salary(IN p_emp_no INTEGER)
BEGIN
SELECT e.first_name,e.last_name,AVG(s.salary)
FROM employees e
JOIN
salaries s ON e.emp_no = s.emp_no
WHERE 
e.emp_no = p_emp_no
GROUP BY e.emp_no;
END $$

DELIMITER ;