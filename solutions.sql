C:/Users/soulr/Documents/ga/ga_homeworks/booktown/schema.sql

C:/Users/soulr/Documents/ga/ga_homeworks/booktown/seed.sql

1. Get all books by mark lutz

SELECT * FROM authors;
mark lutz id = 9

SELECT title FROM Books
WHERE authorID = 9;   
Programming Python and Learning Python

2. Get all books in the childrens books subject

SELECT * FROM subjects;
Children books id = 2

SELECT title FROM Books
WHERE subjectID = 2;
Franklin in the Dark and Goodnight Moon

3. Get all subjects that a given author has written on
    SELECT subjects.name FROM
    Books JOIN subjects ON subjects.id = Books.subjectID
    JOIN authors ON authors.id = Books.authorID
    WHERE authors.id = 9;

    Only on computers

4. Get all authors that have written books on a given subject

    SELECT authors.name FROM
    Books JOIN subjects ON subjects.id = Books.subjectID
    JOIN authors ON authors.id = Books.authorID
    WHERE subjects.id = 2;

    Bourgeois Paulette, Brown Margaret Wise

5. Get all books by Hogarth Burne

    SELECT Books.title FROM
    Books JOIN authors ON authors.id = Books.authorID
    WHERE authors.name = 'Hogarth Burne';

    No books by this person

6.  Get the author of Little Women

    SELECT authors.name FROM
    Books JOIN subjects ON subjects.id = Books.subjectID
    JOIN authors ON authors.id = Books.authorID
    WHERE Books.title = 'Little Women';

    Alcott Louisa May

7.  Add yourself as a new author

    INSERT INTO authors
    (name)
    VALUES
    ('Marquette Brown');

8.  Add a new book by yourself and to any subject of your choosing

    SELECT * FROM subjects;
    Choose the Horror subject with ID 9
    My ID is 10

    INSERT INTO Books
    (title, subjectID, authorID)
    VALUES
    ('Goosebumps', '9', '10');

9. Now find that book authored by yourself and change its author to King Stephen

    SELECT * FROM Books
    WHERE authorID = '10';

    UPDATE authors SET name = 'King Stephen' WHERE id = 10; 
    SELECT * FROM authors;

10. Get the subject of the 2001 Space Oddyssey

     SELECT subjects.name FROM
    Books JOIN subjects ON subjects.id = Books.subjectID
    WHERE Books.title = '2001: A Space Odyssey';
    Science Fiction

11. Get any book that starts has Science in its subject

    SELECT Books.title FROM
    Books JOIN subjects ON subjects.id = Books.subjectID
    WHERE subjects.name LIKE 'Science%';
    Dune and 2001: A Space Odyssey