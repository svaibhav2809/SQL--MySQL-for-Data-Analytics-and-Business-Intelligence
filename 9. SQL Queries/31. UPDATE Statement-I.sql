-- find emp_no = '999903'
SELECT 
    *
FROM
    employees.employees
WHERE
    emp_no = '999903';

-- Update first_name & last_name
UPDATE employees.employees 
SET 
    first_name = 'Bruce',
    last_name = 'Wayne'
WHERE
    emp_no = '999903';