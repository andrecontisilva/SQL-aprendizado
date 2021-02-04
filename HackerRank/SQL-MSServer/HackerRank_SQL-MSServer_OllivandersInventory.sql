/*
Site: HackerRank
Type: Practice
Subdomain: Basic Join
Difficulty: Medium
Skill: SQL (MS Server)
Problem: Ollivander's Inventory
URL: https://www.hackerrank.com/challenges/harry-potter-and-wands/problem
*/


-- SOLUTION:


SELECT 
    id, 
    age, 
    coins_needed, 
    power
FROM(
    SELECT 
        w.id, 
        wp.age, 
        w.coins_needed, 
        w.power,
        ROW_NUMBER() OVER 
            (
                PARTITION BY w.code, w.power  
                ORDER BY w.coins_needed, w.power DESC
            ) AS rownbr
    FROM wands w WITH (NOLOCK)
    JOIN wands_property wp WITH (NOLOCK) ON w.code = wp.code
    WHERE wp.is_evil = 0
    ) AS wand_data
WHERE rownbr = 1
ORDER BY power DESC, age DESC;


/*
NOTE:
More about ROW_NUMBER(), OVER(), PARTITION BY and NOLOCK
https://docs.microsoft.com/pt-br/sql/t-sql/functions/row-number-transact-sql?view=sql-server-ver15
https://docs.microsoft.com/pt-br/sql/t-sql/queries/select-over-clause-transact-sql?view=sql-server-ver15
https://pt.stackoverflow.com/questions/254409/quando-usar-a-cl%C3%A1usula-over
https://pt.stackoverflow.com/questions/129789/quando-usar-with-nolock
*/