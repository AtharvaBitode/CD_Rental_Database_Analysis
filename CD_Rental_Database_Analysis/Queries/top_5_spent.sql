--Name of customer who are top 5 to spent the most money?

Select customer.customer_id, CONCAT(first_name, last_name) as name, sum(amount)
from payment
inner join customer on
payment.customer_id = customer.customer_id
group by customer.customer_id
order by Sum(amount) DESC
limit 5