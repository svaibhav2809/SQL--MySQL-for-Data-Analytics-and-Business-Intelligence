USE employees;

-- Use to see what output will come
SELECT 
    dept_name, dept_manager, COALESCE('Department Manager Name') AS fake_col
FROM
    department_dup;