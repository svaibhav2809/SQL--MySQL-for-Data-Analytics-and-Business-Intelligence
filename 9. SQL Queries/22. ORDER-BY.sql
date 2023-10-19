-- ORDER BY
SELECT 
    *
FROM
    employees.employees
ORDER BY first_name;

-- ASC
SELECT 
    *
FROM
    employees.employees
ORDER BY first_name ASC;

-- ASC
SELECT 
    *
FROM
    employees.employees
ORDER BY first_name, last_name ASC;

-- DESC
SELECT 
    *
FROM
    employees.employees
ORDER BY first_name DESC;