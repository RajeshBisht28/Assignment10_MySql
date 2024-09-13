
SELECT 
	customer.first_name 'First Name', 
    customer.last_name 'Last Name',  
    cast(rental.rental_date as date) as 'Rental Date'
FROM 
	customer
JOIN 
  rental ON customer.customer_id = rental.customer_id;
