/*
Site: HackerRank
Type: Practice
Subdomain: Aggregation
Difficulty: Easy
Skill: SQL (MS Server)
Problem: Weather Observation Station 17
URL: https://www.hackerrank.com/challenges/weather-observation-station-17/problem
*/


-- SOLUTION:

-- v1: With SUBQUERY
SELECT CAST(long_w AS DECIMAL(10,4))
FROM station
WHERE lat_n = (
    SELECT MIN(lat_n) 
    FROM station
    WHERE lat_n > 38.7780
              )


-- v2: Without SUBQUERY
SELECT TOP 1 
    CAST(long_w AS DECIMAL(10,4)) 
FROM station 
WHERE lat_n > 38.7780 
ORDER BY lat_n;
