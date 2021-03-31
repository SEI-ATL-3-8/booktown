-- get all books by mark lutz

select title from books
join authors on books.authorId = authors.id
where authors.name ILIKE '%Lutz%';

       title        
--------------------
 Programming Python
 Learning Python

-- get all books in the childrens books subject

select title, subjects.name from books
join subjects on subjects.id = books.subjectId
where subjects.name ILIKE '%children%';

        title         |      name       
----------------------+-----------------
 Franklin in the Dark | Childrens Books
 Goodnight Moon       | Childrens Books

-- get all subjects that a given author has written on

select subjects.name as subject, authors.name as author from subjects
join books on subjects.id = books.subjectId
join authors on books.authorId = authors.id
where authors.name ILIKE '%Herbert%';

     subject     |    author     
-----------------+---------------
 Science Fiction | Herbert Frank

-- get all authors that have written books on a given subject

select subjects.name as subject, authors.name as author from subjects
join books on subjects.id = books.subjectId
join authors on books.authorId = authors.id
where subjects.name = 'Science Fiction';

     subject     |      author       
-----------------+-------------------
 Science Fiction | Herbert Frank
 Science Fiction | Clarke  Arthur C.


-- get all books by Hogarth Burne

select authors.name as Author, books.title as Book 
from books
join authors on authors.id = books.authorId
where authors.name ILIKE '%Hogarth%Burne%';

 author | book 
--------+------
(0 rows)

-- get the author of Little Women

select authors.name as Author, books.title as Book 
from books
join authors on authors.id = books.authorId
where books.title ILIKE '%Little%Women%';

       author       |     book     
--------------------+--------------
 Alcott  Louisa May | Little Women


-- Add yourself as a new author

INSERT INTO authors (name)
VALUES ('Derek Ensign');

-- Add a new book by yourself and to any subject of your choosing

INSERT INTO books (title, subjectId, authorId)
VALUES ('Dark Matters', 15, 10);

-- Now find that book authored by yourself and change it's author to King Stephen

UPDATE books SET authorId = 1 WHERE authorId = 10;

-- Get the subject of the 2001 Space Oddyssey

select subjects.name as subject, books.title as Title from subjects
join books on subjects.id = books.subjectId
where books.title ILIKE '2001%Space%Odyssey';

     subject     |         title         
-----------------+-----------------------
 Science Fiction | 2001: A Space Odyssey

-- Get any book that starts has Science in it's subject

select subjects.name as subject, books.title as Title from subjects
join books on subjects.id = books.subjectId
where subjects.name ILIKE '%Science%';

     subject     |         title         
-----------------+-----------------------
 Science Fiction | Dune
 Science Fiction | 2001: A Space Odyssey
 Science Fiction | Dark Matters