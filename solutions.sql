1.
select books.title from
books join authors on authors.id = books.authorid
where authors.name = 'Lutz	Mark';

2.
select books.title from
books join subjects on subjects.id = books.subjectid
where subjects.name = 'Childrens Books';

3.
select subjects.name from 
books join subjects on subjects.id = books.subjectid
join authors on books.authorid = authors.id
where authors.name = 'Lutz	Mark';

4.
select authors.name from 
authors join books on books.authorid = authors.id 
join subjects on subjects.id = books.subjectid
where subjects.name = 'Science Fiction';

5.
select books.title from
books join authors on authors.id = books.authorid
where authors.name = 'Hogarth	Burne'

6.
select authors.name from
authors join books on authors.id = books.authorid
where books.title = 'Little Women';

7.
insert into authors (name) values ('Linn Noah');

8.
INSERT INTO books (title, authorId, subjectId) 
VALUES ('Noahs Scientific Book Of Hell', 10, 14);

9.
UPDATE authors
set name = 'King	Stephen' 
from books 
where authors.id = books.authorid
AND books.title = 'Noahs Scientific Book Of Hell';

UPDATE authors 

10.
select subjects.name from
subjects join books on subjects.id = books.subjectid
where books.title = '2001: A Space Odyssey';

11. 
select books.title from 
books join subjects on subjects.id = books.subjectid
where subjects.name like 'Science%';