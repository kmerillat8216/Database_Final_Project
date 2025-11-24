Query #1

```sql
SELECT * FROM player;
ORDER BY position_id ASC, name ASC;
```

Query #2

```sql
SELECT
(rushing_yards + receiving_yards + passing_yards) AS total_yards
FROM player_game_stats;
```

Query #3

```sql
SELECT 
    name,
    MID(name, 1, 3) AS first_three_letters
FROM player;
```

Query #4

```sql
SELECT 
    p.name,
    SUM(s.touchdowns) AS total_tds
FROM player_game_stats
GROUP BY p.player_id
HAVING total_tds > 3;
```

Query #5

```sql
SELECT 
    g.date,
    g.opponent,
    p.name,
    s.rushing_yards
FROM player_game_stats s
JOIN player p ON s.player_id = p.player_id
JOIN game g ON s.game_id = g.game_id
ORDER BY g.date, p.name;
```

Query #6

```sql
SELECT
    p.name,
    p.position_id,
    pos.description
FROM position pos
LEFT JOIN player p ON p.position_id = pos.position_id;
```

Query #7

```sql
UPDATE player
SET weight = 225
WHERE name = "Quishon Judkins";
```

Query #8

```sql
DELETE FROM player_game_stats
WHERE player_id = 3 AND game_id = 1;
```

Query #9

```sql
CREATE VIEW offensive_totals AS
SELECT 
    p.player_id,
    p.name,
    SUM(s.rushing_yards) AS total_rush,
    SUM(s.receiving_yards) AS total_receive,
    SUM(s.passing_yards) AS total_pass,
    SUM(s.touchdowns) AS total_tds
FROM player_game_stats s
JOIN player p ON s.player_id = p.player_id
GROUP BY p.player_id;

SELECT * FROM offensive_totals
ORDER BY total_tds DESC;
```

Query #10

```sql
START TRANSACTION;

UPDATE player_game_stats
SET rushing_yards = rushing_yards + 20
WHERE player_id = 3 AND game_id = 2;

ROLLBACK;
```
