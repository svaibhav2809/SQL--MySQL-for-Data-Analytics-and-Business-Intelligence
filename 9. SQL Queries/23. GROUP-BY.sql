SELECT 
    first_name
FROM
    employees.employees
GROUP BY first_name;

# Same with Distinct
-- SELECT DISTINCT first_name from employees.employees;

# count of first_name with no of time it occured
SELECT 
    first_name, COUNT(first_name)
FROM
    employees.employees
GROUP BY first_name
ORDER BY first_name DESC;