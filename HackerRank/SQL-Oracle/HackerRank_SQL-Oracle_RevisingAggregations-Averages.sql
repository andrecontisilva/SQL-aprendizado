/*
Site: HackerRank
Type: Practice
Subdomain: Aggregation
Difficulty: Easy
Skill: SQL (Oracle)
Problem: Revising Aggregations - Averages
URL: https://www.hackerrank.com/challenges/revising-aggregations-the-average-function/problem
*/


-- SOLUTION:

SELECT AVG(population) AS avg_population
FROM city
WHERE district = 'California';