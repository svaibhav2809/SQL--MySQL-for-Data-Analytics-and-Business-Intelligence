SELECT 
    *
FROM
    employees.departments
LIMIT 10;

CREATE TABLE department_dup (
    dept_no CHAR(4) NOT NULL,
    dept_name VARCHAR(40) NOT NULL
);

SELECT 
    *
FROM
    employees.department_dup;

-- make copy of Table -I
INSERT INTO employees.department_dup
select * from employees.departments;

-- make copy of Table -II
INSERT INTO employees.department_dup(
dept_no,dept_name)
select * from employees.departments;