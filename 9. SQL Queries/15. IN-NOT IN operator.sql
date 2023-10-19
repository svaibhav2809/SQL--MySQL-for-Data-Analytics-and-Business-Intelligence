SELECT 
    *
FROM
    employees.employees
WHERE
    first_name = 'CATHIE'
        OR first_name = 'MARK'
        OR first_name = 'NATHAN'; 
        
# IN Operator
SELECT 
    *
FROM
    employees.employees
WHERE
    first_name IN ('CATHIE','MARK','NATHAN');
    
    
# NOT IN Operator
SELECT 
    *
FROM
    employees.employees
WHERE
    first_name NOT IN ('CATHIE','MARK','NATHAN');