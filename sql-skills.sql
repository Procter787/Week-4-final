--artist table 

INSERT INTO artist (artist_id, name)
VALUES (350, 'Post Malone'),
		(351, 'Mac Miller'),
    (352, 'Young Thug');

SELECT name, * FROM artist
ORDER BY name ASC
LIMIT 5;

--employee table 

SELECT last_name, first_name FROM employee
-- WHERE city = 'Calgary';

SELECT * FROM employee
Where first_name = 'nancy';

SELECT * FROM employee 
WHERE reports_to = '2';

SELECT COUNT (city) FROM employee WHERE city = 'Lethbridge';

--Invoice table

SELECT COUNT (billing_country) FROM Invoice WHERE billing_country = 'USA';

SELECT total FROM Invoice
ORDER BY total DESC
LIMIT 1;

SELECT total FROM Invoice
ORDER BY total ASC
LIMIT 1;

SELECT total FROM Invoice
WHERE total > 5;

SELECT COUNT (total) FROM invoice;

--Join queries

SELECT * FROM invoice i
JOIN invoice_line il ON il.invoice_id = i.invoice_id
WHERE il.unit_price > 0.99;

SELECT i.invoice_date, c.first_name, c.last_name, i.total
FROM invoice i
JOIN customer c ON i.customer_id = c.customer_id;

SELECT c.first_name, c.last_name, e.first_name, e.last_name
FROM customer c
JOIN employee e on c.support_rep_id = e.customer_id;

SELECT al.title, ar.name
FROM album al
JOIN artist a ON ar.artist_id = al.artist_id;

--EXTRA CREDIT

--1.
SELECT name FROM artist 
ORDER BY name DESC
LIMIT 10;

--2.
SELECT name FROM artist 
WHERE name == 'black';

--employee table
--1.
SELECT birth_date FROM employee
ORDER BY birth_date DESC
LIMIT 1;

--2.
SELECT birth_date FROM employee
ORDER BY birth_date DESC
LIMIT 1;

--invoice table

--1. 
SELECT COUNT (billing_state) FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

--2.
SELECT AVG (total) FROM invoice;