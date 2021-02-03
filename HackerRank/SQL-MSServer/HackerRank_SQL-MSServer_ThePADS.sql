/*
Site: HackerRank
Type: Practice
Subdomain: Advanced Select
Difficulty: Medium
Skill: SQL (MS Server)
Problem: The PADS
URL: https://www.hackerrank.com/challenges/the-pads/problem
*/


-- SOLUTION:

-- v1: Using CONCAT()

SELECT 
    CONCAT(name,'(', LEFT(occupation, 1), ')')
FROM occupations
ORDER BY name;
       
SELECT 
    CONCAT('There are a total of ', COUNT(1), ' ', LOWER(occupation), 's.') -- Replacing COUNT(1) with COUNT(*) also works here.
FROM occupations
GROUP BY occupation
ORDER BY COUNT(occupation), occupation;


-- v2: Concatenating with the + operator

SELECT 
    name + '(' + LEFT(occupation, 1) + ')'
FROM occupations
ORDER BY name;

SELECT 
    'There are a total of ', COUNT(*), LOWER(occupation) + 's.'
FROM occupations
GROUP BY occupation
ORDER BY COUNT(*), occupation;


-- v3: Using CASE

SELECT 
    CONCAT(
        name, 
        CASE 
            WHEN occupation = 'Doctor' THEN '(D)'
            WHEN occupation = 'Professor' THEN '(P)'
            WHEN occupation = 'Singer' THEN '(S)'
            WHEN occupation = 'Actor' THEN '(A)'
        END
    )
FROM occupations 
ORDER BY name;

SELECT 
    CONCAT('There are a total of ', COUNT(occupation), ' ', LOWER(occupation), 's.')  
FROM occupations 
GROUP BY occupation 
ORDER BY COUNT(occupation);
