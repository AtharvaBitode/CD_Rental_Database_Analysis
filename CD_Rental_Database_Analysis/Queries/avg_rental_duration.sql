--What is the average rental duration for each film?

Select film_id, title, round(avg(rental_duration)) as Avg_duration
from film
group by film_id 
order by film_id