use employees;

select min(salary),max(salary) from salaries;

/*
Create a procedure to get avg salary of male and female employees within a set of user input range.
*/

drop procedure if exists filter_salary;

delimiter $$
create procedure filter_salary(IN p_range1 float, IN p_range2 float)
begin
	select e.gender,d.dept_name,round(avg(s.salary),2) as avg_salary
    
    from salaries s
    join employees e on e.emp_no = s.emp_no
    join dept_emp de on e.emp_no = de.emp_no
    join departments d on d.dept_no = de.dept_no
    
    where s.salary between p_range1 and p_range2
    
    group by d.dept_name,e.gender;
    
end$$

delimiter ;

call filter_salary(30000, 60000);