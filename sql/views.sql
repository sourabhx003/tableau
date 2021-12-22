use employees;

SELECT 
    *
FROM
    dept_emp;

CREATE OR REPLACE VIEW v_dept_emp_latest_date AS
    SELECT 
        emp_no, MAX(to_date) AS to_date, MAX(from_date) AS from_date
    FROM
        dept_emp
	group by emp_no
    order by emp_no;

SELECT 
    emp_no, MAX(to_date) AS to_date, MAX(from_date) AS from_date
FROM
    dept_emp
GROUP BY emp_no
ORDER BY emp_no;


CREATE OR REPLACE VIEW v_avg_sal AS
    SELECT 
        ROUND(AVG(s.salary), 2) AS avg_salary
    FROM
        salaries s
            JOIN
        dept_manager dm ON dm.emp_no = s.emp_no;

SELECT 
        ROUND(AVG(s.salary), 2) AS avg_salary
    FROM
        salaries s
            JOIN
        dept_manager dm ON dm.emp_no = s.emp_no;