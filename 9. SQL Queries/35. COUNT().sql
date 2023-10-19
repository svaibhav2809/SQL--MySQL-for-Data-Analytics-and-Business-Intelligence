use employees;

SELECT * FROM salaries
ORDER BY salary DESC;

SELECT COUNT(salary)
FROM salaries;

-- How may employees start_date in Database.
SELECT COUNT(DISTINCT from_date)
FROM salaries;

-- To Include Null Values 
SELECT COUNT(*) 
FROM salaries;