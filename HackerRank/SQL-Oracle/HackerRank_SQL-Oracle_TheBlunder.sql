/*
Site: HackerRank
Type: Practice
Subdomain: Aggregation
Difficulty: Easy
Skill: SQL (Oracle)
Problem: The Blunder
URL: https://www.hackerrank.com/challenges/the-blunder/problem
*/


-- SOLUTION:

SELECT 
    CEIL(AVG(salary) - AVG(REPLACE(salary,0,'')))
FROM employees;