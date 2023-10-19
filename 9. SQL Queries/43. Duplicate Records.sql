USE employees;

SELECT * FROM department_dup ORDER BY dept_no ASC;

-- INSERTING DUPLICATE VALUE
INSERT INTO department_dup
VALUES('d009','Customer Service');

SELECT * FROM dept_manager_dup ORDER BY emp_no ASC;

-- INSERTING DUPLICATE VALUE
INSERT INTO dept_manager_dup
VALUES('110228','d003','1992-03-01','9999-01-01');

-- Handle Duplicates Records use GROUP BY
SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
        JOIN
    department_dup d ON m.dept_no = d.dept_no
GROUP BY m.dept_no, m.emp_no, d.dept_name
ORDER BY m.dept_no;