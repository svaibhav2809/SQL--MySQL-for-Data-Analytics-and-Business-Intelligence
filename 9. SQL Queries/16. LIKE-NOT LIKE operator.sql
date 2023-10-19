# All first_name Starting with 
SELECT *FROM employees.employees
WHERE first_name LIKE ('AR%'); 
    
-- All first_name Ending with 
SELECT * FROM employees.employees
WHERE first_name LIKE ('%AR'); 
    
-- All first_name Containing with 
SELECT * FROM employees.employees
WHERE first_name LIKE ('%AR%'); 

-- Underscore for single character pattern matching 
SELECT * FROM employees.employees
WHERE first_name LIKE ('MAR_'); 
 
 # NOT LIKE
 SELECT *FROM employees.employees
WHERE first_name NOT LIKE ('MAR%'); 