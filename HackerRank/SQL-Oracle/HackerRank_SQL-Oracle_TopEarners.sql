/*
Site: HackerRank
Type: Practice
Subdomain: Aggregation
Difficulty: Easy
Skill: SQL (Oracle)
Problem: Top Earners
URL: https://www.hackerrank.com/challenges/earnings-of-employees/problem
*/


-- SOLUTION:

SELECT * 
FROM (
    SELECT 
        (months * salary),
        COUNT(1)
    FROM employee
    GROUP BY months * salary
    ORDER BY months * salary DESC
    )
WHERE ROWNUM = 1;