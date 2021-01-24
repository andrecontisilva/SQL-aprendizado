/*
Site: HackerRank
Type: Practice
Subdomain: Basic Select
Difficulty: Easy
Skill: SQL (Oracle)
Problem: Weather Observation Station 4
URL: https://www.hackerrank.com/challenges/weather-observation-station-4/problem
*/


-- SOLUTION:

SELECT COUNT(city) - COUNT(DISTINCT city) 
FROM station;