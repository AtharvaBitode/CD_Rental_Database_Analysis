--What are the top 10 most rented films?

Select film_id, title, rental_duration
from film
order by rental_duration DESC
limit 10