-- Risk level of the 'ALTER TABLE' and 'MODIFY' MySQL (SQL implementation) commands modification to update/modify 
-- existings column into a table in a Relational Database:
-- + No very high risk, since the process of accidentally updating/modifying columns in a table can be easily reversible, 
--   by re-updating/re-modifying these accidentally updating/modifying columns back to having the original datatype and 
--   constraints.


-- /////////////////////////////////////////////////////////////////////////////////////////////////////


-- About modifying Relational Databases with MySQL (SQL implementation):
-- Before we start modifying Relational Databases with MySQL (SQL implementation), it is crucial that we first understand/study
-- Relational Database itself, using the 'DESCRIBE' MySQL (SQL implementation) command!

-- Describing the essential information about a table (in this context, the 'languages' table) 
DESCRIBE `languages`;
SELECT * FROM  `languages`;


-- /////////////////////////////////////////////////////////////////////////////////////////////////////


-- The 'ALTER TABLE' and 'MODIFY' MySQL (SQL implementation) commands:
-- The 'ALTER TABLE' MySQL (SQL implementation) commands are used to update/modify an existing column in a table.

-- General syntax of the 'ALTER TABLE' and 'MODIFY' MySQL (SQL implementation) commands:
--      'ALTER TABLE table_name 
--           MODIFY column1 datatype constraints, 
--           MODIFY column2 datatype constraints, 
--           ...
--           MODIFY columnN_name datatype constraints;'

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


-- Updating/modifying multiple columns (in this context, the 'random_column1' column to have the datatype of 'TINYINT unsigned' and 
-- 'null_or_not_null' constraint of 'NULL', and the 'random_column2' column to have the datatype of 'CHAR' and 'null_or_not_null' 
-- constraint of 'NULL') in a table (in this context, the 'languages' table) 
ALTER TABLE `languages` 
  MODIFY `random_column1` TINYINT unsigned NULL,
  MODIFY `random_column2` CHAR NULL;


-- Updating/modifying a single column (in this context, the 'random_column3' columnn to have the datatype of 'BIGINT' and 
-- 'null_or_not_null' constraint of 'NOT NULL') in a table (in this context, the 'languages' table) 
ALTER TABLE `languages` MODIFY `random_column3` BIGINT unsigned NOT NULL;



-- Selecting all columns from a table (in this context, the newly created 'reviews' table) from a Relational Database (in this 
-- context, the 'moviesdb' Relational Database) to check if the modification to the Relational Databases with MySQL (SQL 
-- implementation) has been completed successfully
SELECT * FROM `languages`;
