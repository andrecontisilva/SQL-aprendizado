/*
Site: HackerRank
Type: Practice
Subdomain: Basic Join
Difficulty: Easy
Skill: SQL (MS Server)
Problem: African Cities
URL: https://www.hackerrank.com/challenges/african-cities/problem
*/


-- SOLUTION:

-- v1: Unordered list of african cities
SELECT ci.name 
FROM city ci
    JOIN country co ON co.code = ci.countrycode
WHERE continent = 'Africa';


-- v2: African cities names by ascending order
SELECT ci.name 
FROM city ci
    JOIN country co ON co.code = ci.countrycode
WHERE continent = 'Africa'
ORDER BY ci.name;