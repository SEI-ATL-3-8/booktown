1.  SELECT *
    FROM books
    INNER JOIN authors 
    ON books.authorId=authors.id 
    WHERE name='Lutz Mark';

    alternate solution

    select * from authors;
    select * from authors where author.id = 9;

2.      SELECT *
        FROM books
        INNER JOIN subjects
        ON books.subjectId = subjects.id
        WHERE name = 'Childrens Books';

3.  select subjects.name from subjects 
    inner join books 
    on subjects.id=books.subjectId 
    inner join authors 
    on books.authorId = authors.id 
    where authors.name = 'AUTHOR NAME'; 

4.  select authors.name from authors 
    inner join books 
    on authors.id=books.authorId 
    inner join subjects 
    on books.subjectId = subjects.id 
    where subjects.name = 'SUBJECT NAME';

5.  SELECT *
    FROM books
    INNER JOIN authors 
    ON books.authorId=authors.id 
    WHERE name='Burne Hogarth';

6.  select authors.name
    from books
    inner join authors
    on books.authorId=authors.id
    where books.title = 'Little Women';

7.  insert into authors(name) values ('AUTHOR NAME');

8.  insert into books(title,subjectId,authorId) values ('BOOK TITLE', 9, 10);

9.  update books 
    set authorId = (select id from authors where name = 'King Stephen') 
    where books.authorId=(select id from authors where name = 'connor'); 

10. select name from subjects 
    where subjects.id=(select subjectId from books 
    where books.title='2001: Space Oddyssey');

11. select * 
    from books
    where subjectId=(select id from subjects where name ='Science');