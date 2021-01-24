/*
Site: HackerRank
Type: Practice
Subdomain: Basic Select
Difficulty: Easy
Skill: SQL (Oracle)
Problem: Japanese Cities' Names
URL: https://www.hackerrank.com/challenges/japanese-cities-name/problem
*/


-- SOLUTION:

-- v1: Unordered list of japanese cities
SELECT name FROM city
WHERE countrycode = 'JPN';


-- v2: Japanese cities names by ascending order
SELECT name FROM city
WHERE countrycode = 'JPN'
ORDER BY name;