-- Lets say for this file, you are a movie enthusiast trying to analyse the 'movies' Relational Database, and we will be 
-- using the 'WHERE' MySQL (SQL implementation) command to help us analyse the 'movies' Relational Database in different 
-- contexts 



-- The 'WHERE' MySQL (SQL implementation) command:
-- The 'WHERE' MySQL (SQL implementation) command is used to filter the rows/data, to extract only those rows/data 
-- that fulfill a specified condition.


-- Selecting multiple columns (in this context, the 'movie_id', 'title', 'industry' and 'release_year' columns) from a
-- table (in this context, the 'movies' table), then finding the rows where the 'release_year' column is larger than the 
-- year 2000

-- Basically in this context, what this does is that it allows us to find out which movies were released from the year 
-- 2000 onwards 
SELECT `movie_id`, `title`, `industry`, `release_year` FROM `movies` WHERE `release_year` > 2000;


-- Selecting all columns from a table (in this context, the 'financials' table) and finding the rows where the 'unit' column 
-- is storing the alphabets/word 'Billions'

-- Basically in this context, what this does is that it allows us to find out which movies earned a revenue of more
-- than 1 billion/in the billions
SELECT * FROM `financials` WHERE `unit` = 'Billions';


-- Selecting all columns from a table (in this context, the 'movies' table) and finding a specific/a single row 

-- Basically in this context, what this does is that it allows us to find out what movie is tagged to the ID of '101'
SELECT * FROM `movies` WHERE `movie_id` = 101;



-- About the 'WHERE 1' MySQL (SQL implementation) query (a unique case of using the 'WHERE' MySQL (SQL implementation) 
-- command):
SELECT * FROM `movies` WHERE 1;
SELECT * FROM `movies`;

-- (Note: This does the same thing as the 'SELECT * FROM `movies`' MySQL (SQL implementation) query. While it is
--  redundant, some programmers still practice doing this for various reasons:
--  + When building MySQL (SQL implementation) queries programmatically, the 'WHERE 1' MySQL (SQL implementation) query
--    allows for simpler and cleaner MySQL (SQL implementation) queries. If you have a MySQL (SQL implementation) query with 
--    multiple optional conditions, starting with the 'WHERE 1' MySQL (SQL implementation) query ensures that all subsequent 
--    conditions can be appended with and without needing to check if it’s the first condition.
--  + By including the 'WHERE 1' MySQL (SQL implementation) query, MySQL (SQL implementation) queries maintains a 
--    consistent structure. This consistency can make it easier to understand and maintain, especially in complex queries
--    with multiple conditions.
--  + Using 'WHERE 1' can help prevent syntax errors in Dynamically Generated MySQL (SQL implementation) queries (more on 
--    this in the '20. Dynamically_Generated_MySQL_(SQL_implementation)_Queries.sql' file). If conditions are added based on 
--    user input or other variables, 'WHERE 1' ensures that the MySQL (SQL implementation) query remains syntactically 
--    correct regardless of how many conditions are added.
--  + When debugging or modifying queries, having 'WHERE 1' can make it easier to comment out specific conditions without 
--    breaking the MySQL (SQL implementation) query.)