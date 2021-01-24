/*
Site: HackerRank
Type: Practice
Subdomain: Basic Select
Difficulty: Easy
Skill: SQL (Oracle)
Problem: Japanese Cities' Attributes
URL: https://www.hackerrank.com/challenges/japanese-cities-attributes/problem
*/


-- SOLUTION:

-- v1: List of japanese cities (order by id)
SELECT * FROM city
WHERE countrycode = 'JPN';


-- v2: Japanese cities by ascending order of names
SELECT * FROM city
WHERE countrycode = 'JPN'
ORDER BY name;


-- v3: List of japanese cities by descending order of population
SELECT * FROM city
WHERE countrycode = 'JPN'
ORDER BY population DESC;