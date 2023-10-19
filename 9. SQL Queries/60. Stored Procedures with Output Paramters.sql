USE employees;
DROP PROCEDURE IF EXISTS emp_avg_salary_out;

DELIMITER $$
CREATE PROCEDURE emp_average_salary_out(in p_emp_no INTEGER, out p_avg_salary DECIMAL(10,2))
BEGIN
SELECT AVG(s.salary)
INTO p_avg_salary FROM employees e join
salaries s on e.emp_no = s.emp_no
where e.emp_no = p_emp_no;
END $$
DELIMITER ;