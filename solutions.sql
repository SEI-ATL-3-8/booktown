1. select distinct title from books join authors on authorId = authors.id where authors.name = 'Lutz Mark';

2. select distinct title from books join subjects on subjectId = subjects.id where subjects.name = 'Childrens Books';

3. select distinct subjects.name from subjects join books on subjects.id = subjectId join authors on authorId = authors.id where authors.name = 'King Stephen';

4. select distinct authors.name from authors join books on authors.id = authorId join subjects on subjectId = subjects.id where subjects.name = 'Computers';

5. select title from books join authors on authorId = authors.id where authors.name = 'Hogarth Burne';

6. select distinct name from authors join books on authors.id = authorId where title = 'Little Women';

7. insert into authors (name) values ('Joe Galante');

8. insert into books (title, subjectId, authorId) values ('Joe''s Coding Adventure', 4, 10);

9. update books set authorId = (select id from authors where name ='King Stephen') where title = 'Joe''s Coding Adventure';

10. select distinct name from subjects join books on subjects.id = subjectId where title = '2001: A Space Odyssey';

11. select distinct title from books join subjects on subjectId = subjects.id where name like '%Science%';