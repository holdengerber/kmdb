SELECT movies.title, actors.name, roles.character_name
FROM roles
JOIN movies ON movies.id = roles.movie_id
JOIN actors ON actors.id = roles.actor_id
WHERE roles.spoiler = 0
ORDER BY movies.year, roles.billing_order;