-- create schemas
CREATE SCHEMA moviedata;
go

--

-- create tables
CREATE TABLE moviedata.movies (
	movie_id INT IDENTITY (1, 1) PRIMARY KEY, -- INT IDENTITY(starting value,increment), with this is possible to generate nums automatically
	movie_name VARCHAR (80) NOT NULL,
	movie_genre VARCHAR (80) NOT NULL,
	

);

CREATE TABLE moviedata.actors (
	actor_id INT IDENTITY (2,2) PRIMARY KEY, 
	actor_name VARCHAR (80) NOT NULL,
	birth_year INT NOT NULL, 

);

--this table is the 'bridge' that contains on Primary key and to Foreign keys as references to the other two tables
CREATE TABLE moviedata.movies_actors(
	row_id INT IDENTITY (1,1) PRIMARY KEY,
	movie_id INT NOT NULL,
	FOREIGN KEY (movie_id) REFERENCES moviedata.movies (movie_id) ON DELETE CASCADE ON UPDATE CASCADE,
	actor_id INT NOT NULL,
	FOREIGN KEY (actor_id) REFERENCES moviedata.actors (actor_id) ON DELETE CASCADE ON UPDATE CASCADE
);
