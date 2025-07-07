--What is the average time between rental and return per film?

Select film.film_id, film.title, (avg(return_date - rental_date)) as avg_rental_days 
from rental
join inventory on
rental.inventory_id = inventory.inventory_id
join film on
inventory.film_id = film.film_id
group by film.film_id
order by film_id