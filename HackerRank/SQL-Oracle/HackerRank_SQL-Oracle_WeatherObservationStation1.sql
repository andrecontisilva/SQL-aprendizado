/*
Site: HackerRank
Type: Practice
Subdomain: Basic Select
Difficulty: Easy
Skill: SQL (Oracle)
Problem: Weather Observation Station 1
URL: https://www.hackerrank.com/challenges/weather-observation-station-1/problem
*/


-- SOLUTION:

-- v1: Unordered list of cities
SELECT 
    city, 
    state 
FROM station;


-- v2: Cities names by ascending order
SELECT 
    city, 
    state 
FROM station
ORDER BY city;


-- v3: Cities names, ordered by states in ascending order
SELECT 
    city, 
    state 
FROM station
ORDER BY state;