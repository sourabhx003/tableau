use employees;

SELECT 
    *
FROM
    dept_dup;

DELETE FROM dept_dup 
WHERE
    dept_no = 'd009';

insert into dept_dup values('d009','customer service');

SELECT 
    *
FROM
    dept_manager_dup;

SELECT 
    COUNT(emp_no), COUNT(DISTINCT emp_no)
FROM
    dept_manager_dup;

--  retrieve all dept number and emp no from dept_manager_dup table and dept name from dept_dup table 

SELECT 
    dm.dept_no, dm.emp_no, d.dept_name
FROM
    dept_manager_dup dm
        LEFT JOIN
    dept_dup d ON dm.dept_no = d.dept_no
GROUP BY dm.emp_no
ORDER BY dm.dept_no;