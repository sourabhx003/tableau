use employees;

drop function if exists emp_avg_salary_function;
delimiter $$

create function  emp_avg_salary_function(p_emp_no INTEGER) returns DECIMAL(10,2)
DETERMINISTIC
BEGIN
DECLARE v_avg_salary DECIMAL(10,2);
select avg(s.salary) into v_avg_salary
from employees as e
join salaries as s on e.emp_no = s.emp_no
where e.emp_no = p_emp_no;
return v_avg_salary;
END$$

delimiter ;
select emp_avg_salary_function(11300);

drop function emp_avg_salary_function;