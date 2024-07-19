-- Risk level of the 'DELETE FROM' and 'WHERE' MySQL (SQL implementation) commands modification to delete rows/datas from a 
-- table in a Relational Database:
-- + Very high risk, since the process of accidentally deleting all rows/datas in a table (basically delete the entire table) is 
--   irreversible, which might often occur when the 'WHERE' MySQL (SQL implementation) command is missing or incorrectly specified.


-- /////////////////////////////////////////////////////////////////////////////////////////////////////


-- About modifying Relational Databases with MySQL (SQL implementation):
-- Before we start modifying Relational Databases with MySQL (SQL implementation), it is crucial that we first understand/study
-- Relational Database itself, using the 'DESCRIBE' MySQL (SQL implementation) command!

-- Describing the essential information about a table (in this context, the 'languages' table) 
DESCRIBE `languages`;
SELECT * FROM  `languages`;


-- /////////////////////////////////////////////////////////////////////////////////////////////////////


-- The 'DELETE FROM' and 'WHERE' MySQL (SQL implementation) commands:
-- The 'DELETE FROM' MySQL (SQL implementation) command are used to delete existing rows/datas from a table.

-- General syntax of the 'DELETE FROM' and 'WHERE' MySQL (SQL implementation) commands:
--      'DELETE FROM table_name WHERE condition;'

-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
-- !DANGER OF THE 'DELETE FROM' and 'WHERE' MySQL (SQL implementation) commands modification to delete rows/datas from a table  !
-- !in a Relational Database:                                                                                                   !
-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
-- Without the 'WHERE' MySQL (SQL implementation) command, the 'DELETE FROM' an MySQL (SQL implementation) commands alone will 
-- delete all rows/datas from a table (basically delete the entire table)! AND WORST THING IS, THIS PROCESS IS IRREVERSIBLE!

-- (e.g. If you run 'DELETE FROM `languages`;', without a 'WHERE' MySQL (SQL implementation) command, all the rows/datas from 
--  the 'languages' table will be deleted! Hence, a 'WHERE' MySQL (SQL implementation) command is crucial, as it specifies which 
-- specific rows/datas from the table should be deleted!


-- Deleting multiple rows where a condition is fulfilled (in this context, where the 'language_id' is 10 or 'language_id' is 
-- 11), which enforces that only two row is deleted, in a table (in this context, the 'languages' table) 
DELETE FROM `languages` WHERE `language_id` = 10 OR `language_id` = 11;
-- DELETE FROM `languages` WHERE `language_id` IN (10, 11); works too


-- Deleting a single row where a condition is fulfilled (in this context, where the 'language_id' is 9), which enforces that only 
-- one row is deleted, in a table (in this context, the 'languages' table) 
DELETE FROM `languages` WHERE `language_id` = 9;


-- /////////////////////////////////////////////////////////////////////////////////////////////////////


-- Selecting all columns from a table (in this context, the 'languages' table) from a Relational Database (in this context, the 
-- 'moviesdb' Relational Database) to check if the modification to the Relational Databases with MySQL (SQL implementation) has 
-- been completed successfully
SELECT * FROM  `languages`;

