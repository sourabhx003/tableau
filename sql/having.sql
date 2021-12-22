use employees;

SELECT 
    first_name, COUNT(first_name) AS count_first_name
FROM
    employees
GROUP BY first_name
HAVING first_name like 'ma%'
ORDER BY first_name DESC
LIMIT 100;

-- select name > 200 times and hire date after 1st jan 1990

SELECT 
    first_name, COUNT(first_name) AS count_first_name
FROM
    employees
WHERE
    hire_date > '1990-01-01'
GROUP BY first_name
HAVING COUNT(first_name) <= 200
ORDER BY first_name DESC
LIMIT 100;