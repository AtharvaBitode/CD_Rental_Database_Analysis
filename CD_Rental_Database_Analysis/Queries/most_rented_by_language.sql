--Films in which language are rented more

SELECT language.name as language, count(distinct(rental.rental_id)) as rental_count
from rental 
join inventory on 
rental.inventory_id = inventory.inventory_id
join film on
inventory.film_id = film.film_id
join language on
film.language_id = language.language_id
group by language.language_id

