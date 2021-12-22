use employees;

drop procedure if exists stored_employee;

delimiter $$
create procedure stored_employees()
begin
 select * from employees limit 1000;
end$$

delimiter ;
call employees.stored_employees();

call stored_employees();


drop procedure if exists avg_salary_employee;

delimiter $$
create procedure avg_salary_employee()
begin
	select avg(salary) from salaries;
end$$

delimiter ;

call avg_salary_employee();

call select_salaried();

drop procedure if exists select_salaried;

drop procedure if exists stored_employees;