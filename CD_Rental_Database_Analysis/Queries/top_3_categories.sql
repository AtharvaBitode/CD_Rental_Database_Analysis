--Which are the top 3 most most popular categories?


Select count(film_category.category_id), category.name
from film_category
join category on
film_category.category_id = category.category_id
group by category.name
order by count(film_category.category_id) DESC
limit 3