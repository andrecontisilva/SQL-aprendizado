/*
Site: HackerRank
Type: Practice
Subdomain: Aggregation
Difficulty: Easy
Skill: SQL (MS Server)
Problem: Weather Observation Station 14
URL: https://www.hackerrank.com/challenges/weather-observation-station-14/problem
*/


-- SOLUTION:

SELECT CAST(MAX(lat_n) AS DECIMAL (10,4)) 
FROM station
WHERE lat_n < 137.2345;