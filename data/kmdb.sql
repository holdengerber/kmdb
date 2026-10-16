-- KMDB's rows, as INSERT statements: everything in README.md's data.
-- Only rows here. The tables (CREATE TABLE) go in schema/kmdb.sql.
--
-- bin/load runs this file after schema/kmdb.sql, so every table it inserts into must exist
-- there. Foreign keys can be typed-in ids (studio_id 1, and so on).
INSERT INTO studios (id, name) VALUES
  (1, 'Warner Bros.');

INSERT INTO movies (id, title, year, rating, studio_id) VALUES
  (1, 'Batman Begins',         2005, 'PG-13', 1),
  (2, 'The Dark Knight',       2008, 'PG-13', 1),
  (3, 'The Dark Knight Rises', 2012, 'PG-13', 1);

INSERT INTO actors (id, name) VALUES
  (1,  'Christian Bale'),
  (2,  'Michael Caine'),
  (3,  'Liam Neeson'),
  (4,  'Katie Holmes'),
  (5,  'Gary Oldman'),
  (6,  'Heath Ledger'),
  (7,  'Aaron Eckhart'),
  (8,  'Maggie Gyllenhaal'),
  (9,  'Tom Hardy'),
  (10, 'Joseph Gordon-Levitt'),
  (11, 'Anne Hathaway'),
  (12, 'Cillian Murphy');

INSERT INTO roles (movie_id, actor_id, character_name, billing_order, spoiler) VALUES
  (1, 1,  'Bruce Wayne',          1, 0),
  (1, 2,  'Alfred',               2, 0),
  (1, 3,  'Ra''s Al Ghul',        3, 1),
  (1, 4,  'Rachel Dawes',         4, 0),
  (1, 5,  'Commissioner Gordon',  5, 0),
  (1, 12, 'Scarecrow',            6, 0),

  (2, 1,  'Bruce Wayne',          1, 0),
  (2, 6,  'Joker',                2, 0),
  (2, 7,  'Harvey Dent',          3, 0),
  (2, 2,  'Alfred',               4, 0),
  (2, 8,  'Rachel Dawes',         5, 0),
  (2, 12, 'Scarecrow',            6, 0),

  (3, 1,  'Bruce Wayne',          1, 0),
  (3, 5,  'Commissioner Gordon',  2, 0),
  (3, 9,  'Bane',                 3, 0),
  (3, 10, 'John Blake',           4, 0),
  (3, 11, 'Selina Kyle',          5, 0),
  (3, 12, 'Scarecrow',            6, 1);