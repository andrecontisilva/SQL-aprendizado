/*
Site: HackerRank
Type: Practice
Subdomain: Basic Select
Difficulty: Easy
Skill: SQL (MS Server)
Problem: Weather Observation Station 6
URL: https://www.hackerrank.com/challenges/weather-observation-station-6/problem
*/


-- SOLUTION:

-- v1: Cities names by ascending order
SELECT DISTINCT city 
FROM station 
WHERE city LIKE '[AEIOU]%';


-- v2: Cities names by descending order
SELECT DISTINCT city 
FROM station 
WHERE city LIKE '[AEIOU]%'
ORDER BY city DESC;