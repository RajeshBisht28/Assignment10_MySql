SELECT 
	f.title 'Title', SUM(p.amount) AS "Total Income"
FROM 
	film f
JOIN 
	inventory i ON f.film_id = i.film_id
JOIN 
	rental r ON i.inventory_id = r.inventory_id
JOIN 
	payment p ON r.rental_id = p.rental_id
GROUP BY f.title
ORDER BY "Total Income" DESC;

