/*
Site: HackerRank
Type: Practice
Subdomain: Basic Join
Difficulty: Medium
Skill: SQL (Oracle)
Problem: The Report
URL: https://www.hackerrank.com/challenges/the-report/problem
*/


-- SOLUTION:

SELECT
    CASE 
        WHEN grd.grade > 7 THEN std.name 
        ELSE NULL 
    END AS name_null, 
    grd.grade, 
    std.marks
FROM students std
    JOIN grades grd ON std.marks BETWEEN grd.min_mark AND grd.max_mark
ORDER BY grd.grade DESC, name_null ASC, std.marks ASC;
