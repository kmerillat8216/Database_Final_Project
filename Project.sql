sql

CREATE TABLE player (
	player_id integer auto_increment PRIMARY KEY,
	name varChar(100),
  	position_id integer FOREIGN KEY,
 	year varChar(20),
  	height varChar(10),
 	weight integer,
  	number integer
)ENGINE=InnoDB;

CREATE TABLE game (
	game_id integer auto_increment PRIMARY KEY,
	date DATE,
	result ENUM('W', 'L'),
	home_score integer,
	away_score integer,
	opponent varChar(100),
	location varChar(100)
)ENGINE=InnoDB;

CREATE TABLE position (
	position_id integer PRIMARY KEY,
	description varChar(50)
)ENGINE=InnoDB;

CREATE TABLE player_game_stats(
	player_id integer,
	game_id integer,
	rushing_yards integer,
	receiving_yards integer,
	passing_yards integer,
	touchdowns integer,
	played boolean
)ENGINE=InnoDB;
