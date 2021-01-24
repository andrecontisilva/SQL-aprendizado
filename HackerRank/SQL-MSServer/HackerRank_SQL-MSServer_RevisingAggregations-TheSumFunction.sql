/*
Site: HackerRank
Type: Practice
Subdomain: Aggregation
Difficulty: Easy
Skill: SQL (MS Server)
Problem: Revising Aggregations - The Sum Function
URL: https://www.hackerrank.com/challenges/revising-aggregations-sum/problem
*/


-- SOLUTION:

SELECT SUM(population) 
FROM city
WHERE district = 'California';