-- Doing cases in MySQL (SQL implementation) is very similar to doing if-elif-else statements in Python. In MySQL (SQL 
-- implementation), when we do cases, the MySQL (SQL implementation) commands you need to know are 'CASE', 'WHEN', 'THEN',
-- 'ELSE', 'END' and 'AS'.

-- General syntax of the 'CASE', 'WHEN', 'THEN', 'ELSE', 'END' and 'AS' MySQL (SQL implementation) commands in doing cases:
--       SELECT 
--           column1, column2,
--           CASE 
--               WHEN condition1 THEN result1
--               WHEN condition2 THEN result2
--               ...
--               ELSE default_result
--           END AS alias_name
--       FROM 
--           table_name;

-- + 'SELECT': This command is used to specify the columns that you want to retrieve from the table.
-- + 'column1,': This is the first column that you are selecting from the table.
-- + 'column2,': This is the second column that you are selecting from the table.
-- + 'CASE':  This command starts the conditional logic statement.
-- + 'WHEN condition1': Specifies the first condition to evaluate. If this condition is true, then...
-- + 'THEN result1': This is the result to return when condition1 is true.
-- + '...' : Indicates that you can have multiple WHEN ... THEN ... clauses for different conditions.
-- + 'ELSE default_result': 'ELSE' command specifies the default result to return if none of the WHEN conditions are met
--                          while 'default_result' is the value to return if none of the specified WHEN conditions are true. 
--                          This line of code is optional. If omitted and no conditions are met, the result will be NULL.
-- + 'END': This command ends the CASE statement.
-- + 'AS': This command is used to provide an alias for the result of the CASE statement.
-- + 'alias_name': This is the name you give to the result column of the CASE statement. It allows you to reference this 
--                 result with a meaningful name.
-- + 'FROM table_name': This part specifies the table from which you are selecting the data.


-- Source: https://youtu.be/RYIiOG4LsvQ?si=arvwTLNuekSv1uE9 (Youtube video by Alex the Analyst, titled: 'Case Statements in 
--         MySQL | Intermediate MySQL')



-- Examples of doing cases in MySQL (SQL implementation), try and run these MySQL (SQL implementation) query to see the 
-- output!
SELECT 
    movie_id, title, industry, release_year,
    CASE 
        WHEN release_year BETWEEN 1990 AND 2010 THEN 'Somewhat recent movies'
        WHEN release_year <= 1990 THEN 'Old movies'
        ELSE 'New movies'
    END AS 'How recent?'
FROM 
    movies;


SELECT 
    movie_id, title, industry, imdb_rating,
    CASE 
        WHEN imdb_rating > 8 THEN 'Good movie'
        WHEN imdb_rating BETWEEN 5 AND 8 THEN 'Decent movie'
        WHEN imdb_rating < 5 THEN 'Bad movie'
        ELSE 'No rating'
    END AS 'Is the movie good?'
FROM 
    movies;
