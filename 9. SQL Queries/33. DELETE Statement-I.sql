USE employees;

COMMIT;

SELECT * FROM employees
where emp_no = '499997';

SELECT * FROM titles
where emp_no = '499997';


DELETE FROM employees
where emp_no = '499997';

ROLLBACK;