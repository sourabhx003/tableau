use employees;

SELECT 
    dm.*, d.*
FROM
    dept_manager_dup dm
        CROSS JOIN
    dept_dup d
WHERE
    dm.dept_no <> d.dept_no
ORDER BY dm.dept_no , d.dept_name;

SELECT 
    dm.*, d.*
FROM
    dept_manager_dup dm
        JOIN
    dept_dup d
WHERE
    dm.dept_no <> d.dept_no
ORDER BY dm.emp_no , d.dept_name;