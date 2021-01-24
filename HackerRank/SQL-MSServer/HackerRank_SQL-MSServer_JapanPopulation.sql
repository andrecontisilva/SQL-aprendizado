/*
Site: HackerRank
Type: Practice
Subdomain: Aggregation
Difficulty: Easy
Skill: SQL (MS Server)
Problem: Japan Population
URL: https://www.hackerrank.com/challenges/japan-population/problem
*/


-- SOLUTION:

SELECT SUM(population) 
FROM city
WHERE countrycode = 'JPN';