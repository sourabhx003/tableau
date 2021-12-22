-- select 20 people those rented the most films

use sakila;

SELECT 
    CONCAT(first_name, ' ', last_name) AS customer_name,
    COUNT(c.customer_id) AS times_rented,
    SUM(amount) AS total_amount
FROM
    payment AS p
        JOIN
    customer AS c ON p.customer_id = c.customer_id
GROUP BY customer_name
ORDER BY times_rented DESC
LIMIT 20;