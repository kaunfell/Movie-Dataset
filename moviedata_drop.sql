
--drop tables, start with correct order
DROP TABLE IF EXISTS moviedata.movies_actors;
DROP TABLE IF EXISTS moviedata.movies;
DROP TABLE IF EXISTS moviedata.actors;

--finally drop schema
DROP SCHEMA IF EXISTS moviedata;