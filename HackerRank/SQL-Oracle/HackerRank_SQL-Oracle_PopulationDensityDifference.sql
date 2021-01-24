/*
Site: HackerRank
Type: Practice
Subdomain: Aggregation
Difficulty: Easy
Skill: SQL (Oracle)
Problem: Population Density Difference
URL: https://www.hackerrank.com/challenges/population-density-difference/problem
*/


-- SOLUTION:

SELECT (MAX(population) - MIN(population)) 
FROM city;