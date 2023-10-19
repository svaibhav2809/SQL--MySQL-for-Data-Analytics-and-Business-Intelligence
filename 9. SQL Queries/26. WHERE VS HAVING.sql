-- Extract a list of all names that are encountered less than 200 times. let the data refer to people hired after the 1/JAN/1999
SELECT 
    first_name, COUNT(first_name) AS names_count
FROM
    employees.employees
WHERE
    hire_date > '1999-01-01'
GROUP BY first_name
HAVING COUNT(first_name) < 200
ORDER BY first_name DESC;