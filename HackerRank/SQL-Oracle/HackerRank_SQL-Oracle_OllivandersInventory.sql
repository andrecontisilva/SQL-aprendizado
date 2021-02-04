/*
Site: HackerRank
Type: Practice
Subdomain: Basic Join
Difficulty: Medium
Skill: SQL (Oracle)
Problem: Ollivander's Inventory
URL: https://www.hackerrank.com/challenges/harry-potter-and-wands/problem
*/


-- SOLUTION:

SELECT 
    t.id,
    t.age,
    t.coins_needed,
    t.power 
FROM (
	SELECT 
        w.id,
        wp.age,
        w.coins_needed,
        w.power,
	    ROW_NUMBER() OVER (PARTITION BY wp.age, w.power ORDER BY w.power DESC, wp.age DESC) AS rownbr 
	FROM wands w
	JOIN wands_property wp ON wp.code = w.code
	WHERE wp.is_evil = 0
	ORDER BY w.power DESC, wp.age DESC, w.coins_needed
	) t
WHERE t.rownbr = 1;


/*
NOTE:
More about ROW_NUMBER(), OVER() and PARTITION BY
https://docs.oracle.com/cd/B19306_01/server.102/b14200/functions137.htm
https://stackoverflow.com/questions/1092120/over-clause-in-oracle
https://stackoverflow.com/questions/561836/oracle-partition-by-keyword
*/