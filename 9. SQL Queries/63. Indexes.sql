USE employees;

-- How many people hired after the 1 Jan 2000?
SELECT * FROM employees WHERE hire_date > '2000-01-01';

CREATE INDEX i_hire_date ON employees(hire_date);

-- Composite Index
SELECT  * FROM employees WHERE first_name =  'Georgi' and last_name = 'facello';
    
CREATE INDEX i_composite ON employees(first_name,last_name);

SHOW INDEX from employees from employees;