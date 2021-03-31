Step 1
CREATE DATABASE books;
Step2
\c books;
Step3
\i /Users/jisuyeo/Documents/ga/homworks/booktown/seed.sql
\i /Users/jisuyeo/Documents/ga/homworks/booktown/schema.sql
id |           name
----+--------------------------
  1 | King    Stephen
  2 | Herbert Frank
  3 | Clarke  Arthur C.
  4 | Bourgeois       Paulette
  5 | Brown   Margaret Wise
  6 | Alcott  Louisa May
  7 | Bianco  Margery Williams
  8 | Hogarth Burne
  9 | Lutz    Mark

Q1
SELECT books.title FROM 
books JOIN authors ON books.authorId = authors.id
WHERE authors.name ='Lutz	Mark';
Q2
SELECT books.title FROM
books JOIN subjects ON books.subjectId = subjects.id
WHERE subjects.name = 'Childrens Books';
Q3
-- SELECT subjects.name FROM 
-- books JOIN subjects ON books.subjectId = subjects.id
-- WHERE books.subjectId = _;
Q4
-- 
Q5
books-# ;
 id |         title         | subjectid | authorid
----+-----------------------+-----------+----------
  1 | The Shining           |         9 |        1
  2 | Dune                  |        15 |        2
  3 | 2001: A Space Odyssey |        15 |        3
  4 | Franklin in the Dark  |         2 |        4
  5 | Goodnight Moon        |         2 |        5
  6 | Little Women          |         6 |        6
  7 | The Velveteen Rabbit  |         3 |        7
  8 | Programming Python    |         4 |        9
  9 | Learning Python       |         4 |        9
(9 rows)
SELECT books.title FROM 
books JOIN authors ON books.authorId = authors.id
WHERE authors.id = 8;
-- No books from Hogarth Burne
Q6
SELECT authors.name FROM
books JOIN authors ON books.authorId=authors.id
WHERE books.title = 'Little Women';
Q7
INSERT INTO authors
(name)
VALUES
('Jisu Yeo');
Q8
INSERT INTO books
(title,subjectId,authorId)
VALUES
('JingleJingle Bell',15,10);
Q9
SELECT * FROM authors;
--King Stephen id = 1
--Jingle Jingle bell id =10
UPDATE books
SET authorId = 1
WHERE id =10;
Q10
SELECT subjects.name FROM
books JOIN subjects ON books.subjectId = subjects.id
WHERE books.title ='2001: A Space Odyssey';
Q11
SELECT books.title, subjects.name FROM
books JOIN subjects ON books.subjectId = subjects.id
WHERE subjects.name ILIKE 'science%';

 SELECT books.title FROM
books JOIN subjects ON books.subjectId = subjects.id WHERE subjects.id =14;
-- THere is NO books with Science Subject. So, It only show the Science Fiction.