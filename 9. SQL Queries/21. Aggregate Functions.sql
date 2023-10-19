-- Aggregate Functions COUNT(), MIN(), MAX(), AVG(), SUM()

-- How many employees registered in our Database?
SELECT 
    COUNT(emp_no)
FROM
    employees.employees; 
    
-- How many different names can be found in the employees Table
SELECT 
    COUNT(DISTINCT first_name)
FROM
    employees.employees;