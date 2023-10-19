SELECT 
    *
FROM
    employees.department_dup
ORDER BY dept_no;

COMMIT;

-- Without WHERE clause it update entire table
UPDATE employees.department_dup
SET dept_no = 'd011',
	dept_name = 'Quality Control';

ROLLBACK;
COMMIT;