1. get all books by mark lutz
SELECT books.title FROM books JOIN authors ON books.authorID=authors.id WHERE authors.name ILike '%mark%';
1. get all books in the childrens books subject
SELECT books.title FROM books JOIN subjects ON subjects.id=books.subjectId WHERE subjects.name ILIKE '%children%';

SELECT title
FROM books
WHERE subjectID = (
  SELECT id
  FROM subjects 
  WHERE name ILIKE '%children%'
);

Franklin in the Dark
 Goodnight Moon

1. get all subjects that a given author has written on
  
SELECT authors
FROM subjects
WHERE 

SELECT authors.name
FROM subjects JOIN books ON subjects.id=books.subjectId
JOIN authors ON books.authorId=authors.id
WHERE subjects.name ILIKE '%hor%';

King    Stephen
(1 row)

1. get all authors that have written books on a given subject
SELECT authors.name
FROM sujects JOIN books ON subjects.id=books.subjectId
JOIN authors ON books.authorId=authors.id
WHERE subjects.name ILIKE '%Drama%';
1. get all books by Hogarth Burne

SELECT books.title FROM books JOIN authors ON (books.authorId = authors.id)
WHERE authors.name = 'Frank Herbert';

1. get the author of Little Women
  
  SELECT authors.name
  FROM books JOIN authors ON subjects.id=books.subjectId
  JOIN authors ON books.authorId=authors.id
  WHERE books.title = 'Litle Women';


1. Add yourself as a new author

INSERT INTO authors (name) VALUES ('Gregory');
1. Add a new book by yourself and to any subject of your choosing
INSERT books (title, authorId, subjectId) VALUES ('Girls Fun and Jazz', SELECT id FROM authors WHERE name = 'Gregory');
1. Now find that book authored by yourself and change it's author to King Stephen
1. Get the subject of the 2001 Space Oddyssey

SELECT subjects.name FROM books JOIN subjects ON (books.subjectId = subjects.id) WHERE books.title = '2001: A Space Odyssey';

'2001: A Space Odyssey';
      name
-----------------
 Science Fiction

1. Get any book that starts has Science in it's subject
SELECT books.title FROM books JOIN subjects ON (books.subjectId = subjects.id) WHERE subjects.name ILIKE '%science%';
Dune
 2001: A Space Odyssey