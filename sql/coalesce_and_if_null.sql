use employees;

SELECT 
    *
FROM
    departments
ORDER BY dept_no ASC
LIMIT 100;

SELECT 
    dept_no, IFNULL(dept_name, 'department not found') as dept_name
FROM
    departments
ORDER BY dept_no ASC
LIMIT 100;

create table if not exists dept_dub(
dept_no varchar(4),
dept_name varchar(30)
);

insert into dept_dub
select * from departments;

SELECT 
    *
FROM
    dept_dub;

insert into dept_dub values(null,null);
insert into dept_dub values('d010',null);

SELECT 
    *
FROM
    dept_dub;

SELECT 
    dept_no,
    IFNULL(dept_name, 'department not found') AS dept_name
FROM
    dept_dub;

SELECT 
    dept_no,
    COALESCE(dept_name, dept_no, 'NOT AVAILABLE') AS dept_name
FROM
    dept_dub
ORDER BY dept_no;