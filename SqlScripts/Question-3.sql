
SELECT f.title 'Title', c.name AS 'Category Name'
FROM film f
LEFT JOIN film_category fc ON f.film_id = fc.film_id
LEFT JOIN category c ON fc.category_id = c.category_id
ORDER BY c.name;