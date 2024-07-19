-- About the available mathematical operators in MySQL (SQL implementation):
-- 1. Positive sign (+): Adds two values or indicates a positive value 
SELECT 10 + 5;   -- Output: 15)
SELECT +10;       -- Output: 10

-- 2. Negative sign (-): Subtracts the second value from the first or indicates a negative value 
SELECT 10 - 5;   -- Output: 5 
SELECT -10;      -- Output: -10

-- 3. Multiplication (*): Multiplies two values 
SELECT 10 * 5;   -- Output: 50

-- 4. Division (/): Divides the first value by the second (Be cautious of division by zero) 
SELECT 10 / 5;   -- Output: 2

-- 5. Modulus (%): Returns the remainder of the division of two values 
SELECT 10 % 3;   -- Output: 1

-- 6. Exponentiation (^) (in some SQL dialects, not 'standard SQL'): Raises a number to the power of another 
--    number. MySQL does not support this operator directly, but commands like the 'POWER' MySQL (SQL 
--    implementation) command can be used instead 
SELECT POWER(2, 3);   -- Output: 8

-- 7. Equal To (=): Compares if two values are equal 
-- (e.g. SELECT * FROM `employees` WHERE `salary` = 50000;)

-- 8. Not Equal To (<> or !=): Compares if two values are not equal 
-- (e.g. SELECT * FROM `employees` WHERE `salary` <> 50000; or 'SELECT * FROM `employees` WHERE `salary` != 50000;)

-- 9. Greater Than (>): Compares if the value on the left is greater than the value on the right 
-- (e.g. SELECT * FROM `employees` WHERE `salary` > 50000;)

-- 10. Less Than (<): Compares if the value on the left is less than the value on the right(e.g.  
-- (e.g. SELECT * FROM `employees` WHERE `salary` < 50000;)

-- 11. Greater Than or Equal To (>=): Compares if the value on the left is greater than or equal to the value on the right(e.g.  
-- (e.g. SELECT * FROM `employees` WHERE `salary` >= 50000;)

-- 12. Less Than or Equal To (<=): Compares if the value on the left is less than or equal to the value on the right 
-- (e.g. SELECT * FROM `employees` WHERE `salary` <= 50000;)