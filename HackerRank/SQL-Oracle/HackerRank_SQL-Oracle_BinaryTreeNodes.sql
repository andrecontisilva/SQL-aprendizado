/*
Site: HackerRank
Type: Practice
Subdomain: Advanced Select
Difficulty: Medium
Skill: SQL (Oracle)
Problem: Binary Tree Nodes
URL: https://www.hackerrank.com/challenges/binary-search-tree-1/problem
*/


-- SOLUTION:

SELECT
    n,
    CASE
        WHEN p IS NULL THEN 'Root'
        WHEN n IN (SELECT DISTINCT p FROM bst) THEN 'Inner'
        ELSE 'Leaf'
    END
FROM bst
ORDER BY n;


/*
NOTE:
The math behind de Binary Tree:
https://en.wikipedia.org/wiki/Binary_tree
*/