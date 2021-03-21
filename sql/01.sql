/*
 * Write a SQL query SELECT query that:
 * computes the number of customers who live outside of the US.
 */
select count(customer_id)
from customer
inner join address using(address_id)
inner join city using(city_id)
inner join country using(country_id)
where country.country != 'United States';
