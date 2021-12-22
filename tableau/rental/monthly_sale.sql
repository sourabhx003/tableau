-- revenue per month

use sakila;

SELECT 
    LEFT(payment_date, 7) AS 'month',
    SUM(amount) AS total_revenue
FROM
    payment
GROUP BY 1;