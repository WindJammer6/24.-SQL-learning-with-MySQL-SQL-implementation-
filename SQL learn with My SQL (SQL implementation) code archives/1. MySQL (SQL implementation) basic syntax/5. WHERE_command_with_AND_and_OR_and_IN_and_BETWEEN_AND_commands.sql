-- Lets say for this file, you are a movie enthusiast trying to analyse the 'movies' Relational Database, and we will be 
-- using the 'WHERE' MySQL (SQL implementation) command to help us analyse the 'movies' Relational Database in different 
-- contexts 



-- The 'WHERE' MySQL (SQL implementation) command:
-- The 'WHERE' MySQL (SQL implementation) command is used to filter the rows/data, to extract only those rows/data 
-- that fulfill a specified condition.


-- Selecting all columns from a table (in this context, the 'movies' table) and finding the rows where the 'release_year' 
-- column is equal to the year 2000

-- Basically in this context, what this does is that it allows us to find out which movies were released on the year 
-- 2022
SELECT * FROM `movies` WHERE `release_year` = 2022;




-- The 'AND' MySQL (SQL implementation) command:
-- The 'AND' MySQL (SQL implementation) command is used to check if more than one conditions are true. 

-- Since the 'AND' MySQL (SQL implementation) command causes more conditions that a row/data needs to fulfill, when more
-- conditions are added, there is a tendency for fewer row/data to be selected


-- Selecting all columns from a table (in this context, the 'movies' table) and finding the rows where the 'release_year' 
-- column is equal to the year 2022 and the 'studio' column is equal to 'Marvel Studios'

-- Basically in this context, what this does is that it allows us to find out which movies were released on the year 
-- 2022 and is made by Marvel Studios
SELECT * FROM `movies` WHERE `release_year` = 2022 AND `studio` = 'Marvel Studios';

-- (Note: You can add as many 'AND' MySQL (SQL implementation) commands as you like to add as many conditions as required)
SELECT * FROM `movies` WHERE `release_year` = 2022 AND `studio` = 'Marvel Studios' AND `imdb_rating` = 7 AND `language_id` = 5;




-- The 'OR' MySQL (SQL implementation) command:
-- The 'OR' MySQL (SQL implementation) command is used to check if any one condition of more than one conditions is true. 

-- Since the 'OR' MySQL (SQL implementation) command increases the number of conditions that a row/data need to fulfill
-- any one condition, when more conditions are added, there is a tendency for more row/data to be selected


-- Selecting all columns from a table (in this context, the 'movies' table) and finding the rows where the 'release_year' 
-- column is equal to the year 2021 or the 'relase_year' column is equal to 2022

-- Basically in this context, what this does is that it allows us to find out which movies were released on the year 
-- 2021 or 2022
SELECT * FROM `movies` WHERE `release_year` = 2021 OR `release_year` = 2022;

-- (Note: You can add as many 'OR' MySQL (SQL implementation) commands as you like to add as many conditions as required)
SELECT * FROM `movies` WHERE `release_year` = 2018 OR `release_year` = 2019 OR `release_year` = 2020 OR `release_year` = 2021 OR `release_year` = 2022;




-- The 'IN' MySQL (SQL implementation) command:
-- The 'IN' MySQL (SQL implementation) command is used to specify multiple values in a specified list.

-- The 'IN' MySQL (SQL implementation) command primarily helps to make MySQL (SQL implementation) queries more concise and
-- readable compared to using multiple 'OR' MySQL (SQL implementation) command to specify multiple conditions (Note: the
-- 'IN' MySQL (SQL implementation) command cannot be used to make multiple conditions added together with the 'AND'
-- MySQL (SQL implementation) command more concise and reasable!).


-- Selecting all columns from a table (in this context, the 'movies' table) and finding the rows where the 'release_year' 
-- column is equal to the year 2018, or 2019, or 2020, or 2021, or 2022

-- Basically in this context, what this does is that it allows us to find out which movies were released on the year 
-- 2018, or 2019, or 2020, or 2021, or 2022

-- This is another way to do the same thing as the MySQL (SQL implementation) query above using the 'IN' MySQL (SQL 
-- implementation) command, but the 'IN' MySQL (SQL implementation) command helps to shorten the repetitiveness of keep 
-- having to retype 'release_year' as compared to the MySQL (SQL implementation) query above to specify the multiple 
-- conditions added together with the 'OR' MySQL (SQL implementation) command
SELECT * FROM `movies` WHERE `release_year` IN (2018, 2019, 2020, 2021, 2022);




-- The 'BETWEEN AND' MySQL (SQL implementation) commands:
-- The 'BETWEEN AND' MySQL (SQL implementation) commands is used to specify values in a given range, inclusive of the start
-- and end values.

-- Selecting all columns from a table (in this context, the 'movies' table) and finding the rows where the 'release_year' 
-- column is equal to the year between 2018 to 2022, inclusive of the year 2018 and 2022

-- Basically in this context, what this does is that it allows us to find out which movies were released between the year 
-- 2018 to 2022, inclusive of the year 2018 and 2022

-- This is another way to do the same thing as the MySQL (SQL implementation) query above using the 'BETWEEN AND' MySQL (SQL 
-- implementation) commands, but the 'BETWEEN AND' MySQL (SQL implementation) commands helps to shorten the repetitiveness of keep 
-- having to retype 'release_year' as compared to the MySQL (SQL implementation) query above to specify the multiple 
-- conditions added together with the 'OR' MySQL (SQL implementation) commands
SELECT * FROM `movies` WHERE `release_year` BETWEEN 2018 AND 2022;

-- (Note: If you accidentally use the  'BETWEEN AND' MySQL (SQL implementation) commands with the starting value larger than 
--  the ending value, the result will be an empty set, as no rows/values can satisfy a condition where the lower bound is 
--  greater than the upper bound.)
