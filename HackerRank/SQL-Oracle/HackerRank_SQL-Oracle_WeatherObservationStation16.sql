/*
Site: HackerRank
Type: Practice
Subdomain: Aggregation
Difficulty: Easy
Skill: SQL (Oracle)
Problem: Weather Observation Station 16
URL: https://www.hackerrank.com/challenges/weather-observation-station-16/problem
*/


-- SOLUTION:

SELECT ROUND(MIN(lat_n),4) 
FROM station
WHERE lat_n > 38.7780;