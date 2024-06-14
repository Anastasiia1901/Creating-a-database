CREATE TABLE IF NOT EXISTS Genre(
	id SERIAL PRIMARY KEY,
	title VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS Artists (
	id SERIAL PRIMARY KEY,
	genre_id INTEGER NOT NULL REFERENCES Genre(id),
	name VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS Albums (
	id SERIAL PRIMARY KEY,
	artist_id INTEGER NOT NULL REFERENCES Artists(id),
	title VARCHAR(40) NOT NULL,
	year_of_release YEAR CONSTRAINT check_year CHECK (year_of_release > 1900) 
);

CREATE TABLE IF NOT EXISTS Tracks (
	id SERIAL PRIMARY KEY,
	album_id INTEGER NOT NULL REFERENCES Albums(id),
	title VARCHAR(40) NOT NULL,
	duration TIME NOT NULL
);

CREATE TABLE IF NOT EXISTS Collections (
	id SERIAL PRIMARY KEY,
	track_id INTEGER NOT NULL REFERENCES Tracks(id),
	album_id INTEGER NOT NULL REFERENCES Albums(id),
	title VARCHAR(40) NOT NULL,
	year_of_release YEAR CONSTRAINT check_year CHECK (year_of_release > 1900) 
);

CREATE TABLE IF NOT EXISTS GenreArtists (
	genre_id INTEGER REFERENCES Genre(id),
	artist_id INTEGER REFERENCES Artists(id),
	CONSTRAINT pk PRIMARY KEY (genre_id, artist_id)
);

CREATE TABLE IF NOT EXISTS ArtistsAlbums (
	artist_id INTEGER REFERENCES Artists(id),
	album_id INTEGER REFERENCES Albums(id),
	CONSTRAINT pk PRIMARY KEY (artist_id, album_id)
);

CREATE TABLE IF NOT EXISTS TracksCollections (
	track_id INTEGER REFERENCES Tracks(id),
	collection_id INTEGER REFERENCES Collections(id),
	CONSTRAINT pk PRIMARY KEY (track_id, collection_id)
);
