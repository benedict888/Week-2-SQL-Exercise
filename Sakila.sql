-- SAKILA

-- 1) List all actors.
-- USE sakila
-- SELECT * FROM actor;

-- 2)Find the surname of the actor with the forename 'John'.
-- SELECT * FROM actor WHERE first_name = 'John';

-- 3)Find all actors with surname 'Neeson'.
-- SELECT * FROM actor WHERE last_name = 'Neeson';

-- 4) Find all actors with ID numbers divisible by 10.
-- SELECT first_name,last_name, actor_id FROM actor 
-- WHERE actor_id % 10 = 0;

-- 5) What is the description of the movie with an ID of 100?
-- select title,description from film where film_id=100;

-- 6) Find every R-rated movie.
-- select title,rating from film where rating="R";

-- 7) Find every non-R-rated movie.
-- SELECT title,rating FROM film WHERE rating!="R";

-- 8) Find the ten shortest movies.
-- SELECT title,length FROM film
-- ORDER BY length ASC LIMIT 10;

-- 9) Find the movies with the longest runtime, without using LIMIT.
-- SELECT title,length FROM film
-- ORDER BY length DESC;

-- 10) Find all movies that have deleted scenes.

-- 11) Using HAVING, reverse-alphabetically list the last names that are not repeated.

-- 12) Using HAVING, list the last names that appear more than once, from highest to lowest frequency.

-- 13) Which actor has appeared in the most films?

-- 14) When is 'Academy Dinosaur' due?

-- 15) What is the average runtime of all films?
-- SELECT AVG(length) FROM film;

-- 16)List the average runtime for every film category.

-- 17)List all movies featuring a robot.


-- 18)How many movies were released in 2010?
-- SELECT COUNT(release_year) FROM film WHERE release_year =2010;

-- 19)Find the titles of all the horror movies.

-- 20)List the full name of the staff member with the ID of 2.
-- SELECT first_name,last_name FROM staff WHERE staff_id=2;

-- 21)List all the movies that Fred Costner has appeared in.

-- 22)How many distinct countries are there?
-- SELECT DISTINCT country FROM country;

-- 23)List the name of every language in reverse-alphabetical order.
-- SELECT name FROM language ORDER BY name DESC

-- 24)List the full names of every actor whose surname ends with '-son' in alphabetical order by their forename.
 -- SELECT first_name,last_name FROM actor 
--  WHERE last_name LIKE '%son'
--  ORDER BY first_name ASC;

-- 25)Which category contains the most films?

USE sakila;
-- SELECT title,length FROM film
-- ORDER BY length DESC;

-- ORDER BY MyCol 
-- SELECT AVG(length) FROM film;
-- SELECT COUNT(release_year) FROM film WHERE release_year =2010;
-- SELECT first_name,last_name FROM staff WHERE staff_id=2;
-- SELECT DISTINCT country FROM country;
-- SELECT name FROM language ORDER BY name DESC;
 -- SELECT first_name,last_name FROM actor WHERE last-name =%son ORDER BY first_name ASC;
 
 -- SELECT first_name,last_name FROM actor 
--  WHERE last_name LIKE '%son'
--  ORDER BY first_name ASC;

-- SELECT first_name,last_name, actor_id FROM actor 
-- WHERE actor_id % 10 = 0;
SELECT title FROM film_text
WHERE `description` LIKE %robot%;



