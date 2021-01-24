/*
Site: HackerRank
Type: Practice
Subdomain: Basic Select
Difficulty: Easy
Skill: SQL (MS Server)
Problem: Select All
URL: https://www.hackerrank.com/challenges/select-all-sql/problem
*/


-- SOLUTION:

--v1: Simple select all
SELECT * FROM city;


-- v2: Cities names by ascending order
SELECT * FROM city
ORDER BY name;


-- v3: Cities names by descending order
SELECT * FROM city
ORDER BY name DESC;