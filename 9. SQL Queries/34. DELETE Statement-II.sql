USE employees;

SELECT 
    *
FROM
    department_dup;

-- Without WHERE clause it delete entire table
DELETE FROM department_dup;

ROLLBACK;