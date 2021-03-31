-- 1. get all books by mark lutz

SELECT books.title 
FROM books JOIN authors ON books.authorid = authors.id 
WHERE authors.name LIKE '%Mark%';

-- 1. get all books in the childrens books subject

SELECT books.title 
FROM books JOIN subjects ON books.subjectid = subjects.id 
WHERE subjects.name = 'Childrens Books';

-- 1. get all subjects that a given author has written on

SELECT subjects.name 
FROM subjects JOIN books ON subjects.id = books.subjectid 
JOIN authors ON books.authorid = authors.id 
WHERE authors.name = 'LutzMark';

--  get all authors that have written books on a given subject

SELECT authors.name 
FROM authors JOIN books ON authors.id = books.authorid
JOIN subjects ON subjects.id = books.subjectid 
WHERE subjects.name = 'Computers';

-- 1. get all books by Hogarth Burne

SELECT books.title 
FROM books JOIN authors ON books.authorid = authors.id 
WHERE authors.name LIKE '%Burne%';

SELECT * FROM authors; - //Hogarth Burne has id = 8
SELECT * FROM books; - //doesnot have authorid = 8

-- 1. get the author of Little Women

SELECT authors.name 
FROM authors JOIN books ON authors.id = books.authorid
WHERE books.title = 'Little Women';

-- 1. Add yourself as a new author

INSERT INTO authors (name) 
VALUES ('Charlie Reyes');

-- 1. Add a new book by yourself and to any subject of your choosing

INSERT INTO books (title, authorid, subjectid) 
VALUES ('Thoughts and Prayers', 10, 11);

-- 1. Now find that book authored by yourself and change it's author to King Stephen

UPDATE books SET authorid = (SELECT id FROM authors WHERE name = 'KingStephen') 
WHERE title = 'Thoughts and Prayers';

-- 1. Get the subject of the 2001 Space Oddyssey

SELECT subjects.name 
FROM books JOIN subjects ON books.subjectid = subjects.id
WHERE books.title = '2001: A Space Odyssey';

-- 1. Get any book that starts has Science in it's subject

SELECT books.title 
FROM books JOIN subjects ON books.subjectid = subjects.id
WHERE subjects.name LIKE '%Science%';