use employees;

select emp_no,first_name, last_name,
CASE 
WHEN gender = 'M' THEN "MALE"
ELSE "FEMALE"
END AS gender
FROM employees;

select emp_no,first_name, last_name,
CASE gender
WHEN 'M' THEN "MALE"
ELSE "FEMALE"
END AS gender
FROM employees;

select emp_no,first_name, last_name,
IF(gender = 'M',"MALE",'FEMALE') AS gender
FROM employees;