Tackle the questions below and record the queries for each problem in the solutions file.

 get all books by mark lutz

SSELECT title
FROM books
WHERE authorId = (SELECT id FROM authors WHERE name LIKE '%Mark%');
       title
--------------------
 Programming Python
 Learning Python

 et all books in the childrens books subject

SELECT title, name
FROM books JOIN subjects
ON books.id = subjects.id
WHERE subjects.name = 'Childrens Books';
 title |      name
-------+-----------------
 Dune  | Childrens Books

get all subjects that a given author has written on

SELECT authors.name, subjects.name
FROM authors JOIN subjects
ON subjects.id = authors.id
ORDER BY authors.name ASC;

  name           |      name
--------------------------+-----------------
 Alcott  Louisa May       | Drama
 Bianco  Margery Williams | Entertainment
 Bourgeois       Paulette | Computers
 Brown   Margaret Wise    | Cooking
 Clarke  Arthur C.        | Classics
 Herbert Frank            | Childrens Books
 Hogarth Burne            | History
 King    Stephen          | Business
 Lutz    Mark             | Horror



get all authors that have written books on a given subject

SELECT  subjects.name, authors.name
FROM authors JOIN subjects
ON subjects.id = authors.id
ORDER BY subjects.name ASC;
      name       |           name
-----------------+--------------------------
 Business        | King    Stephen
 Childrens Books | Herbert Frank
 Classics        | Clarke  Arthur C.
 Computers       | Bourgeois       Paulette
 Cooking         | Brown   Margaret Wise
 Drama           | Alcott  Louisa May
 Entertainment   | Bianco  Margery Williams
 History         | Hogarth Burne
 Horror          | Lutz    Mark

 get all books by Hogarth Burne

SELECT title
FROM books
WHERE authorId = (SELECT id FROM authors WHERE name LIKE '%Hogarth&');


 get the author of Little Women
 SELECT name
 FROM authors
 WHERE id =(SELECT authorId FROM books WHERE title LIKE '%Little%');
        name
--------------------
 Alcott  Louisa May


 Add yourself as a new author

 INSERT INTO authors(name)
 VALUES ('Sarah Elbostany');

 Add a new book by yourself and to any subject of your choosing

INSERT INTO books (title, subjectId, authorId)
 VALUES ('Sarahs book', 6 , 10);

 Now find that book authored by yourself and change its author to King Stephen
UPDATE books SET authorID = 1 WHERE title = 'Sarahs book';

 Get the subject of the 2001 Space Oddyssey
 SELECT name
 FROM subjects
 WHERE id =(SELECT subjectId FROM books WHERE title LIKE '%2001%');

   name
-----------------
 Science Fiction

 Get any book that starts has Science in its subject
SELECT title
FROM books
WHERE subjectId in (SELECT id FROM subjects WHERE name LIKE '%Science%');
