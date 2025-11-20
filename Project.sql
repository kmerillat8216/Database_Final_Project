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


