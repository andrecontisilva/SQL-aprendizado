/*
Site: HackerRank
Type: Practice
Subdomain: Aggregation
Difficulty: Easy
Skill: SQL (Oracle)
Problem: Weather Observation Station 15
URL: https://www.hackerrank.com/challenges/weather-observation-station-15/problem
*/


-- SOLUTION:

SELECT ROUND(long_w,4) 
FROM (
    SELECT long_w 
    FROM station
    WHERE lat_n < 137.2345
    ORDER BY lat_n DESC
    )
WHERE ROWNUM = 1;