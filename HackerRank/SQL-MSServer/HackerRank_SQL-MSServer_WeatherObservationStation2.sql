/*
Site: HackerRank
Type: Practice
Subdomain: Aggregation
Difficulty: Easy
Skill: SQL (MS Server)
Problem: Weather Observation Station 2
URL: https://www.hackerrank.com/challenges/weather-observation-station-2/problem
*/


-- SOLUTION:

-- v1: Using FORMAT() with 'F2'
SELECT 
    FORMAT(ROUND(SUM(lat_n),2),'F2'),
    FORMAT(ROUND(SUM(long_w),2),'F2')
FROM station


-- v2: Using FORMAT() with '#.00'
SELECT 
    FORMAT(ROUND(SUM(lat_n),2),'#.00'),
    FORMAT(ROUND(SUM(long_w),2),'#.00')
FROM station


/* NOTE:
More about the FORMAT function:
https://docs.microsoft.com/pt-br/sql/t-sql/functions/format-transact-sql?view=sql-server-ver15
https://docs.microsoft.com/en-us/dotnet/standard/base-types/custom-numeric-format-strings?redirectedfrom=MSDN
https://docs.microsoft.com/en-us/dotnet/standard/base-types/standard-numeric-format-strings?redirectedfrom=MSDN
*/
