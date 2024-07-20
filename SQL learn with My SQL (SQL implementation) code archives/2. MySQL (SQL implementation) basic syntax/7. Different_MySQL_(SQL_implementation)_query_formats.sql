-- There are different formats of writing MySQL (SQL implementation) queries, here are 3 of the most common formats:
-- 1. One-liner MySQL (SQL implementation) queries format
-- 2. Formatted MySQL (SQL implementation) queries format
-- 3. Unformatted MySQL (SQL implementation) queries format


-- In this example, we will be rewriting the same MySQL (SQL implementation) query in the 3 different formats, which all
-- does the same thing.
-- 1. One-liner MySQL (SQL implementation) queries format
--    + For very simple queries or when space is limited
SELECT * FROM `movies` WHERE `release_year` = 2022 AND `studio` = 'Marvel Studios' AND `imdb_rating` = 7 AND `language_id` = 5;


-- 2. Formatted MySQL (SQL implementation) queries format
--    + Recommended for more complex queries, as this format includes proper indentation and line breaks, which improves 
--      readability
SELECT *
FROM movies
WHERE release_year = 2022
  AND studio = 'Marvel Studios'
  AND imdb_rating = 7
  AND language_id = 5;

SELECT * 
FROM `movies` 
WHERE `release_year` = 2018 
  OR `release_year` = 2019 
  OR `release_year` = 2020 
  OR `release_year` = 2021 
  OR `release_year` = 2022;

-- Is it required to add the indentations in front of the MySQL (SQL implementation) queries?
-- No, it's not required to indentations in front of the  MySQL (SQL implementation) queries?. The MySQL (SQL implementation) 
-- query can still work without the indentations. However, adding the indentations in front of the MySQL (SQL implementation)
-- queries is encouraged/common practice as it helps with readability
SELECT * 
FROM `movies` 
WHERE `release_year` = 2018 
OR `release_year` = 2019 
OR `release_year` = 2020 
OR `release_year` = 2021 
OR `release_year` = 2022;


-- 3. Unformatted MySQL (SQL implementation) queries format
--    + Usually not recommended, as this format does not include proper indentation and line breaks, which worsens 
--      readability
SELECT * 
FROM `movies` 
WHERE `release_year` = 2018 OR `release_year` = 2019 
  OR `release_year` = 2020 
  OR `release_year` = 2021 
  OR `release_year` = 2022;

SELECT * FROM `movies` 
WHERE `release_year` = 2018 
  OR `release_year` = 2019 
  OR `release_year` = 2020 
  OR `release_year` = 2021 
  OR `release_year` = 2022;

