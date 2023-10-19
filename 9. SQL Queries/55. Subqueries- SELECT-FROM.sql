-- Assign employee number 110022 as a Manager to all employees from 10001 to 10020,(SUBSET A)
-- and employee number 110039 as a Manager to all employees from 10021 to 10040. (SUBSET B)

SELECT 
    A.*
FROM
    (SELECT 
        employees.emp_no AS employee_ID,
            MIN(dept_emp.dept_no) AS department_code,
            (SELECT 
                    emp_no
                FROM
                    dept_manager
                WHERE
                    emp_no = 110022) AS manager_ID
    FROM
        employees
    JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
    WHERE
        employees.emp_no <= 10020
    GROUP BY employees.emp_no
    ORDER BY employees.emp_no) AS A 
UNION SELECT 
    B.*
FROM
    (SELECT 
        employees.emp_no AS employee_ID,
            MIN(dept_emp.dept_no) AS department_code,
            (SELECT 
                    emp_no
                FROM
                    dept_manager
                WHERE
                    emp_no = 110039) AS manager_ID
    FROM
        employees
    JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
    WHERE
        employees.emp_no > 10020
    GROUP BY employees.emp_no
    ORDER BY employees.emp_no
    LIMIT 20) AS B;