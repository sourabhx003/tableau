use employees;


drop procedure if exists avg_salary;

DELIMITER  $$

use employees $$
create procedure avg_salary(in p_emp_no INTEGER)
begin
	select e.first_name,e.last_name,s.from_date,s.to_date,round(avg(s.salary),2) as avg_salary
    from employees e
    join salaries s on e.emp_no = s.emp_no
    where e.emp_no = p_emp_no;
end$$

delimiter ;
call avg_salary(11300);

drop procedure if exists avg_salary;
