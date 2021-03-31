--1. get all books by mark lutz

SELECT books.title FROM
authors JOIN books ON authors.id = books.authorid
WHERE authors.id = 9;

--1. get all books in the childrens books subject

SELECT books.title FROM
subjects JOIN books ON subjects.id = books.subjectId
WHERE books.subjectId = (SELECT id FROM subjects WHERE name = 'Childrens Books');

--1. get all subjects that a given author (I choose Arthur C. Clarke) has written on

SELECT subjects.name FROM
subjects JOIN books ON subjects.id = books.subjectId JOIN authors ON books.authorid = authors.id
WHERE authors.id = 3;

--1. get all authors that have written books on a given subject (I choose Science Fiction)

SELECT authors.name FROM
authors JOIN books ON authors.id = books.authorid JOIN subjects ON subjects.id = books.subjectId
WHERE subjects.id = 15;

--1. get all books by Hogarth Burne

SELECT books.title FROM
books JOIN authors ON authors.id = books.authorid
WHERE authors.id = 8;

--1. get the author of Little Women

SELECT authors.name FROM
authors JOIN books ON authors.id = books.authorid
WHERE books.title = 'Little Women';

--1. Add yourself as a new author

INSERT INTO authors
(name)
VALUES
('Elias Ramirez');


