get all books by mark lutz
SELECT books.title FROM 
books JOIN authors ON authors.id = books.authorId
WHERE authors.name ILIKE '%Mark%';

get all books in the childrens books subject
SELECT books.title
FROM 
books JOIN subjects ON books.subjectId = subjects.id
WHERE subjects.name ILIKE '%childrens%'

get all subjects that a given author has written on
SELECT subjects.name
FROM subjects JOIN books ON subjects.id = books.subjectId
JOIN authors ON books.authorId = authors.id
WHERE authors.name ILIKE '%Stephen%';

get all authors that have written books on a given
SELECT authors.name
FROM subjects JOIN books ON subjects.id = books.subjectId
JOIN authors ON books.authorId = authors.id
WHERE subjects.name ILIKE '%horror%'

 subject
get all books by Hogarth Burne
SELECT books.title
FROM subjects JOIN books ON subjects.id = books.subjectId
JOIN authors ON books.authorId = authors.id
WHERE authors.name ILIKE '%Hogarth%'

get the author of Little Women
SELECT authors.name
FROM subjects JOIN books ON subjects.id = books.subjectId
JOIN authors ON books.authorId = authors.id
WHERE books.title ILIKE '%little%'

Add yourself as a new author

INSERT INTO authors (name) VALUES ('Sovan Hong') 

Add a new book by yourself and to any subject of your choosing

INSERT INTO books (title) VALUES ('The Never Ending Story');
INSERT INTO subjects (name) VALUES ('Fantasy');

Now find that book authored by yourself and change it's author to King Stephen

UPDATE books SET authorId = SELECT id FROM authors WHERE name = 'King Stephen' WHERE title = 'The Never Ending Story'; 

Get the subject of the 2001 Space Oddyssey

SELECT subjects.name
FROM subjects JOIN books ON subjects.id = books.subjectId
WHERE books.title ILIKE '%Space%'

Get any book that starts has Science in it's subject
SELECT books.title
FROM subjects JOIN books ON subjects.id = books.subjectId
JOIN authors ON books.authorId = authors.id
WHERE subjects.name ILIKE '%science%'