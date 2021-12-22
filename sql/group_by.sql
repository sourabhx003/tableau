use employees;

SELECT 
    first_name
FROM
    employees
GROUP BY first_name
LIMIT 100;

SELECT 
    first_name, COUNT(first_name) AS count_first_name
FROM
    employees
GROUP BY first_name
ORDER BY first_name DESC
LIMIT 100;

