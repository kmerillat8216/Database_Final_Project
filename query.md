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
SELECT * FROM table1;
```

Query #6

```sql
SELECT * FROM table1;
```

Query #7

```sql
SELECT * FROM table1;
```

Query #8

```sql
SELECT * FROM table1;
```

Query #2

```sql
SELECT * FROM table1;
```

Query #10

```sql
SELECT * FROM table1;
```
