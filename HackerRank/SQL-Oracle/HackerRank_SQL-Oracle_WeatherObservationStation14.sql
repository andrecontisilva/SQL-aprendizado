/*
Site: HackerRank
Type: Practice
Subdomain: Aggregation
Difficulty: Easy
Skill: SQL (Oracle)
Problem: Weather Observation Station 14
URL: https://www.hackerrank.com/challenges/weather-observation-station-14/problem
*/


-- SOLUTION:

SELECT TRUNC(MAX(lat_n),4) 
FROM station
WHERE lat_n < 137.2345;