use employees;
-- query out avg department salary greater than 60000

SELECT 
    dept_name, AVG(salary) AS avg_salary
FROM
    departments d
        JOIN
    dept_manager dm ON d.dept_no = dm.dept_no
        JOIN
    salaries s ON s.emp_no = dm.emp_no;
--  this query only shows only one record to tackle that we need to use group by to show the list of all the records matching the following condition

SELECT 
    dept_name, AVG(salary) AS avg_salary
FROM
    departments d
        JOIN
    dept_manager dm ON d.dept_no = dm.dept_no
        JOIN
    salaries s ON s.emp_no = dm.emp_no
GROUP BY dept_name
HAVING avg_salary > 60000
ORDER BY avg_salary DESC;

SELECT DISTINCT
    dept_name
FROM
    departments;