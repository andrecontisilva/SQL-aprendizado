/*
Site: HackerRank
Type: Practice
Subdomain: Aggregation
Difficulty: Easy
Skill: SQL (Oracle)
Problem: Revising Aggregations - The Count Function
URL: https://www.hackerrank.com/challenges/revising-aggregations-the-count-function/problem
*/


-- SOLUTION:

SELECT COUNT(district) 
FROM city
WHERE population > 100000;