INSERT INTO authors (name) VALUES
('King Stephen'),
('Herbert Frank'),
('Clarke Arthur C.'),
('Bourgeois	Paulette'),
('Brown	Margaret Wise'),
('Alcott Louisa May'),
('Bianco Margery Williams'),
('Hogarth Burne'),
('Lutz Mark');

INSERT INTO subjects (name) VALUES
('Business'),
('Childrens Books'),
('Classics'),
('Computers'),
('Cooking'),
('Drama'),
('Entertainment'),
('History'),
('Horror'),
('Mystery'),
('Poetry'),
('Religion'),
('Romance'),
('Science'),
('Science Fiction');

INSERT INTO books (title, authorId, subjectId) VALUES
('The Shining', 1, 9),
('Dune', 2, 15),
('2001: A Space Odyssey', 3, 15),
('Franklin in the Dark', 4, 2),
('Goodnight Moon', 5, 2),
('Little Women', 6, 6),
('The Velveteen Rabbit', 7, 3),
('Programming Python', 9, 4),
('Learning Python', 9, 4);