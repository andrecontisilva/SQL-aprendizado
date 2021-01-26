/*
Site: HackerRank
Type: Practice
Subdomain: Aggregation
Difficulty: Easy
Skill: SQL (MS Server)
Problem: Weather Observation Station 16
URL: https://www.hackerrank.com/challenges/weather-observation-station-16/problem
*/


-- SOLUTION:

SELECT 
    CAST(ROUND(MIN(lat_n), 4) AS DECIMAL(10,4)) 
FROM Station 
WHERE lat_n > 38.7780;
