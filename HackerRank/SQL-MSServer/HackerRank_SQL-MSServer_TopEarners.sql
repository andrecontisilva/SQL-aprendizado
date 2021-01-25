/*
Site: HackerRank
Type: Practice
Subdomain: Aggregation
Difficulty: Easy
Skill: SQL (MS Server)
Problem: Top Earners
URL: https://www.hackerrank.com/challenges/earnings-of-employees/problem
*/


-- SOLUTION:

SELECT
    TOP 1 (months * salary) AS earnings,
    COUNT(1)
FROM employee
GROUP BY months * salary
ORDER BY earnings DESC;