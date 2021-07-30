Artist Table
1.
SELECT * FROM artist
ORDER BY name DESC
LIMIT 10;
2.
SELECT * FROM artist
WHERE name LIKE 'Black%';
3.
SELECT * FROM artist
WHERE name LIKE '%Black%';

Employee Table
1.
SELECT birth_date FROM employee
ORDER BY birth_date DESC
LIMIT 1;
2.
SELECT birth_date FROM employee
ORDER BY birth_date ASC
LIMIT 1;

Invoice Table
1.
SELECT COUNT(*) FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');
2.
SELECT AVG(total) FROM invoice;

More Join Queries
1.
SELECT pt.track_id FROM playlist_track pt
JOIN playlist pl
ON pt.playlist_id = pl.playlist_id
WHERE pl.name LIKE 'Music';
2.
SELECT tr.name FROM playlist_track pt
JOIN track tr
ON tr.track_id = pt.track_id
WHERE pt.playlist_id = 5;
3.
SELECT tr.name AS track, pl.name AS playlist 
FROM playlist_track pt
JOIN track tr
ON tr.track_id = pt.track_id
JOIN playlist pl
ON pl.playlist_id = pt.playlist_id;
4.
SELECT tr.name AS track, al.title AS album
FROM track tr
JOIN genre g
ON g.genre_id = tr.genre_id
JOIN album al
ON al.album_id = tr.album_id
WHERE g.name LIKE 'Alternative & Punk';