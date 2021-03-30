-- 1. get all books by mark lutz
SELECT books.title
FROM books JOIN authors ON books.authorId=authors.id
WHERE authors.name ILIKE '%mark%';
       title
--------------------
 Programming Python
 Learning Python
(2 rows)

-- 2. get all books in the childrens books subject
SELECT books.title
FROM books JOIN subjects ON subjects.id=books.subjectId
WHERE subjects.name ILIKE '%children%';
        title
----------------------
 Franklin in the Dark
 Goodnight Moon
(2 rows)

SELECT title
FROM books 
WHERE subjectID = (
    SELECT id
    FROM subjects
    WHERE name ILIKE '%children%'
);
        title
----------------------
 Franklin in the Dark
 Goodnight Moon
(2 rows)

-- 3. get all subjects that author Louisa May Alcott has written on
SELECT subjects.name
FROM subjects JOIN books ON subjects.id=books.subjectId
JOIN authors ON books.authorId=authors.id
WHERE authors.name ILIKE '%may%';
 name
-------
 Drama
(1 row)

-- 4. get all authors that have written books on the subject Horror
SELECT authors.name
FROM subjects JOIN books ON subjects.id=books.subjectId
JOIN authors ON books.authorId=authors.id
WHERE subjects.name ILIKE '%hor%';
      name
-----------------
 King    Stephen
(1 row)

-- 5. get all books by Bianco
SELECT books.title
FROM subjects JOIN books ON subjects.id=books.subjectId
JOIN authors ON books.authorId=authors.id
WHERE authors.name ILIKE '%bianco%';
        title
----------------------
 The Velveteen Rabbit
(1 row)

-- 6. get the author of Little Women
SELECT authors.name
FROM subjects JOIN books ON subjects.id=books.subjectId
JOIN authors ON books.authorId=authors.id
WHERE books.title = 'Little Women';
        name
--------------------
 Alcott  Louisa May
(1 row)

-- 7. Add yourself as a new author

INSERT INTO authors (name)
VALUES ('Sir Benford');
INSERT 0 1

-- 8. Add a new book by yourself and to any subject of your choosing

INSERT INTO books (title, subjectId, authorId)
VALUES ('How to Ride a Dragon', 4, (SELECT id FROM authors WHERE name LIKE '%Ben%'));
INSERT 0 1

-- 9. Now find that book authored by yourself and change it's author to King Stephen

UPDATE books
SET authorId = (
    SELECT id
    FROM authors
    WHERE name ILIKE '%ben%'
)
WHERE authorId = (
    SELECT id
    FROM authors
    WHERE name ILIKE '%king%'
);
UPDATE 1

-- 10. Get the subject of the 2001 Space Oddyssey
SELECT subjects.name
FROM subjects JOIN books ON subjects.id=books.subjectId
JOIN authors ON books.authorId=authors.id
WHERE books.title ILIKE '%2001%';
      name
-----------------
 Science Fiction
(1 row)

-- 11. Get any book that starts has Science in it's subject
SELECT books.title
FROM subjects JOIN books ON subjects.id=books.subjectId
WHERE subjects.name ILIKE 'science%';
         title
-----------------------
 Dune
 2001: A Space Odyssey
(2 rows)