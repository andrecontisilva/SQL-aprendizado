/*
Site: HackerRank
Type: Practice
Subdomain: Aggregation
Difficulty: Easy
Skill: SQL (Oracle)
Problem: Weather Observation Station 13
URL: https://www.hackerrank.com/challenges/weather-observation-station-13/problem
*/


-- SOLUTION:

SELECT SUM(lat_n) 
FROM station
WHERE lat_n BETWEEN 38.7880 AND 137.2345;