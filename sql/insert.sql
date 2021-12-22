use employees;

insert into employees
(
	emp_no,
    birth_date,
    first_name,
    last_name,
    gender,
    hire_date
)
values
(
	999901,
    '2000-07-05',
    'sourabh',
    'singh',
    'M',
    '2000-01-01'
);

SELECT 
    *
FROM
    employees
WHERE
    emp_no = 999901;

-- making aduplicate table

CREATE TABLE IF NOT EXISTS dept_dup (
    dept_no CHAR(4) NOT NULL,
    dept_name VARCHAR(40) NOT NULL
);

insert into dept_dup
select * from departments;

SELECT 
    *
FROM
    dept_dup;