PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;

CREATE TABLE bookmarks (
  id   integer primary key asc autoincrement,
  name string,
  url  string
);
INSERT INTO bookmarks VALUES( 1, 'Google', 'https://www.google.com' );

DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES( 'bookmarks', 1 );

COMMIT;
