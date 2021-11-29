/*1.	Create a query that displays a list of Sakila stores (IDs) and the first/last name of each store's manager.*/
SELECT str.store_id, stf.first_name, stf.last_name 
FROM sakila.store str 
INNER JOIN sakila.staff stf ON str.manager_staff_id = stf.staff_id

/*2.	Create a query that displays a list of all cities and their associated countries, alphabetized by country.*/
SELECT ci.city, co.country 
FROM sakila.city ci 
INNER JOIN sakila.country co ON ci.country_id = co.country_id 
ORDER BY co.country ASC

/*3.	Create a query that displays the names of every actor and the number of movies they are in.
Display the actor's last and first names and sort from most movies to least. Rename columns as indicated.*/
SELECT a.last_name AS LastName, a.first_name AS FirstName, COUNT(fa.film_id) AS '# Movies' 
FROM sakila.film_actor fa 
INNER JOIN sakila.actor a ON fa.actor_id = a.actor_id 
GROUP BY LastName, FirstName 
ORDER BY COUNT(fa.film_id) DESC

/*4.	Create a query that displays a list of all customers who currently reside in Japan. 
Show their last and first names, city and country, sorted by city of residence, then by customer last name, first name.*/
SELECT cu.last_name, cu.first_name, ci.city, co.country FROM sakila.customer cu 
JOIN sakila.address ad ON cu.address_id = ad.address_id
JOIN sakila.city ci ON ad.city_id = ci.city_id
JOIN sakila.country co ON ci.country_id = co.country_id
WHERE co.country='JAPAN'
ORDER BY ci.city, cu.last_name, cu.first_name

/*5.	Create a query that lists all G-rated movies in which actress Audrey Olivier has appeared. 
Display the actress' name in a single field named ActorName.Rename other columns as indicated.*/
SELECT CONCAT (a.last_name, ', ', a.first_name) AS actorName, f.title AS Movies, f.rating AS MovieRating 
FROM sakila.actor a 
JOIN sakila.film_actor fa ON a.actor_id = fa.actor_id
JOIN sakila.film f ON fa.film_id = f.film_id
WHERE f.rating='G'
AND a.last_name='Olivier'
AND a.first_name='Audrey'

/*6.	Create a query that displays the total profits per staff member for rentals returned in July of 2005. Rename columns as indicated.*/
SELECT stf.first_name AS FirstName, stf.last_name AS LastName, SUM(p.amount) AS 'Profits On Returned Movies - July 2005'
FROM sakila.rental r
JOIN sakila.staff stf ON r.staff_id=stf.staff_id
JOIN sakila.payment p ON r.rental_id=p.rental_id
WHERE
	r.return_date BETWEEN '2005-07-01' AND '2005-07-31'
GROUP BY FirstName, LastName

/*7.	Create a query that displays which and how many movies are available for rental from store #1, 
that have an R  rating, are 2 hours or less in run time, and that include deleted scenes as a special feature. 
Sort by movie length, from shortest to longest. Rename the Available column as indicated.*/
SELECT f.title, COUNT(i.inventory_id) AS '# Available', f.rating, f.length, f.special_features
FROM sakila.film f
JOIN sakila.inventory i ON i.film_id=f.film_id
WHERE i.store_id=1
AND f.rating='R'
AND f.length<=120
AND f.special_features LIKE '%deleted scenes%'
GROUP BY i.film_id
ORDER BY	f.length ASC

/*8.	Create a query that displays the top five actors that have made the most rental profits for our store, 
sorted from largest profit to smallest. Rename columns as indicated.*/
SELECT a.last_name AS LastName, a.first_name AS FirstName, SUM(p.amount) AS 'Total Profit By Actor'
FROM sakila.inventory i
JOIN sakila.rental r ON r.inventory_id=i.inventory_id
JOIN sakila.payment p ON p.rental_id=r.rental_id
JOIN sakila.film_actor fa ON i.film_id=fa.film_id
JOIN sakila.actor a ON fa.actor_id=a.actor_id
GROUP BY LastName, FirstName
ORDER BY SUM(p.amount) DESC
LIMIT 5

/*9.	Create a query that displays all movies from the Action or Comedy categories that were rented by Canadian customers, 
sorted by movie title. 
Display the name of the rented movie, its category, the customer's name as a single field and the country. Rename columns as indicated. */
SELECT f.title AS MovieRented, cat.name AS Category, CONCAT(cus.first_name, ' ', cus.last_name) AS Customer, co.country AS Country
FROM sakila.film f
JOIN sakila.film_category fc ON f.film_id=fc.film_id
JOIN sakila.category cat ON fc.category_id=cat.category_id
JOIN sakila.inventory i ON i.film_id=f.film_id
JOIN sakila.rental r ON r.inventory_id=i.inventory_id
JOIN sakila.customer cus ON r.customer_id=cus.customer_id
JOIN sakila.address ad ON cus.address_id=ad.address_id
JOIN sakila.city ci ON ad.city_id = ci.city_id
JOIN sakila.country co ON ci.country_id=co.country_id
WHERE
	(cat.name='Action' OR cat.name='Comedy')
AND	co.country='Canada'
	
/*10.	Create a query that displays how many movies were rented by customer Ruby Washington, 
listed by category.Display the customer's last and first names, the category and how many movies from each category were rented 
by this customer. 
Sort by category, then by customer last name. Rename columns as indicated.*/
SELECT cus.last_name AS  LastName, cus.first_name AS FirstName, cat.name AS Category, COUNT(r.rental_id) AS '# Rented'
FROM sakila.customer cus
JOIN sakila.rental r ON r.customer_id=cus.customer_id
JOIN sakila.inventory i ON r.inventory_id = i.inventory_id
JOIN sakila.film_category fc ON i.film_id = fc.film_id
JOIN sakila.category cat ON fc.category_id = cat.category_id
WHERE	cus.last_name='Washington' 
AND cus.first_name='Ruby'
GROUP BY Category
ORDER BY
	cat.name, LastName


