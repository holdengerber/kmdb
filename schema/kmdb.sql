-- KMDB's tables, as CREATE TABLE statements: one for each table in your drawing.
-- Only tables here. The rows (INSERT) go in data/kmdb.sql.
--
-- bin/load runs this file first, on an empty database, then data/kmdb.sql.
-- No DROP TABLE lines needed: bin/load starts from nothing every time.
CREATE TABLE studios (
  id   INTEGER PRIMARY KEY,
  name TEXT NOT NULL
);

CREATE TABLE movies (
  id        INTEGER PRIMARY KEY,
  title     TEXT    NOT NULL,
  year      INTEGER NOT NULL,
  rating    TEXT    NOT NULL,
  studio_id INTEGER NOT NULL REFERENCES studios (id)
);

CREATE TABLE actors (
  id   INTEGER PRIMARY KEY,
  name TEXT NOT NULL
);

CREATE TABLE roles (
  id             INTEGER PRIMARY KEY,
  movie_id       INTEGER NOT NULL REFERENCES movies (id),
  actor_id       INTEGER NOT NULL REFERENCES actors (id),
  character_name TEXT    NOT NULL,
  billing_order  INTEGER NOT NULL,
  UNIQUE (movie_id, billing_order)
);