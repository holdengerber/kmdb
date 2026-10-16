-- Q: Top Cast: each movie, and each actor in it with the character they play
--
-- One SELECT, under these comments. It needs more than one table. The Queries page runs it
-- on every refresh; compare what it shows with the top casts in README.md's data: every
-- part, once. The order and the column headings don't matter.
SELECT movies.title, actors.name, roles.character_name
FROM roles
JOIN movies ON movies.id = roles.movie_id
JOIN actors ON actors.id = roles.actor_id
ORDER BY movies.year, roles.billing_order;