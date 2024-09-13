SELECT 
    a.actor_id 'Actor ID',
    a.first_name 'First Name',
    a.last_name 'Last Name',
    COUNT(fa.film_id) AS 'Total Films'
FROM 
    actor a
JOIN 
    film_actor fa ON a.actor_id = fa.actor_id
GROUP BY 
    a.actor_id, a.first_name, a.last_name
ORDER BY 
    'Total Films' DESC;

 

