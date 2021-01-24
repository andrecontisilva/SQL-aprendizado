/*
Site: HackerRank
Type: Practice
Subdomain: Basic Select
Difficulty: Easy
Skill: SQL (Oracle)
Problem: Weather Observation Station 5
URL: https://www.hackerrank.com/challenges/weather-observation-station-5/problem
*/


-- SOLUTION:

SELECT * FROM (
    SELECT 
        city, 
        LENGTH(city) 
    FROM station
    ORDER BY LENGTH(city), city
    )
WHERE ROWNUM = 1
UNION
SELECT * FROM (
    SELECT 
        city, 
        LENGTH(city) 
    FROM station
    ORDER BY LENGTH(city) DESC, city
    )
WHERE ROWNUM = 1;