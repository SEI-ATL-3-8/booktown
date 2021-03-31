-- 1.get all books by mark lutz

SELECT books.title FROM
authors JOIN books ON authors.id=books.authorid
WHERE authors.name ILIKE '%mark%';


-- 2.get all books in the childrens books subject

SELECT books.title FROM
subjects JOIN books ON subjects.id = books.subjectId
WHERE subjects.name ='Childrens Books';


-- 3.get all subjects that a given author has written on

SELECT subjects.name FROM
authors JOIN books ON authors.id = books.authorId
JOIN subjects ON books.subjectId=subjects.id
WHERE authors.name ='Herbert	Frank';


-- 4.get all authors that have written books on a given subject

SELECT authors.name FROM
subjects JOIN books ON subjects.id = books.subjectId
JOIN authors ON authors.id = books.authorId
WHERE subjects.name ='Classics';

-- 5.get all books by Hogarth Burne
SELECT books.title FROM
authors JOIN books ON authors.id=books.authorId
WHERE authors.name ='Hogarth	Burne';

-- -> Hogarth Burne's id is 8, he doesnt have any books

-- 6.get the author of Little Women

SELECT authors.name FROM
authors JOIN books ON authors.id = books.authorId
WHERE books.title ='Little Women';

-- 7.Add yourself as a new author

INSERT INTO authors (name)
VALUES ('Chul');
-- id:10

-- 8.Add a new book by yourself and to any subject of your choosing

INSERT INTO books (title, authorId, subjectId) VALUES
('Chul''s angels', 10, 10)



-- 9.Now find that book authored by yourself and change it's author to King Stephen

UPDATE books 
SET authorId=(SELECT id FROM authors WHERE name = 'King	Stephen')
WHERE authorId = 10

-- 10.Get the subject of the 2001 Space Oddyssey

SELECT subjects.name FROM
subjects JOIN books ON subjects.id = books.subjectId
WHERE books.title ='2001: A Space Odyssey';



-- 11.Get any book that starts has Science in it's subject

SELECT books.title FROM
subjects JOIN books ON subjects.id = books.subjectId
WHERE subjects.name ILIKE 'science%' 