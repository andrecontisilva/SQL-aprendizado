/*
Site: HackerRank
Type: Practice
Subdomain: Basic Join
Difficulty: Easy
Skill: SQL (MS Server)
Problem: Asian Population
URL: https://www.hackerrank.com/challenges/asian-population/problem
*/


-- SOLUTION:

SELECT SUM(ci.population) 
FROM city ci
    JOIN country co ON ci.countrycode = co.code
WHERE co.continent = 'Asia';