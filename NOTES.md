# Notes

## What the chat would change about my drawing
1. Rename Characters to Roles.
Each row isn’t a character. It’s one actor playing one part in one movie. Bruce Wayne appears three times and Rachel Dawes is played by two different actors, and both are correct under “one row per performance.” The name “Characters” suggests one row per character, which would make those duplicates look like mistakes. “Roles” matches what the table actually holds.
2. Don’t split characters into their own table.
You could argue Bruce Wayne should be stored once and linked to three roles. None of the four stories needs that, and it would add a table and a join for no visible benefit. Keep character_name as text on Roles.
3. Add a billing order to Roles.
“Top cast” is an ordered list: Bale first, then Ledger, and so on. With nothing recording that order, the report will come back in whatever order the database chooses. Add something like billing_order (1–5) and sort the Top Cast report by movie, then by billing_order.
4. Mark which end of each line is “many.”
Your lines show that tables connect but not how. Add crow’s feet, or write 1 and many on the ends:
one studio → many movies
one movie → many roles
one actor → many roles
5. Make the naming consistent.
Table names: you mix singular (Movie, Studio) and plural (Actors, Characters). This is a Rails app, and Rails expects plural, lowercase names: studios, movies, actors, roles.
Primary keys: use plain id in every table, not movie_id inside movies.
Columns: drop the repeated prefix, so movies.title instead of movies.movie_title.
Links: keep studio_id, movie_id, actor_id as the column names that point to other tables. You already do this.
6. Required fields.
Movie title, actor name, studio name, and character name should never be empty, so mark them NOT NULL. Store the year as a number and the rating as text, since “PG-13” isn’t a number.
Things I’d leave alone: a separate ratings table, splitting actor names into first and last, and a guests table. None of these serve the stories, and the README already rules out the last one.
The revised model:
studios: id, name
movies: id, title, year, rating, studio_id → studios
actors: id, name
roles: id, movie_id → movies, actor_id → actors, character_name, billing_order


## What I took, what I didn't, and why
1. I accepted the suggestion to change "Characters" to "Roles" as it more accurately reflects that a character can be played by different actors in different films.
2. I accepted the suggestion because it keeps my original structure; it is not a change.
3. I accepted the suggestion as my original erd did not meet this acceptance criteria/user story and adding billing order fulfills it.
4. I accepted this suggestion as it is an addition of detail of the relationships amongst the tables that I did not have previously indicated.
5. I accepted this change. Although ERDs are meant to have singular names for the domains, the tables should have plural names, so I accepted this change to plural names for the generation of the "Create Tables" sql by the AI chat.
6. These are not changes but rather specifications.

## The chat

https://claude.ai/share/083eef3e-6ffe-4b90-8242-957c72230545