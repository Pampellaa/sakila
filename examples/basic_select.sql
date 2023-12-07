SELECT *FROM actor;

SELECT last_name, first_name FROM actor;

SELECT *
FROM actor
ORDER BY first_name;

SELECT *
FROM actor
ORDER BY first_name DESC;

-- sortowanie po 2 kolumnach
SELECT *
FROM actor
ORDER BY last_name DESC, first_name DESC;

SELECT *
FROM actor
WHERE actor_id >100;

SELECT *
FROM actor
WHERE first_name = 'NICK';

SELECT *
FROM actor
WHERE first_name = 'NICK'
ORDER BY actor_id DESC;

SELECT rental_date AS RentalDate, inventory_id AS FilmListID
FROM rental;

SELECT replacement_cost - film.rental_rate AS CostDiff,
       film_id,
       length / 60 AS TimePerHour
FROM film;

SELECT rental_rate AS RentalRate,
       rental_rate +3 *4 -1 AS Result1,
       (rental_rate +3)*4-1 AS Result2,
       (rental_rate +3)*(4-1) AS Result3,
       rental_rate +(3*4)-1 AS Result4
FROM film;

SELECT amount
FROM payment;

SELECT amount,
       round(amount) AS Amnt,
       floor(amount) AS Amnt1,
       ceiling(amount) AS Amnt2
FROM payment;

SELECT concat(first_name, ' ', last_name)
FROM actor;

SELECT  concat(left(first_name,1),'.', left(last_name,1),'.')
FROM actor;

SELECT actor_id, first_name, last_name
FROM actor
WHERE actor_id = 100;

SELECT actor_id, first_name, last_name
FROM actor
WHERE actor_id < 100;

SELECT actor_id, first_name, last_name
FROM actor
WHERE first_name < 'NICK';

SELECT actor_id, first_name, last_name
FROM actor
WHERE first_name != 'NICK';
-- != <-> <>

SELECT actor_id, first_name, last_name
FROM actor
WHERE first_name = 'KENNETH' AND actor_id < 100;

SELECT actor_id, first_name, last_name
FROM actor
WHERE first_name = 'KENNETH' AND actor_id < 100 AND last_name = 'TORN';

SELECT actor_id, first_name, last_name
FROM actor
WHERE first_name = 'KENNETH' AND actor_id < 100 OR last_name = 'TEMPLE';

SELECT *
FROM actor
WHERE first_name IN ('NICK','JOHNNY','JOE','VIVIEN');

SELECT *
FROM actor
WHERE first_name NOT IN ('NICK','JOHNNY','JOE','VIVIEN');

SELECT *
FROM actor
WHERE first_name IN ('NICK','JOHNNY','JOE','VIVIEN')
    AND actor_id IN (SELECT actor_id FROM actor WHERE last_name = 'DEGENERES');

SELECT *
FROM actor
WHERE actor_id >=10 AND actor_id <=20;
-- to samo co:
SELECT *
FROM actor
WHERE actor_id BETWEEN 10 AND 20;

SELECT *
FROM actor
WHERE actor_id NOT BETWEEN 10 AND 20;

SELECT *
FROM actor
WHERE first_name LIKE 'A%';

SELECT *
FROM actor
WHERE first_name LIKE 'AL%';

SELECT *
FROM actor
WHERE first_name LIKE 'A__E%';

SELECT *
FROM actor
WHERE first_name LIKE 'A%E%';

SELECT concat(first_name, ' ',last_name) AS FullName
FROM actor
ORDER BY FullName;

SELECT actor_id
FROM actor
ORDER BY actor_id
LiMIT 5;

SELECT actor_id
FROM actor
ORDER BY actor_id
LiMIT 5 OFFSET 10;

SELECT actor_id
FROM actor
ORDER BY random()
LiMIT 5;



