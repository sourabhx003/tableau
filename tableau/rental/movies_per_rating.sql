-- number of films in eah rating

use sakila;

SELECT 
    rating, COUNT(rating) AS times_rating
FROM
    film
GROUP BY rating
ORDER BY times_rating;