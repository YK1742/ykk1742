SELECT AVG (rental_rate) AS ort_rental_rate FROM film;
-----
SELECT COUNT(*) AS c_ile_baslayan_film_sayisi FROM film WHERE title LIKE 'C%';
-----
SELECT rental_rate, lenght, title FROM film WHERE rental_rate = 0.99 ORDER BY lenght DESC LIMIT 1;
SELECT MAX(lenght) AS en_uzun FROM film WHERE rental_rate = 0.99;
-----
SELECT COUNT (DISTINCT replacement_cost) FROM film WHERE lenght > 150;
