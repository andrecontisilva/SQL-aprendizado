/*
Site: HackerRank
Type: Practice
Subdomain: Basic Select
Difficulty: Easy
Skill: SQL (MS Server)
Problem: Weather Observation Station 10
URL: https://www.hackerrank.com/challenges/weather-observation-station-10/problem
*/


-- SOLUTION:

-- v1: Cities names by ascending order
SELECT DISTINCT city 
FROM station 
WHERE city NOT LIKE '%[aeiou]';


-- v2: Cities names by descending order
SELECT DISTINCT city 
FROM station 
WHERE city NOT LIKE '%[aeiou]'
ORDER BY city DESC;
