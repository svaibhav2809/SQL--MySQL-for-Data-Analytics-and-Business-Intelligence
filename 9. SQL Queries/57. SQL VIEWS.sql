USE employees;

SELECT * FROM dept_emp;

SELECT emp_no, MIN(from_date) as from_date, MAX(to_date) as to_date, COUNT(emp_no) AS Num
FROM dept_emp
GROUP BY emp_no
HAVING Num > 1;

-- CREATE VIEW
CREATE OR REPLACE VIEW v_dept_emp_latest_date AS
SELECT emp_no, MAX(from_date) AS from_date, MAX(to_date) AS to_date
FROM dept_emp
GROUP BY emp_no;

SELECT emp_no, MAX(from_date) AS from_date, MAX(to_date) AS to_date
FROM dept_emp
GROUP BY emp_no;