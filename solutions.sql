-- 1. get all books by mark lutz
SELECT books.title FROM
authors JOIN books ON authors.id = books.authorId
WHERE authors.name ILIKE '%mark%';
       title
--------------------
 Programming Python
 Learning Python


-- 2. get all books in the childrens books subject
SELECT books.title
FROM books JOIN subjects ON books.subjectId = subjects.id
WHERE subjects.name ILIKE '%children%';
        title
----------------------
 Franklin in the Dark
 Goodnight Moon


-- 3. get all subjects that a given author has written on
SELECT subjects.name
FROM books JOIN authors ON books.id = authors.id
JOIN subjects ON books.subjectId = subjects.id
WHERE authors.name ILIKE '%may%';
 name
-------
 Drama


-- 4. get all authors that have written books on a given subject
SELECT authors.name
FROM authors JOIN books ON authors.id = books.authorId
JOIN subjects ON subjects.id = books.subjectId
WHERE subjects.name ILIKE '%drama%';
      name
--------------------
 Alcott  Louisa May
 

-- 5. get all books by Hogarth Burne
SELECT books.title
FROM authors JOIN books ON authors.id = books.authorId
--JOIN subjects ON subjects.id = books.subjectId
WHERE authors.name ILIKE '%may%';
-- no books under Hogarth Burns - books my Alcott
    title
--------------
 Little Women


-- 6. get the author of Little Women
SELECT authors.name
FROM authors JOIN books ON authors.id = books.authorId
WHERE books.title ILIKE '%little%';
        name
--------------------
 Alcott  Louisa May


-- 7. Add yourself as a new author
INSERT INTO authors (name)
VALUES ('Samantha Jo Blum');
INSERT 0 1


-- 8. Add a new book by yourself and to any subject of your choosing
INSERT INTO books (title, subjectId, authorId)
VALUES ('Somehow I Manage', (SELECT id FROM authors WHERE name = 'Samantha Jo Blum'), 7);


-- 9. Now find that book authored by yourself and change it's author to King Stephen
UPDATE books SETS authorId = (SELECT id FROM authors WHERE name = 'King Stephen')
WHERE title = 'Somehow I Manage';


-- 10. Get the subject of the 2001 Space Oddyssey
SELECT subjects.name 
FROM books JOIN subjects ON books.subjectId = subjects.id
WHERE books.title = '2001: A Space Odyssey';
      name
-----------------
 Science Fiction


-- 11. Get any book that starts has Science in it's subject
SELECT books.title
FROM books JOIN subjects ON books.subjectId = subjects.id
WHERE subjects.name ILIKE '%science%';
         title
-----------------------
 Dune
 2001: A Space Odyssey