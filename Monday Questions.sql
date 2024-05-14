--Question 1: How many actors are there with last name 'Wahlberg'?
select count (last_name)
from actor 
where last_name = 'Wahlberg';

--Question 2: How many payments were made between $3.99 and $5.99?
select count(amount)
from payment
where amount between 3.99 and 5.99;


--Question 3: What film does the store have the most of
select film_id, count(film_id)
from inventory
group by film_id
order by count(film_id) desc
limit 1;

--Question 4: How many customers have the last name "William"?
select count(last_name)
from customer 
where last_name = 'William';

--Question 5: What store employee (get the ID) sold the most rentals?
select staff_id, count(rental_id)
from rental
group by staff_id 
order by count(rental_id) desc 
limit 1;

--Question 6: How many different district names are there?
select count(distinct district)
from address;

--Question 7: What film has the most actors in it?
select film_id, count(actor_id)
from film_actor
group by film_id 
order by count(actor_id) desc
limit 1;

--Question 8: From store_id 1, how many customers have a last name ending with 'es'? Use customer table
select count (last_name)
from customer
where last_name like '%es'
group by store_id
having store_id = 1;

--Question 9: How many payment amounts had a number of rentals above 250 fro customers with ids between 380 and 430? Use group by and having > 250
select distinct amount
from payment 
where customer_id between 380 and 430
group by amount
having count(rental_id) > 250;

--Question 10: Within the film table, how many rating categories are there? And what rating has the most movies total?
select rating, count(film_id)
from film
group by rating 
order by count(film_id) desc;

