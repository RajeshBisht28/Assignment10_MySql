
SELECT 
	c.first_name 'First Name', c.last_name 'Last Name', a.address 'Address'
FROM 
	customer c
JOIN 
	address a ON c.address_id = a.address_id
WHERE 
	LOWER(a.district) IN ('alberta', 'texas');