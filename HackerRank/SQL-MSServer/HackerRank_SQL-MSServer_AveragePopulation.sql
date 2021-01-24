/*
Site: HackerRank
Type: Practice
Subdomain: Aggregation
Difficulty: Easy
Skill: SQL (MS Server)
Problem: Average Population
URL: https://www.hackerrank.com/challenges/average-population/problem
*/


-- SOLUTION:

SELECT FLOOR(AVG(population)) AS avg_population
FROM city;