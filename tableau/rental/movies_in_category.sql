--  count total movies in each category.

use sakila;

SELECT 
    c.name, COUNT(film_id) AS num_movies
FROM
    category c
        JOIN
    film_category fc ON fc.category_id = c.category_id
GROUP BY c.name
ORDER BY num_movies DESC;