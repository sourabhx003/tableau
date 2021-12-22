-- which rating moveis rented the most

use sakila;

SELECT 
    rating, COUNT(rating) AS times_rented
FROM
    rental r
        JOIN
    inventory i ON r.inventory_id = i.inventory_id
        JOIN
    film f ON f.film_id = i.film_id
group by rating
order by times_rented desc;