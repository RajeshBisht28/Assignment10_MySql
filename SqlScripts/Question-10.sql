SELECT 
    f.title 'Title',
    f.release_year 'Release Year'
FROM 
    film f
JOIN 
    inventory i ON f.film_id = i.film_id
WHERE 
    f.title LIKE 'A%';
