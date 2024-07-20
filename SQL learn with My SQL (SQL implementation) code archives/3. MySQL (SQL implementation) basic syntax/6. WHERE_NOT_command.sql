-- Lets say for this file, you are a movie enthusiast trying to analyse the 'movies' Relational Database, and we will be 
-- using the 'WHERE' MySQL (SQL implementation) command to help us analyse the 'movies' Relational Database in different 
-- contexts 



-- The 'WHERE NOT' MySQL (SQL implementation) command:
-- The 'WHERE NOT' MySQL (SQL implementation) command is used to filter the rows/data, to extract only those rows/data 
-- that do not fulfill a specified condition.

-- Selecting all columns from a table (in this context, the 'languages' table) and finding the rows where the 'name' 
-- column is not equal to 'English'

-- Basically in this context, what this does is that it allows us to find out which other languages are used in the movies
-- other than English
SELECT * FROM `languages` WHERE NOT `name` = 'English';


-- This is another way to do the same thing as the MySQL (SQL implementation) query above using the 'WHERE" MySQL (SQL 
-- implementation) command with the '<>'/'!=' mathematical operator
SELECT * FROM `languages` WHERE `name` <> 'English';
-- SELECT * FROM `languages` WHERE `name` != 'English'; works too


