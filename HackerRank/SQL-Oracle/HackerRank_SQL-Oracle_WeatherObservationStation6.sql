/*
Site: HackerRank
Type: Practice
Subdomain: Basic Select
Difficulty: Easy
Skill: SQL (Oracle)
Problem: Weather Observation Station 6
URL: https://www.hackerrank.com/challenges/weather-observation-station-6/problem
*/


-- SOLUTION:

-- v1: Unordered list of cities
SELECT DISTINCT(city)
FROM station
WHERE LOWER(SUBSTR(city,1,1)) IN ('a','e','i','o','u');


-- v2: Cities names by ascending order
SELECT DISTINCT(city)
FROM station
WHERE LOWER(SUBSTR(city,1,1)) IN ('a','e','i','o','u')
ORDER BY city;


-- v3: Cities names by descending order
SELECT DISTINCT(city)
FROM station
WHERE LOWER(SUBSTR(city,1,1)) IN ('a','e','i','o','u')
ORDER BY city DESC;