SELECT a.first_name, a.last_name
FROM film as fl
    INNER JOIN film_actor as fa ON fl.film_id = fa.film_id
    INNER JOIN actor as a on a.actor_id = fa.actor_id
WHERE fl.title = 'ACADEMY DINOSAUR';

SELECT a.first_name, a.last_name, fl.title
FROM film as fl
    LEFT JOIN film_actor as fa ON fl.film_id = fa.film_id
    LEFT JOIN actor as a on a.actor_id = fa.actor_id
ORDER BY fl.title;

SELECT fl.title
FROM film as fl
INNER JOIN inventory i ON fl.film_id = i.film_id

SELECT fl.title, i.inventory_id
FROM film as fl
LEFT JOIN inventory as i ON fl.film_id = i.film_id

SELECT fl.title, i.inventory_id
FROM film as fl
RIGHT JOIN inventory as i ON fl.film_id = i.film_id

SELECT fl.title, i.inventory_id
FROM film as fl
FULL OUTER JOIN inventory as i ON fl.film_id = i.film_id

SELECT fl.title, cs.first_name, cs.last_name
FROM film fl
CROSS JOIN customer cs;

-- zwroc imie i nazwisko fanow komedii
SELECT DISTINCT c.first_name, c.last_name
FROM category ct
INNER JOIN film_category fc on ct.category_id = fc.category_id
INNER JOIN film f on f.film_id = fc.film_id
INNER JOIN inventory i on f.film_id = i.film_id
INNER JOIN rental r on i.inventory_id = r.inventory_id
INNER JOIN customer c on r.customer_id = c.customer_id
WHERE ct.name = 'Comedy';