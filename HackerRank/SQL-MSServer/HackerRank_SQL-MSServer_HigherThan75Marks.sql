/*
Site: HackerRank
Type: Practice
Subdomain: Basic Select
Difficulty: Easy
Skill: SQL (MS Server)
Problem: Higher Than 75 Marks
URL: https://www.hackerrank.com/challenges/more-than-75-marks/problem
*/


-- SOLUTION:

SELECT name
FROM students
WHERE marks > 75
ORDER BY RIGHT(name, 3), id;