-- COMPARISON OPERATOR
# =
SELECT * FROM employees.employees
WHERE first_name = 'Mark';
    
# <>    
SELECT  * FROM employees.employees
WHERE first_name <> 'Mark';

# =!    
SELECT  * FROM employees.employees
WHERE first_name != 'Mark';

# >
SELECT * FROM employees.employees
WHERE hire_date > '2000-01-01';
 
# >=
SELECT  * FROM employees.employees
WHERE hire_date >= '2000-01-01';

# <
SELECT * FROM employees.employees
WHERE hire_date < '1985-02-01';

# <=
SELECT * FROM employees.employees
WHERE hire_date <= '1985-02-01';