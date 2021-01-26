/*
Site: HackerRank
Type: Practice
Subdomain: Basic Select
Difficulty: Easy
Skill: SQL (MS Server)
Problem: Weather Observation Station 12
URL: https://www.hackerrank.com/challenges/weather-observation-station-12/problem
*/


-- SOLUTION:

-- v1: Cities names by ascending order
SELECT distinct CITY 
FROM STATION
WHERE CITY LIKE '[^aeiou]%[^aeiou]';


-- v2: Cities names by descending order
SELECT distinct CITY 
FROM STATION
WHERE CITY LIKE '[^aeiou]%[^aeiou]'
ORDER BY city DESC;
