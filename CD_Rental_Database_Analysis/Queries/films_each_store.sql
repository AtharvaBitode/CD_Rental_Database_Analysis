--How many films does each store have in inventory?

Select store_id, count(DISTINCT (inventory.film_id)) as films
from inventory
group by store_id