-- Risk level of the 'ALTER TABLE' and 'DROP' MySQL (SQL implementation) commands modification to drop existing columns in 
-- a Relational Database:
-- + Very high risk, since the process of accidentally dropping existing columns is irreversible.


-- /////////////////////////////////////////////////////////////////////////////////////////////////////


-- About modifying Relational Databases with MySQL (SQL implementation):
-- Before we start modifying Relational Databases with MySQL (SQL implementation), it is crucial that we first understand/study
-- Relational Database itself, using the 'DESCRIBE' MySQL (SQL implementation) command!

-- Describing the essential information about a table (in this context, the 'languages' table) 
DESCRIBE `languages`;
SELECT * FROM  `languages`;


-- /////////////////////////////////////////////////////////////////////////////////////////////////////


-- The 'ALTER TABLE' and 'DROP' MySQL (SQL implementation) commands:
-- The 'ALTER TABLE' MySQL (SQL implementation) commands are used to drop a column into an existing table.

-- General syntax of the 'ALTER TABLE' and 'DROP' MySQL (SQL implementation) commands:
--      'ALTER TABLE table_name 
--           DROP column1, 
--           DROP column2, 
--           ...
--           DROP columnN_name;'

-- + column_name: This is the name of each column in the table.

-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
-- !DANGER OF THE 'ALTER TABLE' and 'DROP' MySQL (SQL implementation) commands modification to drop an existing table! 
-- in a Relational Database:                                                                                         !
-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
-- Make sure you are absolutely sure to drop the existing column before doing so. WORST THING IS, THIS PROCESS IS IRREVERSIBLE!


-- Dropping multiple columns (in this context, the 'random_column1' column and 'random_column2' column) in a table 
-- (in this context, the 'languages' table) 
ALTER TABLE `languages` 
  DROP `random_column1`,
  DROP `random_column2`;

-- Dropping a single column (in this context, the 'random_column3' columnn) in a table (in this context, the 
-- 'languages' table) 
ALTER TABLE `languages` DROP `random_column3`;


-- /////////////////////////////////////////////////////////////////////////////////////////////////////


-- Selecting all columns from a table (in this context, the newly created 'reviews' table) from a Relational Database (in this 
-- context, the 'moviesdb' Relational Database) to check if the modification to the Relational Databases with MySQL (SQL 
-- implementation) has been completed successfully
SELECT * FROM `languages`;
