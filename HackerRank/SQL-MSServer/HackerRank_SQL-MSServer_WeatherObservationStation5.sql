/*
Site: HackerRank
Type: Practice
Subdomain: Basic Select
Difficulty: Easy
Skill: SQL (MS Server)
Problem: Weather Observation Station 5
URL: https://www.hackerrank.com/challenges/weather-observation-station-5/problem
*/


-- SOLUTION:

SELECT 
    TOP 1 city, 
    LEN(city) AS length_city
FROM station 
ORDER BY LEN(city), city;

SELECT 
    TOP 1 city, 
    LEN(city) AS length_city
FROM station 
ORDER BY LEN(city) DESC, city;