```sql

CREATE TABLE player (
	player_id integer auto_increment PRIMARY KEY,
	name varChar(100),
	hometown varChar(100),
	position_id integer,
	year varChar(20),
	height varChar(10),
	weight integer,
	number integer,
	FOREIGN KEY (position_id) REFERENCES player_position(position_id)
)ENGINE=InnoDB;
```

```sql
CREATE TABLE game (
	game_id integer auto_increment PRIMARY KEY,
	date DATE,
	result ENUM('W', 'L'),
	home_score integer,
	away_score integer,
	opponent varChar(100),
	location varChar(100)
)ENGINE=InnoDB;
```

```sql
CREATE TABLE player_position (
	position_id integer auto_increment PRIMARY KEY,
	description varChar(50)
)ENGINE=InnoDB;
```

```sql
CREATE TABLE player_game_stats(
	player_id integer,
	game_id integer,
	rushing_yards integer,
	receiving_yards integer,
	passing_yards integer,
	touchdowns integer,
	played boolean,
	PRIMARY KEY (player_id, game_id),
	FOREIGN KEY (player_id) REFERENCES player(player_id),
	FOREIGN KEY (game_id) REFERENCES game(game_id)
)ENGINE=InnoDB;
```
