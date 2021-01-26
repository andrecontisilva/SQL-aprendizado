/*
Site: HackerRank
Type: Practice
Subdomain: Aggregation
Difficulty: Easy
Skill: SQL (MS Server)
Problem: Weather Observation Station 13
URL: https://www.hackerrank.com/challenges/weather-observation-station-13/problem
*/


-- SOLUTION:

-- v1: Using CAST()
SELECT CAST(SUM(lat_n) AS DECIMAL(32, 4)) 
FROM station 
WHERE lat_n BETWEEN 38.7880 AND 137.2345;


--v2: Using FORMAT()
SELECT FORMAT(SUM(lat_n), '#.0000')
FROM station
WHERE lat_n BETWEEN 38.7880 AND 137.2345;

