SELECT 
    rental_id 'Rental Id',
    customer_id 'Customer Id',
    rental_date 'Rental Date',
    return_date 'Return Date',
    CASE
        WHEN customer_id > 300 THEN 'New Customer'
        ELSE 'Regular Customer'
    END AS  'Customer Type'
FROM 
    rental;
