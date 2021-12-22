/*
Male vs female salary untill 2002 filter by dept name in tableau
*/

use employees;

SELECT 
    e.gender,
    d.dept_name,
    ROUND(AVG(s.salary), 2) AS salary,
    YEAR(s.from_date) AS calender_year
FROM
    salaries s
        JOIN
    employees e ON s.emp_no = e.emp_no
        JOIN
    dept_emp de ON de.emp_no = s.emp_no
        JOIN
    departments d ON de.dept_no = d.dept_no
GROUP BY calender_year , e.gender , d.dept_name
HAVING calender_year <= 2002
ORDER BY calender_year , gender , d.dept_name;