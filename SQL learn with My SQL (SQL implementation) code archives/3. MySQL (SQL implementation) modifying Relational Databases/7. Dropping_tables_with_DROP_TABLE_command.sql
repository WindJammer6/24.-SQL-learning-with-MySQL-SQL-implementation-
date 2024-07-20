-- Risk level of the 'DROP TABLE' MySQL (SQL implementation) commands modification to drop an existing table in a Relational Database:
-- + Very high risk, since the process of accidentally dropping an existing table is irreversible.


-- /////////////////////////////////////////////////////////////////////////////////////////////////////


-- About modifying Relational Databases with MySQL (SQL implementation):
-- Before we start modifying Relational Databases with MySQL (SQL implementation), it is crucial that we first understand/study
-- Relational Database itself, using the 'DESCRIBE' MySQL (SQL implementation) command!

-- Describing the essential information about a table (in this context, the 'movies' table) 
DESCRIBE `reviews`;
SELECT * FROM  `reviews`;


-- /////////////////////////////////////////////////////////////////////////////////////////////////////


-- The 'DROP TABLE' MySQL (SQL implementation) command:
-- The 'DROP TABLE' MySQL (SQL implementation) command is used to drop an existing table.

-- General syntax of the 'DROP TABLE' MySQL (SQL implementation) commands:
--      'DROP TABLE table_name;'

-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
-- !DANGER OF THE 'DROP TABLE' MySQL (SQL implementation) command modification to drop an existing table in a Relational        !
-- !Database:                                                                                                                   !
-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
-- Make sure you are absolutely sure to drop the existing table before doing so. WORST THING IS, THIS PROCESS IS IRREVERSIBLE!

-- Dropping a table (in this context, the 'reviews' table) 
DROP TABLE `reviews`;


-- (Note: 
--  (Minor bug on creating and dropping tables with MySQL (SQL implementation) in VScode):
--  When you create/drop a table in VScode, changes to the created/dropped table is not immediately reflected in the database 
--  (folder) in VScode, even though it is already created/dropped. To get the changes to the created/dropped table to be 
--  reflected in the database (folder) in VScode, you need to disconnect and then reconnect the MySQL (SQL implementation) 
--  server storing the database (folder) in VScode then the changes to the created/dropped table will be reflected in the 
--  database (folder) in VScode
-- )


-- /////////////////////////////////////////////////////////////////////////////////////////////////////


-- Selecting all columns from a table (in this context, the newly created 'reviews' table) from a Relational Database (in this 
-- context, the 'moviesdb' Relational Database) to check if the modification to the Relational Databases with MySQL (SQL 
-- implementation) has been completed successfully
SELECT * FROM  `reviews`;




