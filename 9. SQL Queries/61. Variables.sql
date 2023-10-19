SET @v_avg_salary = 0;
CALL emp_average_salary_out(11300,@v_avg_salary);
SELECT @v_avg_salary;