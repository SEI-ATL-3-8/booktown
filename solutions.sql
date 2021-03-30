-- get all books by mark lutz
SELECT books.title FROM books JOIN authors ON (books.authorId = authors.id) WHERE authors.name ILIKE '%mark%';

-- get all books in the childrens books subject
SELECT title FROM books JOIN subjects ON (books.subjectId = subjects.id) WHERE subjects.name = 'Childrens Books';

-- get all subjects that a given author has written on
SELECT subjects.name FROM authors JOIN books ON (authors.id = books.authorId) JOIN subjects ON (books.subjectId = subjects.id) WHERE authors.name = 'King	Stephen';

-- get all authors that have written books on a given subject
SELECT authors.name FROM subjects JOIN books ON (subjects.id = books.subjectId) JOIN authors ON (books.authorId = authors.id) WHERE subjects.name = 'Horror';

-- get all books by Hogarth Burne
SELECT books.title FROM books JOIN authors ON (books.authorId = authors.id) WHERE authors.name = 'King	Stephen';

-- get the author of Little Women
SELECT authors.name FROM books JOIN authors ON (books.authorId = authors.id) WHERE books.title = 'Little Women';

-- Add yourself as a new author
INSERT INTO authors (name) VALUES ('Brianna');

-- Add a new book by yourself and to any subject of your choosing
INSERT INTO books (title, authorId, subjectId) VALUES ('The Bri Bible', (SELECT id FROM authors WHERE name = 'Brianna'), 9);

-- Now find that book authored by yourself and change it's author to King Stephen
UPDATE books SET authorId = (SELECT id FROM authors WHERE name = 'King	Stephen') WHERE title = 'The Bri Bible';

-- Get the subject of the 2001 Space Oddyssey
SELECT subjects.name FROM books JOIN subjects ON (books.subjectId = subjects.id) WHERE books.title = '2001: A Space Odyssey';


-- Get any book that starts has Science in it's subject
SELECT books.title FROM books JOIN subjects ON (books.subjectId = subjects.id) WHERE subjects.name ILIKE '%science%';

