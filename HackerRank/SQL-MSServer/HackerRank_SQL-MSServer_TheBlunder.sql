/*
Site: HackerRank
Type: Practice
Subdomain: Aggregation
Difficulty: Easy
Skill: SQL (MS Server)
Problem: The Blunder
URL: https://www.hackerrank.com/challenges/the-blunder/problem
*/


-- SOLUTION:

SELECT 
    CAST(
        CEILING(
                (AVG
                    (CAST(salary AS FLOAT)) - AVG(CAST(REPLACE(salary,0,'') AS FLOAT))
                )
            ) 
    AS INT)
FROM employees;