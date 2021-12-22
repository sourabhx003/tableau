use employees;

SELECT 
    first_name, last_name
FROM
    employees
WHERE
    first_name LIKE ('nat_');

SELECT 
    first_name, last_name
FROM
    employees
WHERE
    first_name LIKE ('mar%');

SELECT 
    first_name, last_name
FROM
    employees
WHERE
    first_name LIKE ('mar_');

SELECT 
    first_name, last_name
FROM
    employees
WHERE
    first_name LIKE ('%ar');
    
    

SELECT DISTINCT
    gender
FROM
    employees
WHERE
    first_name = 'Mark';
    

SELECT 
    COUNT(first_name)
FROM
    employees
WHERE
    first_name = 'mark';

SELECT 
    COUNT(*)
FROM
    employees
WHERE
    first_name = 'mark';

SELECT 
    COUNT(DISTINCT first_name)
FROM
    employees
WHERE
    gender = 'f';

SELECT 
    SUM(emp_no)
FROM
    employees;

SELECT 
    MIN(emp_no)
FROM
    employees;
    
SELECT 
    avg(emp_no)
FROM
    employees