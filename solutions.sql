-- 1
SELECT title
FROM books
    JOIN authors ON books.authorId = authors.Id
WHERE authors.name LIKE 'Lutz%Mark';
-- 2
SELECT title
FROM books
    JOIN subjects ON books.subjectId = subjects.id
WHERE subjects.name LIKE '%Children%';
-- 3
SELECT subjects.name
FROM subjects
    JOIN books ON subjects.id = books.subjectId
    JOIN authors ON books.authorID = authors.id
WHERE authors.name LIKE 'King%Stephen';
-- 4
SELECT authors.name
FROM authors
    JOIN books ON authors.id = books.authorId
    JOIN subjects ON subjects.id = books.subjectId
WHERE subjects.name = 'Drama';
-- 5
SELECT title
FROM books
    JOIN authors ON books.authorId = authors.Id
WHERE authors.name LIKE 'Hogart%Burne';
-- 6
SELECT authors.name
FROM authors
    JOIN books ON books.authorId = authors.Id
WHERE books.title = 'Little Women';
--7 
INSERT INTO authors
    (name)
VALUES
    ('Derek Ensign');

SELECT id
FROM authors
WHERE authors.name = 'Derek Ensign';

SELECT *
FROM subjects;

--8 
INSERT INTO books
    (title, subjectId, authorId)
VALUES
    ('Dark Matters', 15, 10);


SELECT id
FROM authors
WHERE authors.name = 'King  Stephen';

-- 9 
UPDATE books
SET authorId = 1 WHERE title = 'Dark Matters' AND authorId = 10;

-- 10 
SELECT subjects.name
FROM subjects
    JOIN books ON subjects.id = books.subjectid
WHERE books.title = '2001: A Space Odyssey';

-- 11
SELECT books.title
FROM books
    JOIN subjects ON books.subjectId = subjects.id
WHERE subjects.name LIKE '%Science%';