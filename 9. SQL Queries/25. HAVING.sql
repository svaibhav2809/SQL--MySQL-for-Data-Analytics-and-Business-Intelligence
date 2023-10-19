-- 1
SELECT * FROM employees.employees WHERE hire_date >= '2000-01-01';
 -- 2
SELECT * FROM employees.employees HAVING hire_date >= '2000-01-01';

# 1 and 2 gives the same result.
SELECT first_name, COUNT(first_name) AS name_count
from employees.employees 
where COUNT(first_name) > 250
GROUP BY first_name
ORDER BY first_name;
-- ERROR CODE INVALID USE OF GROUP BY FUNCTION

-- count of first_name with no of time it occured and count must be 250 above
 SELECT first_name, COUNT(first_name) AS name_count
 from employees.employees 
 GROUP BY first_name 
 HAVING COUNT(first_name) > 250
 ORDER BY first_name;