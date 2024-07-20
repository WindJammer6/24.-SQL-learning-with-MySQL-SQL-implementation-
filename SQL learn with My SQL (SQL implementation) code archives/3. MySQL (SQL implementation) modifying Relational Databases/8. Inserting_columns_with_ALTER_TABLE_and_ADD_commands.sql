-- Risk level of the 'ALTER TABLE' and 'ADD' MySQL (SQL implementation) commands modification to insert new columns into a table
-- in a Relational Database:
-- + No very high risks, since the process of accidentally inserted new columns into a table can be reversible, by deleting 
--   these accidentally inserted new columns into the table


-- /////////////////////////////////////////////////////////////////////////////////////////////////////


-- About modifying Relational Databases with MySQL (SQL implementation):
-- Before we start modifying Relational Databases with MySQL (SQL implementation), it is crucial that we first understand/study
-- Relational Database itself, using the 'DESCRIBE' MySQL (SQL implementation) command!

-- Describing the essential information about a table (in this context, the 'languages' table) 
DESCRIBE `languages`;
SELECT * FROM  `languages`;


-- /////////////////////////////////////////////////////////////////////////////////////////////////////


-- The 'ALTER TABLE' and 'ADD' MySQL (SQL implementation) commands:
-- The 'ALTER TABLE' MySQL (SQL implementation) commands are used to add a column into an existing table.

-- General syntax of the 'ALTER TABLE' and 'ADD' MySQL (SQL implementation) commands:
--      'ALTER TABLE table_name 
--           ADD column1 datatype constraints, 
--           ADD column2 datatype constraints, 
--           ...
--           ADD columnN_name datatype constraints;'

-- + column_name: This is the name of each column in the table.
-- + datatype: This is the datatype of the column (e.g., INT, VARCHAR, DATE, etc.) (see the types of datatypes in MYSQL (SQL 
--             implementation) in the '1. About_modifying_Relational_Databases_with_MySQL_(SQL_implementation)_and_DESCRIBE_
--             command.sql' file)
-- + constraints: These are optional and define rules for the data in the column. A complete syntax for each constraint is 
--                as such: 'null_or_not_null default_value extra_information primary_key_or_unique_key'
--                (see the possible input of each constraint (except 'primary_key_or_unique_key' in the '1. About_modifying_
--                Relational_Databases_with_MySQL_(SQL_implementation)_and_DESCRIBE_command.sql' in the 'What does each column 
--                of the (tabular) output of the 'DESCRIBE' MySQL (SQL implementation) command represent?' section)

--                (e.g. 'NOT NULL DEFAULT 'Sample default value' AUTO_INCREMENT PRIMARY KEY' or
--                'NULL DEFAULT 'Sample default value' CURRENT_TIMESTAMP UNIQUE KEY')


-- Inserting multiple columns (in this context, a column called 'random_column1' with datatype of 'VARCHAR(255)', and the row 
-- called 'random_column2' with datatype of 'INT(11)'), into a table (in this context, the 'languages' table) 
ALTER TABLE `languages` 
  ADD `random_column1` VARCHAR(255),
  ADD `random_column2` INT(11);


-- Inserting a single column (in this context, a column called 'random_column3' with datatype of 'VARCHAR(255)'), into a table 
-- (in this context, the 'languages' table) 
ALTER TABLE `languages` ADD `random_column3` VARCHAR(255);


-- /////////////////////////////////////////////////////////////////////////////////////////////////////


-- Selecting all columns from a table (in this context, the newly created 'reviews' table) from a Relational Database (in this 
-- context, the 'moviesdb' Relational Database) to check if the modification to the Relational Databases with MySQL (SQL 
-- implementation) has been completed successfully
SELECT * FROM `languages`;
