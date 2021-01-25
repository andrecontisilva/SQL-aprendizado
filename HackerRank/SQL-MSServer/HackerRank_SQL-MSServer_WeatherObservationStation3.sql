/*
Site: HackerRank
Type: Practice
Subdomain: Basic Select
Difficulty: Easy
Skill: SQL (MS Server)
Problem: Weather Observation Station 3
URL: https://www.hackerrank.com/challenges/weather-observation-station-3/problem
*/


-- SOLUTION:

-- v1: Unordered list of cities
SELECT DISTINCT(city) 
FROM station
WHERE (id % 2) = 0;


-- v2: Cities names by ascending order
SELECT DISTINCT(city) 
FROM station
WHERE (id % 2) = 0
ORDER BY city;


-- v3: Cities names by descending order
SELECT DISTINCT(city) 
FROM station
WHERE (id % 2) = 0
ORDER BY city DESC;