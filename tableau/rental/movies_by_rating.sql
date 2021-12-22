use sakila;

SELECT 
    rating, COUNT(rating) AS total_number_of_movies
FROM
    film
GROUP BY rating;