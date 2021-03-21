/*
 * Write a SQL query SELECT query that:
 * computes the country with the most customers in it. 
 */
select country, count(customer_id)
from customer
inner join address using(address_id)
inner join city using(city_id)
inner join country using(country_id)
group by country
order by count(customer_id) desc
limit 1;
