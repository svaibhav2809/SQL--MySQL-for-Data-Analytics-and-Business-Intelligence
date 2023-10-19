-- INSERT ORDER MUST BE SAME
INSERT INTO employees.employees
(birth_date,first_name,last_name,gender,hire_date,emp_no)
VALUES
('1996-09-28','Tony','Stark','M','2021-11-17',999902);

-- INSERT - II
INSERT INTO employees.employees
VALUES(999903,'1996-09-28','steve','rogers','M','2021-11-17');

-- Checking Data Insertion
SELECT 
    *
FROM
    employees.employees
ORDER BY emp_no DESC
LIMIT 10;