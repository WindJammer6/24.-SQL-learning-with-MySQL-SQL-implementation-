-- The 'LIKE' MySQL (SQL implementation) command:
-- The 'LIKE' MySQL (SQL implementation) command is used to search for a specified pattern in a column, and returns 
-- the rows/datas that fit in the given pattern.

-- The 'LIKE' MySQL (SQL implementation) command is case-insensitive by default (e.g. if you search for the pattern 'apple' 
-- using the 'LIKE' MySQL (SQL implementation) command, it will return results that include 'Apple', 'APPLE', 'aPpLe', and 
-- so on.


-- The Wild Card operators:
-- Wild Card operators are special operators that are most commonly used with the 'LIKE' MySQL (SQL implementation) 
-- command (there are other more complex commands that Wild Card operators can be used with in MySQL (SQL implementation) 
-- as well, but they are most often used with the'LIKE' MySQL (SQL implementation) command) to search for specific 
-- patterns. Wild Card operators substitute one or more characters in the pattern.

-- There are 2 types of Wild Card operators available in MySQL (SQL implementation):
-- 1. Percent (%): Represents zero or more characters.
-- 2. Underscore (_):: Represents a single character.



-- 1. Using the 'LIKE' MySQL (SQL implementation) command with the Percent (%) Wild Card operator
-- Selecting all columns from a table (in this context, the 'movies' table) and finding the rows where the 'title' 
-- column is like the word 'avenger' as a substring, with any sequence of characters before that, and followed by
-- any sequence of characters after that.
SELECT * FROM `movies` WHERE `title` LIKE '%avenger%';

-- Selecting all columns from a table (in this context, the 'movies' table) and finding the rows where the 'title' 
-- column is like the word 'avenger' as the ending pattern, with any sequence of characters before that.
SELECT * FROM `movies` WHERE `title` LIKE '%avenger';

-- Selecting all columns from a table (in this context, the 'movies' table) and finding the rows where the 'title' 
-- column is like the word 'avenger' as the starting pattern, followed by any sequence of characters after that.
SELECT * FROM `movies` WHERE `title` LIKE 'avenger%';

-- Selecting all columns from a table (in this context, the 'movies' table) and finding the rows where the 'title' 
-- column is like the word 'a' as the starting pattern and 'r' as the ending pattern, followed by any sequence of 
-- characters between them.
SELECT * FROM `movies` WHERE `title` LIKE 'a%r';


-- 2. Using the 'LIKE' MySQL (SQL implementation) command with the Underscore (_) Wild Card operator
-- Selecting all columns from a table (in this context, the 'movies' table) and finding the rows where the 'title' 
-- column is like the word 'vatar' with a single character in front of it
SELECT * FROM `movies` WHERE `title` LIKE '_vatar';

-- Selecting all columns from a table (in this context, the 'movies' table) and finding the rows where the 'title' 
-- column is like any five-letter word that starts with 'a' and ends with 'tar', with any two characters in between.
SELECT * FROM `movies` WHERE `title` LIKE 'a__tar';

-- Selecting all columns from a table (in this context, the 'movies' table) and finding the rows where the 'title' 
-- column is like any five-letter word.
SELECT * FROM `movies` WHERE `title` LIKE '_____';



-- Using the 'LIKE' MySQL (SQL implementation) command with different combinations of Wild Card operators
-- Selecting all columns from a table (in this context, the 'movies' table) and finding the rows where the 'title' 
-- column is like the word that starts with any single character followed by 'v' and any sequence of characters after 
-- that.
SELECT * FROM `movies` WHERE `title` LIKE '_v%';

-- Selecting all columns from a table (in this context, the 'movies' table) and finding the rows where the 'title' 
-- column is like the word that starts with 'T', has any single character in the second position, followed by 'e',
-- followed by a space and any sequence of characters after that.
SELECT * FROM `movies` WHERE `title` LIKE 'T_e %';
