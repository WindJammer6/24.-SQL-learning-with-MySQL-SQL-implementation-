-- The 'LIMIT' MySQL (SQL implementation) command:
-- The 'LIMIT' MySQL (SQL implementation) command is used to specify the number of rows/data to return.

-- Selecting all columns from a table (in this context, the 'movies' table), then Limiting the result set to 5 rows
SELECT * FROM `movies` LIMIT 5; 

-- The 'OFFSET' MySQL (SQL implementation) command:
-- The 'OFFSET' MySQL (SQL implementation) command is used to identify the starting point to return data/rows from 
-- a result set. Basically, it excludes the first set of stated data/rows.

-- Selecting all columns from a table (in this context, the 'movies' table), then Limiting the result set to 5 rows 
-- starting from the first row
SELECT * FROM `movies` LIMIT 5 OFFSET 0; 

-- Selecting all columns from a table (in this context, the 'movies' table), then Limiting the result set to 5 rows, 
-- but Offsetting the rows of the result set by 10 (i.e. starting from the 11th row)
SELECT * FROM `movies` LIMIT 5 OFFSET 10; 

-- Rewriting the above MySQL (SQL implementation) query in a shorthand notation that does the same thing (Weird syntax, 
-- but in this shorthand notation the first number represents the Offset number, while the second number represent the 
-- Limit number instead (however, the opposite is true for the above MySQL (SQL implementation) query which does the
-- same thing))
SELECT * FROM `movies` LIMIT 10, 5; 





-- The 'ORDER BY' MySQL (SQL implementation) command:
-- The 'ORDER BY' MySQL (SQL implementation) command is used to sort the result set by a column or multiple columns. 
-- It can sort either in ascending (the default behaviour of the 'ORDER BY' MySQL (SQL implementation) command or via 
-- the 'ASC' MySQL (SQL implementation) command) or descending (via the 'DESC' MySQL (SQL implementation) command) order.

-- For numerical data, they are sorted in numerical order, for alphabetical data, they are sorted in alphabetical order.


-- Ordering a table (in this context, the 'movies' table) in ascending order (the default behaviour of the 'ORDER BY' 
-- MySQL (SQL implementation) command) by the 'release_year' column, then Limiting the result set to 10 rows
SELECT * FROM `movies` ORDER BY `release_year` LIMIT 10; 


-- Ordering a table (in this context, the 'movies' table) in descending order (the default behaviour of the 'ORDER BY' 
-- MySQL (SQL implementation) command) by the 'industry' and 'release_year' columns, then Limiting the result set to 10 rows

-- How the 'ORDER BY' MySQL (SQL implementation) command for multiple columns works?
-- Using the below MySQL (SQL implementation) query as example, the 'ORDER BY' MySQL (SQL implementation) command first 
-- orders the result set by the first column (in this context, the 'industry' column), but if some data/rows in the result 
-- set have the same 'industry', it orders them by the second column (in this context, the 'release_year' column), and so on:
SELECT * FROM `movies` ORDER BY `industry`, `release_year` DESC; 



-- The 'ASC' MySQL (SQL implementation) command, which can only specifically be used with the 'ORDER BY' MySQL 
-- (SQL implementation) command:
-- The 'ASC' MySQL (SQL implementation) command is used to sort the result set by a column or multiple columns in 
-- ascending order (ascending numerical order for numerical data, ascending alphabetical order for alphabets)

-- Ordering a table (in this context, the 'movies' table) in ascending order by the 'release_year' column, then 
-- Limiting the result set to 10 rows
-- (Note: This 'ASC' MySQL (SQL implementation) command is redundant in this case since the 'ORDER BY' MySQL 
-- (SQL implementation) command already sorts in ascending order by default, hence this MySQL (SQL implementation) 
-- query does the same thing as the MySQL (SQL implementation) query above)
SELECT * FROM `movies` ORDER BY `release_year` ASC LIMIT 10; 



-- The 'DESC' MySQL (SQL implementation) command, which can only specifically be used with the 'ORDER BY' MySQL 
-- (SQL implementation) command:
-- The 'DESC' MySQL (SQL implementation) command is used to sort the result set by a column or multiple columns in 
-- descending order (descending numerical order for numerical data, descending alphabetical order for alphabets)

-- Ordering a table (in this context, the 'movies' table) in descending order by the 'release_year' column, then 
-- Limiting the result set to 10 rows
SELECT * FROM `movies` ORDER BY `release_year` DESC LIMIT 10; 
