CREATE TABLE IF NOT EXISTS genres (
	genre_id SERIAL  PRIMARY KEY,
	name VARCHAR(60) UNIQUE NOT NULL 
);

CREATE TABLE IF NOT EXISTS artists (
	artist_id SERIAL PRIMARY KEY,
	     name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS artist_by_genre (
	genre_id  INTEGER REFERENCES genres(genre_id),
	artist_id INTEGER REFERENCES artists(artist_id),
	PRIMARY KEY (genre_id, artist_id)
);

CREATE TABLE IF NOT EXISTS albums (
	    album_id SERIAL PRIMARY KEY,
	        name VARCHAR(60) NOT NULL,
	year_release DATE NOT NULL CHECK(year_release >='1950-01-01')
);

CREATE TABLE IF NOT EXISTS artist_album (
	  artist_id INTEGER REFERENCES artists(artist_id),
	   album_id INTEGER REFERENCES albums(album_id),
	PRIMARY KEY (artist_id, album_id)
);

CREATE TABLE IF NOT EXISTS tracks (
	track_id SERIAL PRIMARY KEY,
	    name VARCHAR(60) NOT NULL,
	duration INTEGER NOT NULL CHECK(duration > 0 and duration < 72000),
	album_id INT2 REFERENCES albums(album_id)
);

CREATE TABLE IF NOT EXISTS collections (
	collection_id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	year_release DATE NOT NULL CHECK(year_release >='1950-01-01')
);

CREATE TABLE IF NOT EXISTS track_collection (
	     track_id INTEGER REFERENCES tracks(track_id),
	collection_id INTEGER REFERENCES collections(collection_id),
	  PRIMARY KEY (track_id, collection_id) 
);
