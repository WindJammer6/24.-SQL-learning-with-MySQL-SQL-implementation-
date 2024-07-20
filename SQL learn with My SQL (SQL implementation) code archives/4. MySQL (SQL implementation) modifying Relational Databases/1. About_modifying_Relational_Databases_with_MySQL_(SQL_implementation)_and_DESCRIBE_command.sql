-- About modifying Relational Databases with MySQL (SQL implementation):
-- Before we start modifying Relational Databases with MySQL (SQL implementation), it is crucial that we first understand/study
-- Relational Database itself!

-- An effective way to allow us to do this is by using the 'DESCRIBE' MySQL (SQL implementation) command!


-- ///////////////////////////////////////////////////////////////////////////////////////////////////////////


-- The 'DESCRIBE' MySQL (SQL implementation) command:
-- The 'DESCRIBE' MySQL (SQL implementation) command is used to retrieve metadata/information about a table in a Relational
-- Database. It offers a better way to view essential information about the columns within a specified table in the Relational
-- Database.


-- Here is a sample (tabular) output of the 'DESCRIBE' MySQL (SQL implementation) command:
-- +--------------+---------------------+------+-----+---------+----------------+
-- | Field        | Type                | Null | Key | Default | Extra          |
-- +--------------+---------------------+------+-----+---------+----------------+
-- | language_id  | tinyint unsigned    | NO   | PRI | null    | auto_increment |
-- | name         | varchar(45)         | NO   | UNI | null    |                |
-- +--------------+---------------------+------+-----+---------+----------------+


-- What does each column of the (tabular) output of the 'DESCRIBE' MySQL (SQL implementation) command represent?
-- 1. Field: individual columns' name in the table
--    Possible inputs:
--    -> Anything, because the individual columns in the table can be of any name

-- 2. Type: datatype of the data in the individual columns in the table
--    Possible inputs:
--    -> Can be any one of the available datatypes in MySQL (SQL implementation) (see the section below 'Types of datatypes 
--       in MySQL (SQL implementation)')

-- 3. Null: whether the individual columns in the table allow NULL datas or not
--    Possible inputs:
--    -> YES: the individual columns in the table can contain NULL datas) 
--    -> NO: the individual columns in the table cannot contain NULL datas)

-- 4. Key: information of the Keys tagged for the individual columns in the table (see more on Keys in the '2. About_Keys_
--         in_Relational_Databases.sql' file)
--    Possible inputs:
--    -> PRI (Primary Key): the individual columns in the table is tagged with Primary Key
--    -> UNI (Unique Key): the individual columns in the table is tagged with Unique Key
--    -> MUL (Multiple Key): the individual columns in the table allow non-unique/duplicate rows/data, allow NULL rows/datas, 
--                           or it could also mean that the individual columns in the table is tagged with Foreign Key
--                           or any other type of Keys (Composite Key, Candidate Key, Index Key, Super Key, etc.)
--    -> (empty): the individual columns in the table has no tagged Key

--    (Note: Since the output of the 'DESCIBE' MySQL (SQL implementation) command is unable to directly check if an individual
--           column in the table in tagged with Foreign Key, an alternate MySQL (SQL implementation) query to use that can 
--           allow us to directly check if an individual column in the table in tagged with Foreign Key is:
--           'SHOW CREATE TABLE your_table_name;' (due to redundancy, I will not be explaining this MySQL (SQL implementation) 
--           query in this tutorial))


-- 5. Default: default data set in the individual columns in the table
--    Possible inputs:
--    -> Can be any default data specified for the column
--    -> NULL (if no default data is specified)

-- 6. Extra: additional information about the individual columns in the table
--    Possible inputs:
--    -> auto_increment: the individual columns in the table automatically increments its value for each new row/data (typically 
--                       used with individual columns in the table tagged with Primary Key and storing integer datatype).
--    -> on update CURRENT_TIMESTAMP: the individual columns in the table automatically updates to the current timestamp 
--                                    whenever the row/data is updated.
--    -> VIRTUAL GENERATED: the individual columns in the table is a virtual generated column.
--    -> DEFAULT_GENERATED: the individual columns in the table have an expression default value.
--    -> (empty): the individual columns in the table has no additional information 


-- ///////////////////////////////////////////////////////////////////////////////////////////////////////


-- Types of datatypes in MySQL (SQL implementation):
-- MySQL (SQL implementation) supports a variety of data types, which can be broadly categorized into numeric, date and time, 
-- string, spatial types, and JSON types.
-- 1. Numeric datatypes
--    a. Integer Types:
--       -> TINYINT (1 byte)
--       -> SMALLINT (2 bytes)
--       -> MEDIUMINT (3 bytes)
--       -> INT or INTEGER (4 bytes)
--       -> BIGINT (8 bytes)

--    b. Fixed-Point Types:
--       -> DECIMAL/NUMERIC (both works the same way)
-- 
--    c. Floating-Point Types:
--       -> FLOAT
--       -> DOUBLE
--     
--    d. Bit-Value Type:
--       -> BIT
 
-- 2. Date and Time datatypes
--    a. DATE: Stores dates (year, month, day).
--    b. TIME: Stores time values (hours, minutes, seconds).
--    c. DATETIME: Stores date and time values.
--    d. TIMESTAMP: Stores timestamp values.
--    e. YEAR: Stores year values.

-- 3. String datatypes
--    a. CHAR: Fixed-length string.
--    b. VARCHAR: Variable-length string.
--    c. BINARY: Fixed-length binary data.
--    d. VARBINARY: Variable-length binary data.
--    e. BLOB: Binary Large Object.
--       -> TINYBLOB
--       -> BLOB
--       -> MEDIUMBLOB
--       -> LONGBLOB
--    f. TEXT: Text data.
--       -> TINYTEXT
--       -> TEXT
--       -> MEDIUMTEXT
--       -> LONGTEXT
--    g. ENUM: Enumeration, a string object with a value chosen from a list of permitted values.
--    h. SET: A string object that can have zero or more values, each of which must be chosen from a list of permitted values.

-- 4. Spatial datatypes
--    a. GEOMETRY
--    b. POINT
--    c. LINESTRING
--    d. POLYGON
--    e. MULTIPOINT
--    f. MULTILINESTRING
--    g. MULTIPOLYGON
--    h. GEOMETRYCOLLECTION

-- 5. JSON Data Type
--    a. JSON: Stores JSON (JavaScript Object Notation) data.


-- (Note: 
-- + There are too many types of datatypes in MySQL (SQL implementation), so I won't be talking about them in this tutorial
--   in detail

-- + Datatypes in MySQL (SQL implementation) are case-insensitive. Meaning when you specify datatypes in MySQL (SQL 
--   implementation) queries, they can be either by lowercase or uppercase (as long as you are consistent) (e.g. 'VARCHAR' or 
--   'varchar', 'int' or 'INT', all or which are acceptable MySQL (SQL implementation) syntax)

-- + Knowing the types of datatype in MySQL (SQL implementation) is important because when modifying Relational Databases,
--   especially when inserting or updating row(s)/data(s), if you accidentally used a different type of datatype for the input of
--   the inserted/updated row(s)/data(s) as the type of datatype used in the individual columns, you will get an error! 
--   (e.g. during this tutorial it took me awhile to figure out why this MySQL (SQL implementation) query to insert a row/data: 
--    'INSERT INTO `languages` (`language_id`, `name`) VALUES ('9','Chinese);' keep giving an error. Eventually I realised it
--    is because the 'name' column in in the 'languages' table is taking a numeric datatype, rather than a string datatype, 
--    which I accidentally attempted to do in my MySQL (SQL implementation) query to insert a row/data: 
--    'INSERT INTO `languages` (`language_id`, `name`) VALUES ('9','Chinese);', when I used '9' (string datatype) instead of 
--    9 (numeric datatype)

-- + NOT VERY IMPORTANT:
--   Some of the datatypes have an additional label displayed in the (tabular) output of the 'DESCRIBE' MySQL (SQL 
--   implementation) command. Here are what some of these additional labels mean:
--   -> Unsigned (Applicable to numeric (integer) datatypes (i.e. 'int unsigned', 'tinyint unsigned', 'smallint unsigned')):
--      - Indicates that the column can only store non-negative values (zero and positive integers). This effectively doubles 
--        the positive range of the integer data type 
--        (e.g. 'int unsigned' can store values from 0 to 4294967295 (instead of -2147483648 to 2147483647 for 'int (signed)'))

--   -> (M) (Applicable to specific datatypes like 'char(M)', 'varchar(M)', 'int(M)'):
--     - Indicates the maximum display width for integer and string data types. For numeric types, it affects display formatting, 
--       while for string datatypes, it specifies the maximum number of characters
--       (e.g. 'char(10)' allows storing up to 10 characters, 'int(4)' may display an integer padded with leading spaces to fit 
--       4 characters ('123' might be displayed as ' 123').

--   -> (D, F) (Applies to numeric (fixed-point) datatypes (i.e. 'decimal(D, F)', 'numeric(D, F)'):
--      - Indicates precision (D) and scale (F) for decimal/numeric numbers, where precision (D) represent the total number 
--        of digits (both left and right of the decimal point), and scale (F) represent the number of digits to the right 
--        of the decimal point
--        (e.g. 'decimal(8, 2)' can store numbers like 12345.67 (8 total digits, 2 after the decimal point))
-- )


-- ///////////////////////////////////////////////////////////////////////////////////////////////////////


-- Describing the essential information about a table (in this context, the 'movies' table) 
DESCRIBE `movies`;


-- To test this line of MySQL (SQL implementation) query from the 'What does each column of the (tabular) output of the 
-- 'DESCRIBE' MySQL (SQL implementation) command represent?' section above:
--    (Note: Since the output of the 'DESCIBE' MySQL (SQL implementation) command is unable to directly check if an individual
--           column in the table in tagged with Foreign Key, an alternate MySQL (SQL implementation) query to use that can 
--           allow us to directly check if an individual column in the table in tagged with Foreign Key is:
--           'SHOW CREATE TABLE your_table_name;' (due to redundancy, I will not be explaining this MySQL (SQL implementation) 
--           query in this tutorial))
SHOW CREATE TABLE `movies`;
