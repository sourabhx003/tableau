-- movies of each rating in every store

use sakila;


SELECT 
    rating, COUNT(f.film_id) AS num_films, s.store_id
FROM
    film AS f
        JOIN
    inventory i ON f.film_id = i.film_id
        JOIN
    store AS s ON i.store_id = s.store_id
GROUP BY rating , s.store_id
ORDER BY num_films,f.film_id;