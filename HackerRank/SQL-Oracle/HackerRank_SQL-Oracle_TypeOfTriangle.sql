/*
Site: HackerRank
Type: Practice
Subdomain: Advanced Select
Difficulty: Easy
Skill: SQL (Oracle)
Problem: Type Of Triangle
URL: https://www.hackerrank.com/challenges/what-type-of-triangle/problem
*/


-- SOLUTION:

SELECT 
    CASE
        WHEN a + b > c AND b + c > a AND c + a > b THEN 
            CASE
                WHEN a = b AND b = c THEN 'Equilateral'
                WHEN a = b OR b = c OR a = c THEN 'Isosceles'
                WHEN a <> b AND b <> c AND c <> a  THEN 'Scalene'
            END
        ELSE 'Not A Triangle'
    END
FROM triangles;