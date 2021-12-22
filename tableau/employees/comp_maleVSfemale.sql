use employees;

/*compare the number of male managers to female managers from diff. dept for each year from 1980*/


SELECT 
    d.dept_name,
    IF(ee.gender = 'M', 'Male', 'Female') AS gender,
    dm.emp_no,
    dm.from_date,
    dm.to_date,
    e.calender_year,
    CASE
        WHEN
            (YEAR(dm.to_date) < e.calender_year)
                OR (YEAR(dm.from_date > e.calender_year))
        THEN
            0
        ELSE 1
    END AS active
FROM
    (SELECT 
        YEAR(hire_date) AS calender_year
    FROM
        employees
    GROUP BY calender_year) e
        CROSS JOIN
    dept_manager dm
        JOIN
    departments d ON dm.dept_no = d.dept_no
        JOIN
    employees ee ON ee.emp_no = dm.emp_no
ORDER BY dm.emp_no , calender_year;