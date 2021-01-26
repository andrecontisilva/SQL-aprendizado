/*
Site: HackerRank
Type: Practice
Subdomain: Basic Select
Difficulty: Easy
Skill: SQL (MS Server)
Problem: Weather Observation Station 8
URL: https://www.hackerrank.com/challenges/weather-observation-station-8/problem
*/


-- SOLUTION:

-- v1: Cities names by ascending order
SELECT DISTINCT city 
FROM station 
WHERE city LIKE '[aeiou]%[aeiou]';


-- v2: Cities names by descending order
SELECT DISTINCT city 
FROM station 
WHERE city LIKE '[aeiou]%[aeiou]'
ORDER BY city DESC;
