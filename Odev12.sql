SELECT COUNT(*) FROM film WHERE lenght > (SELECT AVG(lenght) FROM film);
----------
SELECT COUNT(*) FROM film WHERE rental_rate = (SELECT MAX(reantal_rate) FROM film);
-------------
SELECT title, rental_rate, replacement_cost FROM film WHERE rental_rate = (SELECT MIN(reantal_rate) FROM film) AND replacement_cost = (SELECT MIN(replacement_cost) FROM film);
------------
SELECT customer.customer_id, customer.first_name, customer.last_name, COUNT(payment.payment_id) AS total_payments
FROM customer
JOIN payment ON customer.customer_id = payment.customer_id
GROUP BY customer.customer_id, customer.first_name, customer.last_name
ORDER BY total_payments DESC;
