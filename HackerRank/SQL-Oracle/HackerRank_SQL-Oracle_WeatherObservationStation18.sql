/*
Site: HackerRank
Type: Practice
Subdomain: Aggregation
Difficulty: Medium
Skill: SQL (Oracle)
Problem: Weather Observation Station 18
URL: https://www.hackerrank.com/challenges/weather-observation-station-18/problem
*/


-- SOLUTION:

SELECT 
    ROUND(
        ABS(MIN(lat_n) - MAX(lat_n)) 
        + 
        ABS(MIN(long_w) - MAX(long_w))
    , 4) 
FROM station;


/*
NOTE:
The math behind the Taxicab Geometry ("Manhattan Distance")
https://en.wikipedia.org/wiki/Manhattan_distance
*/