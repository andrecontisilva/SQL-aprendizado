/*
Site: HackerRank
Type: Practice
Subdomain: Basic Join
Difficulty: Easy
Skill: SQL (MS Server)
Problem: Average Population Of Each Continent
URL: https://www.hackerrank.com/challenges/average-population-of-each-continent/problem
*/


-- SOLUTION:

-- v1: Unordered list of continents
SELECT 
    co.continent, 
    FLOOR(AVG(ci.population)) 
FROM city ci
    JOIN country co ON co.code = ci.countrycode
GROUP BY continent;


-- v2: Continent names by ascending order
SELECT 
    co.continent, 
    FLOOR(AVG(ci.population)) 
FROM city ci
    JOIN country co ON co.code = ci.countrycode
GROUP BY continent
ORDER BY continent;


-- v3: Continent names by descending order of average population
SELECT 
    co.continent, 
    FLOOR(AVG(ci.population)) AS avg_population
FROM city ci
    JOIN country co ON co.code = ci.countrycode
GROUP BY continent
ORDER BY avg_population DESC;