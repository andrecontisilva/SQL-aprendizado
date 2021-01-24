/*
Site: HackerRank
Type: Practice
Subdomain: Basic Select
Difficulty: Easy
Skill: SQL (MS Server)
Problem: Employee Salaries
URL: https://www.hackerrank.com/challenges/salary-of-employees/problem
*/


-- SOLUTION:

SELECT name 
FROM employee
WHERE salary > 2000 AND months < 10
ORDER BY employee_id;