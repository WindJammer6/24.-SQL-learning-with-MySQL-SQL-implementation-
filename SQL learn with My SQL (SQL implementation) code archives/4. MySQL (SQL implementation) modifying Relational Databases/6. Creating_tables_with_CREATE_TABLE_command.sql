-- Risk level of the 'CREATE TABLE' MySQL (SQL implementation) commands modification to create a table in a Relational 
-- Database:
-- + No very high risks, since the process of accidentally creating new tables can be reversible, by dropping
--   these accidentally created tables


-- /////////////////////////////////////////////////////////////////////////////////////////////////////


-- The 'CREATE TABLE' MySQL (SQL implementation) command:
-- The 'CREATE TABLE' MySQL (SQL implementation) command is used to create a table.

-- General syntax of the 'CREATE TABLE' MySQL (SQL implementation) commands:
--      'CREATE TABLE table_name (
--           column1_name datatype constraints,
--           column2_name datatype constraints,
--           ...
--           columnN_name datatype constraints,
--           additional table specifications1,
--           additional table specifications2,
--           ...
--       );'

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
-- + additonal table specifications: These are optional and define additional table specifications. Some of these additional
--                                   table specifications include, Foreign Key, Check, Index, Collation, etc. (However, the 
--                                   most commonly used table specification is the Foreign Key, so I will only be explaining
--                                   how to use the Foreign Key additional table specification (see the section 'About how to 
--                                   use the Foreign Key additional table specification' below), and not be explaining 
--                                   the other additional table specifications in this tutorial)


-- Creating a table called 'reviews' with 6 columns, 'review_id', 'review_title', 'review_description', 'users_id', 'product_id'
-- amd 'language_iden'
CREATE TABLE `reviews` (
    review_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    review_title VARCHAR(255) NOT NULL,
    review_description TEXT NOT NULL DEFAULT 'Sample default description',
    users_id INT NOT NULL,
    product_id INT NOT NULL,
    langauge_iden INT NOT NULL,
    FOREIGN KEY (language_iden) REFERENCES languages(langauge_id)
)


-- About how to use the Foreign Key additional table specification (more on what the Foreign Key is in the '2. About_Keys_in_
-- Relational_Databases.sql' file):
-- Using 'FOREIGN KEY (language_iden) REFERENCES languages(langauge_id)' as an example:
-- a. 'FOREIGN KEY (langauge_iden)': defines 'langauge_iden' as a Foreign Key column in the current table.
--    + A Foreign Key is a column (or collection of fcolumns) in one table that uniquely identifies a row of another table or 
--      the same table.
--    + The Foreign Key establishes a link between the data in the two tables.

-- b. 'REFERENCES languages(language_id)': This part specifies that the Foreign Key ('langauge_iden') references the 'language_id' 
--    column in the 'languages' table.
--    + The REFERENCES keyword is used to define the relationship between the Foreign Key in the current table and the Primary Key 
--      or Unique Key in the referenced/other table.


-- (Note: 
--  (Minor bug on creating and dropping tables with MySQL (SQL implementation) in VScode):
--  When you create/drop a table in VScode, changes to the created/dropped table is not immediately reflected in the database 
--  (folder) in VScode, even though it is already created/dropped. To get the changes to the created/dropped table to be 
--  reflected in the database (folder) in VScode, you need to disconnect and then reconnect the MySQL (SQL implementation) 
--  server storing the database (folder) in VScode then the changes to the created/dropped table will be reflected in the 
--  database (folder) in VScode
-- )


-- /////////////////////////////////////////////////////////////////////////////////////////////////////


-- Describing the essential information about a table (in this context, the 'movies' table) to check if the modification to 
-- the Relational Databases with MySQL (SQL implementation) has been completed successfully 
DESCRIBE `reviews`;

-- Selecting all columns from a table (in this context, the newly created 'reviews' table) from a Relational Database (in this 
-- context, the 'moviesdb' Relational Database) to check if the modification to the Relational Databases with MySQL (SQL 
-- implementation) has been completed successfully
SELECT * FROM  `reviews`;
