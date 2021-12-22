use employees;
/*
 SQL query to return diversity in gender working in and after year 1990.
*/
SELECT 
    YEAR(de.from_date) AS calender_year,
    IF(gender = 'm', 'Male', 'Female') AS gender,
    COUNT(e.emp_no) AS num_employees
FROM
    employees e
        JOIN
    dept_emp de ON de.emp_no = e.emp_no
GROUP BY calender_year , gender
HAVING calender_year >= 1990
ORDER BY calender_year , gender;
    