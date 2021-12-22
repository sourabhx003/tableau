/*
Difference between union and union all
UNION :- retrives distinct values,no duplicates, less efficient and more resource exhaustive
UNION ALL :- retrives evevy unify column,duplicates may be presetn, more efficient, less resource exhaustive
*/

use employees;

drop table if exists employees_dup;

create table if not exists employees_dup(
emp_no int NOT NULL,
  birth_date date NOT NULL,
  first_name varchar(14) NOT NULL,
  last_name varchar(16) NOT NULL,
  gender enum('M','F') NOT NULL,
  hire_date date NOT NULL
);

insert into employees_dup select * from employees;
select * from employees limit 10;

insert into employees_dup values ('10001','1953-09-02','Georgi','Facello','M','1986-06-26');

SELECT 
    *
FROM
    employees_dup
ORDER BY emp_no
LIMIT 10;


SELECT 
    e.emp_no,
    first_name,
    last_name,
    NULL AS dept_no,
    NULL AS from_date
FROM
    employees_dup e
WHERE
    e.emp_no = 10001 
UNION ALL SELECT 
    NULL AS emp_no,
    NULL AS first_name,
    NULL AS last_name,
    dept_no,
    from_date
FROM
    dept_manager sm;
    

SELECT 
    e.emp_no,
    first_name,
    last_name,
    NULL AS dept_no,
    NULL AS from_date
FROM
    employees_dup e
WHERE
    e.emp_no = 10001 
UNION SELECT 
    NULL AS emp_no,
    NULL AS first_name,
    NULL AS last_name,
    dept_no,
    from_date
FROM
    dept_manager sm;