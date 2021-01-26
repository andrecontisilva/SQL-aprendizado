/*
Site: HackerRank
Type: Practice
Subdomain: Aggregation
Difficulty: Easy
Skill: SQL (MS Server)
Problem: Weather Observation Station 15
URL: https://www.hackerrank.com/challenges/weather-observation-station-15/problem
*/


-- SOLUTION:

SELECT 
    CAST(long_w AS DECIMAL(10,4))
FROM station 
WHERE lat_n = (
    SELECT 
        MAX(lat_n)
    FROM station 
    WHERE lat_n < 137.2345
              );
