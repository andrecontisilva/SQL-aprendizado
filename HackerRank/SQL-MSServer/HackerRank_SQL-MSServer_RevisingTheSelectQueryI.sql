/*
Site: HackerRank
Type: Practice
Subdomain: Basic Select
Difficulty: Easy
Skill: SQL (MS Server)
Problem: Revising The Select Query I
URL: https://www.hackerrank.com/challenges/revising-the-select-query/problem
*/


-- SOLUTION:

-- v1: List of American cities (order by id)
SELECT * FROM city
WHERE countrycode = 'USA'
    AND population >= 100000;


-- v2: American cities by ascending order of names
SELECT * FROM city
WHERE countrycode = 'USA'
    AND population >= 100000
ORDER BY name;

