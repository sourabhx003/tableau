
use employees;

drop procedure if exists emp_avg_salary_out;

DELIMITER $$
create procedure emp_avg_salary_out(in p_emp_no INTEGER,out p_avg_salary DECIMAL(10,2))
BEGIN
	select avg(s.salary)
    into p_avg_salary 
    from employees as e
    join salaries s on e.emp_no = s.emp_no
    where e.emp_no  = p_emp_no;
END$$

Delimiter ;

SET @v_avg_salary = 0;
call emp_avg_salary_out(11300,@v_avg_salary);
select @v_avg_salary;

drop procedure emp_avg_salary_out;