/*
Site: HackerRank
Type: Practice
Subdomain: Aggregation
Difficulty: Medium
Skill: SQL (MS Server)
Problem: Weather Observation Station 20
URL: https://www.hackerrank.com/challenges/weather-observation-station-20/problem
*/


-- SOLUTION:

SELECT DISTINCT
  CAST(
     ROUND(
       PERCENTILE_DISC (.5) WITHIN GROUP (ORDER BY lat_n) OVER()
     , 4) 
   AS DECIMAL(10,4))
FROM station;


/*
NOTE:
More about the PERCENTILE_DISC function:
https://docs.microsoft.com/pt-br/sql/t-sql/functions/percentile-disc-transact-sql?view=sql-server-ver15
*/