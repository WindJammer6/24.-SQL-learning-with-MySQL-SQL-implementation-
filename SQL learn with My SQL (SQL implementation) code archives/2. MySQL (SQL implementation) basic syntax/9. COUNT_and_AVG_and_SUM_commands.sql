-- Lets say for this file, you are a movie enthusiast trying to analyse the 'movies' Relational Database, and we will be 
-- using the 'WHERE' MySQL (SQL implementation) command to help us analyse the 'movies' Relational Database in different 
-- contexts 



-- The 'COUNT()' MySQL (SQL implementation) command:
-- The 'COUNT()' MySQL (SQL implementation) command is used to find the number of rows/datas of a column


-- Selecting all columns from a table (in this context, the 'movies' table) and finding the count of the number of
-- rows of the 'title' column 

-- Basically in this context, what this does is that it allows us to find out how many movies are there in this 
-- 'movies' table
SELECT COUNT('title') FROM `movies`;

-- Selecting all columns from a table (in this context, the 'movies' table) and finding the count of the number of
-- rows of the 'title' column where the 'title' column is storing the alphabets/word 'Avatar'

-- Basically in this context, what this does is that it allows us to find out how many movies called 'Avatar' are 
-- in this 'movies' table
SELECT COUNT('title') FROM `movies` WHERE `title` = 'Avatar';



-- The 'AVG()' MySQL (SQL implementation) command:
-- The 'AVG()' MySQL (SQL implementation) command is used to find the average value of the rows/datas of a
-- column


-- Selecting all columns from a table (in this context, the 'movies' table) and finding the average value of 
-- rows of the 'title' column where the 'unit' column is storing the alphabets/word 'Millions'

-- Basically in this context, what this does is that it allows us to find out what is the average revenue of
-- movies that have a revenue in the millions in this 'movies' table
SELECT AVG(`revenue`) FROM `financials` WHERE `unit` = 'Millions';



-- The 'SUM()' MySQL (SQL implementation) command:
-- The 'SUM()' MySQL (SQL implementation) command is used to find the summation value of the rows/datas of a
-- column


-- Selecting all columns from a table (in this context, the 'movies' table) and finding the summation value of 
-- rows of the 'title' column where the 'unit' column is storing the alphabets/word 'Millions'

-- Basically in this context, what this does is that it allows us to find out what is the summation revenue of
-- movies that have a revenue in the millions in this 'movies' table
SELECT SUM(`revenue`) FROM `financials` WHERE `unit` = 'Millions';



-- (Important note on MySQL (SQL implementation) syntax for these MySQL (SQL implementation) with brackets:
--  Ensure that you do not have a space between the 'COUNT'/'AVG'/'SUM' MySQL (SQL implementation) commands and
--  the brackets like so: 'COUNT ()' as this is incorrect MySQL (SQL implementation) syntax and you will 
--  get an error! 

--  Remember to remove any spaces between the 'COUNT'/'AVG'/'SUM' MySQL (SQL implementation) commands and
--  the brackets like so: 'COUNT()' to remove the error!)