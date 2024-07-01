--Задание 2

SELECT title, duration FROM Tracks
ORDER BY duration DESC
LIMIT 1;

SELECT title FROM Tracks
WHERE duration >= 210;

SELECT title FROM Collections
WHERE year_of_release BETWEEN 2018 AND 2020;

SELECT name FROM Artists
WHERE name NOT LIKE '% %';

SELECT title FROM Tracks
WHERE title LIKE '%My%';


--Задание3

SELECT title, COUNT (a.id) FROM Genre g
JOIN GenreArtists ga ON g.id = ga.genre_id
JOIN artists a ON ga.artist_id = a.id
GROUP BY title;

SELECT a.title, COUNT (t.id) FROM Albums a
JOIN tracks t ON a.id = t.album_id
WHERE year_of_release BETWEEN 2019 AND 2020
GROUP BY a.title;

SELECT a.title, AVG(t.duration) FROM Albums a
JOIN tracks t ON a.id = t.album_id
GROUP BY a.title;

SELECT a.name FROM artists a
JOIN artistsalbums aa ON a.id = aa.artist_id
JOIN albums al ON al.id = aa.album_id
WHERE year_of_release NOT IN (SELECT year_of_release FROM albums WHERE year_of_release = 2020)
GROUP BY a.name;

SELECT c.title FROM Collections c
JOIN trackscollections tc ON c.id = tc.collection_id
JOIN tracks t ON t.id = tc.track_id
JOIN artistsalbums aa ON aa.album_id = t.album_id
JOIN artists a ON a.id = aa.artist_id
WHERE a.name LIKE 'Michael Jackson'
GROUP BY c.title;