-- Question 1: How many actors are there with the last name "Wahlberg"
-- Answer: 2
select first_name, last_name
from actor
where last_name = 'Wahlberg';

-- Question 2: How many payments were made between $3.99 and $5.99
-- Answer: 0
select count(amount)
from payment
where amount between 3.99 and 5.99;

-- Question 3: What film does the store have the most of? (search in inventory)
-- Answer: Zorro Ark
select inventory, film_id
from inventory
order by film_id desc;

select film_id, title
from film
where film_id = 1000;

-- Question 4: How many customers have the last name "William"
-- Answer: 1
select first_name, last_name
from actor
where first_name = 'William';


-- Question 5: What store employee (get the id) sold the most rentals
-- Answer: 1, Mike Hillyer
select count(rental_id), staff_id
from rental
group by staff_id
order by staff_id asc;

select staff_id, first_name, last_name
from staff
where staff_id = 1;

-- Question 6: How many different district names are there
-- Answer: 2
select count(store_id)
from store

-- Question 7: What film has the most actors in it? (use film_actor table and get film_id)
-- Answer: 1 Academy Dinosaur
select count(actor_id), film_id
from film_actor
group by film_id
order by film_id asc;

select film_id, title
from film
where film_id = 1;

-- Question 8: From store_id 1, how many customers have a last name ending with "es"? (use customer table)
-- Answer: 8
select last_name, store_id
from customer
where store_id = 2 and last_name like '_%es';

-- Question 9: How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for
-- customers with ids between 380 and 430? (use group by and having > 250)
-- Answer: 2
select amount, customer_id
from payment
where amount > 250;

-- Question 10: Within the film table, how many rating categories are there? And what rating has the most movies total?
-- Answer: 5, NC-17
select count(distinct rating)
from film

select rating, film_id
from film
group by film_id
order by film_id desc;




