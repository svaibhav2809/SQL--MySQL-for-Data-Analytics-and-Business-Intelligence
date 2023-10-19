# IS NOT NULL
SELECT 
    *
FROM
    employees.employees
WHERE
    first_name IS NOT NULL;

# IS NULL
SELECT 
    *
FROM
    employees.employees
WHERE
    first_name IS NULL;