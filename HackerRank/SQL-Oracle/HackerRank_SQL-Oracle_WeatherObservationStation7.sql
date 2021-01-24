/*
Site: HackerRank
Type: Practice
Subdomain: Basic Select
Difficulty: Easy
Skill: SQL (Oracle)
Problem: Weather Observation Station 7
URL: https://www.hackerrank.com/challenges/weather-observation-station-7/problem
*/


-- SOLUTION:

-- v1: Unordered list of cities
SELECT DISTINCT city 
FROM station 
WHERE SUBSTR(city,LENGTH(city),LENGTH(city)) 
    IN ('a','i','e','o','u');


-- v2: Cities names by ascending order
SELECT DISTINCT city 
FROM station 
WHERE SUBSTR(city,LENGTH(city),LENGTH(city)) 
    IN ('a','i','e','o','u')
ORDER BY city;


-- v3: Cities names by descending order
SELECT DISTINCT city 
FROM station 
WHERE SUBSTR(city,LENGTH(city),LENGTH(city)) 
    IN ('a','i','e','o','u')
ORDER BY city DESC;