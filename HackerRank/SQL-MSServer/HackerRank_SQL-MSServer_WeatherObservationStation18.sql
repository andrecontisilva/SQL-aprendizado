/*
Site: HackerRank
Type: Practice
Subdomain: Aggregation
Difficulty: Medium
Skill: SQL (MS Server)
Problem: Weather Observation Station 18
URL: https://www.hackerrank.com/challenges/weather-observation-station-18/problem
*/


-- SOLUTION:

SELECT 
    CAST(
        (MAX(lat_n) - MIN(lat_n) 
        + 
        MAX(long_w) - MIN(long_w))
    AS NUMERIC(10,4)) 
FROM station;


/*
NOTE:
The math behind the Taxicab Geometry ("Manhattan Distance")
https://en.wikipedia.org/wiki/Manhattan_distance
*/