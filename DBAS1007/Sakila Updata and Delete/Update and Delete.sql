-- Update statements

UPDATE sakila.language
SET NAME = "Portuguese"
WHERE language_id=3;

UPDATE sakila.actor
SET 
	first_name = "Wagner",
	last_name = "Moura"
WHERE actor_id=9;

UPDATE sakila.city
SET 
	city = "Goiania",
	country_id = 15
WHERE city_id=170;

UPDATE sakila.staff
SET 
	last_name="MacDonald"
WHERE staff_id=1;

UPDATE sakila.address
SET 
	address2="Unit 654"
WHERE address_id=229;

-- Delete statements

DELETE FROM sakila.language WHERE language_id=3;
DELETE FROM sakila.payment WHERE payment_id=1;
DELETE FROM sakila.film_actor WHERE actor_id=1 && film_id=1;
DELETE FROM sakila.film_category WHERE category_id=1 && film_id=1;
DELETE FROM sakila.film_text WHERE film_id=1;
