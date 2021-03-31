1.
SELECT title FROM books
JOIN authors ON books.authorId = authors.id
WHERE authors.name like 'Lutz%Mark'
2.
SELECT title FROM books
JOIN subjects ON books.subjectId = subjects.id
WHERE subjects.name = 'Childrens Books';

3. 
SELECT DISTINCT subjects.name FROM subjects
JOIN books ON books.subjectId = subjects.id
JOIN authors ON authors.id = books.authorId
WHERE authors.name LIKE 'Lutz%Mark';


4. 
SELECT DISTINCT authors.name
FROM authors
JOIN books ON authors.id = books.authorId
JOIN subjects ON subjects.id = books.subjectId
WHERE subjects.name LIKE '%Science%';

5.
SELECT books.title 
FROM books
JOIN authors ON books.authorId = authors.id 
WHERE authors.name = 'Hogarth Burne';

6.
SELECT authors.name
FROM authors
JOIN books ON authors.id = books.authorId
WHERE books.title = 'Little Women';

7. INSERT INTO authors(name)
   VALUES('Jason Ouyang');
8. 
 INSERT INTO books(title,authorId,subjectId)
   VALUES('Bob the Builder',10,5);
9.
UPDATE authors 
SET name = 'Stephen King'
WHERE id = 10;

10. 
SELECT subjects.name 
FROM subjects
JOIN books ON  subjects.id = books.subjectId
WHERE books.title = '2001: A Space Odyssey'; 

11.
SELECT books.title
FROM books
JOIN subjects ON subjects.id = books.subjectId
WHERE subjects.name  like 'Science%';