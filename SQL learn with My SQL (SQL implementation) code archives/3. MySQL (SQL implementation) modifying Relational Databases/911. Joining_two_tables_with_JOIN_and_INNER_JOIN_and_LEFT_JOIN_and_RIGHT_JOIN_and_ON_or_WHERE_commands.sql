-- Risk level of the 'JOIN', 'INNER JOIN', 'LEFT JOIN', 'RIGHT JOIN', 'CROSS JOIN' and 'ON'/'WHERE' MySQL (SQL implementation) commands to 
-- join two tables in a Relational Database:
-- + No very high risks, since the process of joining tables does not modify the Relational Database, it just displays/prints
--   out the result of the joining of tables, without actually modifying/joining the individual tables.


-- /////////////////////////////////////////////////////////////////////////////////////////////////////


-- About modifying Relational Databases with MySQL (SQL implementation):
-- Before we start modifying Relational Databases with MySQL (SQL implementation), it is crucial that we first understand/study
-- Relational Database itself, using the 'DESCRIBE' MySQL (SQL implementation) command!
DESCRIBE `movies`;
DESCRIBE `languages`;
SELECT * FROM `movies`;
SELECT * FROM `languages`;


-- /////////////////////////////////////////////////////////////////////////////////////////////////////


-- The 'JOIN' and 'ON'/'WHERE' MySQL (SQL implementation) commands:
-- The 'JOIN' and 'ON'/'WHERE' MySQL (SQL implementation) commands is used to combine and match rows from two or more tables 
-- (which can have different number of rows) based on related columns between them.

-- General syntax of the 'JOIN' and 'ON'/'WHERE' MySQL (SQL implementation) commands:
--      'SELECT table1.columna, table1.columnb, table1.columnc, ..., table2.columna, table2.columnb, table2.columnc, ...
--       FROM table1
--       JOIN table2 ON/WHERE table1.related_column_to_table2 = table2.related_column_to_table1 AND/OR ...
--       JOIN table3 ON/WHERE table2.related_column_to_table3 = table3.related_column_to_table2 AND/OR ...
--       JOIN table4 ON/WHERE table3.related_column_to_table4 = table4.related_column_to_table3 AND/OR ...
--       ...
--       ;'
-- (Note: 'ON'/'WHERE' represent that using either the 'ON' or the 'WHERE' MySQL (SQL implementation) command will work in the 
--  same way here)

-- + 'SELECT table1.columna, table1.columnb, table1.columnc, ..., table2.columna, table2.columnb, table2.columnc, ...'': 
--   These represent the order of the selected columns from the respective tables that will be displayed in the joined table.

-- + 'FROM table1 JOIN table 2': 
--   These represent the order of how the tables will be joined. The ordering matters for the 'LEFT JOIN' and 'RIGHT JOIN' MySQL
--   (SQL implementation) commands (see section below on 'the different types of MySQL (SQL implementation) commands that can 
--   be used to join tables in different ways').

-- + 'ON'/'WHERE':
--   The 'ON'/'WHERE' specifies the conditions of the joining of the two tables.

-- + 'table1.related_column_to_table2 = table2.related_column_to_table1':
--   The condition where for each row in 'table1', find rows in 'table2' where the value in 'related_column_to_table2' of 
--   'table1' is equal to the value in 'related_column_to_table1' of table2. Only the rows that satisfy this condition will 
--   be included in the result set of the 'JOIN' MySQL (SQL implementation) command.

--   This is important as it is the one that provides the logic of combining and matching rows from two tables based on 
--   related columns between them. Otherwise, the different types of MySQL (SQL implementation) commands that can be used to 
--   join tables and the 'ON'/'WHERE' MySQL (SQL implementation) command alone will not work as expected.

-- + 'AND/OR ...':
--   As per required, you can specify more conditions apart from the unique condition, 'table1.related_column_to_table2 = 
--   table2.related_column_to_table1' using these 'AND' or 'OR' MySQL (SQL implementation) commands.

-- (Note: If you use multiple 'table1.related_column_to_table2 = table2.related_column_to_table1' conditions in an 'ON'/'WHERE')
--  MySQL (SQL implementation) command, you are joining the tables based on multiple related columns (it is possible!)




-- There are different types of MySQL (SQL implementation) commands that can be used to join tables in different ways, in order to
-- use them, just replace the 'JOIN' MySQL (SQL implementation) command in the general syntax above. Here are the different
-- types of MySQL (SQL implementation) commands that can be used to join tables in different ways:
-- 1. 'JOIN with 'ON/WHERE table1.related_column_to_table2 = table2.related_column_to_table1' 
--    -> selects and joins rows that have matching values in both tables. For rows from either the right table ('table1') or 
--       left table ('table2') with no matching values, these rows will not be selected.

-- 2. 'INNER JOIN' with 'ON/WHERE table1.related_column_to_table2 = table2.related_column_to_table1' 
--    -> does the same thing as 1.

-- 3. 'CROSS JOIN' with 'ON/WHERE table1.related_column_to_table2 = table2.related_column_to_table1' 
--    -> does the same thing as 1.

-- 4. 'LEFT JOIN' with 'ON/WHERE table1.related_column_to_table2 = table2.related_column_to_table1' 
--    -> selects all rows from the left table ('table1') and the matching values (if any) from the right table ('table2').
--       For rows from the left table ('table1') with no matching values from the right table ('table2'), these rows will
--       still be displayed, with NULL values on the right side of the joined row being matched to these rows.

-- 5. 'RIGHT JOIN' with 'ON/WHERE table1.related_column_to_table2 = table2.related_column_to_table1' 
--    -> selects all rows from the right table ('table2') and the matching values (if any) from the left table ('table1')
--       For rows from the right table ('table2') with no matching values from the left table ('table1'), these rows will
--       still be displayed, with NULL values on the left side of the joined row being matched to these rows.


-- (Out of curiousity, I tested to see how the different types of MySQL (SQL implementation) commands that can be used to join 
--  tables in different ways, will work without the 'ON/WHERE table1.related_column_to_table2 = table2.related_column_to_table1' 
--  MySQL (SQL implementation) commands:
--  1. 'JOIN' without 'ON/WHERE table1.related_column_to_table2 = table2.related_column_to_table1' 
--     -> selects the Cartesian product of all rows in both tables, meaning it joins each row from one table with every row in 
--        the other table (order of the tables being specified dosen't matter) (not a very useful way to join tables)

--  2. 'INNER JOIN' without 'ON/WHERE table1.related_column_to_table2 = table2.related_column_to_table1' 
--     -> does the same thing as 1.

--  3. 'CROSS JOIN' without 'ON/WHERE table1.related_column_to_table2 = table2.related_column_to_table1' 
--     -> does the same thing as 1.

--  4. 'LEFT JOIN' without 'ON/WHERE table1.related_column_to_table2 = table2.related_column_to_table1' 
--     -> syntax error

--  5. 'RIGHT JOIN' without 'ON/WHERE table1.related_column_to_table2 = table2.related_column_to_table1' 
--     -> syntax error
-- )


-- Source: https://www.w3schools.com/mysql/mysql_join.asp (W3 Schools)


-- //////////////////////////////////////////////////////////////////////////////////////////////////////////////


-- Comparing the 'JOIN'/'INNER JOIN'/'CROSS JOIN' vs 'LEFT JOIN' vs 'RIGHT JOIN' with the 'ON/WHERE table1.related_column_to_table2 
-- = table2.related_column_to_table1' MySQL (SQL implementation) commands:



-- Joining two tables, 'table1' (in this context, the 'movies' table) to 'table2' (in this context, the 'financials' 
-- table) at the related column (in this context, the 'movie_id' column) using the 'JOIN'/'INNER JOIN'/'CROSS JOIN' with the 
-- 'ON/WHERE table1.related_column_to_table2 = table2.related_column_to_table1' MySQL (SQL implementation) commands

-- Notice the rows in the 'movies' 'table1' with 'movie_id' 106 and 112 are missing, and the rows in the 'financials' 'table2' with
-- 'movie_id' 406 and 412 are missing. This is how 'JOIN'/'INNER JOIN'/'CROSS JOIN' with the 'ON/WHERE table1.related_column_
-- to_table2 = table2.related_column_to_table1' MySQL (SQL implementation) commands work, as it only takes rows where the value
-- of the related column, 'movie_id' exists in both tables.  
SELECT movies.movie_id, movies.title, financials.budget, financials.revenue, financials.currency, financials.unit
FROM movies
JOIN financials ON movies.movie_id = financials.movie_id;



-- Joining two tables, 'table1' (in this context, the 'movies' table) to 'table2' (in this context, the 'financials' 
-- table) at the related column (in this context, the 'movie_id' column) using the 'LEFT JOIN' with the 
-- 'ON/WHERE table1.related_column_to_table2 = table2.related_column_to_table1' MySQL (SQL implementation) commands

-- Notice the rows in the 'movies' 'table1' with 'movie_id' 106 and 112 are present, but the rows in the 'financials' 'table2' with
-- 'movie_id' 406 and 412 are missing. This is how 'LEFT JOIN' with the 'ON/WHERE table1.related_column_to_table2 = table2.related_
-- column_to_table1' MySQL (SQL implementation) commands work, as it takes all rows from the left table ('movies' 'table1')
-- and the matching values (if any) from the right table ('financials' 'table2'), and for rows (e.g. rows in the 'movies' 'table1' 
-- with 'movie_id' 106 and 112) from the left table ('movies' 'table1') with no matching values from the right table ('financials' 
-- 'table2'), these rows will still be displayed, with NULL values on the right side of the joined row being matched to these rows.
SELECT movies.movie_id, movies.title, financials.budget, financials.revenue, financials.currency, financials.unit
FROM movies
LEFT JOIN financials ON movies.movie_id = financials.movie_id;



-- Joining two tables, 'table1' (in this context, the 'movies' table) to 'table2' (in this context, the 'financials' 
-- table) at the related column (in this context, the 'movie_id' column) using the 'RIGHT JOIN' with the 
-- 'ON/WHERE table1.related_column_to_table2 = table2.related_column_to_table1' MySQL (SQL implementation) commands

-- Notice the rows in the 'movies' 'table1' with 'movie_id' 106 and 112 are missing, but the rows in the 'financials' 'table2' with
-- 'movie_id' 406 and 412 are present. This is how 'RIGHT JOIN' with the 'ON/WHERE table1.related_column_to_table2 = table2.related_
-- column_to_table1' MySQL (SQL implementation) commands work, as it takes all rows from the right table ('financials' 'table2')
-- and the matching values (if any) from the left table ('movies' 'table1'), and for rows (e.g. rows in the 'financials' 'table2' 
-- with 'movie_id' 406 and 412) from the right table ('financials' 'table2') with no matching values from the left table ('movies' 
-- 'table1'), these rows will still be displayed, with NULL values on the left side of the joined row being matched to these rows.
SELECT movies.movie_id, movies.title, financials.budget, financials.revenue, financials.currency, financials.unit
FROM movies
RIGHT JOIN financials ON movies.movie_id = financials.movie_id;


-- //////////////////////////////////////////////////////////////////////////////////////////////////////


-- Other examples of using the 'JOIN'/'INNER JOIN'/'CROSS JOIN' vs 'LEFT JOIN' vs 'RIGHT JOIN' with the 'ON/WHERE 
-- table1.related_column_to_table2 = table2.related_column_to_table1' MySQL (SQL implementation) commands:



-- Joining two tables (in this context, the 'movies' table and 'languages' table) at the related column (in this context, the 
-- 'language_id' column) using the 'JOIN'/'INNER JOIN'/'CROSS JOIN' with the 'ON/WHERE table1.related_column_to_table2 = 
-- table2.related_column_to_table1' MySQL (SQL implementation) commands

-- Basically in this context, what this does is that based on the 'language_id' provided in the 'language_id' column in the
-- 'movies' table, joins the two tables by replacing the value of the 'language_id' provided in the 'language_id' column in 
-- the 'movies' table in all rows, with the actual 'name' of the language tagged with that 'language_id', as provided in the 
-- 'languages' table
SELECT movies.movie_id, movies.title, languages.name 
FROM movies 
JOIN languages ON movies.language_id = languages.language_id;

-- These MySQL (SQL implementation) queries all works the same way:
-- SELECT movies.movie_id, movies.title, languages.name 
-- FROM movies 
-- INNER JOIN languages ON movies.language_id = languages.language_id;

-- SELECT movies.movie_id, movies.title, languages.name 
-- FROM movies 
-- CROSS JOIN languages ON movies.language_id = languages.language_id;

-- SELECT movies.movie_id, movies.title, languages.name 
-- FROM movies 
-- JOIN languages WHERE movies.language_id = languages.language_id;

-- SELECT movies.movie_id, movies.title, languages.name 
-- FROM movies 
-- INNER JOIN languages WHERE movies.language_id = languages.language_id;

-- SELECT movies.movie_id, movies.title, languages.name 
-- FROM movies 
-- CROSS JOIN languages WHERE movies.language_id = languages.language_id;



-- Joining two tables (in this context, the 'movies' table and 'languages' table) at the related column (in this context, the 
-- 'language_id' column) using the 'JOIN'/'INNER JOIN'/'CROSS JOIN' with the 'ON/WHERE table1.related_column_to_table2 = 
-- table2.related_column_to_table1' MySQL (SQL implementation) commands, but with an additional condition (in the context, 
-- the 'movies.language_id = 101' condition)

-- Basically in this context, what this does is that based on the 'language_id' provided in the 'language_id' column in the
-- 'movies' table, joins the two tables by replacing the value of the 'language_id' provided in the 'language_id' column in 
-- the 'movies' table in all rows, with the actual 'name' of the language tagged with that 'language_id', as provided in the 
-- 'languages' table, and only displaying the rows where the value of 'language_id' provided in the 'language_id' column in the
-- 'movies' table is 101
SELECT movies.movie_id, movies.title, languages.name 
FROM movies 
JOIN languages ON movies.language_id = languages.language_id AND movies.movie_id = 101;


-- /////////////////////////////////////////////////////////////////////////////////////////////////////////


-- There is an additional way of joining tables called Full Join. However, this functionality is not supported in MySQL
-- (SQL implementation), but is supported by other types of SQL implementations. There is a way to reimplement Full Join
-- in MySQL (SQL implementation) regardless, using an additional 'UNION' MySQL (SQL implementation) command.

-- What is Full Join?
-- Think of it as a combination of 'LEFT JOIN' and 'RIGHT JOIN' with 'ON/WHERE table1.related_column_to_table2 = 
-- table2.related_column_to_table1', where you select all rows from the left table ('table1') and right table ('table2').
-- For rows from the left table ('table1') with no matching values from the right table ('table2'), these rows will
-- still be displayed, with NULL values on the left side of the joined row being matched to these rows.
-- For rows from the right table ('table2') with no matching values from the left table ('table1'), these rows will
-- still be displayed, with NULL values on the left side of the joined row being matched to these rows.

-- Here is how to reimplement Full Join in MySQL (SQL implementation), using an additional 'UNION' MySQL (SQL 
-- implementation) command:
SELECT movies.movie_id, movies.title, financials.budget, financials.revenue, financials.currency, financials.unit
FROM movies
LEFT JOIN financials ON movies.movie_id = financials.movie_id

UNION

SELECT movies.movie_id, movies.title, financials.budget, financials.revenue, financials.currency, financials.unit
FROM movies
RIGHT JOIN financials ON movies.movie_id = financials.movie_id;


-- /////////////////////////////////////////////////////////////////////////////////////////////////////////


-- Joining more than two tables:
-- As shown in the 'General syntax of the 'JOIN' and 'ON'/'WHERE' MySQL (SQL implementation) commands' section, joining 
-- more than two tables is possible. However, this concept is more advanced and is less common so I won't be talking about 
-- it in this tutorial. 

-- When there is a need to do this, can leave it to Googling the exact MySQL (SQL implementation) query for the context then.
