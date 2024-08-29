--we use already defined database, like a 'container'
USE BikeStores;

--MOVIES table
--if we want to manually set the values for the INT IDENTITY, set this ON,
--but we have defined automatic num generating within the table creation

--SET IDENTITY_INSERT moviedata.movies ON;
INSERT INTO moviedata.movies (movie_name, movie_genre) VALUES ('Jurassic Park', 'Adventure');
INSERT INTO moviedata.movies (movie_name, movie_genre) VALUES ('Forrest Gump', 'Comdey-Drama');
INSERT INTO moviedata.movies (movie_name, movie_genre) VALUES ('V for Vendetta', 'Dystopian Sci-Fi');
INSERT INTO moviedata.movies (movie_name, movie_genre) VALUES ('Cast Away', 'Survival');
INSERT INTO moviedata.movies (movie_name, movie_genre) VALUES ('Asteroid City', 'Comedy');

--SET IDENTITY_INSERT moviedata.movies OFF;

--ACTORS table
INSERT INTO moviedata.actors (actor_name, birth_year) VALUES ('Sam Neill', 1947)
INSERT INTO moviedata.actors (actor_name, birth_year) VALUES ('Laura Dern', 1967)
INSERT INTO moviedata.actors (actor_name, birth_year) VALUES ('Jeff Goldblumb', 1952)

INSERT INTO moviedata.actors (actor_name, birth_year) VALUES ('Tom Hanks', 1956)
INSERT INTO moviedata.actors (actor_name, birth_year) VALUES ('Gary Sinise', 1955)

INSERT INTO moviedata.actors (actor_name, birth_year) VALUES ('Hugo Weaving', 1960)
INSERT INTO moviedata.actors (actor_name, birth_year) VALUES ('Natalie Portman', 1981)
INSERT INTO moviedata.actors (actor_name, birth_year) VALUES ('Scarlett Johansson', 1984)


-- MOVIES_ACTORS table as a bridge table/junction table that connects tables and values
--row_id is automated so we only have to write movie_id and actor_id which already
--have values upper. Movie_id has odd nums and actor_id even nums. Some actor_ids
--appear in many movies

--jurassic park
INSERT INTO moviedata.movies_actors (movie_id, actor_id) VALUES (1,2)
INSERT INTO moviedata.movies_actors (movie_id, actor_id) VALUES (1,4)
INSERT INTO moviedata.movies_actors (movie_id, actor_id) VALUES (1,6) --Jeff Goldblum has num 6
--forrest gump
INSERT INTO moviedata.movies_actors (movie_id, actor_id) VALUES (2,8) --Tom Hanks has number 8
INSERT INTO moviedata.movies_actors (movie_id, actor_id) VALUES (2,10)
--v for vendetta
INSERT INTO moviedata.movies_actors (movie_id, actor_id) VALUES (3,12)
INSERT INTO moviedata.movies_actors (movie_id, actor_id) VALUES (3,14)
--cast away
INSERT INTO moviedata.movies_actors (movie_id, actor_id) VALUES (4,8)--Tom Hanks has number 8
--asteroid city
INSERT INTO moviedata.movies_actors (movie_id, actor_id) VALUES (5,8) --Tom Hanks has number 8
INSERT INTO moviedata.movies_actors (movie_id, actor_id) VALUES (5,16)
INSERT INTO moviedata.movies_actors (movie_id, actor_id) VALUES (5,6) --Jeff Goldblum has num 6