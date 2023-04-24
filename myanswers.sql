--1.  Return ALL the data in the 'movies' table.
SELECT * FROM movies;

--2.  Return ONLY the name column from the 'people' table
SELECT * FROM people;

--3.  Oops! Someone spelled Krusty The Clown's name wrong! Change it to reflect the proper spelling (Crusty should be Krusty).
UPDATE people SET name ='Krusty The Clown' WHERE id = 13;
SELECT * FROM people; 
--4.  Return ONLY Homer Simpson's name from the 'people' table.
SELECT name FROM people WHERE name = 'Homer Simpson'; -- should use id = 1 here
--5.  The cinema is showing 'Batman Begins', but Batman is DC, not Marvel! Delete the entry from the 'movies' table.
DELETE FROM movies WHERE title = 'Batman Begins';
--6.  We forgot one of the main characters! Add Bart Simpson to the 'people' table
INSERT INTO people (name) VALUES ('Bart Simpson');
--7.  Eric Cartman has decided to hijack our movie evening, Remove him from the table of people.
DELETE FROM people WHERE name = 'Eric Cartman'; -- could use id but there may be more Erics

--8.  The cinema has just heard that they will be holding an exclusive midnight showing of 'Avengers: Infinity War'!! Create a new entry in the 'movies' table to reflect this.
INSERT INTO movies (title, year, show_time) VALUES ('Avengers: Infinity War', 2018, '00:00');

--9.  The cinema would like to make the Iron Man movies a triple billing. Find out the show time of "Iron Man 2" and set the show time of "Iron Man 3" to start two hours later.
UPDATE movies SET show_time = '20:45' WHERE title = 'Iron Man 3';
SELECT * FROM movies;
SELECT * FROM people;

-- 1.  Research how to delete multiple entries from your table in a single command.
-- DELETE from `tablename` WHERE `id` IN (1, 5 , 7);
-- DELETE FROM `tablename` WHERE `id` NOT IN (1, 5, 7);
-- DELETE FROM `tablename` WHERE `id` >= 3 AND `id` <= 10;
-- DELETE FROM `table_name` WHERE `id` BETWEEN 3 AND 10;

/*https://www.designcise.com/web/tutorial/how-to-delete-multiple-rows-with-different-ids-in-a-sql-query*/