-- question 2: Retrieve all the data from the tables actor, film and customer.

SELECT * FROM actor;
 
SELECT * FROM film;
 
SELECT * FROM customer;
 
-- question 3: Retrieve the following columns from their respective tables:

-- A. Titles of all films from the film table

SELECT title FROM film;

--B. List of languages used in films, with the column aliased as language from the language table

SELECT name AS language FROM language;

--C. List of first names of all employees from the staff tab
 
 SELECT first_name FROM staff; 
 
 --question 4: Retrieve unique release years.
 
 SELECT DISTINCT release_year FROM film; 
 
 --question 5: Counting records for database insights:

-- A. Determine the number of stores that the company has.

SELECT COUNT (*) FROM store;

-- B.  Determine the number of employees that the company has.

SELECT COUNT (*) FROM staff;

-- C.  Determine how many films are available for rent and how many have been rented.

SELECT COUNT (*) FROM rental;
SELECT COUNT (DISTINCT film_id) FROM inventory;

-- D. Determine the number of distinct last names of the actors in the database.
 
 SELECT COUNT(DISTINCT last_name) FROM actor;
 
 
 --question 6: Retrieve the 10 longest films.
 
SELECT * 
FROM film 
ORDER BY length DESC
LIMIT 10;

--question 7: Use filtering techniques in order to:
-- Retrieve all actors with the first name "SCARLETT".

SELECT * FROM actor WHERE first_name = 'SCARLETT';

-- bonus
-- A. Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.

SELECT * FROM film WHERE title LIKE '%ARMAGEDDON%' AND length > 100;

--B.Determine the number of films that include Behind the Scenes content
 
SELECT COUNT(*) FROM film WHERE 'Behind the Scenes' = ANY(special_features);