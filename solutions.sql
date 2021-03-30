SELECT title FROM books JOIN authors ON(books.authorId=authors.id)WHERE authors.id =9

SELECT title FROM books JOIN authors ON(books.authorId=authors.id)WHERE authors.name ='Lutz Mark';

SELECT subjects.name From subjects JOIN books ON(subjects.id=books.subjectId) JOIN authors ON(books.authorId=authors.id)WHERE authors.id =9;

SELECT authors.name FROM authors JOIN books ON(authors.id=books.authorId) JOIN subjects ON(books.subjectId=subjects.id)WHERE subjects.name='Computers';

SELECT title FROM books JOIN authors ON(books.authorId=authors.id)Where authors.id =8;

SELECT name FROM authors JOIN books ON(authors.id=books.authorId)Where title='Little Women';

INSERT INTO authors (name) VALUES ('Grayson McClead');

INSERT INTO books (title, authorId, subjectId) VALUES ('Pain the Sql', 10, 4);

UPDATE books SET authorId =1 WHERE authorId = 10;

SELECT name FROM subjects JOIN books ON(subjects.id=books.subjectId) WHERE title='2001: A Space Odyssey';

SELECT title FROM books JOIN subjects ON(books.subjectId=subjects.id) WHERE subjects.name LIKE '%Science%';