SELECT title FROM
books JOIN authors ON books.authorId = authors.id
WHERE name = 'Lutz  Mark';
----

SELECT title FROM
books JOIN subjects ON books.subjectid = subjects.id
WHERE name='Childrens Books';
----

SELECT subjects.name FROM
subjects JOIN books ON subjects.id = books.subjectid JOIN authors ON books.authorID = authors.id
WHERE author.name ='Lutz   Mark';
----

SELECT authors.name FROM
authors JOIN books ON authors.id = books.id JOIN subjects ON subjects.id = books.subjectid
WHERE subjects.name='Drama';
----

SELECT title FROM
books JOIN authors ON books.authorid = authors.id
WHERE authors.name='Hogarth	Burne';
----

SELECT authors.name FROM
authors JOIN books ON authors.id = books.authorid
WHERE title = 'Little Women';
----

INSERT INTO authors (name) VALUES ('Mason Bush');
----

INSERT INTO books (title, subjectid, authorid) VALUES ('The Lightning Thief', 10, 10);
----

UPDATE books SET authorid=(SELECT id FROM authors WHERE name='King  Stephen') 
WHERE authorid=(SELECT id FROM authors WHERE name='Mason Bush');
----

SELECT subjects.name FROM
subjects JOIN books ON subjects.id = books.subjectid
WHERE books.title='2001: A Space Odyssey';
----

SELECT title FROM
books JOIN subjects ON books.subjectid = subjects.id
WHERE subjects.name LIKE 'Science%';