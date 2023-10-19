USE employees;

SELECT * FROM dept_manager_dup ORDER BY dept_no;
SELECT * FROM department_dup ORDER BY dept_no;

-- remove duplicates from the records
DELETE FROM dept_manager_dup
WHERE emp_no ='110228';

DELETE FROM department_dup
WHERE dept_no = 'd009';

-- add back initial Records
INSERT INTO department_dup
VALUES('d009','Customer Service');

INSERT INTO dept_manager_dup
VALUES('110228','d003','1992-03-01','9999-01-01');

# LEFT JOIN M = dept_manager_dup, d = department_dup
SELECT m.dept_no, m.emp_no, d.dept_name
FROM dept_manager_dup m
LEFT JOIN
department_dup d ON m.dept_no = d.dept_no
GROUP BY m.dept_no, m.emp_no, d.dept_name
ORDER BY m.dept_no;

# LEFT with reverse order of table
-- LEFT OUTER JOIN = LEFT JOIN
SELECT d.dept_no, m.emp_no, d.dept_name
FROM department_dup d
LEFT OUTER JOIN
dept_manager_dup m ON m.dept_no = d.dept_no
ORDER BY d.dept_no;

# LEFT JOIN FOR NULL VALUES ONLY
SELECT m.dept_no, m.emp_no, d.dept_name
FROM dept_manager_dup m
LEFT JOIN
department_dup d ON m.dept_no = d.dept_no
WHERE dept_name IS NULL
ORDER BY m.dept_no;