/*
Site: HackerRank
Type: Practice
Subdomain: Aggregation
Difficulty: Easy
Skill: SQL (Oracle)
Problem: Weather Observation Station 2
URL: https://www.hackerrank.com/challenges/weather-observation-station-2/problem
*/


-- SOLUTION:

SELECT 
    ROUND(SUM(lat_n),2) AS lat, 
    ROUND(SUM(long_w),2) AS lon
FROM station;