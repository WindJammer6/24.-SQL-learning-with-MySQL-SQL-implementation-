-- In this tutorial, we will be running all the MySQL (SQL implementation) queries in the same MySQL (SQL 
-- implementation) connection/server, 'localhost' (you can find this MySQL (SQL implementation) connection/server 
-- in the MySQL (SQL implementation) workbench application)


-- ////////////////////////////////////////////////////////////////////////////////////


-- About SQL's syntax (which applies to all SQL implementations/SQL dialects):
-- - SQL (and its SQL dialects such as MySQL (SQL implementation) SQL)'s commands are all always in full capital 
--   letter!! 
-- - The variables (e.g. names of table, columns, Relational Databases) are indicated by backticks (`) (NOT quotation 
--   marks (')!), and do not need to be in full captial letter
-- - SQL queries requires semicolons (;)!
-- - In the realm of SQL, a SQL server can store multiple Relational Databases, which can in turn store multiple tables 
--   (think of a table in the Relational Database world as the equivalent of a sheet in the spreadsheet world)!


-- ////////////////////////////////////////////////////////////////////////////////////


-- The 'SELECT' MySQL (SQL implementation) command:
-- The 'SELECT' MySQL (SQL implementation) command is used to select data from a Relational Database. The data returned 
-- is stored in a result set, called the result set.

-- Selecting all columns from a table (in this context, the 'actors' table) from a Relational Database (in this context, the 
-- 'moviesdb' Relational Database) in a MySQL (SQL implementation) server (in this context, the 'localhost' MySQL (SQL implementation) 
-- server)
SELECT * FROM `actors`;


-- Selecting a column (in this context, the 'name' column) in a table (in this context, the 'actors' table) 
-- from a Relational Database (in this context, the 'moviesdb' Relational Database) in a MySQL (SQL implementation) 
-- server (in this context, the 'localhost' MySQL (SQL implementation) server)
SELECT `name` FROM `actors`;


-- Selecting multiple columns (in this context, the 'name' and 'birth_year' columns) in a table (in this 
-- context, the 'actors' table) from a Relational Database (in this context, the 'moviesdb' Relational Database) in a 
-- MySQL (SQL implementation) server (in this context, the 'localhost' MySQL (SQL implementation) server)
SELECT `name`, `birth_year` FROM `actors`;



-- Can I use the 'SELECT' MySQL (SQL implementation) command to select row(s)?
-- There is no direct way to select specific rows. There are only indirect ways to do this (e.g. such as 
-- selecting specific rows within columns based on specifying conditions using the 'WHERE' MySQL (SQL 
-- implementation) command (more on this in the '4. WHERE_command.sql' file)).


