-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

-- First step create the database
CREATE DATABASE tournament;

--Next step enter the database
\c tournament;

--Next we need to create out tables
--Player
----ID
----name
----Totalwins
CREATE TABLE player (
id SERIAL,
name text,
totalWins int,
PRIMARY KEY(id)
);

--Matches
----ID
----player1
----player2
----winner

CREATE TABLE matches (
id SERIAL,
player1 int references player(id),
player2 int references player(id),
winner int references player(id),
PRIMARY KEY(id)
);