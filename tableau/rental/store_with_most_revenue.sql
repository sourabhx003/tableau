-- Store with most revenue

use sakila;

SELECT 
    store_id, SUM(amount) AS total_amount
FROM
    store s
        JOIN
    payment p ON s.manager_staff_id = p.staff_id
GROUP BY store_id
ORDER BY amount asc;