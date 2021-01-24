/*
Site: HackerRank
Type: Practice
Subdomain: Aggregation
Difficulty: Easy
Skill: SQL (Oracle)
Problem: Weather Observation Station 17
URL: https://www.hackerrank.com/challenges/weather-observation-station-17/problem
*/


-- SOLUTION:

SELECT ROUND(long_w,4) 
FROM (
    SELECT long_w 
    FROM station
    WHERE lat_n > 38.7780
    ORDER BY lat_n ASC
    )
WHERE ROWNUM = 1;