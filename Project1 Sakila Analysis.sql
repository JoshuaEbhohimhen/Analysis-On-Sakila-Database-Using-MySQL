
use sakila;

# which actors have the first name "Scarlett"
select *
from actor
where first_name like "Scarlett";

# which actors have the last name "Johansson"
select *
from actor
where last_name like "Johansson";

# how many distinct actors last names are there?
select count(distinct last_name)
from actor; 

# which last names are not repeated?
select distinct last_name
from actor
group by last_name;

# which last name appear more than once?
select last_name, count(last_name) as num
from actor
group by last_name
having count(last_name) > 1
order by count(last_name)
limit 5 offset 10;

# which actor has appeared in the most films?

# is 'Academy Dinosaur' available for rent from store 1?
# what is the average running time for all the films in the sakila DB?
select round(avg(rental_duration)) as Total_Running_Time
from film;
# what is the average running time of films by category?

# Display the first and last names of all actors from the table actor?
select first_name, last_name
from actor;

# Display the first and last names of each actor in a single column in upper case letters. Name the column Actor Name.
select upper(concat(first_name," ", last_name)) as Actor_Name
from actor;
# you need to find the ID number, first name, and last name of an Actor,of whom you know only the first name, "Joe". what one query would you use to obtain this information.
select actor_id, first_name, last_name
from actor
where first_name like "Joe";

# Find all actors whose last name contain the letters GEN
select *
from actor 
where last_name like "%GEN";
# Find all actors whose last name contain the letters LI. This time order the rows by last name and first name, in that order.
select *
from actor
where last_name like "%LI%"
order by last_name, first_name;

# Using IN, display the country_ID and country column of the following countries: Afghanistan, Bangladesh, and China.
select country_id, country
from country
where country in ("Afghanistan", "Bangladesh", "China");

# List the last names of actors, as well as how many actors have that last name.
select last_name, count(last_name) as num
from actor
group by last_name;

# List last names of actors and the number of actors who have that last name, but only for names that are shared by at least two actors.  
select last_name, count(last_name) as num
from actor
where last_name like 2
group by last_name;
