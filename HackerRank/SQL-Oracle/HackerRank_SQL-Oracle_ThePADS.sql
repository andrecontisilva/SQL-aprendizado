/*
Site: HackerRank
Type: Practice
Subdomain: Advanced Select
Difficulty: Medium
Skill: SQL (Oracle)
Problem: The PADS
URL: https://www.hackerrank.com/challenges/the-pads/problem
*/


-- SOLUTION:

-- v1: Without PL/SQL

SELECT 
    name || '(' || SUBSTR(occupation, 1, 1) || ')'
FROM occupations
ORDER BY name;

SELECT 
    'There are a total of ' || COUNT(name) || ' ' || LOWER(occupation) || 's.'
FROM occupations
GROUP BY occupation
ORDER BY COUNT(name), occupation;


-- v2: Using PL/SQL with Cursors

DECLARE

person VARCHAR(20);
person_letter VARCHAR(1);
cnt NUMBER(20);
title VARCHAR2(20);
    
CURSOR c1 IS
    SELECT 
        name, 
        SUBSTR(occupation, 1, 1)
    FROM occupations 
    ORDER BY name;
    
CURSOR c2 IS
    SELECT 
        COUNT(occupation), 
        LOWER(occupation) 
    FROM occupations 
    GROUP BY occupation 
    ORDER BY COUNT(occupation), occupation;

BEGIN   
    OPEN c1;
    LOOP
        FETCH c1 INTO person, person_letter;
        EXIT WHEN c1%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(person||'('||person_letter||')');
    END LOOP;
    CLOSE c1;
    
    OPEN c2;
    LOOP
        FETCH c2 INTO cnt, title; 
        EXIT WHEN c2%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('There are a total of '|| cnt||' '||title||'s.');
    END LOOP;
    CLOSE c2;
 END;

/
SET SERVEROUTPUT ON;
/


-- v3: Using PL/SQL with Cursors and %TYPE Attribute

DECLARE

person          occupations.name%TYPE;
person_letter   occupations.occupation%TYPE;
cnt             occupations.occupation%TYPE;
title           occupations.occupation%TYPE;
    
CURSOR c1 IS
    SELECT 
        name, 
        SUBSTR(occupation, 1, 1)
    FROM occupations 
    ORDER BY name;
    
CURSOR c2 IS
    SELECT 
        COUNT(occupation), 
        LOWER(occupation) 
    FROM occupations 
    GROUP BY occupation 
    ORDER BY COUNT(occupation), occupation;

BEGIN   
    OPEN c1;
    LOOP
        FETCH c1 INTO person, person_letter;
        EXIT WHEN c1%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(person||'('||person_letter||')');
    END LOOP;
    CLOSE c1;
    
    OPEN c2;
    LOOP
        FETCH c2 INTO cnt, title; 
        EXIT WHEN c2%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('There are a total of '|| cnt||' '||title||'s.');
    END LOOP;
    CLOSE c2;
 END;

/
SET SERVEROUTPUT ON;
/


/*
NOTE:
More about %TYPE Attribute:
https://docs.oracle.com/cd/B28359_01/appdev.111/b28370/type_attribute.htm#LNPLS01352
*/
