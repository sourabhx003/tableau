USE employees;

SELECT 
    first_name, last_name
FROM
    employees;
    

SELECT 
    *
FROM
    employees;
    
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Mark';

SELECT 
    gender
FROM
    employees
WHERE
    first_name = 'Mark';

SELECT 
    first_name, last_name
FROM
    employees
WHERE
    first_name = 'Mark' AND gender = 'M';

SELECT 
    first_name, last_name
FROM
    employees
WHERE
    first_name = 'Mark'
        OR last_name = 'Conia';
        

SELECT 
    first_name, last_name
FROM
    employees
WHERE
    first_name = 'Cathie'
        OR first_name = 'Mark'
        OR first_name = 'Nathan';

SELECT 
    first_name, last_name
FROM
    employees
WHERE
    first_name IN ('Cathie' , 'Mark', 'Nathan');
SELECT 
    first_name, last_name
FROM
    employees
WHERE
    first_name IN ('Cathie' , 'Mark', 'Nathan');
    

SELECT 
    first_name, last_name
FROM
    employees
WHERE
    first_name NOT IN ('Cathie' , 'Mark', 'Nathan');