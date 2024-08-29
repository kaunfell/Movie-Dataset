--Select all the movie names we have on our database
--and give alias
SELECT movie_name AS 'Movies'
FROM moviedata.movies;


--Select all actor names with their ids
SELECT actor_name AS 'All actors',
	   actor_id AS 'ID'
FROM moviedata.actors;



--Select all actors that are starring Jurassic Park
--we have to connect all 3 tables 
SELECT actor_name AS 'Jurassic Park actors',
	   actors.actor_id AS 'Actor ID' 
FROM moviedata.actors
JOIN moviedata.movies_actors
ON actors.actor_id = movies_actors.actor_id
JOIN moviedata.movies 
ON movies_actors.movie_id = movies.movie_id
WHERE movie_name = 'Jurassic Park';


--All actors from Asteroid City
SELECT actor_name AS 'Asteroid City actors',
	   actors.actor_id AS 'Actor ID'
FROM moviedata.actors
JOIN moviedata.movies_actors
ON actors.actor_id = movies_actors.actor_id
JOIN moviedata.movies 
ON movies_actors.movie_id = movies.movie_id
WHERE movie_name = 'Asteroid City';

--All actors from Forrest Gump
SELECT actor_name AS 'Forrest Gump actors',
	   actors.actor_id AS 'Actor ID'
FROM moviedata.actors
JOIN moviedata.movies_actors
ON actors.actor_id = movies_actors.actor_id
JOIN moviedata.movies 
ON movies_actors.movie_id = movies.movie_id
WHERE movie_name = 'Forrest Gump';



--After viewing different movies we see that Tom Hanks and Jeff Goldblum appear at least in two movies
--Lets count the number of movies where Tom Hanks is
SELECT	actors.actor_name AS 'Actor Name',
		COUNT(*) AS 'Movies starred'
FROM moviedata.actors
JOIN moviedata.movies_actors
ON actors.actor_id = movies_actors.actor_id
JOIN moviedata.movies 
ON movies_actors.movie_id = movies.movie_id
WHERE actor_name = 'Tom Hanks'
OR actor_name = 'Jeff Goldblum'
GROUP BY actors.actor_name;


--lets get Hanks' and Goldbulm's individual ids again
SELECT actor_name AS 'Actor',
	   actor_id AS 'ID'
FROM moviedata.actors
WHERE actor_name = 'Tom Hanks' OR actor_name ='Jeff Goldblum'
--also this way to check multiple WHERE clauses
--WHERE actor_name IN ('Tom Hanks', 'Jeff Goldblum');


--Lets get all the movie names they are starring in
SELECT movies.movie_name AS 'Hanks/Goldblum movies',
	   actors.actor_id AS 'Actor id'
FROM moviedata.actors
JOIN moviedata.movies_actors
ON actors.actor_id = movies_actors.actor_id
JOIN moviedata.movies
ON movies_actors.movie_id = movies.movie_id
WHERE actor_name = 'Tom Hanks'
OR actor_name = 'Jeff Goldblum';