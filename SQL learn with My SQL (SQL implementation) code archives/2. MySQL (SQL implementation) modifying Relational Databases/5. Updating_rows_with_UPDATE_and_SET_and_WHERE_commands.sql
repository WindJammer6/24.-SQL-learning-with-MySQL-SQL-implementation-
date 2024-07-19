-- Risk level of the 'UPDATE', 'SET' and 'WHERE' MySQL (SQL implementation) commands modification to update rows/datas into a table
-- in a Relational Database:
-- + High risk, since the process of accidentally updating more/all rows/datas in a table is irreversible, which might often occur
--   when the 'WHERE' MySQL (SQL implementation) command is missing or incorrectly specified.


-- /////////////////////////////////////////////////////////////////////////////////////////////////////


-- About modifying Relational Databases with MySQL (SQL implementation):
-- Before we start modifying Relational Databases with MySQL (SQL implementation), it is crucial that we first understand/study
-- Relational Database itself, using the 'DESCRIBE' MySQL (SQL implementation) command!

-- Describing the essential information about a table (in this context, the 'movies' table) 
DESCRIBE `movies`;
SELECT * FROM  `movies`;


-- /////////////////////////////////////////////////////////////////////////////////////////////////////


-- The 'UPDATE', 'SET' and 'WHERE' MySQL (SQL implementation) commands:
-- The 'UPDATE' MySQL (SQL implementation) command are used to update existing rows/datas into a table.

-- General syntax of the 'UPDATE', 'SET' and 'WHERE' MySQL (SQL implementation) commands:
--      'UPDATE table_name SET column1 = value1, column2 = value2, ... WHERE condition;'

-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
-- !DANGER OF THE 'UPDATE', 'SET' and 'WHERE' MySQL (SQL implementation) commands modification to update rows/datas into a table!
-- !in a Relational Database:                                                                                                   !
-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
-- Without the 'WHERE' MySQL (SQL implementation) command, the 'UPDATE' and 'SET' MySQL (SQL implementation) commands alone will 
-- update all rows/datas in a table! AND WORST THING IS, THIS PROCESS IS IRREVERSIBLE!

-- (e.g. If you run 'UPDATE `movies` SET `industry` = 'Hollywood';', without a 'WHERE' MySQL (SQL implementation) command, all the
--  rows/datas in 'industry' column in the 'movies' table will be updated to 'Hollywood'! Hence, a 'WHERE' MySQL (SQL implementation) 
--  command is crucial, as it specifies which specific rows/datas in the table should be updated!


-- Updating a column (in this context, the 'industry' column to 'Hollywood') where a condition is fulfilled (in this context,
-- where the 'movie_id' is 101), which enforces that only one row is updated, in a table (in this context, the 'movies' table) 
UPDATE `movies` SET `industry` = 'Hollywood' WHERE `movie_id` = 101;


-- Updating multiple columns (in this context, the 'industry' column to 'Hollywood' and 'title' column to 'K.G.F: Chapter 3') where
-- a condition is fulfilled (in this context, where the 'movie_id' is 101), which enforces that only one row is updated, in a table 
-- (in this context, the 'movies' table)
UPDATE `movies` SET `industry` = 'Hollywood', `title` = 'K.G.F: Chapter 3' WHERE `movie_id` = 101;


-- Can I use the 'UPDATE', 'SET' and 'WHERE' MySQL (SQL implementation) commands to update multiple rows in a MySQL (SQL 
-- implementation) query?
-- There is no single way to select update multiple rows, since the number of rows that are updated depends on how many rows
-- fulfill the conditions specified by the 'WHERE' MySQL (SQL implementation) command, which varies by context (varies for different
-- tables)


-- /////////////////////////////////////////////////////////////////////////////////////////////////////


-- Selecting all columns from a table (in this context, the 'movies' table) from a Relational Database (in this context, the 
-- 'moviesdb' Relational Database) to check if the modification to the Relational Databases with MySQL (SQL implementation) has 
-- been completed successfully
SELECT * FROM  `movies`;

