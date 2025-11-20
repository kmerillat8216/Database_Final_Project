sql

CREATE TABLE player (
	player_id integer auto_increment PRIMARY KEY,
	name varChar,
  	position_id varChar FOREIGN KEY,
 	year varChar,
  	height varChar,
 	weight integer,
  	number integer
)ENGINE=InnoDB;

CREATE TABLE game (
	game_id integer auto_increment PRIMARY KEY,
	date DATE,
	result ENUM('W', 'L'),
	home_score integer,
	away_score integer,
	opponent varChar,
	location varChar
)ENGINE=InnoDB;


