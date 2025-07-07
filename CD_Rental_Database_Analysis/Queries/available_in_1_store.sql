--List films that are only available in one store

Select film.film_id, film.title
from film
join inventory on
inventory.film_id = film.film_id
GROUP BY film.film_id
HAVING COUNT(distinct(inventory.film_id)) = 1