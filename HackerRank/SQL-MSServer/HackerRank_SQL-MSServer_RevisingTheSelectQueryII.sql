/*
Site: HackerRank
Type: Practice
Subdomain: Basic Select
Difficulty: Easy
Skill: SQL (MS Server)
Problem: Revising The Select Query II
URL: https://www.hackerrank.com/challenges/revising-the-select-query-2/problem
*/


-- SOLUTION:

-- v1: Unordered list of American cities
SELECT name 
FROM city
WHERE countrycode = 'USA'
    AND population > 120000;


-- v2: American cities names by ascending order
SELECT name 
FROM city
WHERE countrycode = 'USA'
    AND population > 120000
ORDER BY name;