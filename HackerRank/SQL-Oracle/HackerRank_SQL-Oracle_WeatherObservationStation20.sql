/*
Site: HackerRank
Type: Practice
Subdomain: Aggregation
Difficulty: Medium
Skill: SQL (Oracle)
Problem: Weather Observation Station 20
URL: https://www.hackerrank.com/challenges/weather-observation-station-20/problem
*/


-- SOLUTION:

SELECT 
    ROUND(MEDIAN(lat_n), 4)
FROM station;