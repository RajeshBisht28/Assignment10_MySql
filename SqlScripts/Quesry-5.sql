
SELECT 
	c.name 'Name'
FROM 
	category c
JOIN 
	film_category fc ON c.category_id = fc.category_id
GROUP BY c.name
HAVING
	COUNT(fc.film_id) > 50;
