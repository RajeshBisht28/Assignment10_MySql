
SELECT f.title 'Title'
FROM 
	film f
JOIN 
	inventory i ON f.film_id = i.film_id
JOIN 
	rental r ON i.inventory_id = r.inventory_id
WHERE r.customer_id = (
    SELECT c.customer_id
    FROM customer c
    WHERE 
		lower(c.first_name)= 'mary' AND  lower(c.last_name) = 'smith');
        
    
