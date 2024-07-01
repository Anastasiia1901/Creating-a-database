
INSERT INTO Genre (id, title)
VALUES (1, 'Pop'),
(2, 'Rock'),
(3, 'Hip hop');


INSERT INTO Artists (id, name)
VALUES (1, 'Michael Jackson'),
(2, 'Rihanna'),
(3, 'Bon Jovi'),
(4, 'David Bowie'),
(5, 'Eminem');


INSERT INTO Albums (id, title, year_of_release)
VALUES (1, 'Invincible', 2001),
(2, 'Anti', 2019),
(3, 'Keep the Faith', 1992),
(4, 'Let"s Dance', 1983),
(5, 'Encore', 2004);


INSERT INTO Tracks (id, album_id, title, duration)
VALUES (1, 1, 'Unbreakable', 385),
(2, 1, 'You Are My Life', 273),
(3, 2, 'Desperado', 186),
(4, 3, 'I Believe', 348),
(5, 3, 'Keep the Faith', 346),
(6, 4, 'Modern Love', 286),
(7, 5, 'Rain Man', 314);


INSERT INTO Collections (id, title, year_of_release)
VALUES (1, 'Winter', 2019),
(2, 'Spring', 2020),
(3, 'Summer', 2021),
(4, 'Autumn', 2022);


INSERT INTO GenreArtists (genre_id, artist_id)
VALUES (1, 1),
(1, 2),
(1, 3),
(2, 3),
(2, 4),
(3, 5),
(3, 2);


INSERT INTO ArtistsAlbums (artist_id, album_id)
VALUES (1, 1),
(2, 2),
(3, 3),
(3, 5),
(4, 4),
(5, 5),
(5, 2);


INSERT INTO TracksCollections (track_id, collection_id)
VALUES (1, 1),
(2, 1),
(6, 1),
(3, 2),
(4, 2),
(7, 2),
(5, 3),
(6, 3),
(3, 3),
(7, 4),
(2, 4),
(4, 4);
