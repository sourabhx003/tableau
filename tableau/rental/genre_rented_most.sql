-- movie category which is rented the most in the database


SELECT 
    c.name, COUNT(i.film_id) AS num_movies
FROM
    category c
        JOIN
    film_category f ON c.category_id = f.category_id
        JOIN
    inventory i ON f.film_id = i.film_id
        JOIN
    rental r ON i.inventory_id = r.inventory_id
GROUP BY c.name
ORDER BY num_movies DESC;

