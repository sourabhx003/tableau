use employees;
drop table if exists dept_dub;

CREATE TABLE IF NOT EXISTS dept_manager_dup (
    emp_no INT,
    dept_no VARCHAR(4),
    from_date DATE,
    to_date DATE
);

insert into dept_manager_dup
select * from dept_manager;

SELECT 
    *
FROM
    dept_manager_dup;

SELECT 
    m.emp_no, d.dept_name
FROM
    dept_manager_dup m
        INNER JOIN
    dept_dup d ON m.dept_no = d.dept_no
ORDER BY m.dept_no;

insert into dept_dup values('d009','dummy department');

insert into dept_manager_dup values(999999,'d005','2019-4-04','9999-05-05');

SELECT 
    d.dept_name, m.emp_no
FROM
    dept_dup d
        JOIN
    dept_manager_dup m ON d.dept_no = m.dept_no
GROUP BY m.emp_no
ORDER BY m.dept_no;