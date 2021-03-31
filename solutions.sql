1. get all books by mark lutz

SELECT title FROM books 
JOIN authors ON authors.id = books.authorid
WHERE authors.id = 9;

1. get all books in the childrens books subject

SELECT title FROM books 
JOIN subjects ON subjects.id = books.subjectid
WHERE subjects.name = 'Childrens Books';

1. get all subjects that a given author has written on

SELECT subjects.name FROM subjects 
JOIN books ON books.subjectid = subjects.id
JOIN authors ON authors.id = books.authorid
WHERE authors.id = 9;

1. get all authors that have written books on a given subject

SELECT authors.name FROM authors 
JOIN books ON books.authorid = authors.id
JOIN subjects ON subjects.id = books.subjectid
WHERE subjects.name = 'Childrens Books';

1. get all books by Hogarth Burne

SELECT title FROM books 
JOIN authors ON authors.id = books.authorid
WHERE authors.id = 8;

1. get the author of Little Women

SELECT authors.name FROM authors
JOIN books ON authors.id = books.authorid
WHERE books.title = 'Little Women';

1. Add yourself as a new author

INSERT INTO authors (name)
VALUES ('Anel Tuyebayeva');

1. Add a new book by yourself and to any subject of your choosing

INSERT INTO books (title, authorId, subjectId) 
VALUES ('Gullivers Travels', 10, 2);

1. Now find that book authored by yourself and change it's author to King Stephen

UPDATE books
SET authorid = (SELECT id FROM authors WHERE authors.id = 9)
WHERE books.title = 'Gullivers Travels';


1. Get the subject of the 2001 Space Oddyssey

SELECT subjects.name FROM subjects
JOIN books ON subjects.id = books.subjectid
WHERE books.title = '2001: A Space Odyssey';

1. Get any book that starts has Science in it's subject

SELECT books.title FROM books
JOIN subjects ON subjects.id = books.subjectid
WHERE subjects.name = 'Science';