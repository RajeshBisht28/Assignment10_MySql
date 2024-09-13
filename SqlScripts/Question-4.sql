SELECT s.store_id 'Store Id', COUNT(r.rental_id) AS 'Rental Counts'
FROM store s
JOIN inventory i ON s.store_id = i.store_id
JOIN rental r ON i.inventory_id = r.inventory_id
GROUP BY s.store_id;