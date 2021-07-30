Artist Table
1.
INSERT INTO artist (name) VALUES
  ('Billie Eilish'),
  ('Taylor Swift'),
  ('Ludwig von Beethoven');
  
2.  
SELECT * FROM artist
ORDER BY name ASC
LIMIT 5;

Employee Table
1.
SELECT first_name, last_name FROM employee
WHERE city LIKE 'Calgary';

2.
SELECT * FROM employee
WHERE reports_to = 2;

3.
SELECT COUNT(*) FROM employee
WHERE city LIKE 'Lethbridge';

Invoice Table
1.
SELECT COUNT(*) FROM invoice
WHERE billing_country LIKE 'USA';

2.
SELECT total FROM invoice
ORDER BY total DESC
LIMIT 1;

3.
SELECT total FROM invoice
ORDER BY total ASC
LIMIT 1;

4.
SELECT * FROM invoice
WHERE total > 5;

5.
SELECT * FROM invoice
WHERE total < 5;

6.
SELECT SUM(total) FROM invoice;

JOIN Queries (Various Tables)
1.
SELECT * FROM invoice i
JOIN invoice_line il
ON il.invoice_id = i.invoice_id
WHERE il.unit_price > .99;

2.
SELECT i.invoice_date, c.first_name, c.last_name, i.total
FROM invoice i
JOIN customer c
ON i.customer_id = c.customer_id;

3.
SELECT 
c.first_name AS customer_fn, 
c.last_name AS customer_ln, 
e.first_name AS support_fn, 
e.last_name AS support_ln
FROM customer c
JOIN employee e
ON c.support_rep_id = e.employee_id;

4.
SELECT al.title AS album, ar.name AS artist 
FROM album al
JOIN artist ar
ON al.artist_id = ar.artist_id;