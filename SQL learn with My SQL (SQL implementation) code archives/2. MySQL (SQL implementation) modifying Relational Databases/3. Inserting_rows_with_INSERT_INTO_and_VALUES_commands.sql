-- Risk level of the 'INSERT INTO' and 'VALUES' MySQL (SQL implementation) commands modification to insert new rows/datas into a table
-- in a Relational Database:
-- + No very high risks, since the process of accidentally inserted new rows/datas into a table can be reversible, by deleting 
--   these accidentally inserted new rows/datas into the table


-- /////////////////////////////////////////////////////////////////////////////////////////////////////


-- About modifying Relational Databases with MySQL (SQL implementation):
-- Before we start modifying Relational Databases with MySQL (SQL implementation), it is crucial that we first understand/study
-- Relational Database itself, using the 'DESCRIBE' MySQL (SQL implementation) command!

-- Describing the essential information about a table (in this context, the 'languages' table) 
DESCRIBE `languages`;
SELECT * FROM  `languages`;


-- /////////////////////////////////////////////////////////////////////////////////////////////////////


-- The 'INSERT INTO' and 'VALUES' MySQL (SQL implementation) commands:
-- The 'INSERT INTO' MySQL (SQL implementation) command are used to insert new rows/datas into a table.

-- General syntax of the 'INSERT INTO' and 'VALUES' MySQL (SQL implementation) commands:
--      'INSERT INTO table_name (column1, column2, column3, ...) VALUES (value1, value2, value3, ...), (nextvalue1, nextvalue2, nextvalue3, ...) ... ;'

-- Make sure the order of the values of the row to be inserted is in the same order '(value1, value2, value3, ...)' as the 
-- specified columns in the table '(column1, column2, column3, ...)' as 'value1' will be inserted to 'column1', 'value2' will be 
-- inserted to 'column2', and so on...


-- Inserting multiple rows (in this context, the row with 'language_id' of 9 and 'name' of 'Chinese', and the row with 
-- 'language_id' of 10 and 'name' of 'Japanese') into a table (in this context, the 'languages' table) 
INSERT INTO `languages` (`language_id`,`name`) VALUES (9,'Chinese'), (10, 'Japanese');


-- Inserting a single row (in this context, the row with 'language_id' of 11 and 'name' of 'Korean') into a table (in this 
-- context, the 'languages' table) 
INSERT INTO `languages` (`language_id`,`name`) VALUES (11,'Korean');


-- /////////////////////////////////////////////////////////////////////////////////////////////////////


-- Selecting all columns from a table (in this context, the 'languages' table) from a Relational Database (in this context, the 
-- 'moviesdb' Relational Database) to check if the modification to the Relational Databases with MySQL (SQL implementation) has 
-- been completed successfully
SELECT * FROM  `languages`;

