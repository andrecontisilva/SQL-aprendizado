/*
Site: HackerRank
Type: Practice
Subdomain: Aggregation
Difficulty: Medium
Skill: SQL (MS Server)
Problem: Weather Observation Station 19
URL: https://www.hackerrank.com/challenges/weather-observation-station-19/problem
*/


-- SOLUTION:

--v1

SELECT
    CAST(
        SQRT(
          POWER(MAX(lat_n) - MIN(lat_n), 2)
          +
          POWER(MAX(long_w) - MIN(long_w), 2)
        )
    AS NUMERIC(10,4))
FROM station;


--v2: Using Transact-SQL

DECLARE @a FLOAT;
DECLARE @b FLOAT;
DECLARE @c FLOAT;
DECLARE @d FLOAT;
DECLARE @distance FLOAT;

SET @a = (SELECT MIN(lat_n) FROM station);
SET @b = (SELECT MAX(lat_n) FROM station);
SET @c = (SELECT MIN(long_w) FROM station);
SET @d = (SELECT MAX(long_w) FROM station);
SET @distance = SQRT(SQUARE(@a - @b) + SQUARE(@c - @d));

SELECT FORMAT(@distance, 'F4');


/*
NOTE:
The math behind the Euclidean Distance
https://en.wikipedia.org/wiki/Euclidean_distance
*/
