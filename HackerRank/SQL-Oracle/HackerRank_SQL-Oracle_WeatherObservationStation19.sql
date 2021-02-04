/*
Site: HackerRank
Type: Practice
Subdomain: Aggregation
Difficulty: Medium
Skill: SQL (Oracle)
Problem: Weather Observation Station 19
URL: https://www.hackerrank.com/challenges/weather-observation-station-19/problem
*/


-- SOLUTION:

SELECT
    ROUND(
        SQRT(
          POWER(MAX(lat_n) - MIN(lat_n), 2)
          +
          POWER(MAX(long_w) - MIN(long_w), 2)
        )
    , 4)
FROM station;


/*
NOTE:
The math behind the Euclidean Distance
https://en.wikipedia.org/wiki/Euclidean_distance
*/