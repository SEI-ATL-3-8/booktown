1. get all books by mark lutz

SELECT books.title
FROM authors JOIN books
ON authors.id=books.authorId
WHERE authors.name='LutzMark';

2. get all books in the childrens books subject

SELECT books.title
FROM subjects JOIN books
ON subjects.id=books.subjectId
where subjects.name='Childrens Books';

3. get all subjects that a given author has written on

SELECT subjects.name
FROM subjects JOIN books
ON subjects.id=books.subjectId
JOIN authors
ON books.authorId=authors.id
WHERE authors.name = 'HerbertFrank';

4. get all authors that have written books on a given subject

SELECT authors.name
FROM authors JOIN books
ON authors.id=books.authorId
JOIN subjects
ON books.subjectId=subjects.id
WHERE subjects.name = 'Childrens Books';

5. get all books by Hogarth Burne

SELECT books.title
FROM authors JOIN books
ON authors.id=books.authorId
WHERE authors.name='HogarthBurne';

6. get the author of Little Women

SELECT authors.name
FROM authors JOIN books
ON authors.id=books.authorId
WHERE books.title='Little Women';

7. Add yourself as a new author

INSERT INTO authors (name)
VALUES ('Nick Link');

8. Add a new book by yourself and to any subject of your choosing

INSERT INTO books (title, subjectId, authorId)
VALUES ('Confronting Your Suffering', 13, 10);

9. Now find that book authored by yourself and change its 
author to King Stephen

UPDATE books 
SET authorId=1
WHERE title='Confronting Your Suffering';

10. Get the subject of the 2001 Space Oddyssey

SELECT subjects.name
FROM subjects JOIN books
ON subjects.id=books.subjectId
WHERE books.title='2001: A Space Odyssey';

11. Get any book that starts has Science in its subject

SELECT books.title
FROM subjects JOIN books
ON subjects.id=books.subjectId
WHERE subjects.name LIKE '%Science%';